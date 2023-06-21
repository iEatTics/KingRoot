package com.kingroot.kinguser;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class bgx {
    private static String TAG = "ku_utils__ShortcutUtil";

    /* renamed from: Iv */
    private static String f1673Iv = null;

    /* renamed from: a */
    public static void m7081a(String str, String str2, Class cls, Bitmap bitmap) {
        if (!akh.m11295Au()) {
            Intent intent = new Intent(str);
            intent.putExtra("android.intent.extra.shortcut.ICON", bitmap);
            m7083a(intent, str, str2, cls);
        }
    }

    /* renamed from: a */
    private static void m7083a(Intent intent, String str, String str2, Class cls) {
        Context m13453ge = KApplication.m13453ge();
        intent.putExtra("android.intent.extra.shortcut.NAME", str2);
        intent.putExtra("duplicate", false);
        Intent intent2 = new Intent("android.intent.action.MAIN");
        intent2.setClass(m13453ge, cls);
        intent.putExtra("android.intent.extra.shortcut.INTENT", intent2);
        m13453ge.sendBroadcast(intent);
    }

    /* renamed from: a */
    public static void m7082a(String str, String str2, Bitmap bitmap, Intent intent) {
        if (!akh.m11295Au()) {
            Intent intent2 = new Intent(str);
            intent2.putExtra("android.intent.extra.shortcut.ICON", bitmap);
            m7084a(intent2, str2, intent);
        }
    }

    /* renamed from: a */
    private static void m7084a(Intent intent, String str, Intent intent2) {
        Context m13453ge = KApplication.m13453ge();
        intent.putExtra("android.intent.extra.shortcut.NAME", str);
        intent.putExtra("duplicate", false);
        intent.putExtra("android.intent.extra.shortcut.INTENT", intent2);
        m13453ge.sendBroadcast(intent);
    }

    /* renamed from: B */
    private static ArrayList<String> m7085B(Context context, String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (TextUtils.isEmpty(str)) {
            return arrayList;
        }
        List<PackageInfo> list = null;
        try {
            list = context.getPackageManager().getInstalledPackages(8);
        } catch (Exception e) {
        }
        if (list != null) {
            for (PackageInfo packageInfo : list) {
                ProviderInfo[] providerInfoArr = packageInfo.providers;
                if (providerInfoArr != null) {
                    for (ProviderInfo providerInfo : providerInfoArr) {
                        if (providerInfo.exported) {
                            if (providerInfo.readPermission != null && providerInfo.readPermission.contains(str)) {
                                arrayList.add(providerInfo.authority);
                            }
                            if (providerInfo.writePermission != null && (str.equals(providerInfo.readPermission) || str.equals(providerInfo.writePermission))) {
                                arrayList.add(providerInfo.authority);
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: bw */
    private static String m7079bw(Context context) {
        ArrayList<String> m7085B = m7085B(context, "com.android.launcher.permission.READ_SETTINGS");
        if (m7085B.size() == 0) {
            m7085B = m7085B(context, "launcher.permission.READ_SETTINGS");
        }
        if (m7085B.size() == 0) {
            m7085B = m7085B(context, "com.android.launcher2.permission.READ_SETTINGS");
        }
        if (m7085B.size() == 0) {
            m7085B = m7085B(context, "com.android.launcher3.permission.READ_SETTINGS");
        }
        ArrayList<String> m7085B2 = m7085B.size() == 0 ? m7085B(context, bgs.abU().abV() + ".permission.READ_SETTINGS") : m7085B;
        try {
            ContentResolver contentResolver = context.getContentResolver();
            Iterator<String> it = m7085B2.iterator();
            while (it.hasNext()) {
                String next = it.next();
                Cursor query = contentResolver.query(Uri.parse("content://" + next + "/favorites"), new String[]{"count(*) AS count"}, null, null, null);
                if (query != null) {
                    if (query.moveToFirst()) {
                        query.close();
                        return next;
                    }
                    query.close();
                }
            }
            return "";
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: aL */
    public static boolean m7080aL(String str, String str2) {
        Cursor cursor;
        boolean z;
        Cursor cursor2 = null;
        Context m13453ge = KApplication.m13453ge();
        if (TextUtils.isEmpty(f1673Iv)) {
            String m7079bw = m7079bw(m13453ge);
            if (TextUtils.isEmpty(m7079bw)) {
                int i = Build.VERSION.SDK_INT;
                if (i < 8) {
                    f1673Iv = "com.android.launcher.settings";
                } else if (i < 19) {
                    f1673Iv = "com.android.launcher2.settings";
                } else {
                    f1673Iv = "com.android.launcher3.settings";
                }
            } else {
                f1673Iv = m7079bw;
            }
        }
        if (f1673Iv.length() == 0) {
            return false;
        }
        try {
            Cursor query = m13453ge.getContentResolver().query(Uri.parse("content://" + f1673Iv + "/favorites?notify=true"), null, "title=?", new String[]{str}, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        while (!query.isAfterLast()) {
                            String string = query.getString(query.getColumnIndex("intent"));
                            if (string != null && string.contains(str2)) {
                                z = true;
                                break;
                            }
                            query.moveToNext();
                        }
                    }
                } catch (Exception e) {
                    cursor = query;
                    if (cursor != null) {
                        try {
                            cursor.close();
                        } catch (Exception e2) {
                            z = false;
                        }
                    }
                    z = false;
                    return z;
                } catch (Throwable th) {
                    th = th;
                    cursor2 = query;
                    if (cursor2 != null) {
                        try {
                            cursor2.close();
                        } catch (Exception e3) {
                        }
                    }
                    throw th;
                }
            }
            z = false;
            if (query != null) {
                try {
                    query.close();
                } catch (Exception e4) {
                }
            }
        } catch (Exception e5) {
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return z;
    }
}
