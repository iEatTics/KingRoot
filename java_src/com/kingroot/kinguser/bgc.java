package com.kingroot.kinguser;

import android.content.ActivityNotFoundException;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
/* loaded from: classes.dex */
public class bgc {
    /* renamed from: bp */
    public static void m7126bp(Context context) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://m.weibo.cn/u/2837890622")));
        } catch (ActivityNotFoundException e) {
        }
    }

    /* renamed from: bq */
    public static void m7125bq(Context context) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://www.facebook.com/kingrootmobile/")));
        } catch (ActivityNotFoundException e) {
        }
    }

    /* renamed from: br */
    public static void m7124br(Context context) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://kingroot.net")));
        } catch (ActivityNotFoundException e) {
        }
    }

    /* renamed from: bs */
    public static void m7123bs(Context context) {
        try {
            context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://forum.xda-developers.com/android/apps-games/one-click-root-tool-android-2-x-5-0-t3107461")));
        } catch (ActivityNotFoundException e) {
        }
    }

    /* renamed from: A */
    public static void m7127A(Context context, String str) {
        if (Build.VERSION.SDK_INT >= 11) {
            ((ClipboardManager) context.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("text label", str));
        } else {
            ((android.text.ClipboardManager) context.getSystemService("clipboard")).setText(str);
        }
    }
}
