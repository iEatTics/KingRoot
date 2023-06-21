package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Parcel;
import android.provider.Telephony;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.inputmethod.InputMethodInfo;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.agd;
import com.kingroot.master.app.KUApplication;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class ala {
    @Nullable
    /* renamed from: eW */
    public static String m10664eW(int i) {
        switch (i) {
            case 1:
                return "--browser";
            case 2:
            case 4:
            case 12:
            default:
                return null;
            case 3:
                return "--sms";
            case 5:
                return "--image";
            case 6:
                return "--camera";
            case 7:
                return "--video";
            case 8:
                return "--audio";
            case 9:
                return "--launcher";
            case 10:
                return "--installer";
            case 11:
                return "--mail";
            case 13:
                return "--wifisettings";
        }
    }

    @NonNull
    /* renamed from: eX */
    private static List<Intent> m10663eX(int i) {
        ArrayList arrayList = new ArrayList();
        Intent m10662eY = m10662eY(i);
        if (m10662eY != null) {
            arrayList.add(m10662eY);
        }
        if (i == 1) {
            arrayList.add(new Intent("android.intent.action.VIEW", Uri.parse("http:")));
        }
        return arrayList;
    }

    @Nullable
    /* renamed from: eY */
    private static Intent m10662eY(int i) {
        switch (i) {
            case 1:
                return new Intent("android.intent.action.VIEW", Uri.parse("http://"));
            case 2:
            case 4:
            case 12:
            default:
                return null;
            case 3:
                return new Intent("android.intent.action.SENDTO", Uri.fromParts("sms", "", null));
            case 5:
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(Uri.parse("file://"), "image/*");
                return intent;
            case 6:
                return new Intent("android.media.action.IMAGE_CAPTURE");
            case 7:
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setDataAndType(Uri.parse("file://"), "video/*");
                return intent2;
            case 8:
                Intent intent3 = new Intent("android.intent.action.VIEW");
                intent3.setDataAndType(Uri.parse("file://"), "audio/*");
                return intent3;
            case 9:
                Intent intent4 = new Intent("android.intent.action.MAIN");
                intent4.addCategory("android.intent.category.HOME");
                return intent4;
            case 10:
                Intent intent5 = new Intent("android.intent.action.VIEW");
                intent5.setDataAndType(Uri.parse("file://"), "application/vnd.android.package-archive");
                return intent5;
            case 11:
                Intent intent6 = new Intent("android.intent.action.SENDTO");
                intent6.setData(Uri.parse("mailto://"));
                return intent6;
            case 13:
                return new Intent("android.settings.WIFI_SETTINGS");
        }
    }

    @TargetApi(19)
    @Nullable
    /* renamed from: eZ */
    public static C1052a m10661eZ(int i) {
        if (i == 3 && abd.m12839qb() >= 19) {
            String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(KUApplication.m13453ge());
            if (TextUtils.isEmpty(defaultSmsPackage)) {
                return null;
            }
            return new C1052a(defaultSmsPackage, null);
        }
        Intent m10662eY = m10662eY(i);
        if (m10662eY != null) {
            ResolveInfo resolveActivity = KUApplication.m13453ge().getPackageManager().resolveActivity(m10662eY, 65536);
            String m10666a = m10666a(resolveActivity);
            if (TextUtils.isEmpty(m10666a)) {
                return null;
            }
            return new C1052a(m10666a, resolveActivity);
        }
        return null;
    }

    @TargetApi(19)
    /* renamed from: a */
    private static String m10666a(@Nullable ResolveInfo resolveInfo) {
        if (resolveInfo == null) {
            return null;
        }
        if (resolveInfo.activityInfo != null) {
            if (m10667a(resolveInfo.activityInfo) && resolveInfo.activityInfo.exported) {
                return resolveInfo.activityInfo.packageName;
            }
            return null;
        } else if (resolveInfo.serviceInfo != null) {
            if (m10667a(resolveInfo.serviceInfo) && resolveInfo.serviceInfo.exported) {
                return resolveInfo.serviceInfo.packageName;
            }
            return null;
        } else if (abd.m12839qb() < 19 || resolveInfo.providerInfo == null || !m10667a(resolveInfo.providerInfo) || !resolveInfo.providerInfo.exported) {
            return null;
        } else {
            return resolveInfo.providerInfo.packageName;
        }
    }

    /* renamed from: a */
    private static boolean m10667a(ComponentInfo componentInfo) {
        int componentEnabledSetting = C3952zh.m1312pq().getComponentEnabledSetting(new ComponentName(KApplication.m13453ge(), componentInfo.name));
        if (componentEnabledSetting != 1) {
            return componentEnabledSetting == 0 && componentInfo.enabled;
        }
        return true;
    }

    /* renamed from: g */
    private static void m10659g(@NonNull Collection<C1052a> collection) {
        try {
            Method declaredMethod = Class.forName("com.android.internal.telephony.SmsApplication").getDeclaredMethod("getApplicationCollection", Context.class);
            declaredMethod.setAccessible(true);
            for (Object obj : (Collection) declaredMethod.invoke(null, KApplication.m13453ge())) {
                String str = (String) aam.m12972a(obj.getClass(), "mPackageName", obj);
                if (!TextUtils.isEmpty(str)) {
                    collection.add(new C1052a(str, null));
                }
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: com.kingroot.kinguser.ala$a */
    /* loaded from: classes.dex */
    public static class C1052a {
        @NonNull
        public final String packageName;
        @Nullable
        public final ResolveInfo resolveInfo;

        public C1052a(@NonNull String str, @Nullable ResolveInfo resolveInfo) {
            this.packageName = str;
            this.resolveInfo = resolveInfo;
        }

        public boolean equals(Object obj) {
            if (obj instanceof C1052a) {
                C1052a c1052a = (C1052a) obj;
                if (this.packageName.equals(c1052a.packageName)) {
                    if (this.resolveInfo == null && c1052a.resolveInfo == null) {
                        return true;
                    }
                    if (this.resolveInfo == null || c1052a.resolveInfo == null) {
                        return false;
                    }
                    Parcel obtain = Parcel.obtain();
                    Parcel obtain2 = Parcel.obtain();
                    this.resolveInfo.writeToParcel(obtain, 0);
                    c1052a.resolveInfo.writeToParcel(obtain2, 0);
                    boolean equals = Arrays.equals(obtain.marshall(), obtain2.marshall());
                    obtain.recycle();
                    obtain2.recycle();
                    return equals;
                }
                return false;
            }
            return false;
        }

        public String getName() {
            String str = null;
            if (this.resolveInfo != null && this.resolveInfo.activityInfo != null) {
                str = this.resolveInfo.loadLabel(C3952zh.m1312pq()).toString();
            }
            if (TextUtils.isEmpty(str)) {
                str = bgh.m7115jf(this.packageName);
            }
            if (TextUtils.isEmpty(str)) {
                return this.packageName;
            }
            return str;
        }

        public Drawable getIconDrawable() {
            Drawable drawable = null;
            if (this.resolveInfo != null && this.resolveInfo.activityInfo != null) {
                try {
                    drawable = this.resolveInfo.loadIcon(KUApplication.m13453ge().getPackageManager());
                } catch (Throwable th) {
                }
            }
            if (drawable == null) {
                try {
                    return C3952zh.m1312pq().getApplicationIcon(this.packageName);
                } catch (Throwable th2) {
                    return drawable;
                }
            }
            return drawable;
        }

        public int hashCode() {
            int hashCode = this.packageName.hashCode();
            if (this.resolveInfo != null) {
                Parcel obtain = Parcel.obtain();
                this.resolveInfo.writeToParcel(obtain, 0);
                int hashCode2 = hashCode + Arrays.hashCode(obtain.marshall());
                obtain.recycle();
                return hashCode2;
            }
            return hashCode;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0071, code lost:
        r2 = r0;
     */
    @NonNull
    /* renamed from: fa */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Collection<C1052a> m10660fa(int i) {
        ResolveInfo resolveInfo = null;
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        if (i == 3) {
            m10659g(arrayList);
            return arrayList;
        }
        List<Intent> m10663eX = m10663eX(i);
        PackageManager packageManager = KApplication.m13453ge().getPackageManager();
        int i2 = 0;
        int m12839qb = abd.m12839qb();
        if (m12839qb >= 23) {
            Object m12972a = aam.m12972a(PackageManager.class, "MATCH_ALL", (Object) null);
            if (m12972a instanceof Integer) {
                i2 = ((Integer) m12972a).intValue() | 0;
            }
        }
        for (Intent intent : m10663eX) {
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, i2);
            if (!C3942yy.m1351d(queryIntentActivities)) {
                Iterator<ResolveInfo> it = queryIntentActivities.iterator();
                while (it.hasNext()) {
                    ResolveInfo next = it.next();
                    if (i != 1 || m12839qb < 23 || next.priority >= 0) {
                        if (resolveInfo.priority == next.priority && resolveInfo.isDefault == next.isDefault) {
                            String m10666a = m10666a(next);
                            if (!TextUtils.isEmpty(m10666a)) {
                                C1052a c1052a = new C1052a(m10666a, next);
                                if (hashSet.add(c1052a)) {
                                    arrayList.add(c1052a);
                                }
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static String m10665b(@Nullable ResolveInfo resolveInfo) {
        if (resolveInfo == null || resolveInfo.activityInfo == null) {
            return null;
        }
        return resolveInfo.activityInfo.name;
    }

    /* renamed from: h */
    public static String m10658h(Collection<agd.C0867a> collection) {
        if (C3942yy.m1351d(collection)) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (agd.C0867a c0867a : collection) {
            if (c0867a != null && c0867a.akI != null) {
                hashSet.add(c0867a.akI.packageName);
            }
        }
        String str = "";
        Iterator it = hashSet.iterator();
        while (true) {
            String str2 = str;
            if (!it.hasNext()) {
                return str2;
            }
            str = str2 + ((String) it.next()) + "|";
        }
    }

    /* renamed from: i */
    public static String m10656i(Collection<C1052a> collection) {
        if (C3942yy.m1351d(collection)) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (C1052a c1052a : collection) {
            if (c1052a != null) {
                hashSet.add(c1052a.packageName);
            }
        }
        String str = "";
        Iterator it = hashSet.iterator();
        while (true) {
            String str2 = str;
            if (!it.hasNext()) {
                return str2;
            }
            str = str2 + ((String) it.next()) + "|";
        }
    }

    /* renamed from: j */
    public static String m10655j(Collection<InputMethodInfo> collection) {
        if (C3942yy.m1351d(collection)) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (InputMethodInfo inputMethodInfo : collection) {
            if (inputMethodInfo != null) {
                hashSet.add(inputMethodInfo.getPackageName());
            }
        }
        String str = "";
        Iterator it = hashSet.iterator();
        while (true) {
            String str2 = str;
            if (!it.hasNext()) {
                return str2;
            }
            str = str2 + ((String) it.next()) + "|";
        }
    }

    /* renamed from: ht */
    public static boolean m10657ht(String str) {
        return "android".equals(str) || "smartisanos".equals(str);
    }
}
