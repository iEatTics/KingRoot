package com.kingroot.kinguser;

import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ata extends AbstractC3704uo implements ate {
    private static final cce<ata> aNI = new cce<ata>() { // from class: com.kingroot.kinguser.ata.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: OQ */
        public ata create() {
            return new ata();
        }
    };

    ata() {
    }

    /* renamed from: OO */
    public static ata m9325OO() {
        return aNI.get();
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C1511a.class;
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: d */
    public void mo9299d(List<String> list, String str) {
        m2022a(1, new ArgsPack(list, str));
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: e */
    public void mo9298e(List<String> list, String str) {
        m2022a(2, new ArgsPack(list, str));
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: OH */
    public List<String> mo9306OH() {
        return (List) m2019aY(5).getResult();
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: OI */
    public List<String> mo9305OI() {
        return (List) m2019aY(6).getResult();
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: av */
    public void mo9302av(String str, String str2) {
        m2022a(3, new ArgsPack(str, str2));
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: aw */
    public void mo9301aw(String str, String str2) {
        m2022a(4, new ArgsPack(str, str2));
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: iW */
    public void mo9297iW(String str) {
        m2022a(7, new ArgsPack(str));
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: iX */
    public void mo9296iX(String str) {
        m2022a(8, new ArgsPack(str));
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: iY */
    public List<Long> mo9295iY(String str) {
        return (List) m2018b(9, new ArgsPack(str)).getResult();
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: iZ */
    public void mo9294iZ(String str) {
        m2022a(10, new ArgsPack(str));
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: ja */
    public boolean mo9293ja(String str) {
        return ((Boolean) m2018b(11, new ArgsPack(str)).getResult()).booleanValue();
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: bW */
    public void mo9300bW(long j) {
        m2022a(13, new ArgsPack(Long.valueOf(j)));
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: OP */
    public long mo9304OP() {
        return ((Long) m2019aY(14).getResult()).longValue();
    }

    @Override // com.kingroot.kinguser.ate
    /* renamed from: jb */
    public void mo9292jb(String str) {
        m2022a(12, new ArgsPack(str));
    }

    /* renamed from: com.kingroot.kinguser.ata$a */
    /* loaded from: classes.dex */
    public static class C1511a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 5:
                    return atf.m9303OV().mo9306OH();
                case 6:
                    return atf.m9303OV().mo9305OI();
                case 7:
                case 8:
                case 10:
                case 12:
                case 13:
                default:
                    return null;
                case 9:
                    return atf.m9303OV().mo9295iY((String) argsPack.next());
                case 11:
                    return Boolean.valueOf(atf.m9303OV().mo9293ja((String) argsPack.next()));
                case 14:
                    return Long.valueOf(atf.m9303OV().mo9304OP());
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 1:
                    atf.m9303OV().mo9299d((List) argsPack.next(), (String) argsPack.next());
                    return;
                case 2:
                    atf.m9303OV().mo9298e((List) argsPack.next(), (String) argsPack.next());
                    return;
                case 3:
                    atf.m9303OV().mo9302av((String) argsPack.next(), (String) argsPack.next());
                    return;
                case 4:
                    atf.m9303OV().mo9301aw((String) argsPack.next(), (String) argsPack.next());
                    return;
                case 5:
                case 6:
                case 9:
                case 11:
                default:
                    return;
                case 7:
                    atf.m9303OV().mo9297iW((String) argsPack.next());
                    return;
                case 8:
                    atf.m9303OV().mo9296iX((String) argsPack.next());
                    return;
                case 10:
                    atf.m9303OV().mo9294iZ((String) argsPack.next());
                    return;
                case 12:
                    atf.m9303OV().mo9292jb((String) argsPack.next());
                    return;
                case 13:
                    atf.m9303OV().mo9300bW(((Long) argsPack.next()).longValue());
                    return;
            }
        }
    }
}
