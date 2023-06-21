package com.kingroot.kinguser;

import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.urlcheck.aidl.UrlCheckRule;
import com.kingroot.kinguser.urlcheck.p016db.UrlCheckLog;
import java.util.List;
/* loaded from: classes.dex */
public class bfs extends AbstractC3704uo {
    private static cce<bfs> bnd = new cce<bfs>() { // from class: com.kingroot.kinguser.bfs.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: aaK */
        public bfs create() {
            return new bfs();
        }
    };

    private bfs() {
    }

    public static bfs aaI() {
        return bnd.get();
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C2219a.class;
    }

    /* renamed from: a */
    public List<UrlCheckLog> m7235a(boolean z, long j) {
        return (List) m2018b(1, new ArgsPack(Boolean.valueOf(z), Long.valueOf(j))).getResult();
    }

    /* renamed from: c */
    public void m7234c(UrlCheckLog urlCheckLog) {
        m2022a(2, new ArgsPack(urlCheckLog));
    }

    /* renamed from: d */
    public void m7233d(UrlCheckLog urlCheckLog) {
        m2022a(9, new ArgsPack(urlCheckLog));
    }

    /* renamed from: lh */
    public void m7230lh(String str) {
        m2022a(10, new ArgsPack(str));
    }

    /* renamed from: dP */
    public void m7232dP(boolean z) {
        m2022a(5, new ArgsPack(Boolean.valueOf(z)));
    }

    /* renamed from: e */
    public void m7231e(UrlCheckLog urlCheckLog) {
        m2022a(7, new ArgsPack(urlCheckLog));
    }

    public void addRule(UrlCheckRule urlCheckRule) {
        m2022a(3, new ArgsPack(urlCheckRule));
    }

    public List<UrlCheckRule> aaJ() {
        IpcResult aY = m2019aY(8);
        if (aY != null) {
            return (List) aY.getResult();
        }
        return null;
    }

    public void deleteRule(UrlCheckRule urlCheckRule) {
        m2022a(11, new ArgsPack(urlCheckRule));
    }

    /* renamed from: com.kingroot.kinguser.bfs$a */
    /* loaded from: classes.dex */
    public static class C2219a implements InterfaceC3705up {
        private final bft bnt = bft.aaL();

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 2:
                    this.bnt.m7227c((UrlCheckLog) argsPack.next());
                    return;
                case 3:
                    this.bnt.addRule((UrlCheckRule) argsPack.next());
                    return;
                case 4:
                    this.bnt.aaM();
                    return;
                case 5:
                    this.bnt.m7225dP(((Boolean) argsPack.next()).booleanValue());
                    return;
                case 6:
                    this.bnt.m7228bR((List) argsPack.next());
                    return;
                case 7:
                    this.bnt.m7224e((UrlCheckLog) argsPack.next());
                    return;
                case 8:
                default:
                    return;
                case 9:
                    this.bnt.m7226d((UrlCheckLog) argsPack.next());
                    return;
                case 10:
                    this.bnt.m7223lh((String) argsPack.next());
                    return;
                case 11:
                    this.bnt.deleteRule((UrlCheckRule) argsPack.next());
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 1:
                    return this.bnt.m7229a(((Boolean) argsPack.next()).booleanValue(), ((Long) argsPack.next()).longValue());
                case 8:
                    return this.bnt.aaJ();
                default:
                    return null;
            }
        }
    }
}
