package com.kingroot.kinguser;

import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.qqpimsecure.seachsdk.common.AppInfo;
import com.tencent.qqpimsecure.seachsdk.common.AvailUpdateEntity;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.MySoftSimpleInfo;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftKey;
import com.tencent.qqpimsecure.seachsdk.internal.protocol.SoftSimpleInfo;
import com.tencent.qqpimsecure.seachsdk.network.ResponseInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class bve {
    /* renamed from: c */
    public static void m5409c(final List<AppInfo> list, final btz btzVar) {
        final ArrayList arrayList = new ArrayList();
        try {
            bvc.ais().m5431a(buo.m5477co(list), new buf<ResponseInfo, MySoftSimpleInfo>() { // from class: com.kingroot.kinguser.bve.1
                @Override // com.kingroot.kinguser.buf
                /* renamed from: a  reason: avoid collision after fix types in other method */
                public void mo5405a(ResponseInfo responseInfo, ArrayList<MySoftSimpleInfo> arrayList2) {
                    if (responseInfo.type != 0) {
                        Log.d("WupUtil--", "fetchMySoftwareListInfo--end--fetch[failed]");
                        btz.this.onFetchResult(null, false);
                        return;
                    }
                    ArrayList arrayList3 = new ArrayList();
                    for (AppInfo appInfo : list) {
                        String str = appInfo.pkgName;
                        Iterator<MySoftSimpleInfo> it = arrayList2.iterator();
                        while (it.hasNext()) {
                            MySoftSimpleInfo next = it.next();
                            boolean z = next.aiB() == 1;
                            SoftSimpleInfo aiA = next.aiA();
                            if (aiA.softkey.softname.equals(str) && z && aiA.softkey.versioncode > appInfo.oldVersionCode) {
                                AvailUpdateEntity availUpdateEntity = new AvailUpdateEntity();
                                availUpdateEntity.m452a(appInfo, next, "");
                                arrayList3.add(appInfo);
                                arrayList.add(availUpdateEntity);
                            }
                        }
                    }
                    btz.this.onFetchResult(arrayList, true);
                    if (arrayList3.size() > 0) {
                        bve.m5410a(arrayList3, btz.this, responseInfo.softupdate_tips == 1);
                    } else {
                        btz.this.onFetchDiffResult(new ArrayList(), true);
                    }
                }
            });
        } catch (Exception e) {
            Log.d("WupUtil--", "fetchMySoftwareListInfo--end[exception]");
            btzVar.onFetchResult(arrayList, false);
        }
    }

    /* renamed from: a */
    public static void m5410a(final List<AppInfo> list, final btz btzVar, boolean z) {
        final ArrayList arrayList = new ArrayList();
        Log.d("WupUtil--", "fetchMySoftwareListDiffInfo");
        try {
            List<SoftKey> m5408cs = m5408cs(list);
            if (m5408cs == null || m5408cs.size() == 0) {
                btzVar.onFetchDiffResult(null, false);
            } else {
                bvc.ais().m5431a(m5408cs, new buf<ResponseInfo, MySoftSimpleInfo>() { // from class: com.kingroot.kinguser.bve.2
                    @Override // com.kingroot.kinguser.buf
                    /* renamed from: a  reason: avoid collision after fix types in other method */
                    public void mo5405a(ResponseInfo responseInfo, ArrayList<MySoftSimpleInfo> arrayList2) {
                        if (responseInfo.type != 0) {
                            Log.d("WupUtil--", "fetchMySoftwareListInfo--end--fetch[failed]");
                            btz.this.onFetchDiffResult(null, false);
                            return;
                        }
                        for (AppInfo appInfo : list) {
                            String str = appInfo.pkgName;
                            Iterator<MySoftSimpleInfo> it = arrayList2.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    MySoftSimpleInfo next = it.next();
                                    boolean z2 = next.aiB() == 1;
                                    SoftSimpleInfo aiA = next.aiA();
                                    if (aiA.softkey.softname.equals(str) && z2 && aiA.diffFileSizeByte > 0) {
                                        try {
                                            AvailUpdateEntity availUpdateEntity = new AvailUpdateEntity();
                                            availUpdateEntity.m452a(appInfo, next, "");
                                            if (availUpdateEntity.bOy > appInfo.oldVersionCode && availUpdateEntity.aig()) {
                                                availUpdateEntity.mUpdateUseMd5 = appInfo.mUpdateUseMd5;
                                                arrayList.add(availUpdateEntity);
                                            }
                                        } catch (Exception e) {
                                        }
                                    }
                                }
                            }
                        }
                        btz.this.onFetchDiffResult(arrayList, true);
                    }
                });
            }
        } catch (Exception e) {
            Log.d("WupUtil--", "fetchMySoftwareListInfo--end[exception]");
            btzVar.onFetchDiffResult(arrayList, false);
        }
    }

    /* renamed from: cs */
    private static List<SoftKey> m5408cs(List<AppInfo> list) {
        long currentTimeMillis;
        String str;
        ArrayList arrayList = new ArrayList();
        Log.d("WupUtil--", "lzt fetchMySoftwareListInfo allAppList.size=" + list.size() + " start getPkgMd5Change:" + System.currentTimeMillis());
        String str2 = null;
        int size = list.size();
        PackageManager packageManager = bty.aie().getContext().getPackageManager();
        int i = size - 1;
        while (i >= 0) {
            AppInfo appInfo = list.get(i);
            try {
                str2 = appInfo.pkgName;
            } catch (Exception e) {
                str = str2;
                Log.d("WupUtil--", "fetchMySoftwareListInfo--getmdt fail:" + str);
            }
            if (!TextUtils.isEmpty(appInfo.apkPath)) {
                String m5526aY = btr.m5526aY(str2, appInfo.apkPath);
                if (!TextUtils.isEmpty(m5526aY)) {
                    appInfo.mUpdateUseMd5 = m5526aY.toUpperCase();
                    Signature[] signatureArr = packageManager.getPackageInfo(appInfo.pkgName, 64).signatures;
                    if (signatureArr != null && signatureArr.length > 0) {
                        String m5458Z = buu.m5458Z(signatureArr[signatureArr.length - 1].toCharsString().getBytes());
                        if (!TextUtils.isEmpty(m5458Z)) {
                            SoftKey m5475e = buo.m5475e(appInfo);
                            m5475e.uid = m5458Z;
                            m5475e.apkFileMd5 = appInfo.mUpdateUseMd5;
                            arrayList.add(m5475e);
                            str = str2;
                            i--;
                            str2 = str;
                        }
                    }
                }
            }
            str = str2;
            i--;
            str2 = str;
        }
        Log.d("WupUtil--", "lzt fetchMySoftwareListInfo getPkgMd5Change end spend:" + (System.currentTimeMillis() - currentTimeMillis) + " endsize=" + arrayList.size());
        return arrayList;
    }
}
