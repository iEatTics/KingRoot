package com.kingroot.kinguser;

import com.kingroot.kinguser.bzp;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.pd */
/* loaded from: classes.dex */
public class C3416pd implements bzp.InterfaceC2683b {
    final /* synthetic */ String val$name;

    /* renamed from: yw */
    final /* synthetic */ C3398oz f3277yw;

    /* renamed from: yz */
    final /* synthetic */ String f3278yz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3416pd(C3398oz c3398oz, String str, String str2) {
        this.f3277yw = c3398oz;
        this.val$name = str;
        this.f3278yz = str2;
    }

    @Override // com.kingroot.kinguser.bzp.InterfaceC2683b
    public String getLocalName() {
        return this.val$name;
    }

    @Override // com.kingroot.kinguser.bzp.InterfaceC2683b
    public String getUrl() {
        return this.f3278yz;
    }
}
