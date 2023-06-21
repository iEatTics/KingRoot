package com.kingroot.kinguser;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.gc */
/* loaded from: classes.dex */
public final class C3117gc implements InterfaceC3065fq {

    /* renamed from: ql */
    final /* synthetic */ List f2702ql;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3117gc(List list) {
        this.f2702ql = list;
    }

    @Override // com.kingroot.kinguser.InterfaceC3065fq
    /* renamed from: b */
    public void mo3726b(File file) {
        if (file.isFile()) {
            ArrayList arrayList = new ArrayList();
            C3063fo.m3839a(file, new C3118gd(this, arrayList));
            this.f2702ql.addAll(arrayList);
            C3063fo.m3840a(file);
        }
    }
}
