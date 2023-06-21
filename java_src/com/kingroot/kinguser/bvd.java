package com.kingroot.kinguser;

import android.content.pm.PackageInfo;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import com.tencent.qqpimsecure.seachsdk.common.AvailUpdateEntity;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bvd {
    private static bvd bPp;
    private Object bPq = new Object();

    public static bvd aiu() {
        if (bPp == null) {
            bPp = new bvd();
        }
        return bPp;
    }

    /* renamed from: b */
    public void m5411b(List<AppInfo> list, final btz btzVar) {
        bve.m5409c(list, new btz() { // from class: com.kingroot.kinguser.bvd.1
            @Override // com.kingroot.kinguser.btz
            public void onFetchResult(List<AvailUpdateEntity> list2, boolean z) {
                if (!z || list2 == null) {
                    btzVar.onFetchResult(list2, false);
                    Log.d("SoftUpdateEngine", "loadAvailUpdateEntity--fetch--result-failed");
                    return;
                }
                btzVar.onFetchResult(list2, true);
            }

            @Override // com.kingroot.kinguser.btz
            public void onFetchDiffResult(List<AvailUpdateEntity> list2, boolean z) {
                if (!z || list2 == null) {
                    Log.d("SoftUpdateEngine", "onFetchDiffResult--fetch--result-failed");
                    btzVar.onFetchDiffResult(list2, false);
                    return;
                }
                btzVar.onFetchDiffResult(list2, true);
            }
        });
    }

    /* renamed from: b */
    public void m5412b(String str, String str2, AvailUpdateEntity availUpdateEntity, buj bujVar) {
        String str3;
        int i;
        File file = new File(str);
        synchronized (this.bPq) {
            if (file.exists()) {
                try {
                    PackageInfo packageInfo = bty.aie().getContext().getPackageManager().getPackageInfo(availUpdateEntity.adZ, 0);
                    if (packageInfo != null && !TextUtils.isEmpty(packageInfo.applicationInfo.sourceDir)) {
                        int i2 = packageInfo.versionCode;
                        if (i2 >= availUpdateEntity.bOy) {
                            str3 = "pkg has changed current=" + i2 + " getdiffversion=" + availUpdateEntity.bOy;
                            i = -8051;
                        } else {
                            int m5521u = new btt().m5521u(packageInfo.applicationInfo.sourceDir, str, str2);
                            file.delete();
                            if (m5521u != 0) {
                                str3 = "mergePatchAddInstallApk TccDiff.bsPatch error errorcode=" + m5521u;
                                i = -8003;
                            } else if (!new File(str2).exists()) {
                                str3 = "mergePatchAddInstallApk new apk does not create";
                                i = -8004;
                            } else if (m5413aZ(str2, availUpdateEntity.adZ)) {
                                str3 = "merged bad apk fail:orgversioncode=" + i2 + "needSize=" + availUpdateEntity.bOB + " mergedSize=" + new File(str2).length();
                                i = -8005;
                            } else {
                                str3 = null;
                                i = 0;
                            }
                        }
                    } else {
                        str3 = "mergePatchAddInstallApk orgpkg pkg does not exist";
                        i = -8060;
                    }
                } catch (Exception e) {
                    str3 = "mergePatchAddInstallApk merge patch function exception:" + e;
                    i = -8007;
                }
            } else {
                str3 = "mergePatchAddInstallApk fail patch doesnot exist";
                i = -8001;
            }
        }
        but.m5464d("SoftUpdateEngine", "mergeResult errcode=" + i + " errMsg=" + str3);
        bujVar.onMergeResult(str2, i, str3);
        if (i > 0) {
            try {
                file.delete();
            } catch (Exception e2) {
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(bux.m5453a(availUpdateEntity, 0, 2));
            bvc.ais().m5421b(arrayList, (bug) null);
        }
    }

    /* renamed from: aZ */
    private boolean m5413aZ(String str, String str2) {
        try {
            PackageInfo packageArchiveInfo = bty.aie().getContext().getPackageManager().getPackageArchiveInfo(str, 1);
            if (packageArchiveInfo != null) {
                return !str2.equals(packageArchiveInfo.applicationInfo.packageName);
            }
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }
}
