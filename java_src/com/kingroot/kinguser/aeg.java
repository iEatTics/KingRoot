package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.View;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.common.network.download.INetworkLoadTaskCallback;
import com.kingroot.common.network.download.NetworkLoadTaskInfo;
import com.kingroot.common.network.download.UpdateInfo;
import com.kingroot.kingmaster.network.updata.CheckResult;
import com.kingroot.kingmaster.network.updata.ICheckIPCListener;
import com.kingroot.kinguser.activitys.KUCommonSettingActivity;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.bie;
import com.kingroot.kinguses.R;
import java.util.List;
import java.util.concurrent.Executors;
/* loaded from: classes.dex */
public class aeg extends AbstractC3704uo implements aee {
    private static volatile aeg aeN = null;

    private aeg() {
    }

    /* renamed from: um */
    public static aeg m12265um() {
        if (aeN == null) {
            synchronized (aeg.class) {
                if (aeN == null) {
                    aeN = new aeg();
                }
            }
        }
        return aeN;
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: ue */
    public CheckResult mo12201ue() {
        return (CheckResult) m2019aY(1).m13375kG();
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: tc */
    public boolean mo12207tc() {
        return m2019aY(4).readBoolean();
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: ab */
    public void mo12221ab(long j) {
        m2022a(32, new ArgsPack(Long.valueOf(j)));
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: a */
    public boolean mo12224a(C3683u c3683u, long j) {
        return m2018b(25, new ArgsPack(c3683u, Long.valueOf(j))).readBoolean();
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: uf */
    public boolean mo12200uf() {
        return m2019aY(5).readBoolean();
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: ug */
    public boolean mo12199ug() {
        return m2019aY(6).readBoolean();
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: tu */
    public void mo12202tu() {
        m2020aX(24);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: uh */
    public void mo12198uh() {
        m2020aX(7);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: cK */
    public void mo12214cK(int i) {
        m2022a(8, new ArgsPack(Integer.valueOf(i)));
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: a */
    public int mo12235a(CheckResult checkResult, int i) {
        return m2018b(9, new ArgsPack(checkResult, Integer.valueOf(i))).readInt();
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: a */
    public boolean mo12234a(ICheckIPCListener iCheckIPCListener) {
        return m2018b(10, new ArgsPack(iCheckIPCListener.asBinder())).readBoolean();
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: a */
    public boolean mo12223a(boolean z, ICheckIPCListener iCheckIPCListener) {
        return m2018b(11, new ArgsPack(Boolean.valueOf(z), iCheckIPCListener.asBinder())).readBoolean();
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: aw */
    public boolean mo12220aw(boolean z) {
        return m2018b(12, new ArgsPack(Boolean.valueOf(z))).readBoolean();
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: ui */
    public boolean mo12197ui() {
        return m2019aY(13).readBoolean();
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: b */
    public void mo12219b(INetworkLoadTaskCallback iNetworkLoadTaskCallback) {
        m2022a(15, new ArgsPack(iNetworkLoadTaskCallback.asBinder()));
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: c */
    public void mo12216c(INetworkLoadTaskCallback iNetworkLoadTaskCallback) {
        m2022a(16, new ArgsPack(iNetworkLoadTaskCallback.asBinder()));
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: uj */
    public void mo12196uj() {
        m2020aX(18);
    }

    /* renamed from: com.kingroot.kinguser.aeg$1 */
    /* loaded from: classes.dex */
    class RunnableC07731 implements Runnable {
        final /* synthetic */ Activity val$activity;

        RunnableC07731(Activity activity) {
            this.val$activity = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            final CheckResult mo12201ue;
            List<UpdateInfo> list;
            final UpdateInfo updateInfo;
            if (!aeg.this.mo12207tc() && (mo12201ue = aeg.this.mo12201ue()) != null && (list = mo12201ue.mUpdateInfoList) != null && list.size() > 0 && (updateInfo = list.get(0)) != null && updateInfo.url != null) {
                if (updateInfo.type == 3 || updateInfo.type == 1) {
                    this.val$activity.runOnUiThread(new Runnable() { // from class: com.kingroot.kinguser.aeg.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            String str = mo12201ue.mMessage;
                            if (str == null) {
                                str = C3953zi.m1311pr().getString(R.string.km_update_bar_content);
                            }
                            bih bihVar = new bih(RunnableC07731.this.val$activity);
                            bihVar.show();
                            bihVar.m6915jc(R.drawable.icon_new);
                            bihVar.setTitleText(C3953zi.m1311pr().getString(R.string.update_dialog_title));
                            bihVar.m6933d(str);
                            bihVar.m6929a(new bie.InterfaceC2304a() { // from class: com.kingroot.kinguser.aeg.1.1.1
                                @Override // com.kingroot.kinguser.bie.InterfaceC2304a
                                /* renamed from: a */
                                public boolean mo6924a(int i, KeyEvent keyEvent) {
                                    if (updateInfo.type == 1) {
                                        RunnableC07731.this.val$activity.finish();
                                    } else {
                                        updateInfo.type = 5;
                                    }
                                    return true;
                                }
                            });
                            if (updateInfo.type == 1) {
                                bihVar.m6931iX(8);
                            } else {
                                bihVar.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
                                bihVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.aeg.1.1.2
                                    @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                                    /* renamed from: n */
                                    public void mo1843n(View view) {
                                        updateInfo.type = 5;
                                    }
                                });
                            }
                            bihVar.m6930lL(C3953zi.m1311pr().getString(R.string.update));
                            bihVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.aeg.1.1.3
                                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                                /* renamed from: n */
                                public void mo1843n(View view) {
                                    Intent intent = new Intent(RunnableC07731.this.val$activity, KUCommonSettingActivity.class);
                                    intent.addFlags(268435456);
                                    RunnableC07731.this.val$activity.startActivity(intent);
                                }
                            });
                        }
                    });
                }
            }
        }
    }

    /* renamed from: a */
    public void m12266a(Activity activity) {
        Executors.newSingleThreadExecutor(new ThreadFactoryC3836wj("askUpdateWhenOpenSoftware")).execute(new RunnableC07731(activity));
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: tq */
    public NetworkLoadTaskInfo mo12206tq() {
        return (NetworkLoadTaskInfo) m2019aY(20).m13375kG();
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: tr */
    public boolean mo12205tr() {
        return m2019aY(21).readBoolean();
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: ts */
    public void mo12204ts() {
        m2020aX(22);
    }

    @Override // com.kingroot.kinguser.aee
    /* renamed from: tt */
    public void mo12203tt() {
        m2020aX(23);
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C0778a.class;
    }

    /* renamed from: com.kingroot.kinguser.aeg$a */
    /* loaded from: classes.dex */
    public static class C0778a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 7:
                    aej.m12239up().mo12198uh();
                    return;
                case 8:
                    aej.m12239up().mo12214cK(((Integer) argsPack.next()).intValue());
                    return;
                case 15:
                    aej.m12239up().mo12219b(INetworkLoadTaskCallback.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 16:
                    aej.m12239up().mo12216c(INetworkLoadTaskCallback.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 18:
                    aej.m12239up().mo12196uj();
                    return;
                case 19:
                default:
                    return;
                case 22:
                    aej.m12239up().mo12204ts();
                    return;
                case 23:
                    aej.m12239up().mo12203tt();
                    return;
                case 24:
                    aej.m12239up().mo12202tu();
                    return;
                case 32:
                    aej.m12239up().mo12221ab(((Long) argsPack.next()).longValue());
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 1:
                    return aej.m12239up().mo12201ue();
                case 2:
                case 3:
                case 7:
                case 8:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 22:
                case 23:
                case 24:
                default:
                    return null;
                case 4:
                    return Boolean.valueOf(aej.m12239up().mo12207tc());
                case 5:
                    return Boolean.valueOf(aej.m12239up().mo12200uf());
                case 6:
                    return Boolean.valueOf(aej.m12239up().mo12199ug());
                case 9:
                    return Integer.valueOf(aej.m12239up().mo12235a((CheckResult) argsPack.next(), ((Integer) argsPack.next()).intValue()));
                case 10:
                    return Boolean.valueOf(aej.m12239up().mo12234a(ICheckIPCListener.Stub.asInterface((IBinder) argsPack.next())));
                case 11:
                    return Boolean.valueOf(aej.m12239up().mo12223a(((Boolean) argsPack.next()).booleanValue(), ICheckIPCListener.Stub.asInterface((IBinder) argsPack.next())));
                case 12:
                    return Boolean.valueOf(aej.m12239up().mo12220aw(((Boolean) argsPack.next()).booleanValue()));
                case 13:
                    return Boolean.valueOf(aej.m12239up().mo12197ui());
                case 20:
                    return aej.m12239up().mo12206tq();
                case 21:
                    return Boolean.valueOf(aej.m12239up().mo12205tr());
                case 25:
                    return Boolean.valueOf(aej.m12239up().mo12224a((C3683u) argsPack.next(), ((Long) argsPack.next()).longValue()));
            }
        }
    }
}
