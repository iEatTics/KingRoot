package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class bja {
    private static final String[] bvt = {"android.intent.action.PACKAGE_ADDED", "android.intent.action.PACKAGE_REPLACED", "android.intent.action.PACKAGE_REMOVED", "android.intent.action.PACKAGE_CHANGED", "android.net.conn.CONNECTIVITY_CHANGE", "android.intent.action.ANY_DATA_STATE", "android.intent.action.NEW_OUTGOING_CALL", "android.intent.action.PHONE_STATE", "android.net.wifi.STATE_CHANGE", "android.net.wifi.WIFI_STATE_CHANGED", "android.intent.action.USER_PRESENT", "android.intent.action.TIME_SET", "android.intent.action.ACTION_POWER_CONNECTED", "android.intent.action.ACTION_POWER_DISCONNECTED", "android.bluetooth.adapter.action.STATE_CHANGED", "android.location.PROVIDERS_CHANGED", "android.provider.Telephony.SMS_RECEIVED"};

    /* renamed from: c */
    public static boolean m6800c(PackageManager packageManager, String str) {
        return m6801c(packageManager).contains(str);
    }

    /* renamed from: c */
    private static Set<String> m6801c(PackageManager packageManager) {
        HashSet hashSet = new HashSet();
        Intent intent = new Intent();
        intent.setAction("android.view.InputMethod");
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 4);
        if (queryIntentServices != null) {
            for (ResolveInfo resolveInfo : queryIntentServices) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                if (serviceInfo != null) {
                    hashSet.add(serviceInfo.packageName);
                }
            }
        }
        return hashSet;
    }

    /* renamed from: a */
    public static boolean m6805a(PackageManager packageManager, String str, String str2) {
        return packageManager.getComponentEnabledSetting(new ComponentName(str, str2)) != 2;
    }

    public static boolean adw() {
        File file = new File(C3958zl.getCacheDir() + "/autostart_snapshot.conf");
        if (file.exists()) {
            return file.delete();
        }
        return true;
    }

    public static List<String> adx() {
        LinkedList linkedList = new LinkedList();
        HashMap hashMap = (HashMap) new bjg("autostart_enable_settings.conf").adJ();
        if (hashMap != null && hashMap.size() > 0) {
            for (Map.Entry entry : hashMap.entrySet()) {
                if (((Integer) entry.getValue()).intValue() == 1 || ((Integer) entry.getValue()).intValue() == 2) {
                    linkedList.add(entry.getKey());
                }
            }
        }
        return linkedList;
    }

    /* renamed from: bW */
    public static void m6804bW(List<String> list) {
        if (list != null && list.size() > 0 && abc.m12845qK().isRootPermition(true)) {
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add("service call activity 79 s16 " + it.next());
            }
            abc.m12845qK().runRootCommands(arrayList);
        }
    }

    /* renamed from: bz */
    public static long m6803bz(Context context) {
        SharedPreferences m2313i = C3566rv.m2313i(context, "auto_start");
        if (m2313i == null) {
            return 0L;
        }
        return m2313i.getLong("last_pm_operation_time", 0L);
    }

    /* renamed from: c */
    public static void m6802c(Context context, long j) {
        SharedPreferences.Editor edit;
        SharedPreferences m2313i = C3566rv.m2313i(context, "auto_start");
        if (m2313i != null && (edit = m2313i.edit()) != null) {
            edit.putLong("last_pm_operation_time", j);
            edit.commit();
        }
    }

    /* renamed from: d */
    public static boolean m6799d(PackageManager packageManager, String str) {
        if (str == null) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
        if (resolveActivity != null) {
            return str.equals(resolveActivity.activityInfo.packageName);
        }
        return false;
    }

    /* renamed from: lV */
    public static boolean m6798lV(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        PackageManager packageManager = C3636tj.getPackageManager();
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.HOME");
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        if (queryIntentActivities != null) {
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                if (resolveInfo != null && str.equals(resolveInfo.activityInfo.packageName)) {
                    return true;
                }
            }
        }
        return false;
    }
}
