package com.tencent.feedback.upload;

import android.content.Context;
import com.tencent.feedback.common.C4071c;
import com.tencent.feedback.common.C4073e;
import com.tencent.feedback.proguard.C4113O;
import com.tencent.feedback.proguard.C4119a;
import com.tencent.feedback.proguard.C4140u;
/* loaded from: classes.dex */
public abstract class AbstractUploadDatas {

    /* renamed from: a */
    protected final int f4824a;

    /* renamed from: b */
    protected final int f4825b;

    /* renamed from: c */
    protected Context f4826c;

    /* renamed from: a */
    public abstract C4113O mo537a();

    public abstract void done(boolean z);

    public AbstractUploadDatas(Context context, int i, int i2) {
        this.f4826c = context;
        this.f4824a = i2;
        this.f4825b = i;
    }

    /* renamed from: b */
    public final int m540b() {
        return this.f4824a;
    }

    /* renamed from: c */
    public final String m539c() {
        String m567a;
        try {
            if (this.f4825b == 1111) {
                m567a = C4140u.m598a(this.f4826c).m593b().m580a();
            } else {
                m567a = C4140u.m598a(this.f4826c).m593b().m572c(this.f4825b).m567a();
            }
            return m567a;
        } catch (Throwable th) {
            C4073e.m1013c("rqdp{  imposiable comStrategy error }%s", th.toString());
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    public static C4113O m542a(Context context, int i, byte[] bArr) {
        try {
            return C4119a.m760a(i, C4071c.m1088a(context), bArr, (byte) 2, (byte) 1, C4140u.m598a(context).m593b().m571d());
        } catch (Throwable th) {
            C4073e.m1013c("rqdp{  imposiable comStrategy error} %s", th.toString());
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* renamed from: a */
    public final byte[] m541a(boolean z) {
        try {
            C4113O mo537a = mo537a();
            if (mo537a != null) {
                return mo537a.m668a();
            }
            return null;
        } catch (Throwable th) {
            if (!C4073e.m1016a(th)) {
                th.printStackTrace();
            }
            C4073e.m1012d("rqdp{  encode to bytes failed}", new Object[0]);
            return null;
        }
    }

    /* renamed from: d */
    public static void m538d() {
        C4073e.m1013c("rqdp{  encode failed, clear db data}", new Object[0]);
    }
}
