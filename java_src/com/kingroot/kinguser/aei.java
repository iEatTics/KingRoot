package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.WorkerThread;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.download.UpdateInfo;
import com.kingroot.kingmaster.network.updata.CheckResult;
import com.kingroot.kinguser.activitys.CommonDialogActivity;
import com.kingroot.kinguses.R;
import com.p019qq.taf.jce.JceInputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aei {
    /* renamed from: tn */
    public static String m12241tn() {
        if (bgr.m7092iZ()) {
            return C3565ru.m2320iY() + "/kinguserdown";
        }
        return C3958zl.m1298dx("download").getAbsolutePath();
    }

    @NonNull
    /* renamed from: a */
    public static File m12251a(@NonNull UpdateInfo updateInfo) {
        return new File(m12241tn() + File.separator + m12248b(updateInfo));
    }

    @NonNull
    /* renamed from: b */
    public static String m12248b(@NonNull UpdateInfo updateInfo) {
        return String.format("KinguserV%1$sB%2$s.apk", String.valueOf(updateInfo.version), String.valueOf(updateInfo.buildNum));
    }

    /* renamed from: uo */
    public static File m12240uo() {
        return m12247b(aeg.m12265um().mo12201ue());
    }

    /* renamed from: b */
    public static File m12247b(@NonNull CheckResult checkResult) {
        if (checkResult == null || C3942yy.m1352c(checkResult.mUpdateInfoList)) {
            return null;
        }
        UpdateInfo updateInfo = checkResult.mUpdateInfoList.get(0);
        if (updateInfo == null) {
            return null;
        }
        return m12251a(updateInfo);
    }

    /* renamed from: a */
    public static CheckResult m12253a(Context context, boolean z, C3683u c3683u) {
        if (c3683u == null) {
            return null;
        }
        boolean z2 = c3683u.f3608gh == 200;
        C0922ah c0922ah = new C0922ah();
        if (z2) {
            JceInputStream jceInputStream = new JceInputStream(c3683u.f3609gn);
            jceInputStream.setServerEncoding("UTF-8");
            c0922ah.readFrom(jceInputStream);
        }
        return m12252a(context, z, z2, c0922ah, c3683u.f3611gp, c3683u.f3610go.f1439ga);
    }

    @NonNull
    /* renamed from: a */
    public static CheckResult m12252a(Context context, boolean z, boolean z2, C0922ah c0922ah, C1007aj c1007aj, int i) {
        int i2 = 5;
        int i3 = 1;
        CheckResult checkResult = new CheckResult();
        checkResult.mCheckTime = System.currentTimeMillis();
        checkResult.mUpdateInfoList = new ArrayList();
        checkResult.mValidTime = i;
        checkResult.mNoticeInterval = c0922ah.f1435hc;
        checkResult.mIsSilentDownload = c0922ah.f1431gY;
        if (c1007aj == null) {
            i2 = 0;
        } else {
            switch (c1007aj.type) {
                case 6:
                    i2 = 2;
                    break;
                case 8:
                    i2 = 4;
                    break;
            }
        }
        if (c1007aj == null || c1007aj.type != 1) {
            i3 = i2;
        }
        UpdateInfo updateInfo = new UpdateInfo();
        updateInfo.type = i3;
        updateInfo.flag = 2097152;
        updateInfo.fileName = context.getPackageName();
        if (c1007aj != null) {
            updateInfo.title = c1007aj.title;
            updateInfo.message = c1007aj.f1459gc;
        }
        checkResult.mUpdateInfoList.add(updateInfo);
        return z2 ? m12254a(context, checkResult, c0922ah) : checkResult;
    }

    @NonNull
    /* renamed from: a */
    private static CheckResult m12254a(Context context, CheckResult checkResult, C0922ah c0922ah) {
        UpdateInfo updateInfo = checkResult.mUpdateInfoList.get(0);
        updateInfo.url = c0922ah.url;
        updateInfo.buildNum = c0922ah.f1428gV;
        C3335n c3335n = c0922ah.f1427gU;
        if (c3335n != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(c3335n.f3172fT);
            sb.append(".");
            sb.append(c3335n.f3173fU);
            sb.append(".");
            sb.append(c3335n.f3174fV);
            updateInfo.version = sb.toString();
            checkResult.mVersion = sb.toString();
        }
        checkResult.mSizeInfo = C3563rs.m2367b(context, c0922ah.f1429gW * 1024);
        if (!C3946zb.m1332pj()) {
            checkResult.mMessage = C3953zi.m1311pr().getString(R.string.version_update_default_content);
        } else {
            checkResult.mMessage = c0922ah.newFeature;
        }
        return checkResult;
    }

    /* renamed from: a */
    public static boolean m12250a(@NonNull C3683u c3683u) {
        return m12245cL(c3683u.f3610go.f1439ga);
    }

    /* renamed from: cL */
    private static boolean m12245cL(int i) {
        return i == 0 || System.currentTimeMillis() / 1000 <= ((long) i);
    }

    /* renamed from: c */
    public static boolean m12246c(@NonNull CheckResult checkResult) {
        return m12245cL(checkResult.mValidTime);
    }

    /* renamed from: d */
    public static void m12244d(CheckResult checkResult) {
        List<UpdateInfo> list;
        UpdateInfo updateInfo;
        if (checkResult != null && (list = checkResult.mUpdateInfoList) != null && list.size() > 0 && (updateInfo = list.get(0)) != null && updateInfo.url != null && m12249ad(checkResult.mTaskId) && adk.m12539b(aks.m11143BP().m11126CG(), System.currentTimeMillis(), checkResult.mNoticeInterval * 86400000)) {
            File m12251a = m12251a(updateInfo);
            boolean z = m12251a.exists() && m12251a.isFile();
            switch (updateInfo.type) {
                case 2:
                    if (bgs.abU().abW() || bge.abw().abx()) {
                        m12255a(2, updateInfo, checkResult);
                        break;
                    } else {
                        return;
                    }
                case 4:
                    adm.m12480st().m12515a(m12251a, updateInfo.title, checkResult.m13066av(z), z);
                    break;
            }
            aks.m11143BP().m10899aW(System.currentTimeMillis());
        }
    }

    @WorkerThread
    /* renamed from: ad */
    public static boolean m12249ad(long j) {
        boolean m4999cO = cbu.akF().m4999cO(j);
        if (!m4999cO) {
            aeg.m12265um().mo12221ab(j);
        }
        return m4999cO;
    }

    /* renamed from: a */
    public static void m12255a(int i, @NonNull UpdateInfo updateInfo, @NonNull CheckResult checkResult) {
        int i2;
        String m13067au;
        int i3 = 2;
        if (!akh.m11295Au()) {
            File m12251a = m12251a(updateInfo);
            boolean z = m12251a.exists() && m12251a.isFile();
            String str = updateInfo.title;
            String string = str == null ? C3953zi.m1311pr().getString(R.string.dialog_title_hint) : str;
            if (z) {
                m13067au = checkResult.m13067au(true);
                i2 = 2;
            } else {
                i2 = 1;
                m13067au = checkResult.m13067au(false);
                i3 = 1;
            }
            if (m13067au == null && (m13067au = updateInfo.message) == null) {
                m13067au = C3953zi.m1311pr().getString(R.string.version_update_ku_update_bar_content);
            }
            try {
                Context m13453ge = KApplication.m13453ge();
                Intent intent = new Intent(m13453ge, CommonDialogActivity.class);
                intent.addFlags(268435456);
                intent.putExtra("Type", i2);
                intent.putExtra("Title", string);
                intent.putExtra("Content", m13067au);
                intent.putExtra("WhereFrom", i);
                if (z) {
                    intent.putExtra("UpdatePath", m12251a.getAbsolutePath());
                }
                m13453ge.startActivity(intent);
            } catch (Exception e) {
            }
            ady.m12308tK().m12327b(i, i3, 0, 0, 0);
        }
    }

    /* renamed from: e */
    public static void m12243e(CheckResult checkResult) {
        if (!aiv.m11525yw().m11545aO(false)) {
            m12244d(checkResult);
        }
    }

    /* renamed from: f */
    public static void m12242f(CheckResult checkResult) {
        if (checkResult.err == 0 && adk.m12539b(checkResult.mCheckTime, System.currentTimeMillis(), 259200000L)) {
            m12244d(checkResult);
        }
    }
}
