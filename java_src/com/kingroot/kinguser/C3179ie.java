package com.kingroot.kinguser;

import com.kingroot.kinguser.HandlerC3243kg;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.kingroot.kinguser.ie */
/* loaded from: classes.dex */
public class C3179ie implements HandlerC3243kg.InterfaceC3244a {

    /* renamed from: rm */
    final /* synthetic */ int f2779rm;

    /* renamed from: rn */
    final /* synthetic */ String f2780rn;

    /* renamed from: ro */
    final /* synthetic */ C3178id f2781ro;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3179ie(C3178id c3178id, int i, String str) {
        this.f2781ro = c3178id;
        this.f2779rm = i;
        this.f2780rn = str;
    }

    @Override // com.kingroot.kinguser.HandlerC3243kg.InterfaceC3244a
    /* renamed from: a */
    public void mo3296a(C3242kf c3242kf) {
        this.f2781ro.m3572a(2, 1);
        this.f2781ro.m3564b(this.f2779rm, c3242kf.getAbsolutePath(), this.f2780rn);
    }

    @Override // com.kingroot.kinguser.HandlerC3243kg.InterfaceC3244a
    /* renamed from: b */
    public void mo3295b(C3242kf c3242kf) {
        this.f2781ro.m3572a(2, 0);
    }
}
