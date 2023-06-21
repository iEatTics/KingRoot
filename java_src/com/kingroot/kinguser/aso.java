package com.kingroot.kinguser;

import android.os.IBinder;
import android.support.annotation.NonNull;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.gamebox.common.ApkInstallRequest;
import com.kingroot.kinguser.gamebox.common.IAppChangedListener;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class aso extends AbstractC3704uo implements asy {
    private static final String TAG = aiq.arY + "_ApkInstaller";
    private static cce<aso> axU = new cce<aso>() { // from class: com.kingroot.kinguser.aso.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Om */
        public aso create() {
            return new aso();
        }
    };

    /* renamed from: Ol */
    public static aso m9417Ol() {
        return axU.get();
    }

    private aso() {
    }

    /* renamed from: com.kingroot.kinguser.aso$a */
    /* loaded from: classes.dex */
    public static class C1487a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 2:
                    asp.m9407On().mo9329a((String) argsPack.next(), IAppInstallListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 3:
                    asp.m9407On().m9391iy((String) argsPack.next());
                    return;
                case 4:
                    asp.m9407On().m9393iH((String) argsPack.next());
                    return;
                case 5:
                    asp.m9407On().m9403a(IAppChangedListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                default:
                    return;
                case 17:
                    ApkInstallRequest apkInstallRequest = (ApkInstallRequest) argsPack.next();
                    IBinder iBinder = (IBinder) argsPack.next();
                    asp.m9407On().mo9331a(apkInstallRequest, iBinder == null ? null : IAppInstallListener.Stub.asInterface(iBinder));
                    return;
                case 18:
                    asp.m9407On().mo9330a(IAppInstallListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 19:
                    asp.m9407On().m9402b(IAppChangedListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 20:
                    asp.m9407On().m9390iz((String) argsPack.next());
                    return;
                case 21:
                    asp.m9407On().m9400iA((String) argsPack.next());
                    return;
                case 22:
                    asp.m9407On().m9399iB((String) argsPack.next());
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 16:
                    return Integer.valueOf(asp.m9407On().m9392ix((String) argsPack.next()));
                case 23:
                    return asp.m9407On().mo9333GT();
                case 24:
                    return Boolean.valueOf(asp.m9407On().mo9332GU());
                default:
                    return null;
            }
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C1487a.class;
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: a */
    public void mo9331a(@NonNull ApkInstallRequest apkInstallRequest, IAppInstallListener iAppInstallListener) {
        Object[] objArr = new Object[2];
        objArr[0] = apkInstallRequest;
        objArr[1] = iAppInstallListener == null ? null : iAppInstallListener.asBinder();
        m2022a(17, new ArgsPack(objArr));
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: a */
    public void mo9329a(String str, IAppInstallListener iAppInstallListener) {
        m2022a(2, new ArgsPack(str, iAppInstallListener));
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: a */
    public void mo9330a(IAppInstallListener iAppInstallListener) {
        m2022a(18, new ArgsPack(iAppInstallListener));
    }

    /* renamed from: ix */
    public int m9412ix(String str) {
        return ((Integer) m2018b(16, new ArgsPack(str)).getResult()).intValue();
    }

    /* renamed from: iy */
    public void m9411iy(String str) {
        m2022a(3, new ArgsPack(str));
    }

    /* renamed from: a */
    public void m9416a(IAppChangedListener iAppChangedListener) {
        m2022a(5, new ArgsPack(iAppChangedListener));
    }

    /* renamed from: b */
    public void m9415b(IAppChangedListener iAppChangedListener) {
        m2022a(19, new ArgsPack(iAppChangedListener));
    }

    /* renamed from: iz */
    public void m9410iz(String str) {
        m2022a(20, new ArgsPack(str));
    }

    /* renamed from: iA */
    public void m9414iA(String str) {
        m2022a(21, new ArgsPack(str));
    }

    /* renamed from: iB */
    public void m9413iB(String str) {
        m2022a(22, new ArgsPack(str));
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: GT */
    public ArrayList<String> mo9333GT() {
        return (ArrayList) m2019aY(23).getResult();
    }

    @Override // com.kingroot.kinguser.asy
    /* renamed from: GU */
    public boolean mo9332GU() {
        Boolean bool = (Boolean) m2019aY(24).getResult();
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }
}
