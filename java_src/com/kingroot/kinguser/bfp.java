package com.kingroot.kinguser;

import android.os.IBinder;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.urlcheck.aidl.ICallback;
import com.kingroot.kinguser.urlcheck.aidl.UrlCheckRule;
import java.util.List;
/* loaded from: classes.dex */
public class bfp extends AbstractC3704uo {
    private static cce<bfp> bnd = new cce<bfp>() { // from class: com.kingroot.kinguser.bfp.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: aaA */
        public bfp create() {
            return new bfp();
        }
    };

    public static bfp aay() {
        return bnd.get();
    }

    private bfp() {
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C2211a.class;
    }

    /* renamed from: a */
    public void m7252a(boolean z, ICallback iCallback) {
        m2022a(1, new ArgsPack(Boolean.valueOf(z), iCallback));
    }

    public boolean isEnable() {
        IpcResult aY = m2019aY(2);
        if (aY == null) {
            return false;
        }
        return ((Boolean) aY.getResult()).booleanValue();
    }

    public void addRule(UrlCheckRule urlCheckRule) {
        m2022a(3, new ArgsPack(urlCheckRule));
    }

    public void aaz() {
        if (bfw.aaS().aaU()) {
            m2020aX(5);
        }
    }

    /* renamed from: bP */
    public void m7251bP(List<UrlCheckRule> list) {
        m2022a(7, new ArgsPack(list));
    }

    /* renamed from: com.kingroot.kinguser.bfp$a */
    /* loaded from: classes.dex */
    public static class C2211a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 1:
                    bfq.aaB().m7245a(((Boolean) argsPack.next()).booleanValue(), ICallback.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 2:
                case 6:
                case 8:
                default:
                    return;
                case 3:
                    bfq.aaB().addRule((UrlCheckRule) argsPack.next());
                    return;
                case 4:
                    bfq.aaB().deleteRule((UrlCheckRule) argsPack.next());
                    return;
                case 5:
                    bfq.aaB().aaz();
                    return;
                case 7:
                    bfq.aaB().m7243bP((List) argsPack.next());
                    return;
                case 9:
                    bfq.aaB().m7242bQ((List) argsPack.next());
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 2:
                    return Boolean.valueOf(bfq.aaB().isEnable());
                case 6:
                    return bfq.aaB().getSharkGuid();
                case 8:
                    return Integer.valueOf(bfq.aaB().aaD());
                default:
                    return null;
            }
        }
    }
}
