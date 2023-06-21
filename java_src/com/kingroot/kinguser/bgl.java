package com.kingroot.kinguser;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.nfc.NfcManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.android.internal.p009os.PowerProfile;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.aav;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bgl {
    private static final String TAG = aiq.ase;
    private static final boolean boO;
    private static List<C2267a> boP;

    static {
        boO = Build.CPU_ABI != null && Build.CPU_ABI.contains("arm64");
        boP = null;
    }

    /* renamed from: ea */
    public static synchronized List<C2267a> m7106ea(boolean z) {
        ArrayList arrayList;
        synchronized (bgl.class) {
            if (boP == null || z) {
                abE();
            }
            arrayList = new ArrayList(boP);
        }
        return arrayList;
    }

    private static void abE() {
        if (boP == null) {
            boP = new ArrayList();
        } else {
            boP.clear();
        }
        m7109ak(R.string.device_info_product, 1);
        m7109ak(R.string.device_info_model, 2);
        m7109ak(R.string.device_info_api, 3);
        m7109ak(R.string.device_info_kernel_version, 6);
        m7109ak(R.string.device_info_cpu_abi, 8);
        m7109ak(R.string.device_info_dimension, 5);
        m7109ak(R.string.device_info_ram, 10);
        m7109ak(R.string.device_info_storage, 11);
        m7109ak(R.string.device_info_battry_capacity, 9);
        m7107d(R.string.device_info_imei, 4, true);
        m7107d(R.string.device_info_mac, 12, true);
        m7109ak(R.string.device_info_nfc, 13);
        m7109ak(R.string.device_info_bluetooth, 14);
        m7110a("GUID", 15, true);
    }

    /* renamed from: ak */
    private static void m7109ak(int i, int i2) {
        m7107d(i, i2, false);
    }

    /* renamed from: d */
    private static void m7107d(int i, int i2, boolean z) {
        String m7105iI = m7105iI(i2);
        if (!TextUtils.isEmpty(m7105iI)) {
            boP.add(new C2267a(i, m7105iI, z));
        }
    }

    /* renamed from: a */
    private static void m7110a(String str, int i, boolean z) {
        String m7105iI = m7105iI(i);
        if (!TextUtils.isEmpty(m7105iI)) {
            boP.add(new C2267a(str, m7105iI, z));
        }
    }

    /* renamed from: c */
    private static void m7108c(List<CharSequence> list, String str, int i) {
        String m7105iI = m7105iI(i);
        if (!TextUtils.isEmpty(m7105iI)) {
            list.add(str + ": " + m7105iI);
        }
    }

    /* renamed from: iI */
    public static String m7105iI(int i) {
        String sharkGuid;
        switch (i) {
            case 1:
                sharkGuid = Build.BRAND;
                return sharkGuid;
            case 2:
                sharkGuid = Build.MODEL;
                return sharkGuid;
            case 3:
                sharkGuid = Build.VERSION.RELEASE;
                return sharkGuid;
            case 4:
                sharkGuid = aay.m12882ak(KUApplication.m13453ge());
                if ("000000000000000".equals(sharkGuid) || "000000000000001".equals(sharkGuid)) {
                    sharkGuid = null;
                }
                return sharkGuid;
            case 5:
                sharkGuid = abG();
                return sharkGuid;
            case 6:
                String m7103lo = m7103lo("cat /proc/version");
                if (m7103lo != null) {
                    sharkGuid = m7103lo.trim();
                } else {
                    sharkGuid = "";
                }
                return sharkGuid;
            case 7:
                sharkGuid = Build.BOARD;
                return sharkGuid;
            case 8:
                sharkGuid = abF();
                return sharkGuid;
            case 9:
                int batteryCapacity = (int) getBatteryCapacity();
                if (batteryCapacity == 0) {
                    sharkGuid = "";
                } else {
                    sharkGuid = batteryCapacity + "mAh";
                }
                return sharkGuid;
            case 10:
                sharkGuid = abH();
                return sharkGuid;
            case 11:
                sharkGuid = abI();
                return sharkGuid;
            case 12:
                sharkGuid = aav.m12926ah(KApplication.m13453ge());
                return sharkGuid;
            case 13:
                sharkGuid = abJ() ? C3953zi.m1311pr().getString(R.string.device_info_support) : C3953zi.m1311pr().getString(R.string.device_info_unsupport);
                return sharkGuid;
            case 14:
                sharkGuid = abK() ? "4.0" : "";
                return sharkGuid;
            case 15:
                sharkGuid = C3736ux.m1945kT().getSharkGuid();
                return sharkGuid;
            default:
                return "";
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public static java.lang.String abF() {
        /*
            r0 = 0
            r5 = 2
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L44
            java.lang.String r1 = "/proc/cpuinfo"
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L44
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L44
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L44
            java.lang.String r2 = ""
        L10:
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> L5e
            if (r2 == 0) goto L3c
            java.lang.String r3 = "model name"
            boolean r3 = r2.contains(r3)     // Catch: java.lang.Throwable -> L5e
            if (r3 != 0) goto L26
            java.lang.String r3 = "Hardware"
            boolean r3 = r2.contains(r3)     // Catch: java.lang.Throwable -> L5e
            if (r3 == 0) goto L10
        L26:
            r1.close()     // Catch: java.lang.Throwable -> L5e
            java.lang.String r3 = ":\\s+"
            r4 = 2
            java.lang.String[] r2 = r2.split(r3, r4)     // Catch: java.lang.Throwable -> L5e
            int r3 = r2.length     // Catch: java.lang.Throwable -> L5e
            if (r3 < r5) goto L10
            r3 = 1
            r0 = r2[r3]     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L3b
            r1.close()     // Catch: java.lang.Throwable -> L58
        L3b:
            return r0
        L3c:
            if (r1 == 0) goto L3b
            r1.close()     // Catch: java.lang.Throwable -> L42
            goto L3b
        L42:
            r1 = move-exception
            goto L3b
        L44:
            r1 = move-exception
            r1 = r0
        L46:
            if (r1 == 0) goto L3b
            r1.close()     // Catch: java.lang.Throwable -> L4c
            goto L3b
        L4c:
            r1 = move-exception
            goto L3b
        L4e:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L52:
            if (r1 == 0) goto L57
            r1.close()     // Catch: java.lang.Throwable -> L5a
        L57:
            throw r0
        L58:
            r1 = move-exception
            goto L3b
        L5a:
            r1 = move-exception
            goto L57
        L5c:
            r0 = move-exception
            goto L52
        L5e:
            r2 = move-exception
            goto L46
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bgl.abF():java.lang.String");
    }

    private static String abG() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) KApplication.m13453ge().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels + " * " + displayMetrics.widthPixels;
    }

    private static String abH() {
        long m12902qo = aav.m12902qo();
        long m12900qq = aav.m12900qq();
        return (m12902qo == 0 || m12900qq == 0) ? "" : String.format("%.2fMB/%.2fMB", Float.valueOf((((float) m12900qq) / 1024.0f) / 1024.0f), Float.valueOf((((float) m12902qo) / 1024.0f) / 1024.0f));
    }

    private static String abI() {
        aav.C0620a c0620a = new aav.C0620a();
        aav.m12923b(c0620a);
        return (c0620a.f1286Yv == 0 || c0620a.f1287Yw == 0) ? "" : String.format("%.2fGB/%.2fGB", Float.valueOf(((((float) c0620a.f1286Yv) / 1024.0f) / 1024.0f) / 1024.0f), Float.valueOf(((((float) c0620a.f1287Yw) / 1024.0f) / 1024.0f) / 1024.0f));
    }

    private static boolean abJ() {
        try {
            return ((NfcManager) KApplication.m13453ge().getSystemService("nfc")).getDefaultAdapter() != null;
        } catch (Throwable th) {
            return false;
        }
    }

    private static boolean abK() {
        try {
            return BluetoothAdapter.getDefaultAdapter() != null;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: lo */
    private static String m7103lo(String str) {
        VTCmdResult m12827Q = abj.m12827Q("sh", str);
        if (m12827Q == null || !m12827Q.success() || m12827Q.mStdOut == null) {
            return null;
        }
        return m12827Q.mStdOut;
    }

    private static double getBatteryCapacity() {
        Object obj = null;
        try {
            obj = Class.forName("com.android.internal.os.PowerProfile").getConstructor(Context.class).newInstance(KUApplication.m13453ge());
        } catch (Exception e) {
        }
        try {
            return ((Double) Class.forName("com.android.internal.os.PowerProfile").getMethod("getAveragePower", String.class).invoke(obj, PowerProfile.POWER_BATTERY_CAPACITY)).doubleValue();
        } catch (Exception e2) {
            return 0.0d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getString(int i) {
        return C3953zi.m1311pr().getString(i);
    }

    public static List<CharSequence> abL() {
        ArrayList arrayList = new ArrayList();
        C3953zi m1311pr = C3953zi.m1311pr();
        m7108c(arrayList, m1311pr.getString(R.string.device_info_kernel_version), 6);
        m7108c(arrayList, m1311pr.getString(R.string.device_info_cpu_abi), 8);
        m7108c(arrayList, m1311pr.getString(R.string.device_info_ram), 10);
        m7108c(arrayList, m1311pr.getString(R.string.device_info_imei), 4);
        m7108c(arrayList, "GUID", 15);
        return arrayList;
    }

    /* renamed from: com.kingroot.kinguser.bgl$a */
    /* loaded from: classes.dex */
    public static class C2267a {
        public final String boQ;
        public final String boR;
        public final boolean boS;

        public C2267a(int i, String str, boolean z) {
            this.boQ = bgl.getString(i);
            this.boR = str;
            this.boS = z;
        }

        public C2267a(String str, String str2, boolean z) {
            this.boQ = str;
            this.boR = str2;
            this.boS = z;
        }
    }
}
