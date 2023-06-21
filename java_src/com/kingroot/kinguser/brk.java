package com.kingroot.kinguser;

import android.os.Bundle;
import android.view.View;
import com.kingroot.kinguser.brt;
import com.tencent.qqpim.discovery.AdDisplayModel;
import com.tencent.qqpim.discovery.AdRequestData;
import java.util.List;
/* loaded from: classes.dex */
public class brk implements brc {
    private List<AdDisplayModel> bJV;
    private AdRequestData bJW;
    private brd bJX;
    private final Object lock = new Object();
    private brt bJY = new brt();

    public brk(AdRequestData adRequestData) {
        this.bJW = adRequestData;
        this.bJY.m5638a(new brt.InterfaceC2604a() { // from class: com.kingroot.kinguser.brk.1
            @Override // com.kingroot.kinguser.brt.InterfaceC2604a
            /* renamed from: h */
            public void mo5621h(AdDisplayModel adDisplayModel) {
                brk.this.m5685g(adDisplayModel);
                if (brk.this.bJX != null) {
                    brk.this.bJX.mo5703d(adDisplayModel);
                }
            }

            @Override // com.kingroot.kinguser.brt.InterfaceC2604a
            /* renamed from: b */
            public void mo5622b(AdDisplayModel adDisplayModel, Bundle bundle) {
                brk.this.m5690a(adDisplayModel, bundle);
                if (brk.this.bJX != null) {
                    brk.this.bJX.mo5704c(adDisplayModel);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public void m5685g(AdDisplayModel adDisplayModel) {
        bre.ahy().ahA().m5645j(adDisplayModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m5690a(AdDisplayModel adDisplayModel, Bundle bundle) {
        bre.ahy().ahA().m5653c(adDisplayModel, bundle);
    }

    /* renamed from: b */
    public void m5688b(View view, AdDisplayModel adDisplayModel) {
        bth.m5542d("registerViewForInteraction() model=" + adDisplayModel.uniqueKey);
        this.bJY.m5639a(view, adDisplayModel, null);
    }

    public void ahC() {
        bth.m5542d("loadAd()");
        AdRequestData adRequestData = this.bJW;
        try {
            adRequestData = this.bJW.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
        }
        m5689a(adRequestData, false);
    }

    public List<AdDisplayModel> ahD() {
        return this.bJV;
    }

    /* renamed from: a */
    public void m5695a(brd brdVar) {
        this.bJX = brdVar;
    }

    public void ahE() {
        bth.m5542d("loadcachedAd()");
        AdRequestData adRequestData = this.bJW;
        try {
            adRequestData = this.bJW.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
        }
        m5689a(adRequestData, true);
    }

    /* renamed from: a */
    private void m5689a(AdRequestData adRequestData, boolean z) {
        bre.ahy().ahA().m5659a(adRequestData, z, new brb() { // from class: com.kingroot.kinguser.brk.2
            @Override // com.kingroot.kinguser.brb, com.kingroot.kinguser.brq.InterfaceC2600a
            /* renamed from: i */
            public void mo5641i(int i, List<AdDisplayModel> list) {
                brk.this.bJY.reset();
                synchronized (brk.this.lock) {
                    brk.this.bJV = list;
                }
                if (brk.this.bJX != null) {
                    if (btf.m5548cn(list)) {
                        brk.this.bJX.mo5705a(brk.this, i);
                    } else if (brk.this.bJX instanceof brf) {
                        ((brf) brk.this.bJX).m5697a(brk.this, list);
                    } else {
                        brk.this.bJX.mo5706a(brk.this);
                    }
                }
            }
        });
    }
}
