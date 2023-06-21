package com.kingroot.kinguser;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.ref.WeakReference;
import java.net.URL;
/* loaded from: classes.dex */
public class bqq {
    private static bqq bIM = null;
    private volatile WeakReference<SharedPreferences> bIN = null;

    public static synchronized bqq ahr() {
        bqq bqqVar;
        synchronized (bqq.class) {
            if (bIM == null) {
                bIM = new bqq();
            }
            bqqVar = bIM;
        }
        return bqqVar;
    }

    /* renamed from: a */
    public String m5766a(Context context, String str) {
        if (this.bIN == null || this.bIN.get() == null) {
            this.bIN = new WeakReference<>(context.getSharedPreferences("ServerPrefs", 0));
        }
        try {
            String host = new URL(str).getHost();
            if (host == null) {
                bpy.m5840e("openSDK_LOG.ServerSetting", "Get host error. url=" + str);
                return str;
            }
            String string = this.bIN.get().getString(host, null);
            if (string == null || host.equals(string)) {
                bpy.m5848a("openSDK_LOG.ServerSetting", "host=" + host + ", envHost=" + string);
                return str;
            }
            String replace = str.replace(host, string);
            bpy.m5848a("openSDK_LOG.ServerSetting", "return environment url : " + replace);
            return replace;
        } catch (Exception e) {
            bpy.m5840e("openSDK_LOG.ServerSetting", "getEnvUrl url=" + str + "error.: " + e.getMessage());
            return str;
        }
    }
}
