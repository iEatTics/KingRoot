package com.kingroot.kinguser;

import android.os.IBinder;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.xmod.ITpsCallback;
import com.kingroot.kinguser.xmod.cloud.CveCloudListManager;
import java.util.List;
/* loaded from: classes.dex */
public class biq extends AbstractC3704uo {
    private static cce<biq> sInstance = new cce<biq>() { // from class: com.kingroot.kinguser.biq.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: add */
        public biq create() {
            return new biq();
        }
    };

    private biq() {
    }

    public static biq ada() {
        return sInstance.get();
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C2341a.class;
    }

    public void start() {
        m2020aX(3);
    }

    public boolean adb() {
        IpcResult aY = m2019aY(5);
        if (aY.getResult() == null) {
            return false;
        }
        return ((Boolean) aY.getResult()).booleanValue();
    }

    /* renamed from: eh */
    public void m6848eh(boolean z) {
        m2022a(6, new ArgsPack(Boolean.valueOf(z)));
    }

    /* renamed from: jf */
    public List<CveCloudListManager.CveInfo> m6847jf(int i) {
        return (List) m2018b(7, new ArgsPack(Integer.valueOf(i))).getResult();
    }

    public int adc() {
        return ((Integer) m2019aY(8).getResult()).intValue();
    }

    /* renamed from: com.kingroot.kinguser.biq$a */
    /* loaded from: classes.dex */
    public static class C2341a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 1:
                    bir.ade().m6844a(ITpsCallback.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 2:
                    bir.ade().m6843b(ITpsCallback.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 3:
                    bir.ade().start();
                    return;
                case 4:
                    bir.ade().stop();
                    return;
                case 5:
                default:
                    return;
                case 6:
                    bir.ade().m6841eh(((Boolean) argsPack.next()).booleanValue());
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 5:
                    return Boolean.valueOf(bir.ade().adb());
                case 6:
                default:
                    return null;
                case 7:
                    return bir.ade().m6840jf(((Integer) argsPack.next()).intValue());
                case 8:
                    return Integer.valueOf(bir.ade().adc());
            }
        }
    }
}
