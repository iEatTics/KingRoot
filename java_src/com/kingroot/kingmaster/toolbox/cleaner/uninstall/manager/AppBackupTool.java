package com.kingroot.kingmaster.toolbox.cleaner.uninstall.manager;

import android.content.p002pm.IPackageStatsObserver;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.os.Process;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.C3563rs;
import com.kingroot.kinguser.C3565ru;
import com.kingroot.kinguser.C3939yv;
import com.kingroot.kinguser.C3945za;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.C3958zl;
import com.kingroot.kinguser.aab;
import com.kingroot.kinguser.aas;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.abd;
import com.kingroot.kinguser.aew;
import com.kingroot.kinguser.aff;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
/* loaded from: classes.dex */
public class AppBackupTool {
    private String agq = agp;
    private int agr = 50;
    private String ags;
    private String agt;
    private String agu;
    private String agv;
    private String agw;
    private boolean agx;
    private String agy;
    private boolean isUpdate;
    private static final String agf = C3958zl.m1295pw().getAbsolutePath() + File.separator + "busybox ";
    private static final String agg = agf + "tar -chf ";
    private static final String agh = agf + "tar -xf ";
    private static final String agi = agf + "chown -R %d:%d ";
    private static final String agk = agf + "rm -R ";
    private static final String agm = agf + "cp -r ";
    private static final String agl = agf + "cp ";
    private static final String agj = agf + "chmod %s ";
    private static final String agn = agf + "mv %s %s";
    private static final String ago = agf + "chmod -R 755 ";
    private static final String agp = "KingMaster" + File.separator + "Cleaner";
    public static int ERROR_NONE = 0;
    public static int agz = -1;
    public static int agA = 1;
    public static int agB = 2;
    public static int agC = 3;
    public static int agD = 4;
    public static int agE = 5;
    public static int agF = 6;
    public static int agG = 7;
    public static int agH = 8;
    public static int agI = 9;
    public static int agJ = 10;
    public static int agK = 11;
    public static int agL = 12;
    public static int agM = 13;
    public static int agN = 14;
    public static int agO = 15;
    public static int agP = 16;
    public static int agQ = 17;
    public static int agR = 18;
    public static int agS = 19;
    public static int agT = 20;
    public static int agU = 21;
    public static int agV = 22;
    public static int agW = 23;

    /* renamed from: com.kingroot.kingmaster.toolbox.cleaner.uninstall.manager.AppBackupTool$a */
    /* loaded from: classes.dex */
    public static class C0602a {
        public long ahd;
        public long ahe;
        public int classify;
        public String mAppName = null;
        public String mPackageName = null;

        /* renamed from: Bk */
        public String f1202Bk = null;
        public long agX = 0;
        public String agY = null;
        public boolean agZ = false;
        public boolean aha = false;
        public boolean ahb = false;
        public int ahc = 0;
    }

    /* renamed from: com.kingroot.kingmaster.toolbox.cleaner.uninstall.manager.AppBackupTool$b */
    /* loaded from: classes.dex */
    public interface InterfaceC0603b {
    }

    /* renamed from: a */
    public int m13052a(String str, int i, String str2, InterfaceC0603b interfaceC0603b) {
        if (TextUtils.isEmpty(this.agy)) {
            this.agy = m13036ja();
        }
        PackageInfo packageInfo = null;
        try {
            packageInfo = C3952zh.m1312pq().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
        }
        return packageInfo == null ? agB : m13055a(packageInfo, i, str2, interfaceC0603b);
    }

