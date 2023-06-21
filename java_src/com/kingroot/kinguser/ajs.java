package com.kingroot.kinguser;

import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.model.SuRequestCmdModel;
/* loaded from: classes.dex */
public class ajs extends AbstractC3704uo {
    private static final cce<ajs> sInstance = new cce<ajs>() { // from class: com.kingroot.kinguser.ajs.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: zy */
        public ajs create() {
            return new ajs();
        }
    };

    /* renamed from: zx */
    public static ajs m11423zx() {
        return sInstance.get();
    }

    private ajs() {
    }

    /* renamed from: b */
    public void m11425b(SuRequestCmdModel suRequestCmdModel) {
        m2022a(1, new ArgsPack(suRequestCmdModel));
    }

    /* renamed from: gy */
    public void m11424gy(String str) {
        m2022a(2, new ArgsPack(str));
    }

    /* renamed from: aS */
    public void m11426aS(boolean z) {
        m2022a(4, new ArgsPack(Boolean.valueOf(z)));
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C1022a.class;
    }

    /* renamed from: com.kingroot.kinguser.ajs$a */
    /* loaded from: classes.dex */
    public static class C1022a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            if (argsPack == null) {
                argsPack = new ArgsPack(new Object[0]);
            }
            switch (i) {
                case 1:
                    ajt.m11408zz().m11418b((SuRequestCmdModel) argsPack.next());
                    return;
                case 2:
                    ajt.m11408zz().m11414gy((String) argsPack.next());
                    return;
                case 3:
                    ajt.m11408zz().m11419ah((String) argsPack.next(), (String) argsPack.next());
                    return;
                case 4:
                    ajt.m11408zz().m11420aS(((Boolean) argsPack.next()).booleanValue());
                    return;
                default:
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            if (argsPack == null) {
                new ArgsPack(new Object[0]);
            }
            switch (i) {
                case 5:
                    return Boolean.valueOf(ajt.m11408zz().m11409zC());
                default:
                    return null;
            }
        }
    }
}
