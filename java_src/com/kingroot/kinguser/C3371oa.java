package com.kingroot.kinguser;

import android.os.Build;
import android.os.Bundle;
/* renamed from: com.kingroot.kinguser.oa */
/* loaded from: classes.dex */
public class C3371oa {

    /* renamed from: xI */
    private static String[] f3236xI = {"\"", "allow { init zygote } default_android_service service_manager add;", "allow { init zygote } servicemanager binder transfer;", "allow untrusted_app { init zygote } binder #;", "permissive netd;", "force netd;", "allow { init zygote } app_data_file file #;", "allow { init zygote } app_data_file dir #;", "allow { init zygote } system_data_file file #;", "allow { init zygote } system_data_file dir #;", "allow appdomain default_android_service service_manager find", "\""};

    /* renamed from: a */
    public static void m2778a(InterfaceC3363nu interfaceC3363nu, InterfaceC3362nt interfaceC3362nt) {
        m2774b(interfaceC3363nu, interfaceC3362nt);
        m2776a(interfaceC3363nu, interfaceC3362nt.mo2818dk());
        m2777a(interfaceC3363nu, interfaceC3362nt, m2779a(interfaceC3363nu));
    }

    /* renamed from: b */
    private static void m2774b(InterfaceC3363nu interfaceC3363nu, InterfaceC3362nt interfaceC3362nt) {
        interfaceC3363nu.mo2814aQ("chmod 755 " + interfaceC3362nt.mo2818dk());
        interfaceC3363nu.mo2814aQ("chmod 755 " + interfaceC3362nt.mo2817dl());
    }

    /* renamed from: a */
    private static String m2779a(InterfaceC3363nu interfaceC3363nu) {
        if (Build.VERSION.SDK_INT <= 20 || !"/system/bin/app_process32".equals(interfaceC3363nu.mo2814aQ("ls /system/bin/app_process32").trim())) {
            return "/system/bin/app_process";
        }
        return "/system/bin/app_process32";
    }

    /* renamed from: a */
    private static void m2776a(InterfaceC3363nu interfaceC3363nu, String str) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : f3236xI) {
            sb.append(str2);
        }
        interfaceC3363nu.mo2814aQ(str + " -p " + sb.toString());
    }

    /* renamed from: a */
    private static void m2777a(InterfaceC3363nu interfaceC3363nu, InterfaceC3362nt interfaceC3362nt, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(interfaceC3362nt.mo2818dk());
        sb.append(" -d ");
        sb.append(interfaceC3362nt.mo2817dl());
        sb.append(" ");
        sb.append(str + " /system/bin ");
        sb.append("com.king.uranus.daemon.internal.Main");
        sb.append(" ");
        sb.append(interfaceC3362nt.mo2820bI());
        sb.append(" ");
        sb.append(interfaceC3362nt.mo2819bJ());
        sb.append(" ");
        sb.append(interfaceC3362nt.mo2816dm());
        sb.append(" ");
        sb.append(interfaceC3362nt.mo2815dn());
        interfaceC3363nu.mo2814aQ(sb.toString());
    }

    /* renamed from: b */
    public static Bundle m2773b(InterfaceC3364nv interfaceC3364nv) {
        Bundle bundle = new Bundle();
        bundle.putString("p1", interfaceC3364nv.mo2813dC());
        bundle.putString("p2", interfaceC3364nv.mo2812dD());
        bundle.putString("p3", interfaceC3364nv.mo2811dE());
        bundle.putString("p4", interfaceC3364nv.mo2803dv());
        bundle.putString("p5", interfaceC3364nv.mo2808dH());
        bundle.putString("p6", interfaceC3364nv.mo2807dI());
        bundle.putString("p7", interfaceC3364nv.mo2806dJ());
        bundle.putInt("p8", interfaceC3364nv.mo2805dK());
        bundle.putString("p9", interfaceC3364nv.getMacAddress());
        bundle.putString("p11", interfaceC3364nv.mo2809dG());
        bundle.putInt("p10", interfaceC3364nv.mo2810dF());
        bundle.putString("p12", interfaceC3364nv.mo2802dz());
        bundle.putInt("p13", interfaceC3364nv.mo2804dL());
        return bundle;
    }

    /* renamed from: b */
    public static Bundle m2775b(InterfaceC3361ns interfaceC3361ns) {
        Bundle bundle = new Bundle();
        bundle.putString("p2", interfaceC3361ns.mo2824dw());
        bundle.putString("p1", interfaceC3361ns.mo2825dv());
        bundle.putString("p4", interfaceC3361ns.mo2822dy());
        bundle.putString("p3", interfaceC3361ns.mo2823dx());
        bundle.putString("p5", interfaceC3361ns.mo2821dz());
        bundle.putLong("p6", interfaceC3361ns.mo2827dA());
        bundle.putInt("p7", interfaceC3361ns.mo2826dB());
        return bundle;
    }

    public static int getVersion() {
        return 17;
    }
}
