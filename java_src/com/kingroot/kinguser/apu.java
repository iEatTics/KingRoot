package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.os.Environment;
import android.os.StatFs;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.kinguser.aae;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.base.RecommendAppSimpleInfo;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import java.io.File;
/* loaded from: classes.dex */
public class apu {
    private static final String TAG = aiq.arY + "_AppDownloadUtil";

    @Nullable
    /* renamed from: h */
    public static File m9741h(@NonNull AppDownloadRequest appDownloadRequest) {
        if (appDownloadRequest == null) {
            return null;
        }
        return new File(m9748LM() + File.separator + m9740i(appDownloadRequest));
    }

    /* renamed from: a */
    private static File m9746a(String str, String str2, int i, String str3) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return new File(m9748LM() + File.separator + m9743c(str, str2, i, str3));
    }

    /* renamed from: LM */
    public static String m9748LM() {
        return Environment.getExternalStorageDirectory() + File.separator + "download";
    }

    @NonNull
    /* renamed from: i */
    public static String m9740i(@NonNull AppDownloadRequest appDownloadRequest) {
        return appDownloadRequest == null ? "" : m9737k(appDownloadRequest);
    }

    @WorkerThread
    /* renamed from: b */
    public static boolean m9745b(RecommendAppSimpleInfo recommendAppSimpleInfo) {
        return m9739j(AppDownloadRequest.m4063a(recommendAppSimpleInfo));
    }

    @WorkerThread
    /* renamed from: j */
    public static boolean m9739j(AppDownloadRequest appDownloadRequest) {
        File m9741h = m9741h(appDownloadRequest);
        if (m9741h != null && m9741h.exists() && m9741h.isFile()) {
            if (TextUtils.isEmpty(appDownloadRequest.apkMd5)) {
                return true;
            }
            String fileMD5 = C3563rs.getFileMD5(m9741h);
            if (!TextUtils.isEmpty(fileMD5) && !TextUtils.isEmpty(appDownloadRequest.apkMd5) && fileMD5.equalsIgnoreCase(appDownloadRequest.apkMd5)) {
                return true;
            }
        }
        return false;
    }

    @WorkerThread
    /* renamed from: k */
    public static boolean m9738k(AppBaseModel appBaseModel) {
        return m9744b(appBaseModel.pkgName, appBaseModel.version, appBaseModel.versioncode, appBaseModel.apkMd5);
    }

    /* renamed from: b */
    private static boolean m9744b(String str, String str2, int i, String str3) {
        File m9746a = m9746a(str, str2, i, str3);
        if (m9746a != null && m9746a.exists() && m9746a.isFile()) {
            if (TextUtils.isEmpty(str3)) {
                return true;
            }
            String fileMD5 = C3563rs.getFileMD5(m9746a);
            if (!TextUtils.isEmpty(fileMD5) && !TextUtils.isEmpty(str3) && fileMD5.equalsIgnoreCase(str3)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: k */
    private static String m9737k(@NonNull AppDownloadRequest appDownloadRequest) {
        return (appDownloadRequest == null || TextUtils.isEmpty(appDownloadRequest.pkgName)) ? "" : m9743c(appDownloadRequest.pkgName, appDownloadRequest.version, appDownloadRequest.versionCode, appDownloadRequest.apkMd5);
    }

    /* renamed from: c */
    private static String m9743c(String str, String str2, int i, String str3) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return aae.m13006a(aae.EnumC0610b.SIMPLE).mo12985N(aab.m13016dH("Tencent") + aab.m13016dH(str2) + i + aab.m13016dH(str3).toLowerCase(), str);
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: LN */
    public static long m9747LN() {
        long blockSize;
        long m4047KO;
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            if (abd.m12839qb() >= 18) {
                blockSize = statFs.getBlockSizeLong() * statFs.getAvailableBlocksLong();
            } else {
                blockSize = statFs.getBlockSize() * statFs.getAvailableBlocks();
            }
            System.currentTimeMillis();
            for (DownloaderTaskInfo downloaderTaskInfo : amz.m10365II().mo4097Ky()) {
                boq m4052KJ = downloaderTaskInfo.m4052KJ();
                if (m4052KJ == boq.PENDING) {
                    m4047KO = blockSize - downloaderTaskInfo.m4047KO();
                } else {
                    m4047KO = m4052KJ == boq.DOWNLOADING ? blockSize - (downloaderTaskInfo.m4047KO() - downloaderTaskInfo.m4055KG()) : blockSize;
                }
                blockSize = m4047KO;
            }
            return blockSize;
        } catch (Throwable th) {
            return Long.MAX_VALUE;
        }
    }

    /* renamed from: d */
    public static boolean m9742d(AvailUpdateInfo availUpdateInfo) {
        return m9744b(availUpdateInfo.pkgName, availUpdateInfo.remoteVersion, availUpdateInfo.remoteVersionCode, availUpdateInfo.remoteNewPkgMd5);
    }

    /* renamed from: l */
    public static String m9736l(AppDownloadRequest appDownloadRequest) {
        return m9741h(appDownloadRequest).getAbsolutePath() + ".patch";
    }
}
