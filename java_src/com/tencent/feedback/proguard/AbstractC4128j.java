package com.tencent.feedback.proguard;

import java.io.Serializable;
/* renamed from: com.tencent.feedback.proguard.j */
/* loaded from: classes.dex */
public abstract class AbstractC4128j implements Serializable {
    /* renamed from: a */
    public abstract void mo667a(C4126h c4126h);

    /* renamed from: a */
    public abstract void mo666a(C4127i c4127i);

    /* renamed from: a */
    public abstract void mo665a(StringBuilder sb, int i);

    /* renamed from: a */
    public final byte[] m668a() {
        C4127i c4127i = new C4127i();
        mo666a(c4127i);
        return c4127i.m670b();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        mo665a(sb, 0);
        return sb.toString();
    }
}
