package com.kingroot.kinguser;

import com.kingroot.kinguser.bzp;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.pc */
/* loaded from: classes.dex */
public class C3415pc implements bzp.InterfaceC2683b {
    final /* synthetic */ String val$name;

    /* renamed from: yw */
    final /* synthetic */ C3398oz f3275yw;

    /* renamed from: yz */
    final /* synthetic */ String f3276yz;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3415pc(C3398oz c3398oz, String str, String str2) {
        this.f3275yw = c3398oz;
        this.val$name = str;
        this.f3276yz = str2;
    }

    @Override // com.kingroot.kinguser.bzp.InterfaceC2683b
    public String getLocalName() {
        return this.val$name;
    }

    @Override // com.kingroot.kinguser.bzp.InterfaceC2683b
    public String getUrl() {
        return this.f3276yz;
    }
}
