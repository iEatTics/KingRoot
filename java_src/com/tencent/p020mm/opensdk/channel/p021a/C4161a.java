package com.tencent.p020mm.opensdk.channel.p021a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.p020mm.opensdk.constants.Build;
import com.tencent.p020mm.opensdk.constants.ConstantsAPI;
import com.tencent.p020mm.opensdk.utils.C4178d;
import com.tencent.p020mm.opensdk.utils.Log;
/* renamed from: com.tencent.mm.opensdk.channel.a.a */
/* loaded from: classes.dex */
public final class C4161a {

    /* renamed from: com.tencent.mm.opensdk.channel.a.a$a */
    /* loaded from: classes.dex */
    public static class C4162a {

        /* renamed from: a */
        public String f4839a;
        public String action;

        /* renamed from: b */
        public long f4840b;
        public Bundle bundle;
        public String content;
    }

    /* renamed from: a */
    public static boolean m510a(Context context, C4162a c4162a) {
        if (context == null) {
            Log.m495e("MicroMsg.SDK.MMessage", "send fail, invalid argument");
            return false;
        } else if (C4178d.m486b(c4162a.action)) {
            Log.m495e("MicroMsg.SDK.MMessage", "send fail, action is null");
            return false;
        } else {
            String str = C4178d.m486b(c4162a.f4839a) ? null : c4162a.f4839a + ".permission.MM_MESSAGE";
            Intent intent = new Intent(c4162a.action);
            if (c4162a.bundle != null) {
                intent.putExtras(c4162a.bundle);
            }
            String packageName = context.getPackageName();
            intent.putExtra(ConstantsAPI.SDK_VERSION, Build.SDK_INT);
            intent.putExtra(ConstantsAPI.APP_PACKAGE, packageName);
            intent.putExtra(ConstantsAPI.CONTENT, c4162a.content);
            intent.putExtra(ConstantsAPI.APP_SUPORT_CONTENT_TYPE, c4162a.f4840b);
            intent.putExtra(ConstantsAPI.CHECK_SUM, C4163b.m509a(c4162a.content, Build.SDK_INT, packageName));
            context.sendBroadcast(intent, str);
            Log.m496d("MicroMsg.SDK.MMessage", "send mm message, intent=" + intent + ", perm=" + str);
            return true;
        }
    }
}
