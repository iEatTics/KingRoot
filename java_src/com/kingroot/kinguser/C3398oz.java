package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import com.swift.sandhook.utils.FileUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.oz */
/* loaded from: classes.dex */
public class C3398oz {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.oz$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3399a {
        /* renamed from: l */
        void mo2662l(int i, int i2);
    }

    /* synthetic */ C3398oz(C3402pa c3402pa) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.oz$b */
    /* loaded from: classes.dex */
    public static class C3400b {

        /* renamed from: yA */
        private static final C3398oz f3265yA = new C3398oz(null);
    }

    private C3398oz() {
    }

    /* renamed from: gh */
    public static C3398oz m2663gh() {
        return C3400b.f3265yA;
    }

    /* renamed from: a */
    public void m2672a(Context context, String str, String str2, int i, InterfaceC3443pv interfaceC3443pv, InterfaceC3399a interfaceC3399a) {
        bzp bzpVar = new bzp(context, context.getFilesDir().getAbsolutePath(), new C3402pa(this, interfaceC3399a, i, context, interfaceC3443pv));
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C3415pc(this, str2, str));
        bzpVar.m5118a(arrayList);
    }

    /* renamed from: a */
    public void m2670a(String str, String str2, bzp bzpVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C3416pd(this, str2, str));
        bzpVar.m5118a(arrayList);
    }

    /* renamed from: a */
    public int m2673a(Context context, String str, InterfaceC3443pv interfaceC3443pv) {
        if (TextUtils.isEmpty(str)) {
            return 2;
        }
        interfaceC3443pv.mo2617ck("chmod 0777 " + str);
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268435456);
        intent.setDataAndType(Uri.fromFile(new File(str)), "application/vnd.android.package-archive");
        context.startActivity(intent);
        return 1;
    }

    /* renamed from: b */
    public int m2669b(String str, InterfaceC3443pv interfaceC3443pv) {
        if (TextUtils.isEmpty(str)) {
            return 3;
        }
        if (interfaceC3443pv != null) {
            try {
                interfaceC3443pv.mo2618cj("chmod 0777 " + str);
                if (interfaceC3443pv.mo2618cj("pm install -r " + str).success()) {
                    return 1;
                }
            } catch (Exception e) {
            }
        }
        return 2;
    }

    /* renamed from: c */
    public int m2668c(String str, InterfaceC3443pv interfaceC3443pv) {
        ArrayList arrayList;
        List<cby> mo2616p;
        cby cbyVar;
        cby cbyVar2;
        if (TextUtils.isEmpty(str)) {
            return 3;
        }
        try {
            arrayList = new ArrayList(5);
            arrayList.add("ls -l " + str);
            mo2616p = interfaceC3443pv.mo2616p(arrayList);
        } catch (Exception e) {
        }
        if (mo2616p == null || mo2616p.size() != arrayList.size() || (cbyVar2 = mo2616p.get(arrayList.size() - 1)) == null || cbyVar2.mExitValue.intValue() != 1) {
            arrayList.clear();
            boolean startsWith = str.startsWith("/system");
            if (startsWith) {
                arrayList.add("mount -o remount,rw /system /system");
            }
            arrayList.add("rm -r " + str);
            if (startsWith) {
                arrayList.add("mount -o remount,ro /system /system");
            }
            arrayList.add("ls -l " + str);
            List<cby> mo2616p2 = interfaceC3443pv.mo2616p(arrayList);
            if (mo2616p2 != null && mo2616p2.size() == arrayList.size() && (cbyVar = mo2616p2.get(arrayList.size() - 1)) != null) {
                if (cbyVar.mExitValue.intValue() == 1) {
                    return 1;
                }
            }
            return 2;
        }
        return 1;
    }

    /* renamed from: g */
    public boolean m2664g(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.DELETE", Uri.parse("package:" + str));
        intent.addFlags(268435456);
        context.startActivity(intent);
        return true;
    }

    /* renamed from: a */
    public boolean m2671a(ApplicationInfo applicationInfo, InterfaceC3443pv interfaceC3443pv) {
        cby cbyVar;
        if (applicationInfo == null) {
            return false;
        }
        try {
            String str = applicationInfo.sourceDir;
            ArrayList arrayList = new ArrayList(5);
            arrayList.add("mount -o remount,rw /system /system");
            arrayList.add("rm -rf " + str);
            arrayList.add("rm -rf " + (((Object) str.subSequence(0, str.length() - 3)) + "odex"));
            arrayList.add("pm uninstall " + applicationInfo.packageName);
            arrayList.add("mount -o remount,ro /system /system");
            List<cby> mo2616p = interfaceC3443pv.mo2616p(arrayList);
            if (mo2616p != null && mo2616p.size() == arrayList.size() && (cbyVar = mo2616p.get(0)) != null) {
                if (cbyVar.success()) {
                    return true;
                }
            }
        } catch (Exception e) {
        }
        return false;
    }

    /* renamed from: d */
    public boolean m2666d(String str, InterfaceC3443pv interfaceC3443pv) {
        if (TextUtils.isEmpty(str) || m2663gh().m2667cg(str) == null) {
            return false;
        }
        try {
            cby mo2618cj = interfaceC3443pv.mo2618cj("service call activity 79 s16 " + str);
            if (mo2618cj != null) {
                return mo2618cj.success();
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: cg */
    public ApplicationInfo m2667cg(String str) {
        try {
            cca ccaVar = (cca) bzu.m5099g(bzy.bEf);
            if (ccaVar == null) {
                return null;
            }
            return ccaVar.getApplicationInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: e */
    public boolean m2665e(String str, InterfaceC3443pv interfaceC3443pv) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(String.format("chmod 0%o %s", Integer.valueOf((int) FileUtils.FileMode.MODE_755), str));
        List<cby> mo2616p = interfaceC3443pv.mo2616p(arrayList);
        if (mo2616p != null && mo2616p.size() == arrayList.size()) {
            for (int i = 0; i < mo2616p.size(); i++) {
                if (!mo2616p.get(i).success()) {
                    return false;
                }
            }
        }
        return true;
    }
}
