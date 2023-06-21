package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.common.app.KApplication;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public class alo {
    private static final String TAG = aiq.arY + "_AppMarketMgr";
    private static final cce<alo> sInstance = new cce<alo>() { // from class: com.kingroot.kinguser.alo.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: GX */
        public alo create() {
            return new alo();
        }
    };

    /* renamed from: GW */
    public static alo m10553GW() {
        return sInstance.get();
    }

    private alo() {
    }

    public void init() {
        btx.aid().m5508a(KApplication.m13453ge(), new buk() { // from class: com.kingroot.kinguser.alo.2
            @Override // com.kingroot.kinguser.buk
            /* renamed from: a */
            public void mo5487a(int i, JceStruct jceStruct, JceStruct jceStruct2, final bul bulVar) {
                awn.m8629Ta().m8628a(i, jceStruct, jceStruct2, new cat() { // from class: com.kingroot.kinguser.alo.2.1
                    @Override // com.kingroot.kinguser.cat
                    /* renamed from: a */
                    public void mo2689a(int i2, int i3, int i4, int i5, JceStruct jceStruct3) {
                        if (bulVar != null) {
                            bulVar.mo5414a(i4, jceStruct3);
                        }
                    }
                });
            }

            @Override // com.kingroot.kinguser.buk
            /* renamed from: a */
            public void mo5486a(final bvp bvpVar, final buh buhVar) {
                beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.alo.2.2
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        int i;
                        try {
                            C3752vd.m1903a(bvpVar.bQD, bvpVar.bQE, bvpVar.bQF, bvpVar.bQH, bvpVar.bQI);
                            bvpVar.bQH.put(C3749vc.PHONE_TYPE, C3752vd.m1899lh());
                            Context m13453ge = KApplication.m13453ge();
                            bvpVar.bQH.put(C3749vc.f3691JI, C3752vd.m1905T(m13453ge));
                            for (String str : bvpVar.bQG.keySet()) {
                                bvpVar.bQH.put(str, bvpVar.bQG.get(str));
                            }
                            i = C3752vd.m1902a(m13453ge, bvpVar.bQH, bvpVar.bQI, false);
                            if (i != 0) {
                                i = -6000;
                            }
                        } catch (Exception e) {
                            i = -3000;
                        }
                        if (buhVar != null) {
                            buhVar.mo5415a(i, bvpVar);
                        }
                    }
                }));
            }
        }, false);
    }
}
