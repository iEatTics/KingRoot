package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aiu {
    private static int asr = -1;

    /* renamed from: gg */
    protected PackageInfo m11558gg(String str) {
        try {
            return C3952zh.m1312pq().getPackageArchiveInfo(str, 1);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: gh */
    public boolean m11557gh(String str) {
        PackageInfo m11556gi;
        PackageInfo m11558gg = m11558gg(str);
        if (m11558gg == null || !m11558gg.packageName.equals(KUApplication.m13453ge().getPackageName()) || (m11556gi = m11556gi(KUApplication.m13453ge().getPackageName())) == null || m11556gi.versionCode <= m11558gg.versionCode) {
            return false;
        }
        return true;
    }

    /* renamed from: gi */
    protected PackageInfo m11556gi(String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            return C3952zh.m1312pq().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: aL */
    public boolean m11560aL(boolean z) {
        PackageInfo m11556gi = m11556gi(KUApplication.m13453ge().getPackageName());
        if (m11556gi == null || (m11556gi.applicationInfo.flags & 1) == 0) {
            if (z) {
                List<String> m11555yu = m11555yu();
                if (!C3942yy.m1352c(m11555yu) && m11558gg(m11555yu.get(0)) != null) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    /* renamed from: a */
    public List<String> m11564a(String str, FileFilter fileFilter) {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str)) {
            try {
                for (File file : new File("/system/app").listFiles(fileFilter)) {
                    if (file.isFile()) {
                        m11562a(arrayList, str, file);
                    } else if (Build.VERSION.SDK_INT >= 21) {
                        File[] listFiles2 = file.listFiles(fileFilter);
                        for (File file2 : listFiles2) {
                            if (file2.isFile()) {
                                m11562a(arrayList, str, file2);
                            }
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public List<String> m11563a(List<String> list, FileFilter fileFilter) {
        File[] listFiles;
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            try {
                for (File file : new File("/system/app").listFiles(fileFilter)) {
                    if (file.isFile()) {
                        m11561a(arrayList, list, file);
                    } else if (Build.VERSION.SDK_INT >= 21) {
                        File[] listFiles2 = file.listFiles(fileFilter);
                        for (File file2 : listFiles2) {
                            if (file2.isFile()) {
                                m11561a(arrayList, list, file2);
                            }
                        }
                    }
                }
            } catch (Exception e) {
            }
        }
        return arrayList;
    }

    /* renamed from: Y */
    private String m11565Y(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        String str3 = str2.substring(0, str2.length() - KlConst.PLUGIN_FILE_NAME_SUFFIX.length()) + ".odex";
        String str4 = str + File.separator + str3;
        File file = new File(str4);
        if (!file.exists() || !file.isFile()) {
            if (Build.VERSION.SDK_INT >= 21) {
                String str5 = str + File.separator + "arm" + File.separator + str3;
                File file2 = new File(str5);
                if (file2.exists() && file2.isFile()) {
                    return str5;
                }
            }
            return null;
        }
        return str4;
    }

    /* renamed from: yu */
    public List<String> m11555yu() {
        return m11564a(KUApplication.m13453ge().getPackageName(), new aid());
    }

    /* renamed from: a */
    private void m11562a(List<String> list, String str, File file) {
        if (!TextUtils.isEmpty(str)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            m11561a(list, arrayList, file);
        }
    }

    /* renamed from: a */
    private void m11561a(List<String> list, List<String> list2, File file) {
        PackageInfo m11558gg;
        if (list != null && file != null && file.isFile() && (m11558gg = m11558gg(file.getAbsolutePath())) != null) {
            for (String str : list2) {
                if (m11558gg.packageName.equals(str)) {
                    list.add(file.getAbsolutePath());
                    String m11565Y = m11565Y(file.getParent(), file.getName());
                    if (!TextUtils.isEmpty(m11565Y)) {
                        list.add(m11565Y);
                    }
                }
            }
        }
    }

    /* renamed from: aM */
    public static int m11559aM(boolean z) {
        if (z || asr == -1) {
            if (new aiu().m11560aL(z)) {
                asr = 1;
            } else {
                asr = 0;
            }
        }
        return asr;
    }

    /* renamed from: yv */
    public static int m11554yv() {
        return m11559aM(false);
    }
}
