package com.kingroot.kinguser;

import android.graphics.Bitmap;
import com.kingroot.kinguser.C3422pj;
/* renamed from: com.kingroot.kinguser.pm */
/* loaded from: classes.dex */
class C3434pm implements C3422pj.InterfaceC3423a {

    /* renamed from: yV */
    final /* synthetic */ C3426pl f3308yV;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3434pm(C3426pl c3426pl) {
        this.f3308yV = c3426pl;
    }

    @Override // com.kingroot.kinguser.C3422pj.InterfaceC3423a
    /* renamed from: a */
    public void mo2621a(Bitmap bitmap) {
        if (bitmap != null) {
            this.f3308yV.f3296yN.setSmallIcon(this.f3308yV.f3297yO).setLargeIcon(bitmap);
            this.f3308yV.f3303yU.m2642a(this.f3308yV.f3305yu, this.f3308yV.f3298yP.type, this.f3308yV.f3299yQ, this.f3308yV.f3304yr, this.f3308yV.f3296yN, this.f3308yV.f3300yR, this.f3308yV.f3301yS, this.f3308yV.f3302yT, this.f3308yV.f3298yP, this.f3308yV.f3306yv, this.f3308yV.f3294yF);
        }
    }
}
