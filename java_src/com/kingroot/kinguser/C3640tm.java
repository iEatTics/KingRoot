package com.kingroot.kinguser;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.kingroot.kinguser.tm */
/* loaded from: classes.dex */
public class C3640tm {

    /* renamed from: Ho */
    private HashMap<String, AbstractC3639tl> f3569Ho = new HashMap<>();

    /* renamed from: e */
    public void m2158e(Context context, List<? extends AbstractC3639tl> list) {
        if (list != null) {
            for (AbstractC3639tl abstractC3639tl : list) {
                m2159a(context, abstractC3639tl);
            }
        }
    }

    /* renamed from: a */
    public void m2159a(Context context, AbstractC3639tl abstractC3639tl) {
        if (abstractC3639tl != null) {
            abstractC3639tl.setContext(context);
            abstractC3639tl.onCreate();
            this.f3569Ho.put(abstractC3639tl.mo2038jo(), abstractC3639tl);
        }
    }

    /* renamed from: j */
    public AbstractC3639tl m2157j(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return null;
        }
        return this.f3569Ho.get(str);
    }

    public static Uri getContentUri(String str) {
        return Uri.parse("content://" + str + "/");
    }

    /* renamed from: C */
    public static String m2160C(String str, String str2) {
        return "content://" + str + "/" + str2 + "/";
    }
}
