package com.tencent.feedback.upload;

import android.content.Context;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.proguard.C4113O;
import com.tencent.feedback.proguard.C4119a;
import com.tencent.feedback.proguard.C4140u;
/* renamed from: com.tencent.feedback.upload.a */
/* loaded from: classes.dex */
public final class C4153a extends AbstractUploadDatas {
    public C4153a(Context context, int i, int i2) {
        super(context, i, i2);
    }

    @Override // com.tencent.feedback.upload.AbstractUploadDatas
    public final void done(boolean z) {
    }

    @Override // com.tencent.feedback.upload.AbstractUploadDatas
    /* renamed from: a */
    public final C4113O mo537a() {
        try {
            C4113O m760a = C4119a.m760a(m540b(), C4071c.m1088a(this.f4826c), "".getBytes(), (byte) -1, (byte) -1, C4140u.m598a(this.f4826c).m593b().m571d());
            if (m760a != null) {
                return m760a;
            }
            return null;
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            C4073e.m1012d("rqdp{  encode2RequestPackage failed}", new Object[0]);
            return null;
        }
    }
}
