package com.tencent.feedback.proguard;

import android.content.Context;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.upload.AbstractUploadDatas;
/* renamed from: com.tencent.feedback.proguard.w */
/* loaded from: classes.dex */
public final class C4144w extends AbstractUploadDatas {

    /* renamed from: d */
    private C4118T f4793d;

    public C4144w(Context context, int i, int i2, C4118T c4118t) {
        super(context, 1111, 540);
        this.f4793d = null;
        this.f4793d = c4118t;
    }

    @Override // com.tencent.feedback.upload.AbstractUploadDatas
    public final void done(boolean z) {
    }

    @Override // com.tencent.feedback.upload.AbstractUploadDatas
    /* renamed from: a */
    public final C4113O mo537a() {
        C4113O c4113o = null;
        try {
            c4113o = m542a(this.f4826c, this.f4824a, this.f4793d == null ? null : this.f4793d.m668a());
            return c4113o;
        } catch (Exception e) {
            if (!C4073e.m1016a(e)) {
                e.printStackTrace();
                return c4113o;
            }
            return c4113o;
        }
    }
}
