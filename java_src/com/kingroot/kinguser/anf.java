package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppUpdateModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class anf {
    public static final List<String> aAz = Arrays.asList("KingMaster");

    /* renamed from: bP */
    public static String m10286bP(long j) {
        double d = j;
        StringBuilder sb = new StringBuilder();
        C3953zi m1311pr = C3953zi.m1311pr();
        if (d < 10000.0d) {
            sb = sb.append(j);
        } else {
            double d2 = d / 10000.0d;
            if (d2 < 10000.0d) {
                sb.append((int) d2);
                sb.append(m1311pr.getString(R.string.ten_thousand));
            } else {
                sb.append(((int) ((d2 / 10000.0d) * 10.0d)) / 10.0f);
                sb.append(m1311pr.getString(R.string.hundred_million));
            }
        }
        return sb.toString();
    }

    /* renamed from: bQ */
    public static String m10285bQ(long j) {
        double d;
        double d2 = j;
        StringBuilder sb = new StringBuilder();
        C3953zi m1311pr = C3953zi.m1311pr();
        if (d2 < 1024.0d) {
            sb = sb.append(j);
            sb.append(m1311pr.getString(R.string.size_B));
        } else {
            double d3 = d2 / 1024.0d;
            if (d3 < 1024.0d) {
                sb.append((int) d3);
                sb.append(m1311pr.getString(R.string.size_KB));
            } else {
                if (d3 / 1024.0d < 1024.0d) {
                    sb.append(((int) (d * 10.0d)) / 10.0f);
                    sb.append(m1311pr.getString(R.string.size_MB));
                } else {
                    sb.append(((int) ((d / 1024.0d) * 10.0d)) / 10.0f);
                    sb.append(m1311pr.getString(R.string.size_GB));
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: hB */
    public static boolean m10278hB(String str) {
        for (String str2 : aAz) {
            String[] split = str2.split(":");
            if (split.length == 2 && str.equals(split[0])) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: A */
    public static String m10298A(String str, boolean z) {
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                for (String str2 : aAz) {
                    Object[] split = str2.split(":");
                    if (split.length == 2 && str.equals(split[0])) {
                        return split[1];
                    }
                }
                return str;
            }
            String[] split2 = str.split(":");
            if (split2.length == 2) {
                return split2[0];
            }
            return str;
        }
        return str;
    }

    /* renamed from: b */
    public static AppDownLoadModel m10287b(List<ame> list, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (ame ameVar : list) {
            if ((ameVar instanceof AppDownLoadModel) && str.equals(((AppDownLoadModel) ameVar).pkgName)) {
                return (AppDownLoadModel) ameVar;
            }
        }
        return null;
    }

    /* renamed from: c */
    public static AppDownLoadModel m10283c(List<ame> list, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (ame ameVar : list) {
            if ((ameVar instanceof AppDownLoadModel) && str.equals(((AppDownLoadModel) ameVar).pkgName)) {
                return (AppDownLoadModel) ameVar;
            }
        }
        return null;
    }

    /* renamed from: t */
    public static void m10277t(Context context, String str) {
        Intent m10276u;
        if (!TextUtils.isEmpty(str) && (m10276u = m10276u(context, str)) != null) {
            Intent intent = new Intent(m10276u);
            intent.setFlags(270532608);
            context.startActivity(intent);
        }
    }

    /* renamed from: u */
    private static Intent m10276u(Context context, String str) {
        Intent intent;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            PackageManager packageManager = context.getPackageManager();
            Intent intent2 = new Intent("android.intent.action.MAIN", (Uri) null);
            intent2.addCategory("android.intent.category.LAUNCHER");
            intent2.setPackage(str);
            Iterator<ResolveInfo> it = packageManager.queryIntentActivities(intent2, 0).iterator();
            if (it.hasNext()) {
                ResolveInfo next = it.next();
                ComponentName componentName = new ComponentName(next.activityInfo.packageName, next.activityInfo.name);
                intent = new Intent();
                try {
                    intent.setComponent(componentName);
                    intent.addCategory("android.intent.category.LAUNCHER");
                    intent.setAction("android.intent.action.MAIN");
                } catch (Exception e) {
                }
            } else {
                intent = null;
            }
        } catch (Exception e2) {
            intent = null;
        }
        return intent;
    }

    @WorkerThread
    /* renamed from: aA */
    public static List<AppBaseModel> m10291aA(List<AppBaseModel> list) {
        return m10282c(list, (List<String>) null);
    }

    @WorkerThread
    /* renamed from: c */
    public static List<AppBaseModel> m10282c(List<AppBaseModel> list, @Nullable List<String> list2) {
        ArrayList arrayList = new ArrayList(list);
        m10290aB(arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AppBaseModel appBaseModel = (AppBaseModel) it.next();
            if (C3952zh.m1312pq().m1314du(appBaseModel.pkgName)) {
                it.remove();
            } else if (list2 != null && list2.contains(appBaseModel.pkgName)) {
                it.remove();
            }
        }
        return arrayList;
    }

    /* renamed from: aB */
    public static <T extends AppBaseModel> void m10290aB(List<T> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (T t : list) {
            if (!arrayList2.contains(t.pkgName) || TextUtils.isEmpty(t.pkgName)) {
                arrayList2.add(t.pkgName);
                arrayList.add(t);
            }
        }
        list.clear();
        list.addAll(arrayList);
    }

    /* renamed from: fG */
    public static boolean m10281fG(int i) {
        return i > 3 && i < 6;
    }

    /* renamed from: IU */
    public static boolean m10297IU() {
        return C3946zb.m1331pk();
    }

    /* renamed from: aC */
    public static List<AppInfo> m10289aC(List<AppInfo> list) {
        ArrayList arrayList = new ArrayList();
        for (AppInfo appInfo : C3942yy.m1350e(list)) {
            if (m10284c(appInfo)) {
                arrayList.add(appInfo);
            }
        }
        return arrayList;
    }

    /* renamed from: c */
    public static boolean m10284c(AppInfo appInfo) {
        return (appInfo == null || appInfo.mSize <= 0 || TextUtils.isEmpty(appInfo.pkgName)) ? false : true;
    }

    /* renamed from: a */
    public static void m10292a(final List<String> list, final List<String> list2, final IAppDownloadListener iAppDownloadListener, final IAppInstallListener iAppInstallListener) {
        beg.m7461Zj().m7450c(new bed(bem.MEDIUM, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.anf.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                for (String str : list) {
                    if (list2.contains(str)) {
                        amz.m10365II().m9879a(str, iAppDownloadListener);
                        aso.m9417Ol().mo9329a(str, iAppInstallListener);
                    }
                }
            }
        }));
    }

    /* renamed from: a */
    public static void m10295a(ProgressBar progressBar, TextView textView) {
        progressBar.setVisibility(0);
        bhk.m6997a((View) progressBar, 700L, true);
        textView.setText(C3953zi.m1311pr().getText(R.string.app_download_load_more));
    }

    /* renamed from: b */
    public static void m10288b(ProgressBar progressBar, TextView textView) {
        progressBar.clearAnimation();
        progressBar.setVisibility(8);
        textView.setText(C3953zi.m1311pr().getText(R.string.app_download_no_more));
    }

    /* renamed from: fH */
    public static boolean m10280fH(int i) {
        return (i >= 0 && i < 5) || i == 9;
    }

    /* renamed from: fI */
    public static boolean m10279fI(int i) {
        return i >= 5 && i < 8;
    }

    /* renamed from: a */
    public static boolean m10293a(AvailUpdateInfo availUpdateInfo, AvailUpdateInfo availUpdateInfo2) {
        String str = availUpdateInfo.remoteVersion;
        String str2 = availUpdateInfo2.remoteVersion;
        try {
            if (availUpdateInfo2.remoteVersionCode > availUpdateInfo.remoteVersionCode) {
                return !str.substring(0, str.indexOf(46)).equals(str2.substring(0, str2.indexOf(46)));
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: a */
    public static boolean m10294a(AppUpdateModel appUpdateModel) {
        String str = appUpdateModel.oldVersion;
        String str2 = appUpdateModel.remoteVersion;
        try {
            if (appUpdateModel.remoteVersionCode > appUpdateModel.oldVersionCode) {
                return !str.substring(0, str.indexOf(46)).equals(str2.substring(0, str2.indexOf(46)));
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    @WorkerThread
    /* renamed from: IV */
    public static boolean m10296IV() {
        for (DownloaderTaskInfo downloaderTaskInfo : C3942yy.m1350e(amz.m10365II().mo4097Ky())) {
            if (downloaderTaskInfo.m4052KJ() == boq.DOWNLOADING) {
                return true;
            }
        }
        return false;
    }
}
