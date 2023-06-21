package com.kingroot.kinguser;

import com.kingroot.common.app.KApplication;
/* loaded from: classes.dex */
public class abv {
    private static final cce<abv> sInstance = new cce<abv>() { // from class: com.kingroot.kinguser.abv.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: rz */
        public abv create() {
            return new abv();
        }
    };

    /* renamed from: ZX */
    private abs f1380ZX;

    private abv() {
        this.f1380ZX = null;
        this.f1380ZX = KApplication.m13427ir();
        if (this.f1380ZX == null) {
            this.f1380ZX = new abt();
        }
    }

    /* renamed from: ry */
    public static abv m12747ry() {
        return sInstance.get();
    }

    /* renamed from: rr */
    public abm m12748rr() {
        if (this.f1380ZX == null) {
            return null;
        }
        return this.f1380ZX.m12756rr();
    }

    /* renamed from: a */
    public void m12749a(abs absVar) {
        abs m13427ir = absVar == null ? KApplication.m13427ir() : absVar;
        if (m13427ir == null) {
            m13427ir = new abt();
        }
        this.f1380ZX = m13427ir;
    }
}