    /* renamed from: a */
    public int m13055a(PackageInfo packageInfo, int i, String str, InterfaceC0603b interfaceC0603b) {
        m13031uQ();
        this.agx = true;
        this.isUpdate = false;
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        if (aew.m12146uN()) {
            int i2 = ERROR_NONE;
            int m13037i = m13037i(packageInfo.packageName, System.currentTimeMillis());
            if (m13037i == ERROR_NONE) {
                if ((packageInfo.applicationInfo.flags & 128) != 0) {
                    this.isUpdate = true;
                    int m13048b = m13048b(packageInfo.applicationInfo);
                    if (m13048b != ERROR_NONE) {
                        m13033uO();
                        return m13048b;
                    } else if (!aff.m12090fb(packageInfo.applicationInfo.packageName)) {
                        m13033uO();
                        return agS;
                    } else {
                        try {
                            applicationInfo = C3952zh.m1312pq().getApplicationInfo(packageInfo.applicationInfo.packageName, 0);
                        } catch (PackageManager.NameNotFoundException e) {
                        }
                    }
                }
                int m13048b2 = m13048b(applicationInfo);
                if (m13048b2 != ERROR_NONE) {
                    m13033uO();
                    return m13048b2;
                }
                int m13057a = m13057a(applicationInfo);
                if (m13057a != ERROR_NONE) {
                    m13033uO();
                    return m13057a;
                }
                int m13056a = m13056a(applicationInfo, this.agx, i, str, packageInfo.versionCode);
                if (m13056a != ERROR_NONE) {
                    m13033uO();
                    return m13056a;
                }
                int m13046c = m13046c(applicationInfo);
                if (m13046c != ERROR_NONE) {
                    m13033uO();
                    return m13046c;
                }
                m13032uP();
                return ERROR_NONE;
            }
            return m13037i;
        }
        return agA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v24, types: [java.lang.String] */
    /* renamed from: a */
    private int m13056a(ApplicationInfo applicationInfo, boolean z, int i, String str, int i2) {
        int i3;
        FileOutputStream fileOutputStream;
        Properties properties = new Properties();
        properties.setProperty("S01", "0");
        properties.setProperty("S08", String.valueOf(i));
        if ((applicationInfo.flags & 1) != 0) {
            properties.setProperty("S01", "1");
            File file = new File(applicationInfo.sourceDir);
            properties.setProperty("S01", "1");
            properties.setProperty("S07", m13045cO(file.getName()));
        }
        properties.setProperty("S04", String.valueOf(i2));
        properties.setProperty("S09", this.isUpdate ? "1" : "0");
        if (!TextUtils.isEmpty(str)) {
            properties.setProperty("S10", m13045cO(str));
        } else {
            properties.setProperty("S10", m13045cO(""));
        }
        properties.setProperty("S02", m13045cO(applicationInfo.loadLabel(C3952zh.m1312pq()).toString()));
        properties.setProperty("S03", z ? "1" : "0");
        File file2 = new File(this.ags);
        File file3 = new File(this.agu);
        if (!file2.exists() || (z && !file3.exists())) {
            return agI;
        }
        properties.setProperty("S05", "" + file2.length());
        properties.setProperty("S06", "" + file3.length());
        FileOutputStream fileOutputStream2 = null;
        try {
            try {
                fileOutputStream = new FileOutputStream(this.agv);
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e) {
        }
        try {
            ?? r1 = "cfg.";
            properties.save(fileOutputStream, "cfg.");
            fileOutputStream.close();
            C3945za.m1340c(fileOutputStream);
            i3 = ERROR_NONE;
            fileOutputStream2 = r1;
        } catch (IOException e2) {
            fileOutputStream2 = fileOutputStream;
            i3 = agE;
            C3945za.m1340c(fileOutputStream2);
            fileOutputStream2 = fileOutputStream2;
            return i3;
        } catch (Throwable th2) {
            fileOutputStream2 = fileOutputStream;
            th = th2;
            C3945za.m1340c(fileOutputStream2);
            throw th;
        }
        return i3;
    }

    /* renamed from: a */
    private int m13057a(ApplicationInfo applicationInfo) {
        boolean z = false;
        if (this.isUpdate) {
            this.agx = false;
            return 0;
        }
        abc m12845qK = abc.m12845qK();
        String str = applicationInfo.dataDir + File.separator + KlConst.PLUGIN_LIB_DIR_NAME;
        if (m12845qK.isRootPermition(true)) {
            if (TextUtils.isEmpty(str)) {
                return 0;
            }
            VTCmdResult m12846el = m12845qK.m12846el("ls " + str + File.separator);
            if (!m12846el.success()) {
                this.agx = false;
                return 0;
            } else if (m12846el.mStdErr.toUpperCase(Locale.getDefault()).contains("No such file or directory".toUpperCase(Locale.getDefault()))) {
                this.agx = false;
                return 0;
            } else if (TextUtils.isEmpty(m12846el.mStdOut)) {
                this.agx = false;
                return 0;
            } else {
                String[] split = m12846el.mStdOut.split("\n");
                if (split == null || split.length == 0) {
                    this.agx = false;
                    return 0;
                }
                File file = new File(this.agu);
                if (!file.exists()) {
                    file.mkdir();
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(agm + str + File.separator + "* " + this.agu);
                List<VTCmdResult> runRootCommands = m12845qK.runRootCommands(arrayList);
                if (runRootCommands != null && runRootCommands.size() == arrayList.size()) {
                    for (int i = 0; i < runRootCommands.size(); i++) {
                        if (!runRootCommands.get(i).success()) {
                            break;
                        }
                    }
                }
                z = true;
            }
        }
        if (z) {
            return ERROR_NONE;
        }
        return agD;
    }

    /* renamed from: b */
    private int m13048b(ApplicationInfo applicationInfo) {
        String str;
        boolean z = false;
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            String substring = applicationInfo.sourceDir.substring(0, applicationInfo.sourceDir.lastIndexOf(File.separator));
            String substring2 = applicationInfo.sourceDir.substring(applicationInfo.sourceDir.lastIndexOf(File.separator) + 1, applicationInfo.sourceDir.length());
            String str2 = ((Object) substring2.subSequence(0, substring2.length() - 3)) + "odex";
            if (TextUtils.isEmpty(substring) || TextUtils.isEmpty(substring2)) {
                return agW;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add("cd " + File.separator);
            if ((applicationInfo.flags & 128) == 0) {
                str = agg + this.ags + " -C " + substring + " " + substring2;
            } else {
                str = agg + this.agt + " -C " + substring + " " + substring2;
            }
            if (new File(substring + File.separator + str2).exists()) {
                str = str + " " + str2;
            }
            arrayList.add(str);
            List<VTCmdResult> runRootCommands = m12845qK.runRootCommands(arrayList);
            if (runRootCommands != null && runRootCommands.size() == arrayList.size()) {
                for (int i = 0; i < runRootCommands.size(); i++) {
                    VTCmdResult vTCmdResult = runRootCommands.get(i);
                    if (!vTCmdResult.success()) {
                        if (vTCmdResult.mCmdFlag.contains("No such file or directory")) {
                            return agW;
                        }
                    }
                }
            }
            z = true;
        }
        if (z) {
            return ERROR_NONE;
        }
        return agC;
    }

    /* renamed from: c */
    private int m13046c(ApplicationInfo applicationInfo) {
        Bitmap m13047b;
        boolean z;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        try {
            Drawable applicationIcon = C3952zh.m1312pq().getApplicationIcon(applicationInfo.packageName);
            if (applicationIcon != null) {
                if (applicationIcon instanceof BitmapDrawable) {
                    m13047b = ((BitmapDrawable) applicationIcon).getBitmap();
                    z = true;
                } else {
                    m13047b = m13047b(applicationIcon);
                    z = false;
                }
                File file = new File(this.agw);
                try {
                    file.createNewFile();
                    fileOutputStream = new FileOutputStream(file);
                } catch (IOException e) {
                    fileOutputStream2 = null;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = null;
                }
                try {
                    m13047b.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    C3945za.m1340c(fileOutputStream);
                    if (!z) {
                        m13047b.recycle();
                    }
                } catch (IOException e2) {
                    fileOutputStream2 = fileOutputStream;
                    try {
                        int i = agG;
                        C3945za.m1340c(fileOutputStream2);
                        return i;
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream2;
                        C3945za.m1340c(fileOutputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    C3945za.m1340c(fileOutputStream);
                    throw th;
                }
            }
            return ERROR_NONE;
        } catch (PackageManager.NameNotFoundException e3) {
            return agF;
        }
    }

    /* renamed from: uO */
    private boolean m13033uO() {
        File file = new File(this.ags);
        if (!file.exists() || !file.delete()) {
        }
        File file2 = new File(this.agt);
        if (!file2.exists() || !file2.delete()) {
        }
        File file3 = new File(this.agu);
        if (file3.exists()) {
            C3563rs.m2354cz(file3.getAbsolutePath());
        }
        File file4 = new File(this.agu + ".gz");
        if (!file4.exists() || !file4.delete()) {
        }
        File file5 = new File(this.agy + File.separator + this.agq + File.separator + ".extract");
        if (file5.exists()) {
            C3563rs.m2354cz(file5.getAbsolutePath());
        }
        File file6 = new File(this.agv);
        File parentFile = file6.getParentFile();
        if (!file6.exists() || !file6.delete()) {
        }
        File[] listFiles = parentFile.listFiles();
        if (!parentFile.exists() || ((listFiles != null && listFiles.length != 0) || parentFile.delete())) {
        }
        File file7 = new File(this.agw);
        if (!file7.exists() || !file7.delete()) {
        }
        return true;
    }

    /* renamed from: i */
    private int m13037i(String str, long j) {
        if (this.agq == null || this.agq.equals("")) {
            return agH;
        }
        if (TextUtils.isEmpty(this.agy)) {
            this.agy = m13036ja();
        }
        if (j == 0) {
            j = System.currentTimeMillis();
        }
        String str2 = this.agy + File.separatorChar + this.agq;
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        File file2 = new File(str2 + File.separator + "Config");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        this.ags = str2 + File.separator + "apk." + str + "." + j;
        this.agt = str2 + File.separator + "apk.update" + str + "." + j;
        this.agu = str2 + File.separator + "data." + str + "." + j;
        this.agv = str2 + File.separator + "Config" + File.separator + "cfg." + str + "." + j;
        this.agw = str2 + File.separator + "icon." + str + "." + j;
        return ERROR_NONE;
    }

    /* renamed from: b */
    private static Bitmap m13047b(Drawable drawable) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, drawable.getOpacity() != -1 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        drawable.draw(canvas);
        return createBitmap;
    }

    /* renamed from: uP */
    private static void m13032uP() {
        C3956zk.m1301dw("backup_util");
    }

    /* renamed from: uQ */
    private static void m13031uQ() {
        C3956zk.m1300y(536870913, "backup_util");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: uR */
    public ArrayList<C0602a> m13030uR() {
        ArrayList<C0602a> arrayList = new ArrayList<>();
        if (TextUtils.isEmpty(this.agy)) {
            this.agy = m13036ja();
        }
        HashMap hashMap = new HashMap();
        File file = new File(this.agy + File.separatorChar + this.agq + File.separator + "Config");
        if (file.exists()) {
            String[] m1358f = C3939yv.m1358f(file.list());
            for (String str : m1358f) {
                C0602a c0602a = new C0602a();
                if (m13051a(str, c0602a) == ERROR_NONE) {
                    C0602a c0602a2 = (C0602a) hashMap.get(c0602a.mPackageName);
                    if (c0602a2 == null) {
                        hashMap.put(c0602a.mPackageName, c0602a);
                    } else if (c0602a2.agZ ^ c0602a.agZ) {
                        if (c0602a2.agZ) {
                            m13054a(c0602a);
                        } else {
                            m13054a(c0602a2);
                            hashMap.put(c0602a.mPackageName, c0602a);
                        }
                    } else if (c0602a2.agX > c0602a.agX) {
                        m13054a(c0602a);
                    } else {
                        m13054a(c0602a2);
                        hashMap.put(c0602a.mPackageName, c0602a);
                    }
                }
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0134  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m13051a(String str, C0602a c0602a) {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        if (str.startsWith("cfg.")) {
            String substring = str.substring("cfg.".length(), str.length());
            String str2 = this.agy + File.separatorChar + this.agq;
            String str3 = str2 + File.separator + "Config" + File.separator + str;
            Properties m13039eV = m13039eV(str3);
            if (m13039eV == null) {
                return agI;
            }
            c0602a.mAppName = m13044cP(m13039eV.getProperty("S02"));
            c0602a.agZ = m13039eV.getProperty("S03").equals("1");
            c0602a.mPackageName = substring.substring(0, substring.lastIndexOf(46));
            c0602a.agY = str2 + File.separator + "icon." + substring;
            c0602a.aha = m13039eV.getProperty("S01").equals("1");
            c0602a.f1202Bk = m13044cP(m13039eV.getProperty("S10"));
            try {
                c0602a.ahc = Integer.valueOf(m13039eV.getProperty("S04", "0")).intValue();
                c0602a.classify = Integer.valueOf(m13039eV.getProperty("S08", "0")).intValue();
                c0602a.agX = Long.parseLong(substring.substring(substring.lastIndexOf(46) + 1));
                int m13037i = m13037i(c0602a.mPackageName, c0602a.agX);
                if (m13037i == ERROR_NONE) {
                    File file = new File(this.ags);
                    if (file.exists()) {
                        try {
                            c0602a.ahd = Long.parseLong(m13039eV.getProperty("S05"));
                        } catch (NumberFormatException e) {
                            if (c0602a.ahd == 0) {
                                c0602a.ahd = file.length();
                                m13039eV.setProperty("S05", "" + c0602a.ahd);
                            }
                            if (c0602a.ahe == 0) {
                                m13039eV.setProperty("S06", "" + c0602a.ahe);
                            }
                            try {
                                fileOutputStream = new FileOutputStream(str3);
                            } catch (IOException e2) {
                                fileOutputStream = null;
                            } catch (Throwable th) {
                                th = th;
                            }
                            try {
                                m13039eV.save(fileOutputStream, "cfg.");
                                fileOutputStream.close();
                                C3945za.m1340c(fileOutputStream);
                            } catch (IOException e3) {
                                C3945za.m1340c(fileOutputStream);
                                if (!new File(c0602a.agY).exists()) {
                                }
                                return ERROR_NONE;
                            } catch (Throwable th2) {
                                fileOutputStream2 = fileOutputStream;
                                th = th2;
                                C3945za.m1340c(fileOutputStream2);
                                throw th;
                            }
                        }
                        if (!new File(c0602a.agY).exists()) {
                            c0602a.agY = null;
                        }
                        return ERROR_NONE;
                    }
                    return agI;
                }
                return m13037i;
            } catch (NumberFormatException e4) {
                return agz;
            }
        }
        return agz;
    }

    /* renamed from: ay */
    private boolean m13050ay(boolean z) {
        File file = new File(this.ags);
        if (!z || new File(this.agu).exists()) {
            return file.exists() && new File(this.agv).exists();
        }
        return false;
    }

    /* renamed from: a */
    public int m13053a(C0602a c0602a, boolean z, InterfaceC0603b interfaceC0603b) {
        if (TextUtils.isEmpty(this.agy)) {
            this.agy = m13036ja();
        }
        m13031uQ();
        int i = ERROR_NONE;
        if (aew.m12146uN()) {
            if (c0602a == null) {
                return agJ;
            }
            boolean z2 = c0602a.agZ;
            int m13037i = m13037i(c0602a.mPackageName, c0602a.agX);
            if (m13037i == ERROR_NONE) {
                if (m13050ay(z2)) {
                    if (!z && !aff.m12089fc(c0602a.mPackageName)) {
                        return agT;
                    }
                    if (z && !m13035m(c0602a.mPackageName, this.agr)) {
                        return agU;
                    }
                    m13041eT(c0602a.mPackageName);
                    Properties m13039eV = m13039eV(this.agv);
                    if (m13039eV == null) {
                        return agI;
                    }
                    if (!m13049az(false)) {
                        if (C3565ru.m2322iW() < c0602a.ahd) {
                            return agV;
                        }
                        return agP;
                    }
                    String m13029uS = m13029uS();
                    if (m13029uS == null || m13029uS.equals("")) {
                        return agP;
                    }
                    int m13042eS = m13042eS(m13029uS);
                    if (m13042eS == ERROR_NONE) {
                        if (!m13034n(c0602a.mPackageName, this.agr)) {
                            return agK;
                        }
                        if (m13039eV.getProperty("S09").equals("1")) {
                            if (!m13049az(true)) {
                                if (C3565ru.m2322iW() < c0602a.ahd) {
                                    return agV;
                                }
                                return agP;
                            }
                            String m13029uS2 = m13029uS();
                            if (m13029uS2 == null || m13029uS2.equals("")) {
                                return agP;
                            }
                            if (!m13043eR(m13029uS2)) {
                                return agL;
                            }
                            new File(m13029uS2).delete();
                        }
                        if (!z2 || !m13040eU(c0602a.mPackageName)) {
                        }
                        m13054a(c0602a);
                        m13032uP();
                        return ERROR_NONE;
                    }
                    return m13042eS;
                }
                return agI;
            }
            return m13037i;
        }
        return agA;
    }

    /* renamed from: m */
    private boolean m13035m(String str, int i) {
        int m12094d;
        try {
            PackageInfo packageInfo = C3952zh.m1312pq().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return false;
            }
            if ((packageInfo.applicationInfo.flags & 128) != 0) {
                m12094d = aff.m12093eY(str);
            } else if ((packageInfo.applicationInfo.flags & 1) != 0) {
                m12094d = aff.m12094d(packageInfo.applicationInfo);
            } else {
                return aff.m12090fb(packageInfo.packageName);
            }
            return m12094d == ERROR_NONE;
        } catch (PackageManager.NameNotFoundException e) {
            return e.getMessage() == null;
        }
    }

    /* renamed from: eR */
    private boolean m13043eR(String str) {
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition()) {
            VTCmdResult m12846el = m12845qK.m12846el("pm install -r " + str);
            return m12846el.success() && m12846el.mStdOut.contains("Success");
        }
        return false;
    }

    /* renamed from: eS */
    private int m13042eS(String str) {
        boolean z = false;
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            String str2 = Environment.getRootDirectory().getPath() + File.separator + KlConst.PLUGIN_APP_DIR_NAME;
            String str3 = ((Object) str.subSequence(0, str.length() - 3)) + "odex";
            File file = new File(str);
            File file2 = new File(str3);
            ArrayList arrayList = new ArrayList();
            arrayList.add(aas.f1256XR);
            String str4 = str2 + File.separator + file.getName().replace("-1.apk", KlConst.PLUGIN_FILE_NAME_SUFFIX).replace("-2.apk", KlConst.PLUGIN_FILE_NAME_SUFFIX);
            String replace = str4.replace(KlConst.PLUGIN_FILE_NAME_SUFFIX, "-1.apk");
            arrayList.add(agl + str + " " + replace);
            arrayList.add(String.format(agj, "644") + replace);
            arrayList.add(String.format(agi, 0, 0) + replace);
            if (file2.exists()) {
                String str5 = str2 + File.separator + file2.getName();
                arrayList.add(agl + str3 + " " + str5);
                arrayList.add(String.format(agj, "644") + str5);
                arrayList.add(String.format(agi, 0, 0) + str5);
            }
            arrayList.add(String.format(agn, replace, str4));
            List<VTCmdResult> runRootCommands = m12845qK.runRootCommands(arrayList);
            if (runRootCommands != null && runRootCommands.size() == arrayList.size()) {
                for (int i = 0; i < runRootCommands.size(); i++) {
                    if (!runRootCommands.get(i).success() && !runRootCommands.get(i).mCmdFlag.contains("chown -R")) {
                        break;
                    }
                }
            }
            z = true;
        }
        if (z) {
            return ERROR_NONE;
        }
        return agK;
    }

    /* renamed from: eT */
    private void m13041eT(String str) {
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition()) {
            String str2 = KApplication.m13453ge().getApplicationInfo().dataDir;
            ArrayList arrayList = new ArrayList();
            arrayList.add(agk + (str2.substring(0, str2.lastIndexOf(File.separator)) + File.separator + str));
            arrayList.add(agk + "/data/app-lib/" + str + "-1");
            arrayList.add(agk + "/data/app-lib/" + str + "-2");
            m12845qK.runRootCommands(arrayList);
        }
    }

    /* renamed from: n */
    private boolean m13034n(String str, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            try {
                C3952zh.m1312pq().getPackageInfo(str, 0);
                return true;
            } catch (PackageManager.NameNotFoundException e) {
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e2) {
                }
            }
        }
        return false;
    }

    /* renamed from: eU */
    private boolean m13040eU(String str) {
        boolean z = true;
        String str2 = Environment.getDataDirectory() + "/data/" + str + File.separator + KlConst.PLUGIN_LIB_DIR_NAME;
        File[] listFiles = new File(this.agu).listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return false;
        }
        String str3 = this.agu + File.separator + "*";
        if (TextUtils.isEmpty(str3)) {
            return false;
        }
        abc m12845qK = abc.m12845qK();
        VTCmdResult m12846el = m12845qK.m12846el("cd " + str2);
        boolean z2 = m12846el.success() && !m12846el.mStdErr.toUpperCase(Locale.getDefault()).contains("No such file or directory".toUpperCase(Locale.getDefault()));
        if (m12845qK.isRootPermition()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(agm + str3 + " " + (z2 ? str2 : "/system/lib/"));
            if (z2) {
                arrayList.add(ago + str2);
            } else {
                int length = listFiles.length;
                for (int i = 0; i < length; i++) {
                    arrayList.add(String.format(agj, "755") + "/system/lib/" + listFiles[i].getName());
                }
            }
            List<VTCmdResult> runRootCommands = m12845qK.runRootCommands(arrayList);
            if (runRootCommands != null && runRootCommands.size() == arrayList.size()) {
                int i2 = 0;
                while (true) {
                    if (i2 >= runRootCommands.size()) {
                        break;
                    } else if (!runRootCommands.get(i2).success()) {
                        z = false;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: eV */
    private Properties m13039eV(String str) {
        FileInputStream fileInputStream;
        Throwable th;
        FileInputStream fileInputStream2;
        Properties properties = new Properties();
        try {
            fileInputStream = new FileInputStream(str);
        } catch (IOException e) {
            fileInputStream2 = null;
        } catch (Throwable th2) {
            fileInputStream = null;
            th = th2;
        }
        try {
            properties.load(fileInputStream);
            fileInputStream.close();
            if (properties.getProperty("S01") != null && properties.getProperty("S02") != null && properties.getProperty("S03") != null) {
                if (properties.getProperty("S01").equals("1")) {
                    if (properties.getProperty("S07") == null) {
                        C3945za.m1340c(fileInputStream);
                        return null;
                    }
                }
                C3945za.m1340c(fileInputStream);
                return properties;
            }
            C3945za.m1340c(fileInputStream);
            return null;
        } catch (IOException e2) {
            fileInputStream2 = fileInputStream;
            C3945za.m1340c(fileInputStream2);
            return null;
        } catch (Throwable th3) {
            th = th3;
            C3945za.m1340c(fileInputStream);
            throw th;
        }
    }

    /* renamed from: az */
    private boolean m13049az(boolean z) {
        String substring;
        String str = this.agy + File.separator + this.agq + File.separator + ".extract";
        C3563rs.m2354cz(str);
        new File(str).mkdirs();
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition()) {
            if (z) {
                substring = this.agt.substring(1, this.agt.length());
            } else {
                substring = this.ags.substring(1, this.ags.length());
            }
            String substring2 = str.substring(1, str.length());
            ArrayList arrayList = new ArrayList();
            arrayList.add("cd " + File.separator);
            arrayList.add(agh + " " + substring + " -C " + substring2);
            List<VTCmdResult> runRootCommands = m12845qK.runRootCommands(arrayList);
            if (runRootCommands != null && runRootCommands.size() == arrayList.size()) {
                for (int i = 0; i < runRootCommands.size(); i++) {
                    if (!runRootCommands.get(i).success()) {
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: uS */
    private String m13029uS() {
        String str = this.agy + File.separator + this.agq + File.separator + ".extract";
        String[] list = new File(str).list();
        if (list == null || list.length == 0) {
            return null;
        }
        for (String str2 : list) {
            if (str2.endsWith(KlConst.PLUGIN_FILE_NAME_SUFFIX)) {
                return str + File.separator + str2;
            }
        }
        return null;
    }

    /* renamed from: a */
    public boolean m13054a(C0602a c0602a) {
        if (m13037i(c0602a.mPackageName, c0602a.agX) != ERROR_NONE) {
            return false;
        }
        return m13033uO();
    }

    /* renamed from: ja */
    public static String m13036ja() {
        return C3565ru.m2318ja();
    }

    /* renamed from: eW */
    public static PackageStats m13038eW(String str) {
        PackageManager packageManager = KApplication.m13453ge().getPackageManager();
        PkgSizeObserver pkgSizeObserver = new PkgSizeObserver();
        pkgSizeObserver.mFinished = false;
        if (abd.m12839qb() >= 17) {
            try {
                packageManager.getClass().getDeclaredMethod("getPackageSizeInfo", String.class, Integer.TYPE, IPackageStatsObserver.class).invoke(packageManager, str, Integer.valueOf(Process.myUid() / 100000), pkgSizeObserver);
            } catch (Throwable th) {
                return new PackageStats(str);
            }
        } else {
            try {
                packageManager.getClass().getDeclaredMethod("getPackageSizeInfo", String.class, IPackageStatsObserver.class).invoke(packageManager, str, pkgSizeObserver);
            } catch (Throwable th2) {
                return new PackageStats(str);
            }
        }
        synchronized (pkgSizeObserver) {
            while (!pkgSizeObserver.mFinished) {
                try {
                    pkgSizeObserver.wait();
                } catch (InterruptedException e) {
                }
            }
        }
        return pkgSizeObserver.getStats();
    }

    /* loaded from: classes.dex */
    static class PkgSizeObserver extends IPackageStatsObserver.Stub {
        boolean mFinished;
        PackageStats mStats;

        private PkgSizeObserver() {
        }

        public PackageStats getStats() {
            return this.mStats;
        }

        @Override // android.content.p002pm.IPackageStatsObserver
        public void onGetStatsCompleted(PackageStats packageStats, boolean z) {
            synchronized (this) {
                if (z) {
                    this.mStats = packageStats;
                }
                this.mFinished = true;
                notifyAll();
            }
        }
    }

    /* renamed from: cO */
    private static String m13045cO(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return aab.m13021B(str.getBytes());
        } catch (Exception e) {
            return "";
        }
    }

    /* renamed from: cP */
    private static String m13044cP(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return new String(aab.m13015dI(str));
        } catch (Exception e) {
            return "";
        }
    }
}
