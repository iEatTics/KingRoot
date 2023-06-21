package com.kingroot.kinguser;

import andhook.lib.xposed.callbacks.XCallback;
import android.os.PowerManager;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import android.text.TextUtils;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;
import tmsdk.common.TMSDKContext;
import tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver;
/* loaded from: classes.dex */
public class cfc {
    private static cfc bZD = null;
    private cge<Integer, C2728a> bZC = new cge<>(ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
    private ceu bYt = null;
    private PowerManager bZE = null;
    public Map<Byte, Integer> bZF = new HashMap();

    /* renamed from: com.kingroot.kinguser.cfc$a */
    /* loaded from: classes.dex */
    public static class C2728a {
        public BitSet bZH = new BitSet();
        public int cmd = 0;
        public String bZI = "";
        public int bZJ = 0;
        public boolean bZK = false;
        public boolean bZL = false;
        public long bZM = 0;
        public int bZN = 0;
        public int bZO = 0;
        public int retCode = 0;
        public long bZP = System.currentTimeMillis();
        public long bZQ = System.currentTimeMillis();
        public String bZR = "";
        public String bZS = "";
    }

    public static cfc alC() {
        synchronized (cfc.class) {
            if (bZD == null) {
                bZD = new cfc();
            }
        }
        return bZD;
    }

    /* renamed from: b */
    public synchronized void m4656b(ceu ceuVar) {
        this.bYt = ceuVar;
        try {
            this.bZE = (PowerManager) TMSDKContext.akS().getSystemService("power");
        } catch (Throwable th) {
        }
        SharkNetworkReceiver.alR().m10a(new SharkNetworkReceiver.InterfaceC4422b() { // from class: com.kingroot.kinguser.cfc.1
            @Override // tmsdk.common.module.sdknetpool.sharknetwork.SharkNetworkReceiver.InterfaceC4422b
            public void alD() {
                synchronized (cfc.this) {
                    if (cfc.this.bZC.size() > 0) {
                        for (Map.Entry entry : cfc.this.bZC.amV().entrySet()) {
                            ((C2728a) entry.getValue()).bZL = true;
                        }
                    }
                }
            }
        });
    }

    /* renamed from: b */
    public synchronized void m4657b(int i, long j, String str) {
        C2728a c2728a = new C2728a();
        c2728a.bZI = str;
        c2728a.bZM = j;
        c2728a.bZJ = cey.alt().m4679k(false, false);
        if (this.bZE != null) {
            try {
                c2728a.bZK = this.bZE.isScreenOn();
            } catch (Throwable th) {
            }
        }
        this.bZC.put(Integer.valueOf(i), c2728a);
    }

    /* renamed from: hF */
    public synchronized void m4652hF(int i) {
        this.bZC.m4343z(Integer.valueOf(i));
    }

    /* renamed from: a */
    public synchronized void m4660a(String str, int i, int i2, C2036az c2036az, int i3, int i4, String str2) {
        C2728a c2728a = this.bZC.get(Integer.valueOf(i2));
        if (c2728a != null) {
            cfe.m4630v(str, "[ocean][shark_funnel]|seqNo|seq_" + i2 + "|step|" + i3 + "|cmdId|cmd_" + i + "|stepTime|" + (System.currentTimeMillis() - c2728a.bZQ) + "|retCode|" + i4 + "|flow|" + str2);
            if (i == 21) {
                cgl.m4335a(65542, "|step|" + i3 + "|cmdId|" + i + "|retCode|" + i4);
            }
            c2728a.cmd = i;
            c2728a.bZH.set(i3, true);
            if (str2 != null) {
                c2728a.bZR = str2;
            }
            if (i3 == 14 || i3 == 9 || i3 == 10) {
                c2728a.bZN = i4;
                if (this.bYt != null) {
                    this.bYt.mo2711j(i, i4);
                }
            } else if (i3 == 16) {
                c2728a.bZO = i4;
                if (this.bYt != null) {
                    this.bYt.mo2710k(i, i4);
                }
            } else {
                c2728a.retCode = i4;
            }
            c2728a.bZQ = System.currentTimeMillis();
        }
    }

    /* renamed from: a */
    public synchronized void m4659a(String str, int i, int i2, C2235bg c2235bg, int i3, int i4) {
        m4658a(str, i, i2, c2235bg, i3, i4, (String) null);
    }

    /* renamed from: a */
    public synchronized void m4658a(String str, int i, int i2, C2235bg c2235bg, int i3, int i4, String str2) {
        C2728a c2728a = this.bZC.get(Integer.valueOf(i2));
        if (c2728a != null) {
            cfe.m4630v(str, "[ocean][shark_funnel]|seqNo|seq_" + i2 + "|step|" + i3 + "|cmdId|cmd_" + i + "|stepTime|" + (System.currentTimeMillis() - c2728a.bZQ) + "|retCode|" + i4 + "|flow|" + str2);
            if (i == 10021) {
                cgl.m4335a(65542, "|step|" + i3 + "|cmdId|" + i + "|retCode|" + i4);
            }
            c2728a.cmd = i;
            if (str2 != null) {
                c2728a.bZS = str2;
            }
            c2728a.bZH.set(i3, true);
            if (i3 == 14) {
                c2728a.bZN = i4;
            } else if (i3 == 16) {
                c2728a.bZO = i4;
            } else {
                c2728a.retCode = i4;
            }
            c2728a.bZQ = System.currentTimeMillis();
        }
    }

    /* renamed from: a */
    public synchronized void m4661a(String str, int i, int i2, C2036az c2036az, int i3) {
        m4660a(str, i, i2, c2036az, i3, 0, (String) null);
    }

    /* renamed from: lf */
    public synchronized boolean m4651lf(int i) {
        return m4663K(i, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0056 A[Catch: all -> 0x016b, TryCatch #0 {, blocks: (B:3:0x0001, B:8:0x0012, B:10:0x0027, B:12:0x0030, B:13:0x0037, B:15:0x0056, B:16:0x0060, B:19:0x0069, B:21:0x00b9, B:22:0x00be, B:24:0x00ef, B:25:0x0107, B:27:0x010b, B:29:0x0111, B:39:0x0127, B:67:0x01aa, B:65:0x01a4, B:63:0x0170, B:64:0x018a, B:57:0x015a, B:43:0x0134, B:46:0x013b), top: B:71:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b9 A[Catch: all -> 0x016b, TryCatch #0 {, blocks: (B:3:0x0001, B:8:0x0012, B:10:0x0027, B:12:0x0030, B:13:0x0037, B:15:0x0056, B:16:0x0060, B:19:0x0069, B:21:0x00b9, B:22:0x00be, B:24:0x00ef, B:25:0x0107, B:27:0x010b, B:29:0x0111, B:39:0x0127, B:67:0x01aa, B:65:0x01a4, B:63:0x0170, B:64:0x018a, B:57:0x015a, B:43:0x0134, B:46:0x013b), top: B:71:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00ef A[Catch: all -> 0x016b, TryCatch #0 {, blocks: (B:3:0x0001, B:8:0x0012, B:10:0x0027, B:12:0x0030, B:13:0x0037, B:15:0x0056, B:16:0x0060, B:19:0x0069, B:21:0x00b9, B:22:0x00be, B:24:0x00ef, B:25:0x0107, B:27:0x010b, B:29:0x0111, B:39:0x0127, B:67:0x01aa, B:65:0x01a4, B:63:0x0170, B:64:0x018a, B:57:0x015a, B:43:0x0134, B:46:0x013b), top: B:71:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010b A[Catch: all -> 0x016b, TryCatch #0 {, blocks: (B:3:0x0001, B:8:0x0012, B:10:0x0027, B:12:0x0030, B:13:0x0037, B:15:0x0056, B:16:0x0060, B:19:0x0069, B:21:0x00b9, B:22:0x00be, B:24:0x00ef, B:25:0x0107, B:27:0x010b, B:29:0x0111, B:39:0x0127, B:67:0x01aa, B:65:0x01a4, B:63:0x0170, B:64:0x018a, B:57:0x015a, B:43:0x0134, B:46:0x013b), top: B:71:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015a A[Catch: all -> 0x016b, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:8:0x0012, B:10:0x0027, B:12:0x0030, B:13:0x0037, B:15:0x0056, B:16:0x0060, B:19:0x0069, B:21:0x00b9, B:22:0x00be, B:24:0x00ef, B:25:0x0107, B:27:0x010b, B:29:0x0111, B:39:0x0127, B:67:0x01aa, B:65:0x01a4, B:63:0x0170, B:64:0x018a, B:57:0x015a, B:43:0x0134, B:46:0x013b), top: B:71:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x016e  */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean m4663K(int i, boolean z) {
        int i2;
        boolean z2;
        int i3;
        C2728a c2728a = this.bZC.get(Integer.valueOf(i));
        if (c2728a == null) {
            z2 = false;
        } else {
            this.bZC.m4343z(Integer.valueOf(i));
            boolean z3 = c2728a.bZH.get(15);
            int i4 = c2728a.retCode;
            if (i4 != 0) {
                int m4766kI = cen.m4766kI(i4);
                int i5 = c2728a.bZJ;
                if (i5 == -2) {
                    i2 = (i4 - m4766kI) - 160000;
                } else if (m4766kI == -50000) {
                    if (c2728a.bZL) {
                        i3 = -550000;
                    } else if (i5 == -4) {
                        i3 = -530000;
                    } else if (i5 == -1) {
                        i3 = -220000;
                    } else {
                        i3 = i5 == -3 ? -540000 : m4766kI;
                    }
                    i2 = i3 + (i4 - m4766kI);
                }
                StringBuilder sb = new StringBuilder();
                sb.append("|cmd|cmd_");
                sb.append(c2728a.cmd);
                sb.append("|seqNo|seq_");
                sb.append(i);
                if (!TextUtils.isEmpty(c2728a.bZI)) {
                    sb.append("|reason|");
                    sb.append(c2728a.bZI);
                }
                sb.append("|channel|");
                sb.append(!z3 ? "http" : "tcp");
                sb.append("|step|");
                sb.append(c2728a.bZH.toString());
                sb.append("|netState|");
                sb.append(cey.m4678ld(c2728a.bZJ));
                sb.append("|isScreenOn|");
                sb.append(c2728a.bZK);
                sb.append("|isNetworkChanged|");
                sb.append(c2728a.bZL);
                sb.append("|tcpRetCode|");
                sb.append(c2728a.bZN);
                sb.append("|httpRecCode|");
                sb.append(c2728a.bZO);
                sb.append("|retCode|");
                if (i2 != c2728a.retCode) {
                    sb.append(c2728a.retCode);
                } else {
                    sb.append(c2728a.retCode).append("->").append(i2);
                }
                sb.append("|timeOut|");
                sb.append(c2728a.bZM);
                sb.append("|totalTime|");
                sb.append(System.currentTimeMillis() - c2728a.bZP);
                sb.append("|sendFlow|");
                sb.append(c2728a.bZR);
                sb.append("|recFlow|");
                sb.append(c2728a.bZS);
                if (c2728a.retCode != 0) {
                    cfe.m4634bj("SharkFunnelModel", "[shark_funnel]" + sb.toString());
                } else if (z) {
                    cfe.m4633bk("SharkFunnelModel", "xxxxxxxxxxxx [shark_funnel]" + sb.toString());
                } else {
                    cfe.m4633bk("SharkFunnelModel", "tttt [shark_funnel]" + sb.toString());
                }
                if (this.bYt != null) {
                    int i6 = c2728a.cmd > 10000 ? c2728a.cmd + XCallback.PRIORITY_LOWEST : c2728a.cmd;
                    if (i6 != 999 && i6 != 794 && i6 != 797 && i6 != 782) {
                        if (i2 == 0) {
                            this.bYt.mo2713i(i6, i2);
                        } else if (z) {
                            this.bYt.mo2713i(i6, i2);
                        }
                    }
                }
                z2 = z3;
            }
            i2 = i4;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("|cmd|cmd_");
            sb2.append(c2728a.cmd);
            sb2.append("|seqNo|seq_");
            sb2.append(i);
            if (!TextUtils.isEmpty(c2728a.bZI)) {
            }
            sb2.append("|channel|");
            sb2.append(!z3 ? "http" : "tcp");
            sb2.append("|step|");
            sb2.append(c2728a.bZH.toString());
            sb2.append("|netState|");
            sb2.append(cey.m4678ld(c2728a.bZJ));
            sb2.append("|isScreenOn|");
            sb2.append(c2728a.bZK);
            sb2.append("|isNetworkChanged|");
            sb2.append(c2728a.bZL);
            sb2.append("|tcpRetCode|");
            sb2.append(c2728a.bZN);
            sb2.append("|httpRecCode|");
            sb2.append(c2728a.bZO);
            sb2.append("|retCode|");
            if (i2 != c2728a.retCode) {
            }
            sb2.append("|timeOut|");
            sb2.append(c2728a.bZM);
            sb2.append("|totalTime|");
            sb2.append(System.currentTimeMillis() - c2728a.bZP);
            sb2.append("|sendFlow|");
            sb2.append(c2728a.bZR);
            sb2.append("|recFlow|");
            sb2.append(c2728a.bZS);
            if (c2728a.retCode != 0) {
            }
            if (this.bYt != null) {
            }
            z2 = z3;
        }
        return z2;
    }

    /* renamed from: c */
    public void m4655c(byte b) {
        synchronized (this.bZF) {
            this.bZF.remove(Byte.valueOf(b));
        }
    }

    /* renamed from: c */
    public void m4654c(byte b, int i) {
        synchronized (this.bZF) {
            this.bZF.put(Byte.valueOf(b), Integer.valueOf(i));
        }
    }

    /* renamed from: d */
    public int m4653d(byte b) {
        int intValue;
        synchronized (this.bZF) {
            Integer num = this.bZF.get(Byte.valueOf(b));
            intValue = num != null ? num.intValue() : -1;
        }
        return intValue;
    }
}
