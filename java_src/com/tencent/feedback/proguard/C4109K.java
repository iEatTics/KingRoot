package com.tencent.feedback.proguard;

import java.util.ArrayList;
import java.util.Collection;
/* renamed from: com.tencent.feedback.proguard.K */
/* loaded from: classes.dex */
public final class C4109K extends AbstractC4128j implements Cloneable {

    /* renamed from: c */
    private static ArrayList<String> f4631c;

    /* renamed from: a */
    private String f4632a = "";

    /* renamed from: b */
    private ArrayList<String> f4633b = null;

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo666a(C4127i c4127i) {
        c4127i.m676a(this.f4632a, 0);
        if (this.f4633b != null) {
            c4127i.m675a((Collection) this.f4633b, 1);
        }
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo667a(C4126h c4126h) {
        this.f4632a = c4126h.m693b(0, true);
        if (f4631c == null) {
            f4631c = new ArrayList<>();
            f4631c.add("");
        }
        this.f4633b = (ArrayList) c4126h.m700a((C4126h) f4631c, 1, false);
    }

    @Override // com.tencent.feedback.proguard.AbstractC4128j
    /* renamed from: a */
    public final void mo665a(StringBuilder sb, int i) {
    }
}
