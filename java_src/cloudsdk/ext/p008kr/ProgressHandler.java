package cloudsdk.ext.p008kr;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: cloudsdk.ext.kr.ProgressHandler */
/* loaded from: classes.dex */
public class ProgressHandler extends Handler implements RootConst {

    /* renamed from: j */
    private Handler f100j;

    /* renamed from: k */
    private EnumC0275a f101k;

    /* renamed from: l */
    private long f102l;

    /* renamed from: m */
    private int f103m;
    private Context mContext;

    /* renamed from: n */
    private long f104n;

    /* renamed from: o */
    private boolean f105o;

    /* renamed from: p */
    private int f106p;

    /* renamed from: q */
    private int f107q;

    /* renamed from: r */
    private int f108r;

    /* renamed from: s */
    private RootExtInfo f109s;

    /* renamed from: t */
    private RootExtInfo f110t;

    public ProgressHandler(Context context, Looper looper, Handler handler) {
        super(looper);
        this.f104n = -1L;
        this.f105o = true;
        this.mContext = context;
        this.f100j = handler;
    }

    public void setIntervalMode(EnumC0275a enumC0275a) {
        if (this.f101k != enumC0275a) {
            this.f101k = enumC0275a;
            this.f104n = -1L;
        }
    }

    public void resetData(boolean z) {
        this.f105o = false;
        this.f106p = -1;
        if (z) {
            RootDao.getInstance(this.mContext).setCurrProgress(-1);
        }
        this.f107q = -1;
        this.f108r = -1;
    }

    public void setAvgTime(long j) {
        this.f102l = j;
    }

    public void setRootStep(int i) {
        this.f106p = i;
    }

    public void setSolutionCount(int i) {
        this.f107q = i;
    }

    public void setSolutionIdx(int i) {
        this.f108r = i;
    }

    public void setRootState(int i) {
        this.f103m = i;
    }

    public int getRootState() {
        return this.f103m;
    }

    public void setRootInfo(RootExtInfo rootExtInfo, RootExtInfo rootExtInfo2) {
        this.f109s = rootExtInfo;
        this.f110t = rootExtInfo2;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        if (!this.f105o) {
            int currProgress = RootDao.getInstance(this.mContext).getCurrProgress() + 1;
            RootDao.getInstance(this.mContext).setCurrProgress(currProgress);
            if (this.f104n == -1 || this.f101k.mo13726a(currProgress)) {
                EnumC0275a enumC0275a = this.f101k;
                long j = currProgress;
                if (this.f102l == 0) {
                    this.f102l = 120000L;
                } else if (this.f102l < 20000) {
                    this.f102l = 20000L;
                }
                this.f104n = enumC0275a.mo13725a(j, this.f102l);
            }
            Message message2 = new Message();
            message2.what = RootConst.UI_ROOTING;
            Bundle bundle = new Bundle();
            bundle.putInt("step", this.f106p);
            bundle.putInt("solutionCount", this.f107q);
            bundle.putInt("solutionIdx", this.f108r);
            bundle.putInt("progress", currProgress);
            message2.setData(bundle);
            this.f100j.sendMessage(message2);
            if (this.f101k == EnumC0275a.f113w) {
                if (currProgress >= 100) {
                    Message message3 = new Message();
                    message3.what = RootConst.UI_ROOT_SUC;
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt(RootConst.KEY_ROOT, this.f103m);
                    message3.setData(bundle2);
                    this.f100j.sendMessage(message3);
                    this.f105o = true;
                    return;
                }
            } else if (currProgress >= 70) {
                dismiss();
                Bundle bundle3 = new Bundle();
                if (this.f109s != null) {
                    bundle3.putBundle(RootConst.KEY_MOBILE_ROOT_INFO, this.f109s.getBundle());
                }
                if (this.f110t != null) {
                    bundle3.putBundle(RootConst.KEY_PC_ROOT_INFO, this.f110t.getBundle());
                }
                Message message4 = new Message();
                message4.what = RootConst.UI_ROOT_FAIL;
                message4.setData(bundle3);
                this.f100j.sendMessage(message4);
                return;
            }
            if (this.f104n > 0) {
                sendEmptyMessageDelayed(1004, this.f104n);
            }
        }
    }

