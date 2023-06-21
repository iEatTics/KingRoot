package com.kingroot.kinguser;

import android.os.IBinder;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
import com.kingroot.kinguser.distribution.examination.net.ReqAppCallback;
import java.util.List;
/* loaded from: classes.dex */
public class apc extends AbstractC3704uo implements aor {
    private static final cce<apc> aGq = new cce<apc>() { // from class: com.kingroot.kinguser.apc.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: KT */
        public apc create() {
            return new apc();
        }
    };

    /* renamed from: KS */
    public static apc m9842KS() {
        return aGq.get();
    }

    @Override // com.kingroot.kinguser.aor
    @WorkerThread
    /* renamed from: JX */
    public List<ExamRecommendAppInfo> mo9844JX() {
        return (List) m2019aY(7).getResult();
    }

    @Override // com.kingroot.kinguser.aor
    @WorkerThread
    /* renamed from: JY */
    public List<ExamRecommendAppInfo> mo9843JY() {
        return (List) m2019aY(5).getResult();
    }

    /* renamed from: hH */
    public void m9840hH(@Nullable String str) {
        m2022a(3, new ArgsPack(str));
    }

    @Override // com.kingroot.kinguser.aor
    /* renamed from: Kc */
    public void mo9841Kc() {
        m2020aX(6);
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C1405a.class;
    }

    /* renamed from: com.kingroot.kinguser.apc$a */
    /* loaded from: classes.dex */
    public static class C1405a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 1:
                    apb.m9846KQ().m9917a(ReqAppCallback.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 2:
                    apb.m9846KQ().m9915b(ReqAppCallback.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 3:
                    apb.m9846KQ().m9913hH((String) argsPack.next());
                    return;
                case 4:
                case 5:
                default:
                    return;
                case 6:
                    apb.m9846KQ().mo9841Kc();
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 4:
                    return Integer.valueOf(apb.m9846KQ().m9912hI((String) argsPack.next()));
                case 5:
                    return apb.m9846KQ().mo9843JY();
                case 6:
                default:
                    return null;
                case 7:
                    return apb.m9846KQ().mo9844JX();
            }
        }
    }
}
