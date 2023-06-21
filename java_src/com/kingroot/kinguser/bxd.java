package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import android.util.Base64;
import com.kingroot.kinguser.bxv;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class bxd {
    private static final String[] bTd = {"^/data/user/\\d+$", "^/data/data$"};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bxd$a */
    /* loaded from: classes.dex */
    public static class C2661a {
        private final boolean bTe;
        private final String bTf;

        public C2661a(boolean z, String str) {
            this.bTe = z;
            this.bTf = str;
        }

        boolean ajr() {
            return this.bTe;
        }

        String ajs() {
            return this.bTf;
        }
    }

    /* renamed from: ca */
    public static ArrayList<byl> m5250ca(Context context) {
        ArrayList<byl> arrayList = new ArrayList<>();
        C2661a m5249cb = m5249cb(context);
        int m5170d = byx.m5170d(0, m5249cb.ajr(), 0);
        if (m5249cb.ajr()) {
            byl bylVar = new byl();
            bylVar.bUx = "turingmm_dual_a";
            bylVar.bUy = m5249cb.ajs();
            arrayList.add(bylVar);
        }
        C2661a m5248cc = m5248cc(context);
        int m5170d2 = byx.m5170d(m5170d, m5248cc.ajr(), 1);
        if (m5248cc.ajr()) {
            byl bylVar2 = new byl();
            bylVar2.bUx = "turingmm_dual_b";
            bylVar2.bUy = m5248cc.ajs();
            arrayList.add(bylVar2);
        }
        C2661a m5247cd = m5247cd(context);
        int m5170d3 = byx.m5170d(m5170d2, m5247cd.ajr(), 2);
        if (m5247cd.ajr()) {
            byl bylVar3 = new byl();
            bylVar3.bUx = "turingmm_dual_c";
            bylVar3.bUy = m5247cd.ajs();
            arrayList.add(bylVar3);
        }
        C2661a m5245cf = m5245cf(context);
        int m5170d4 = byx.m5170d(m5170d3, m5245cf.ajr(), 3);
        if (m5245cf.ajr()) {
            byl bylVar4 = new byl();
            bylVar4.bUx = "turingmm_dual_d";
            bylVar4.bUy = m5245cf.ajs();
            arrayList.add(bylVar4);
        }
        if (m5170d4 > 0) {
            byl bylVar5 = new byl();
            bylVar5.bUx = "turingmm_dual_result";
            bylVar5.bUy = "" + m5170d4;
            arrayList.add(bylVar5);
        }
        return arrayList;
    }

    /* renamed from: cb */
    private static C2661a m5249cb(Context context) {
        boolean z = false;
        File parentFile = context.getApplicationContext().getFilesDir().getParentFile();
        if (parentFile == null) {
            return new C2661a(false, "");
        }
        File parentFile2 = parentFile.getParentFile();
        if (parentFile2 == null) {
            return new C2661a(false, "");
        }
        String[] strArr = bTd;
        int length = strArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = true;
                break;
            } else if (Pattern.compile(strArr[i]).matcher(parentFile2.getAbsolutePath()).find()) {
                break;
            } else {
                i++;
            }
        }
        String absolutePath = parentFile.getAbsolutePath();
        String packageName = context.getPackageName();
        String[] split = absolutePath.split("/", 6);
        if (absolutePath.startsWith("/data/data/") && split.length >= 4 && !TextUtils.isEmpty(split[3])) {
            packageName = split[3];
        } else if (absolutePath.startsWith("/data/user/") && split.length >= 5 && !TextUtils.isEmpty(split[4])) {
            packageName = split[4];
        }
        if (z && !packageName.equals(context.getPackageName())) {
            return new C2661a(z, m5251R(context, packageName));
        }
        return new C2661a(z, "");
    }

    /* renamed from: R */
    private static String m5251R(Context context, String str) {
        File file;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
        String m5149T = bza.m5149T(context, str);
        try {
            sb.append(bza.m5150S(new File(m5149T)).get(0));
        } catch (Throwable th) {
            sb.append("");
        }
        sb.append(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
        long j = -1;
        if (!TextUtils.isEmpty(m5149T) && (file = new File(m5149T)) != null && file.exists()) {
            j = file.length();
        }
        sb.append(j);
        return sb.toString();
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: cc */
    private static com.kingroot.kinguser.bxd.C2661a m5248cc(android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bxd.m5248cc(android.content.Context):com.kingroot.kinguser.bxd$a");
    }

    /* renamed from: cd */
    private static C2661a m5247cd(Context context) {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 17) {
            return new C2661a(false, "");
        }
        StringBuilder sb = new StringBuilder();
        if ("HUAWEI".equalsIgnoreCase(Build.BRAND)) {
            try {
            } catch (Throwable th) {
                z = false;
            }
            if (new String(Base64.decode("5YiG6Lqr5bqU55So", 0)).equals(m5246ce(context))) {
                try {
                    sb.append("HuaWei");
                } catch (Throwable th2) {
                }
                return new C2661a(z, sb.toString());
            }
        } else if ("xiaomi".equalsIgnoreCase(Build.BRAND)) {
            if (ajq()) {
                sb.append("XiaoMi");
                return new C2661a(z, sb.toString());
            }
        } else if ("oppo".equalsIgnoreCase(Build.BRAND)) {
            if (ajq()) {
                sb.append("OPPO");
                return new C2661a(z, sb.toString());
            }
        } else if ("vivo".equalsIgnoreCase(Build.BRAND)) {
            if (ajq()) {
                sb.append("VIVO_A");
            } else {
                try {
                    if (new String(byy.m5164cy("/proc/self/mountinfo")).contains(context.getApplicationContext().getPackageName() + "_cloned")) {
                        try {
                            sb.append("VIVO_B");
                        } catch (Throwable th3) {
                        }
                    }
                } catch (Throwable th4) {
                    z = false;
                }
            }
            return new C2661a(z, sb.toString());
        }
        z = false;
        return new C2661a(z, sb.toString());
    }

    private static boolean ajq() {
        if (999 == Process.myUid() / 100000) {
            return true;
        }
        return false;
    }

    /* renamed from: ce */
    private static String m5246ce(Context context) {
        Method method;
        try {
            Class<?> cls = Class.forName("android.os.UserManager");
            Field field = context.getClass().getField("USER_SERVICE");
            field.setAccessible(true);
            Object systemService = context.getSystemService((String) field.get(context));
            if (systemService != null && (method = cls.getMethod("getUserName", new Class[0])) != null) {
                method.setAccessible(true);
                return (String) method.invoke(systemService, null);
            }
            return "";
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: cf */
    private static C2661a m5245cf(Context context) {
        int i;
        if (Build.VERSION.SDK_INT >= 24) {
            return new C2661a(false, "");
        }
        try {
            ApplicationInfo applicationInfo = context.getApplicationContext().getApplicationInfo();
            String str = applicationInfo.processName;
            int i2 = applicationInfo.uid;
            i = 0;
            for (bxv.C2664a c2664a : bxv.m5216qJ()) {
                try {
                    i = (str.equals(c2664a.name) && i2 == c2664a.uid) ? i + 1 : i;
                } catch (Throwable th) {
                }
            }
        } catch (Throwable th2) {
            i = 0;
        }
        if (i > 1) {
            return new C2661a(true, "" + i);
        }
        return new C2661a(false, "");
    }
}
