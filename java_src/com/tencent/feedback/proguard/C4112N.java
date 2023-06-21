package com.tencent.feedback.proguard;

import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.tencent.feedback.proguard.N */
/* loaded from: classes.dex */
public final class C4112N extends AbstractC4128j implements Cloneable {

    /* renamed from: b */
    private static ArrayList<C4111M> f4665b;

    /* renamed from: a */
    public ArrayList<C4111M> f4666a = null;

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo666a(C4127i c4127i) {
        c4127i.m675a((Collection) this.f4666a, 0);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo667a(C4126h c4126h) {
        if (f4665b == null) {
            f4665b = new ArrayList<>();
            f4665b.add(new C4111M());
        }
        this.f4666a = (ArrayList) c4126h.m700a((C4126h) f4665b, 0, true);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo665a(StringBuilder sb, int i) {
    }
}
