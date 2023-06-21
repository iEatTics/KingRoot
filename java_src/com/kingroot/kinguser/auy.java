package com.kingroot.kinguser;

import android.content.Context;
/* loaded from: classes.dex */
public class auy {
    private static final cce<auy> sInstance = new cce<auy>() { // from class: com.kingroot.kinguser.auy.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Rb */
        public auy create() {
            return new auy();
        }
    };

    /* renamed from: Ra */
    public static auy m8883Ra() {
        return sInstance.get();
    }

    private auy() {
    }

    /* renamed from: bb */
    public void m8882bb(Context context) {
        bnu.m6147a(context, "123", null, null, null);
        bol agu = bnu.agu();
        agu.mo6057a(bon.Cate_DefaultMass, 3);
        agu.mo6057a(bon.Cate_DefaultEase, 5);
    }
}
