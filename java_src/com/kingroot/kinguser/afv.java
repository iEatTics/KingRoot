package com.kingroot.kinguser;

import com.kingroot.kinguser.apv;
import java.io.File;
import java.util.List;
/* loaded from: classes.dex */
public interface afv {
    @InterfaceC3725us
    /* renamed from: ad */
    void mo12014ad(List<String> list);

    @InterfaceC3725us
    /* renamed from: fj */
    void mo12013fj(String str);

    /* renamed from: com.kingroot.kinguser.afv$a */
    /* loaded from: classes.dex */
    public static class C0832a implements afv {
        private static cce<C0832a> ajq = new cce<C0832a>() { // from class: com.kingroot.kinguser.afv.a.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.kingroot.kinguser.cce
            /* renamed from: vF */
            public C0832a create() {
                return new C0832a();
            }
        };
        private apv.InterfaceC1440a ajr;

        @InterfaceC3726ut
        /* renamed from: vE */
        public static C0832a m12012vE() {
            return ajq.get();
        }

        private C0832a() {
            this.ajr = new apv.InterfaceC1440a() { // from class: com.kingroot.kinguser.afv.a.2
                @Override // com.kingroot.kinguser.apv.InterfaceC1440a
                /* renamed from: i */
                public void mo9706i(String str, File file) {
                    aea.m12288g(2, 1, 0);
                }

                @Override // com.kingroot.kinguser.apv.InterfaceC1440a
                /* renamed from: fk */
                public void mo9707fk(String str) {
                    aea.m12288g(2, 2, 0);
                }

                @Override // com.kingroot.kinguser.apv.InterfaceC1440a
                /* renamed from: j */
                public void mo9705j(String str, File file) {
                }
            };
        }

        @Override // com.kingroot.kinguser.afv
        /* renamed from: fj */
        public void mo12013fj(String str) {
            apv.m9735LO().m9731a(str, this.ajr);
        }

        @Override // com.kingroot.kinguser.afv
        /* renamed from: ad */
        public void mo12014ad(List<String> list) {
            apv.m9735LO().m9728a(list, this.ajr);
        }
    }
}
