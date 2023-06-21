package com.kingroot.kinguser;

import android.os.IBinder;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.advance.manager.IPermChangedListener;
import com.kingroot.kinguser.advance.model.AdvancePermModel;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ahe extends AbstractC3704uo {
    private static cce<ahe> sInstance = new cce<ahe>() { // from class: com.kingroot.kinguser.ahe.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: wM */
        public ahe create() {
            return new ahe();
        }
    };

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C0931a.class;
    }

    /* renamed from: fN */
    public List<AdvancePermModel> m11808fN(String str) {
        return (List) m2018b(6, new ArgsPack(str)).getResult();
    }

    /* renamed from: wI */
    public Map<Integer, List<AdvancePermModel>> m11806wI() {
        return (Map) m2019aY(4).getResult();
    }

    /* renamed from: wJ */
    public Map<String, List<AdvancePermModel>> m11805wJ() {
        return (Map) m2019aY(9).getResult();
    }

    /* renamed from: wK */
    public int m11804wK() {
        return ((Integer) m2019aY(5).getResult()).intValue();
    }

    /* renamed from: c */
    public void m11810c(IPermChangedListener iPermChangedListener) {
        m2022a(7, new ArgsPack(iPermChangedListener));
    }

    /* renamed from: d */
    public void m11809d(IPermChangedListener iPermChangedListener) {
        m2022a(8, new ArgsPack(iPermChangedListener));
    }

    /* renamed from: x */
    public void m11802x(String str, boolean z) {
        m2022a(10, new ArgsPack(str, Boolean.valueOf(z)));
    }

    /* renamed from: h */
    public void m11807h(Map<String, Boolean> map) {
        m2022a(11, new ArgsPack(map));
    }

    private ahe() {
    }

    /* renamed from: wL */
    public static ahe m11803wL() {
        return sInstance.get();
    }

    /* renamed from: com.kingroot.kinguser.ahe$a */
    /* loaded from: classes.dex */
    public static class C0931a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 2:
                    ahf.m11782wN().m11794c((AdvancePermModel) argsPack.next());
                    return;
                case 3:
                case 4:
                case 5:
                case 6:
                case 9:
                default:
                    return;
                case 7:
                    ahf.m11782wN().m11795c(IPermChangedListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 8:
                    ahf.m11782wN().m11792d(IPermChangedListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 10:
                    ahf.m11782wN().m11776x((String) argsPack.next(), ((Boolean) argsPack.next()).booleanValue());
                    return;
                case 11:
                    ahf.m11782wN().m11787h((Map) argsPack.next());
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 3:
                    return ahf.m11782wN().m11786q((String) argsPack.next(), ((Integer) argsPack.next()).intValue());
                case 4:
                    return ahf.m11782wN().m11785wI();
                case 5:
                    return Integer.valueOf(ahf.m11782wN().m11783wK());
                case 6:
                    return ahf.m11782wN().m11788fN((String) argsPack.next());
                case 7:
                case 8:
                default:
                    return null;
                case 9:
                    return ahf.m11782wN().m11784wJ();
            }
        }
    }
}
