package com.kingroot.kinguser;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import com.kingroot.kinguser.aav;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.kingroot.kinguser.yz */
/* loaded from: classes.dex */
public class C3943yz {

    /* renamed from: Wh */
    private static long f4064Wh = -1;

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: pf */
    public static long m1345pf() {
        /*
            r1 = 0
            long r2 = com.kingroot.kinguser.C3943yz.f4064Wh
            r4 = -1
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 != 0) goto L36
            java.io.File r0 = new java.io.File
            java.lang.String r2 = "/proc/meminfo"
            r0.<init>(r2)
            boolean r2 = r0.exists()
            if (r2 == 0) goto L36
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L74
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L74
            java.io.DataInputStream r0 = new java.io.DataInputStream     // Catch: java.lang.Throwable -> L77
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L77
            java.lang.String r1 = r0.readLine()     // Catch: java.lang.Throwable -> L2e
            if (r1 != 0) goto L41
            java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> L2e
            java.lang.String r3 = "/proc/meminfo is empty!"
            r1.<init>(r3)     // Catch: java.lang.Throwable -> L2e
            throw r1     // Catch: java.lang.Throwable -> L2e
        L2e:
            r1 = move-exception
            r1 = r2
        L30:
            com.kingroot.kinguser.C3945za.m1340c(r0)
            com.kingroot.kinguser.C3945za.m1340c(r1)
        L36:
            long r0 = com.kingroot.kinguser.C3943yz.f4064Wh
            r2 = 0
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 <= 0) goto L6a
            long r0 = com.kingroot.kinguser.C3943yz.f4064Wh
        L40:
            return r0
        L41:
            java.lang.String r1 = r1.trim()     // Catch: java.lang.Throwable -> L2e
            java.lang.String r3 = "[\\s]+"
            java.lang.String[] r1 = r1.split(r3)     // Catch: java.lang.Throwable -> L2e
            r3 = 1
            r1 = r1[r3]     // Catch: java.lang.Throwable -> L2e
            long r4 = java.lang.Long.parseLong(r1)     // Catch: java.lang.Throwable -> L2e
            com.kingroot.kinguser.C3943yz.f4064Wh = r4     // Catch: java.lang.Throwable -> L2e
            r0.close()     // Catch: java.lang.Throwable -> L2e
            r2.close()     // Catch: java.lang.Throwable -> L2e
            com.kingroot.kinguser.C3945za.m1340c(r0)
            com.kingroot.kinguser.C3945za.m1340c(r2)
            goto L36
        L61:
            r0 = move-exception
            r2 = r1
        L63:
            com.kingroot.kinguser.C3945za.m1340c(r1)
            com.kingroot.kinguser.C3945za.m1340c(r2)
            throw r0
        L6a:
            r0 = 1
            goto L40
        L6d:
            r0 = move-exception
            goto L63
        L6f:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L63
        L74:
            r0 = move-exception
            r0 = r1
            goto L30
        L77:
            r0 = move-exception
            r0 = r1
            r1 = r2
            goto L30
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3943yz.m1345pf():long");
    }

    /* renamed from: Z */
    public static String[] m1347Z(Context context) {
        String[] strArr = new String[4];
        strArr[0] = Build.MODEL;
        strArr[1] = Build.VERSION.RELEASE;
        String str = "";
        try {
            str = C3563rs.m2361cA("/proc/cpuinfo").split("\\n")[0];
        } catch (Exception e) {
            e.printStackTrace();
        }
        strArr[2] = str;
        strArr[3] = Integer.toString(aav.m12914qc()) + "*" + Integer.toString(aav.m12913qd());
        return strArr;
    }

    /* renamed from: pg */
    public static String m1344pg() {
        StringBuilder sb = new StringBuilder();
        InputStream inputStream = null;
        try {
            inputStream = new ProcessBuilder("/system/bin/cat", "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq").start().getInputStream();
            byte[] bArr = new byte[24];
            while (inputStream.read(bArr) != -1) {
                sb.append(new String(bArr));
            }
        } catch (IOException e) {
            e.printStackTrace();
            sb = new StringBuilder("N/A");
        } finally {
            C3945za.m1340c(inputStream);
        }
        return sb.toString().trim();
    }

    /* renamed from: ph */
    public static long m1343ph() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getBlockCount() * statFs.getBlockSize();
    }

    /* renamed from: aa */
    public static String m1346aa(Context context) {
        aav.C0620a c0620a;
        String str = new String();
        String[] strArr = new String[4];
        String[] m1347Z = m1347Z(context);
        String str2 = (((((((str + "MODEL " + m1347Z[0] + ";") + "ANDROID " + m1347Z[1] + ";") + "CPU " + m1347Z[2] + ";") + "CPUFreq " + m1344pg() + ";") + "CPUNum " + Runtime.getRuntime().availableProcessors() + ";") + "resolution " + m1347Z[3] + ";") + "ram " + m1345pf() + ";") + "rom " + m1343ph() + ";";
        aav.m12931a(new aav.C0620a());
        return (((str2 + "sdcard " + c0620a.f1287Yw + ";") + "simNum " + (aav.m12912qe() ? 2 : 1) + ";") + "baseband " + C3949ze.get("gsm.version.baseband", "") + ";") + "inversion " + Build.DISPLAY + ";";
    }
}
