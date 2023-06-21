package com.kingroot.kinguser;

import android.support.p007v7.widget.GridLayoutManager;
/* renamed from: com.kingroot.kinguser.xw */
/* loaded from: classes.dex */
class C3902xw {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: ow */
    public static InterfaceC3901xv m1436ow() {
        return new InterfaceC3901xv() { // from class: com.kingroot.kinguser.xw.1
            @Override // com.kingroot.kinguser.InterfaceC3901xv
            public int getSpanCount() {
                return 1;
            }

            @Override // com.kingroot.kinguser.InterfaceC3901xv
            /* renamed from: bT */
            public int mo1435bT(int i) {
                return 0;
            }

            @Override // com.kingroot.kinguser.InterfaceC3901xv
            public int getSpanSize(int i) {
                return 1;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static InterfaceC3901xv m1437a(final GridLayoutManager gridLayoutManager) {
        return new InterfaceC3901xv() { // from class: com.kingroot.kinguser.xw.2
            @Override // com.kingroot.kinguser.InterfaceC3901xv
            public int getSpanCount() {
                return GridLayoutManager.this.getSpanCount();
            }

            @Override // com.kingroot.kinguser.InterfaceC3901xv
            /* renamed from: bT */
            public int mo1435bT(int i) {
                return GridLayoutManager.this.getSpanSizeLookup().getSpanIndex(i, getSpanCount());
            }

            @Override // com.kingroot.kinguser.InterfaceC3901xv
            public int getSpanSize(int i) {
                return GridLayoutManager.this.getSpanSizeLookup().getSpanSize(i);
            }
        };
    }
}
