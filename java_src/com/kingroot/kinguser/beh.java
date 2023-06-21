package com.kingroot.kinguser;

import android.support.annotation.Nullable;
import com.kingroot.kinguser.bea;
/* loaded from: classes.dex */
public class beh {
    private static final cce<bea> sInstance = new cce<bea>() { // from class: com.kingroot.kinguser.beh.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Zp */
        public bea create() {
            return bei.m7437Zq();
        }
    };

    /* renamed from: Zo */
    public static bea m7443Zo() {
        return sInstance.get();
    }

    @Nullable
    /* renamed from: c */
    public static bea.EnumC2115a m7441c(bec becVar) {
        C3948zd.m1327k(becVar);
        switch (becVar) {
            case Light_Weight:
                return bea.EnumC2115a.TYPE_LIGHT;
            case Normal:
                return bea.EnumC2115a.TYPE_NORMAL;
            default:
                return null;
        }
    }

    @Nullable
    /* renamed from: c */
    public static bec m7442c(bea.EnumC2115a enumC2115a) {
        C3948zd.m1327k(enumC2115a);
        switch (enumC2115a) {
            case TYPE_LIGHT:
                return bec.Light_Weight;
            case TYPE_NORMAL:
                return bec.Normal;
            default:
                return null;
        }
    }
}