    public void notifyProgressUpdate() {
        this.f105o = false;
        sendEmptyMessage(1004);
    }

    public void dismiss() {
        this.f105o = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: cloudsdk.ext.kr.ProgressHandler$a */
    /* loaded from: classes.dex */
    public static abstract class EnumC0275a {

        /* renamed from: u */
        public static final EnumC0275a f111u = new EnumC0275a("ONEKEY_ROOT", 0) { // from class: cloudsdk.ext.kr.ProgressHandler.a.1
            @Override // cloudsdk.ext.p008kr.ProgressHandler.EnumC0275a
            /* renamed from: a */
            final boolean mo13726a(int i) {
                return i == 0 || i == 15 || i == 40 || i == 50;
            }

            @Override // cloudsdk.ext.p008kr.ProgressHandler.EnumC0275a
            /* renamed from: a */
            final long mo13725a(long j, long j2) {
                if (j < 0) {
                    return EnumC0275a.m13727a(-1, 0, 2000L);
                }
                if (j < 15) {
                    return EnumC0275a.m13727a(0, 15, 2000L);
                }
                if (j < 40) {
                    return EnumC0275a.m13727a(15, 40, (long) (j2 * 1.5d));
                }
                if (j < 50) {
                    return EnumC0275a.m13727a(40, 50, 2000L);
                }
                if (j >= 70) {
                    return 0L;
                }
                return EnumC0275a.m13727a(50, 70, (long) (360000.0d - (j2 * 1.5d)));
            }
        };

        /* renamed from: v */
        public static final EnumC0275a f112v = new EnumC0275a("FIX_ROOT", 1) { // from class: cloudsdk.ext.kr.ProgressHandler.a.2
            @Override // cloudsdk.ext.p008kr.ProgressHandler.EnumC0275a
            /* renamed from: a */
            final boolean mo13726a(int i) {
                return i == 5 || i == 15 || i == 35 || i == 50;
            }

            @Override // cloudsdk.ext.p008kr.ProgressHandler.EnumC0275a
            /* renamed from: a */
            final long mo13725a(long j, long j2) {
                if (j < 5) {
                    return EnumC0275a.m13727a(0, 5, 2000L);
                }
                if (j < 15) {
                    return EnumC0275a.m13727a(5, 15, 30000L);
                }
                if (j < 35) {
                    return EnumC0275a.m13727a(15, 35, j2 << 1);
                }
                if (j < 50) {
                    return EnumC0275a.m13727a(35, 50, 2000L);
                }
                if (j >= 70) {
                    return 0L;
                }
                return EnumC0275a.m13727a(50, 70, 325000 - (j2 << 1));
            }
        };

        /* renamed from: w */
        public static final EnumC0275a f113w = new EnumC0275a("ROOT_SUC", 2) { // from class: cloudsdk.ext.kr.ProgressHandler.a.3
            @Override // cloudsdk.ext.p008kr.ProgressHandler.EnumC0275a
            /* renamed from: a */
            final boolean mo13726a(int i) {
                return false;
            }

            @Override // cloudsdk.ext.p008kr.ProgressHandler.EnumC0275a
            /* renamed from: a */
            final long mo13725a(long j, long j2) {
                if (j < 100) {
                    return 6000 / (100 - j);
                }
                return 0L;
            }
        };

        /* renamed from: a */
        abstract long mo13725a(long j, long j2);

        /* renamed from: a */
        abstract boolean mo13726a(int i);

        private EnumC0275a(String str, int i) {
        }

        /* synthetic */ EnumC0275a(String str, int i, byte b) {
            this(str, i);
        }

        /* renamed from: a */
        static /* synthetic */ long m13727a(int i, int i2, long j) {
            return j / (i2 - i);
        }

        static {
            EnumC0275a[] enumC0275aArr = {f111u, f112v, f113w};
        }
    }
}
