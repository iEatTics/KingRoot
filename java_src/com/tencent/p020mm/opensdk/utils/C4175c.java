package com.tencent.p020mm.opensdk.utils;

import android.net.Uri;
import android.provider.BaseColumns;
/* renamed from: com.tencent.mm.opensdk.utils.c */
/* loaded from: classes.dex */
public final class C4175c {

    /* renamed from: com.tencent.mm.opensdk.utils.c$a */
    /* loaded from: classes.dex */
    public static final class C4176a {
        /* renamed from: a */
        public static Object m488a(int i, String str) {
            try {
            } catch (Exception e) {
                Log.m495e("MicroMsg.SDK.PluginProvider.Resolver", "resolveObj exception:" + e.getMessage());
            }
            switch (i) {
                case 1:
                    return Integer.valueOf(str);
                case 2:
                    return Long.valueOf(str);
                case 3:
                    return str;
                case 4:
                    return Boolean.valueOf(str);
                case 5:
                    return Float.valueOf(str);
                case 6:
                    return Double.valueOf(str);
                default:
                    Log.m495e("MicroMsg.SDK.PluginProvider.Resolver", "unknown type");
                    return null;
            }
        }
    }

    /* renamed from: com.tencent.mm.opensdk.utils.c$b */
    /* loaded from: classes.dex */
    public static final class C4177b implements BaseColumns {
        public static final Uri CONTENT_URI = Uri.parse("content://com.tencent.mm.sdk.plugin.provider/sharedpref");
    }
}
