package com.kingroot.kinguser;

import android.annotation.TargetApi;
import android.content.SharedPreferences;
import android.os.Build;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kingmaster.network.updata.CheckResult;
import com.kingroot.loader.common.KlConst;
import com.kingroot.master.app.KUApplication;
import com.swift.sandhook.utils.FileUtils;
import java.util.Set;
/* loaded from: classes.dex */
public class aks {
    private static final Object avF = new Object();
    private static volatile aks avH;
    private SharedPreferences avA = C3566rv.m2313i(KUApplication.m13453ge(), "RootManagerSetting");
    private SharedPreferences$EditorC1045a avG = new SharedPreferences$EditorC1045a(this.avA.edit());

    private aks() {
    }

    /* renamed from: BP */
    public static aks m11143BP() {
        if (avH == null) {
            synchronized (aks.class) {
                if (avH == null) {
                    avH = new aks();
                }
            }
        }
        return avH;
    }

    /* renamed from: BQ */
    public boolean m11142BQ() {
        return this.avA.getInt("SettingMode", 1) == 1;
    }

    /* renamed from: bc */
    public void m10850bc(boolean z) {
        this.avG.putInt("SettingMode", z ? 1 : 0).commit();
        if (z) {
            ady.m12308tK().m1782bj(100039);
            ady.m12308tK().m1781bk(100040);
        } else {
            ady.m12308tK().m1782bj(100040);
            ady.m12308tK().m1781bk(100039);
        }
        ady.m12308tK().mo1746bi(100041);
    }

    /* renamed from: BR */
    public int m11141BR() {
        return this.avA.getInt("PermissionDialogTimeout", 20);
    }

    /* renamed from: ee */
    public void m10762ee(int i) {
        this.avG.putInt("PermissionDialogTimeout", i).commit();
    }

    /* renamed from: BS */
    public int m11140BS() {
        return this.avA.getInt("PermissionTimeoutResponse", 0);
    }

    /* renamed from: ef */
    public void m10761ef(int i) {
        this.avG.putInt("PermissionTimeoutResponse", i).commit();
    }

    /* renamed from: BT */
    public boolean m11139BT() {
        return this.avA.getBoolean("LogEnable", true);
    }

    /* renamed from: BU */
    public int m11138BU() {
        return this.avA.getInt("LogLimitTime", 1);
    }

    /* renamed from: eg */
    public void m10760eg(int i) {
        this.avG.putInt("LogLimitTime", i).commit();
    }

    /* renamed from: BV */
    public int m11137BV() {
        return this.avA.getInt("LogLimit", 500);
    }

    /* renamed from: BW */
    public boolean m11136BW() {
        return this.avA.getBoolean("CouDef", true);
    }

    /* renamed from: bd */
    public void m10848bd(boolean z) {
        this.avG.putBoolean("CouDef", z).commit();
        if (z) {
            ady.m12308tK().m1782bj(100042);
            ady.m12308tK().m1781bk(100043);
        } else {
            ady.m12308tK().m1782bj(100043);
            ady.m12308tK().m1781bk(100042);
        }
        ady.m12308tK().mo1746bi(100044);
    }

    /* renamed from: aH */
    public void m10914aH(long j) {
        this.avG.putLong("LastReCouLsTime", j).commit();
    }

    /* renamed from: BX */
    public long m11135BX() {
        return this.avA.getLong("LastSotLsTime", 0L);
    }

    /* renamed from: aI */
    public void m10913aI(long j) {
        this.avG.putLong("LastSotLsTime", j).commit();
    }

    /* renamed from: BY */
    public boolean m11134BY() {
        return this.avA.getBoolean("NeedEnterGuideView", true);
    }

    /* renamed from: be */
    public void m10846be(boolean z) {
        this.avG.putBoolean("NeedEnterGuideView", z).commit();
    }

    /* renamed from: BZ */
    public long m11133BZ() {
        return this.avA.getLong("ExpiredEevenDays", 0L);
    }

    /* renamed from: aJ */
    public void m10912aJ(long j) {
        this.avG.putLong("ExpiredEevenDays", j).commit();
    }

    /* renamed from: Ca */
    public boolean m11106Ca() {
        return this.avA.getBoolean("IsChannelReported", false);
    }

    /* renamed from: bf */
    public void m10844bf(boolean z) {
        this.avG.putBoolean("IsChannelReported", z).commit();
    }

    /* renamed from: Cb */
    public long m11105Cb() {
        return this.avA.getLong("SAExpiredOneDay", 0L);
    }

    /* renamed from: aK */
    public void m10911aK(long j) {
        this.avG.putLong("SAExpiredOneDay", j).commit();
    }

    /* renamed from: Cc */
    public long m11104Cc() {
        return this.avA.getLong("UserEnterAntiLogPageTime", 0L);
    }

    /* renamed from: aL */
    public void m10910aL(long j) {
        this.avG.putLong("UserEnterAntiLogPageTime", j).commit();
    }

    /* renamed from: Cd */
    public long m11103Cd() {
        return this.avA.getLong("NotifyAntiLogOneDayTime", 0L);
    }

    /* renamed from: aM */
    public void m10909aM(long j) {
        this.avG.putLong("NotifyAntiLogOneDayTime", j).commit();
    }

    /* renamed from: Ce */
    public long m11102Ce() {
        return this.avA.getLong("LastNotifyUnreadAntiLogTime", 0L);
    }

    /* renamed from: aN */
    public void m10908aN(long j) {
        this.avG.putLong("LastNotifyUnreadAntiLogTime", j).commit();
    }

    /* renamed from: Cf */
    public boolean m11101Cf() {
        return this.avA.getBoolean("isFirstHaveAntiInjectLog", true);
    }

    /* renamed from: bg */
    public void m10842bg(boolean z) {
        this.avG.putBoolean("isFirstHaveAntiInjectLog", z).commit();
    }

    /* renamed from: Cg */
    public boolean m11100Cg() {
        return this.avA.getBoolean("isFirstOpenAntiInjectSuccess", true);
    }

    /* renamed from: bh */
    public void m10840bh(boolean z) {
        this.avG.putBoolean("isFirstOpenAntiInjectSuccess", z).commit();
    }

    /* renamed from: Ch */
    public boolean m11099Ch() {
        return this.avA.getBoolean("SuBackup", true);
    }

    /* renamed from: bi */
    public void m10838bi(boolean z) {
        this.avG.putBoolean("SuBackup", z).commit();
        if (z) {
            ady.m12308tK().m1782bj(100045);
            ady.m12308tK().m1781bk(100046);
        } else {
            ady.m12308tK().m1782bj(100046);
            ady.m12308tK().m1781bk(100045);
        }
        ady.m12308tK().mo1746bi(100047);
    }

    /* renamed from: Ci */
    public boolean m11098Ci() {
        return this.avA.getBoolean("IsFirstTimeAddShell", true);
    }

    /* renamed from: bj */
    public void m10836bj(boolean z) {
        this.avG.putBoolean("IsFirstTimeAddShell", z).commit();
    }

    /* renamed from: Cj */
    public boolean m11097Cj() {
        return this.avA.getInt("SuCanRep", 0) == 0;
    }

    /* renamed from: bk */
    public void m10834bk(boolean z) {
        this.avG.putInt("SuCanRep", z ? 1 : 2).commit();
    }

    /* renamed from: Ck */
    public String m11096Ck() {
        return this.avA.getString("VcFtShow", "");
    }

    /* renamed from: gX */
    public void m10740gX(String str) {
        m11029Dz();
        this.avG.putString("VcFtShow", str).commit();
    }

    /* renamed from: Cl */
    public String m11095Cl() {
        return this.avA.getString("VcFileCreate", "");
    }

    /* renamed from: gY */
    public void m10739gY(String str) {
        this.avG.putString("VcFileCreate", str).commit();
    }

    /* renamed from: ni */
    public long m10717ni() {
        return this.avA.getLong("LastStaticsReportTime", 0L);
    }

    /* renamed from: T */
    public void m10915T(long j) {
        this.avG.putLong("LastStaticsReportTime", j).commit();
    }

    /* renamed from: Cm */
    public int m11094Cm() {
        return this.avA.getInt("KWorkStatus", 0);
    }

    /* renamed from: eh */
    private void m10759eh(int i) {
        this.avG.putInt("KWorkStatus", i).commit();
    }

    /* renamed from: Cn */
    public boolean m11093Cn() {
        return (m11094Cm() & 1) == 0;
    }

    /* renamed from: Co */
    public void m11092Co() {
        m10759eh(m11094Cm() | 1);
    }

    /* renamed from: Cp */
    public void m11091Cp() {
        m10759eh(m11094Cm() | 2);
    }

    /* renamed from: Cq */
    public int m11090Cq() {
        return this.avA.getInt("KWorkStatusMCount", 0);
    }

    /* renamed from: ei */
    public void m10758ei(int i) {
        this.avG.putInt("KWorkStatusMCount", i).commit();
    }

    /* renamed from: Cr */
    public long m11089Cr() {
        return this.avA.getLong("KStatusReportTime", 0L);
    }

    /* renamed from: aO */
    public void m10907aO(long j) {
        this.avG.putLong("KStatusReportTime", j).commit();
    }

    /* renamed from: Cs */
    public int m11088Cs() {
        return this.avA.getInt("KStatusReportSuReplaceCount", 0);
    }

    /* renamed from: ej */
    public void m10757ej(int i) {
        this.avG.putInt("KStatusReportSuReplaceCount", i).commit();
    }

    /* renamed from: bl */
    public void m10832bl(boolean z) {
        this.avG.putBoolean("IsSurvivalMode", z).commit();
    }

    /* renamed from: aP */
    public void m10906aP(long j) {
        this.avG.putLong("LastCheckRootPowerTime", j).commit();
    }

    /* renamed from: Ct */
    public long m11087Ct() {
        long j = this.avA.getLong("LastCheckRootPowerTime", 0L);
        if (j == 0) {
            long currentTimeMillis = System.currentTimeMillis() - 518400000;
            m10906aP(currentTimeMillis);
            return currentTimeMillis;
        }
        return j;
    }

    /* renamed from: Cu */
    public boolean m11086Cu() {
        return this.avA.getBoolean("KForbidKnoxAskFlag", false);
    }

    /* renamed from: bm */
    public void m10830bm(boolean z) {
        this.avG.putBoolean("KForbidKnoxAskFlag", z).commit();
    }

    /* renamed from: Cv */
    public long m11085Cv() {
        return this.avA.getLong("LastPermitStaticsReportTime", 0L);
    }

    /* renamed from: aQ */
    public void m10905aQ(long j) {
        this.avG.putLong("LastPermitStaticsReportTime", j).commit();
    }

    /* renamed from: Cw */
    public int m11084Cw() {
        int i = FileUtils.FileMode.MODE_755;
        int i2 = this.avA.getInt("KSuMode", 0);
        if (i2 == 0) {
            if (abd.m12839qb() < 21 && !Build.MODEL.equals("Coolpad 8720L") && !abf.m12838qP()) {
                i = 3565;
            }
            m10756ek(i);
            return i;
        }
        return i2;
    }

    /* renamed from: ek */
    public void m10756ek(int i) {
        this.avG.putInt("KSuMode", i).commit();
        akz.m10670GJ().m10668eV(i);
    }

    /* renamed from: bn */
    public void m10828bn(boolean z) {
        this.avG.putBoolean("IsDrInjectExceedMaxFCount", z).commit();
    }

    /* renamed from: Cx */
    public boolean m11083Cx() {
        return this.avA.getBoolean("IsDrInjectExceedMaxFCount", false);
    }

    /* renamed from: bo */
    public void m10826bo(boolean z) {
        this.avG.putBoolean("IsDrCauReb", z).commit();
    }

    /* renamed from: Cy */
    public boolean m11082Cy() {
        return this.avA.getBoolean("IsDrCauReb", false);
    }

    /* renamed from: aR */
    public void m10904aR(long j) {
        this.avG.putLong("LastCCouLsTime", j).commit();
    }

    /* renamed from: Cz */
    public long m11081Cz() {
        return this.avA.getLong("LastCCouLsTime", 0L);
    }

    /* renamed from: zi */
    public String m10714zi() {
        return this.avA.getString("InstallRecoveryLocation", "/system/etc/install-recovery.sh");
    }

    /* renamed from: gm */
    public void m10737gm(String str) {
        this.avG.putString("InstallRecoveryLocation", str).commit();
    }

    /* renamed from: aS */
    public void m10903aS(long j) {
        this.avG.putLong("RepackageCheckTime", j).commit();
    }

    /* renamed from: CA */
    public long m11132CA() {
        return this.avA.getLong("RepackageCheckTime", 0L);
    }

    /* renamed from: bp */
    public void m10824bp(boolean z) {
        this.avG.putBoolean("IsUpdateV3GuidAndProfile", z).commit();
    }

    /* renamed from: aT */
    public void m10902aT(long j) {
        this.avG.putLong("LastCheckRootEnvTime", j).commit();
    }

    /* renamed from: CB */
    public long m11131CB() {
        long j = this.avA.getLong("LastCheckRootEnvTime", 0L);
        if (j == 0) {
            long currentTimeMillis = System.currentTimeMillis() - 172800000;
            m10902aT(currentTimeMillis);
            return currentTimeMillis;
        }
        return j;
    }

    /* renamed from: aU */
    public void m10901aU(long j) {
        this.avG.putLong("LastIRM", j).commit();
    }

    /* renamed from: CC */
    public long m11130CC() {
        return this.avA.getLong("LastIRM", 0L);
    }

    /* renamed from: aV */
    public void m10900aV(long j) {
        this.avG.putLong("LastKudSR", j).commit();
    }

    /* renamed from: CD */
    public long m11129CD() {
        return this.avA.getLong("LastKudSR", 0L);
    }

    /* renamed from: CE */
    public boolean m11128CE() {
        if (bat.isAvailable()) {
            return this.avA.getBoolean("WiFiAutoDownload", true);
        }
        return false;
    }

    /* renamed from: bq */
    public void m10822bq(boolean z) {
        this.avG.putBoolean("WiFiAutoDownload", z).commit();
    }

    /* renamed from: CF */
    public boolean m11127CF() {
        return this.avA.getBoolean("is_ku_new_version", false);
    }

    /* renamed from: br */
    public void m10820br(boolean z) {
        this.avG.putBoolean("is_ku_new_version", z).commit();
    }

    /* renamed from: CG */
    public long m11126CG() {
        return this.avA.getLong("kuUpdateNotifyTime", 0L);
    }

    /* renamed from: aW */
    public void m10899aW(long j) {
        this.avG.putLong("kuUpdateNotifyTime", j).commit();
    }

    /* renamed from: CH */
    public int m11125CH() {
        return this.avA.getInt("kuUpdateTryCount", 0);
    }

    /* renamed from: el */
    public void m10755el(int i) {
        this.avG.putInt("kuUpdateTryCount", i).commit();
    }

    /* renamed from: CI */
    public boolean m11124CI() {
        return C3941yx.m1356B(this.avA.getInt("AttCheckFlag", 0), 1);
    }

    /* renamed from: CJ */
    public void m11123CJ() {
        this.avG.putInt("AttCheckFlag", C3941yx.m1355C(this.avA.getInt("AttCheckFlag", 0), 1)).commit();
    }

    /* renamed from: CK */
    public boolean m11122CK() {
        return C3941yx.m1356B(this.avA.getInt("AttCheckFlag", 0), 2);
    }

    /* renamed from: CL */
    public void m11121CL() {
        this.avG.putInt("AttCheckFlag", C3941yx.m1355C(this.avA.getInt("AttCheckFlag", 0), 2)).commit();
    }

    /* renamed from: CM */
    public int m11120CM() {
        return this.avA.getInt("kmDownloadTryCount", 0);
    }

    /* renamed from: em */
    public void m10754em(int i) {
        this.avG.putInt("kmDownloadTryCount", i).commit();
    }

    /* renamed from: CN */
    public int m11119CN() {
        return this.avA.getInt("VER:5.0.4_20170210_07:42:51", 0);
    }

    /* renamed from: en */
    public void m10753en(int i) {
        this.avG.putInt("VER:5.0.4_20170210_07:42:51", i).commit();
    }

    /* renamed from: CO */
    public String m11118CO() {
        CheckResult mo12201ue = aeg.m12265um().mo12201ue();
        if (mo12201ue == null || mo12201ue.mUpdateInfoList.get(0) == null) {
            return "0.0.0";
        }
        return mo12201ue.mUpdateInfoList.get(0).version;
    }

    /* renamed from: CP */
    public String m11117CP() {
        CheckResult mo12201ue = aeg.m12265um().mo12201ue();
        if (mo12201ue == null || mo12201ue.mUpdateInfoList.get(0) == null) {
            return "0";
        }
        return String.valueOf(mo12201ue.mUpdateInfoList.get(0).buildNum);
    }

    /* renamed from: aX */
    public void m10898aX(long j) {
        this.avG.putLong("NotifyInstallKmTime", j).commit();
    }

    /* renamed from: eo */
    public void m10752eo(int i) {
        this.avG.putInt("NotifyInstallKmCount", i).commit();
    }

    /* renamed from: CQ */
    public boolean m11116CQ() {
        return this.avA.getBoolean("SwitcherAttProDis", false);
    }

    /* renamed from: bs */
    public void m10818bs(boolean z) {
        this.avG.putBoolean("SwitcherAttProDis", z).commit();
    }

    /* renamed from: CR */
    public boolean m11115CR() {
        return this.avA.getBoolean("SwitcherAttProDel", false);
    }

    /* renamed from: bt */
    public void m10816bt(boolean z) {
        this.avG.putBoolean("SwitcherAttProDel", z).commit();
    }

    /* renamed from: CS */
    public boolean m11114CS() {
        return this.avA.getBoolean("SwitcherAttDisPro", true);
    }

    /* renamed from: bu */
    public void m10814bu(boolean z) {
        this.avG.putBoolean("SwitcherAttDisPro", z).commit();
    }

    /* renamed from: CT */
    public boolean m11113CT() {
        return this.avA.getBoolean("SwitcherAttNoPro", false);
    }

    /* renamed from: bv */
    public void m10812bv(boolean z) {
        this.avG.putBoolean("SwitcherAttNoPro", z).commit();
    }

    /* renamed from: CU */
    public long m11112CU() {
        return this.avA.getLong("KmDownLoadCheckInterverTime", 0L);
    }

    /* renamed from: aY */
    public void m10897aY(long j) {
        this.avG.putLong("KmDownLoadCheckInterverTime", j).commit();
    }

    /* renamed from: CV */
    public long m11111CV() {
        return this.avA.getLong("gameBoxListUpdateTime", 0L);
    }

    /* renamed from: aZ */
    public void m10896aZ(long j) {
        this.avG.putLong("gameBoxListUpdateTime", j).commit();
    }

    /* renamed from: CW */
    public boolean m11110CW() {
        return this.avA.getBoolean("IsGameBoxFirstEnterMainPage", true);
    }

    /* renamed from: bw */
    public void m10810bw(boolean z) {
        this.avG.putBoolean("IsGameBoxFirstEnterMainPage", z).commit();
    }

    /* renamed from: CX */
    public boolean m11109CX() {
        return this.avA.getBoolean("ChannelCloudDefense", true);
    }

    /* renamed from: bx */
    public void m10808bx(boolean z) {
        this.avG.putBoolean("ChannelCloudDefense", z).commit();
    }

    /* renamed from: CY */
    public int m11108CY() {
        return this.avA.getInt("KuSilentUpdateCount", 0);
    }

    /* renamed from: ep */
    public void m10751ep(int i) {
        this.avG.putInt("KuSilentUpdateCount", i).commit();
    }

    /* renamed from: CZ */
    public boolean m11107CZ() {
        return this.avA.getBoolean("ku_system_interface_update", false);
    }

    /* renamed from: by */
    public void m10806by(boolean z) {
        this.avG.putBoolean("ku_system_interface_update", z).commit();
    }

    /* renamed from: Da */
    public int m11054Da() {
        return this.avA.getInt("ku_system_interface_update_where", 0);
    }

    /* renamed from: eq */
    public void m10750eq(int i) {
        this.avG.putInt("ku_system_interface_update_where", i).commit();
    }

    /* renamed from: Db */
    public String m11053Db() {
        return this.avA.getString("ku_current_version_for_update_statics", KApplication.m13436ii() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + 640);
    }

    /* renamed from: gZ */
    public void m10738gZ(String str) {
        this.avG.putString("ku_current_version_for_update_statics", str).commit();
    }

    /* renamed from: Dc */
    public boolean m11052Dc() {
        return this.avA.getBoolean("isKuSilentUpdate", false);
    }

    /* renamed from: bz */
    public void m10804bz(boolean z) {
        this.avG.putBoolean("isKuSilentUpdate", z).commit();
    }

    /* renamed from: uk */
    public long m10716uk() {
        return this.avA.getLong("lastCheckUpdateTime", 0L);
    }

    /* renamed from: ac */
    public void m10895ac(long j) {
        this.avG.putLong("lastCheckUpdateTime", j).commit();
    }

    /* renamed from: Dd */
    public boolean m11051Dd() {
        if (640 == this.avA.getInt("kuTransformBuildNoForGameboxAutoShortcut", -1)) {
            return false;
        }
        this.avG.putInt("kuTransformBuildNoForGameboxAutoShortcut", 640);
        return true;
    }

    /* renamed from: De */
    public long m11050De() {
        return this.avA.getLong("ScreenOffActionExpired", 0L);
    }

    /* renamed from: ba */
    public void m10853ba(long j) {
        this.avG.putLong("ScreenOffActionExpired", j).commit();
    }

    /* renamed from: Df */
    public boolean m11049Df() {
        return this.avA.getBoolean("SwitcherAutoSilentUpdate", true);
    }

    /* renamed from: bA */
    public void m10890bA(boolean z) {
        this.avG.putBoolean("SwitcherAutoSilentUpdate", z).commit();
    }

    /* renamed from: Dg */
    public boolean m11048Dg() {
        return this.avA.getBoolean("WiFiAutoUpdate", true);
    }

    /* renamed from: bB */
    public void m10888bB(boolean z) {
        this.avG.putBoolean("WiFiAutoUpdate", z).commit();
    }

    /* renamed from: Dh */
    public boolean m11047Dh() {
        return this.avA.getBoolean("SwitcherUninstallInterfaceFor3Dr", true);
    }

    /* renamed from: bC */
    public void m10886bC(boolean z) {
        this.avG.putBoolean("SwitcherUninstallInterfaceFor3Dr", z).commit();
    }

    /* renamed from: Di */
    public int m11046Di() {
        return this.avA.getInt("KuCurrentBuildNo", 640);
    }

    /* renamed from: er */
    public void m10749er(int i) {
        this.avG.putInt("KuCurrentBuildNo", i).commit();
    }

    /* renamed from: Dj */
    public long m11045Dj() {
        return this.avA.getLong("ku_tip_task_for_update_statics", 0L);
    }

    /* renamed from: bb */
    public void m10852bb(long j) {
        this.avG.putLong("ku_tip_task_for_update_statics", j).commit();
    }

    /* renamed from: Dk */
    public boolean m11044Dk() {
        return this.avA.getBoolean("RDUIsFirstTime", true);
    }

    /* renamed from: Dl */
    public void m11043Dl() {
        this.avG.putBoolean("RDUIsFirstTime", false).commit();
    }

    /* renamed from: Dm */
    public long m11042Dm() {
        return this.avA.getLong("RDULastTime", 0L);
    }

    /* renamed from: bc */
    public void m10851bc(long j) {
        this.avG.putLong("RDULastTime", j).commit();
    }

    /* renamed from: Dn */
    public boolean m11041Dn() {
        return this.avA.getBoolean("RDULastResultIsSuccess", true);
    }

    /* renamed from: bD */
    public void m10884bD(boolean z) {
        this.avG.putBoolean("RDULastResultIsSuccess", z).commit();
    }

    /* renamed from: Do */
    public boolean m11040Do() {
        return this.avA.getBoolean("IsFirstReportDFGI", true);
    }

    /* renamed from: Dp */
    public void m11039Dp() {
        this.avG.putBoolean("IsFirstReportDFGI", false).commit();
    }

    /* renamed from: Dq */
    public boolean m11038Dq() {
        return this.avA.getBoolean("IsKmInstalledWithKu", true);
    }

    /* renamed from: bE */
    public void m10882bE(boolean z) {
        this.avG.putBoolean("IsKmInstalledWithKu", z).commit();
    }

    /* renamed from: Dr */
    public void m11037Dr() {
        this.avG.putBoolean("HasShowOtherStateOnMain", true).commit();
    }

    /* renamed from: Ds */
    public void m11036Ds() {
        this.avG.putBoolean("HasOnClickKmPage", true).commit();
    }

    /* renamed from: Dt */
    public int m11035Dt() {
        return this.avA.getInt("KuUpdate2SystemAppCount", 0);
    }

    /* renamed from: es */
    public void m10748es(int i) {
        this.avG.putInt("KuUpdate2SystemAppCount", i).commit();
    }

    /* renamed from: Du */
    public boolean m11034Du() {
        return this.avA.getBoolean("KuUpdate2SystemAppWarnPrompt", false);
    }

    /* renamed from: bF */
    public void m10880bF(boolean z) {
        this.avG.putBoolean("KuUpdate2SystemAppWarnPrompt", z).commit();
    }

    /* renamed from: Dv */
    public boolean m11033Dv() {
        if (akh.m11295Au()) {
            return false;
        }
        return this.avA.getBoolean("HasKuUpdate2SystemAppt", false);
    }

    /* renamed from: bG */
    public void m10878bG(boolean z) {
        this.avG.putBoolean("HasKuUpdate2SystemAppt", z).commit();
    }

    /* renamed from: Dw */
    public boolean m11032Dw() {
        return this.avA.getBoolean("HasKuUpdate2SystemAppAfterReboot", false);
    }

    /* renamed from: bH */
    public void m10876bH(boolean z) {
        this.avG.putBoolean("HasKuUpdate2SystemAppAfterReboot", z).commit();
    }

    /* renamed from: Dx */
    public boolean m11031Dx() {
        return !"".equals(m11096Ck()) && KApplication.m13444hZ() > this.avA.getInt("is_need_show_update_guide_view", -1);
    }

    /* renamed from: Dy */
    public void m11030Dy() {
        this.avG.putInt("is_need_show_update_guide_view", KApplication.m13444hZ()).commit();
    }

    /* renamed from: Dz */
    private void m11029Dz() {
        if (2 == this.avA.getInt("AutoReplacementFlag", 2)) {
            if ("".contentEquals(m11096Ck())) {
                this.avG.putInt("AutoReplacementFlag", 0).commit();
            } else {
                this.avG.putInt("AutoReplacementFlag", 1).commit();
            }
        }
    }

    /* renamed from: DA */
    public boolean m11080DA() {
        if (akh.m11295Au()) {
            return false;
        }
        int i = this.avA.getInt("AutoReplacementFlag", 2);
        if (2 == i) {
            m11029Dz();
            i = this.avA.getInt("AutoReplacementFlag", 2);
        }
        return i == 1;
    }

    /* renamed from: bI */
    public void m10874bI(boolean z) {
        this.avG.putInt("AutoReplacementFlag", z ? 1 : 0).commit();
    }

    /* renamed from: bJ */
    public void m10872bJ(boolean z) {
        this.avG.putBoolean("NeedShowHelpNewTag", z).commit();
    }

    /* renamed from: bK */
    public void m10870bK(boolean z) {
        this.avG.putBoolean("XdaChannelStatic", z).commit();
    }

    /* renamed from: DB */
    public long m11079DB() {
        return this.avA.getLong("lastWifiCheckDownloadApkTime", 0L);
    }

    /* renamed from: bd */
    public void m10849bd(long j) {
        this.avG.putLong("lastWifiCheckDownloadApkTime", j).commit();
    }

    /* renamed from: DC */
    public boolean m11078DC() {
        return this.avA.getBoolean("XdaChannelStatic", false);
    }

    /* renamed from: be */
    public void m10847be(long j) {
        this.avG.putLong("LAST_ENTER_ANTI_INJECT_PAGE_TIME", j).commit();
    }

    /* renamed from: bL */
    public void m10868bL(boolean z) {
        this.avG.putBoolean("IS_ANTI_INJECT_OPEN_FAILED_ONCE", z).commit();
    }

    /* renamed from: bM */
    public void m10867bM(boolean z) {
        this.avG.putBoolean("AntiLogNotificationStay", z).commit();
    }

    /* renamed from: DD */
    public boolean m11077DD() {
        return this.avA.getBoolean("AntiLogNotificationStay", false);
    }

    /* renamed from: et */
    public void m10747et(int i) {
        this.avG.putInt("AntiInjectResultFlag", i).commit();
    }

    /* renamed from: DE */
    public int m11076DE() {
        return this.avA.getInt("AntiInjectResultFlag", 0);
    }

    /* renamed from: eu */
    public void m10746eu(int i) {
        this.avG.putInt("AntiInjectTimeoutFailCount", i).commit();
    }

    /* renamed from: DF */
    public int m11075DF() {
        return this.avA.getInt("AntiInjectTimeoutFailCount", 0);
    }

    /* renamed from: ev */
    public void m10745ev(int i) {
        this.avG.putInt("AntiInjectSystemKnowCount", i).commit();
    }

    /* renamed from: DG */
    public int m11074DG() {
        return this.avA.getInt("AntiInjectSystemKnowCount", 0);
    }

    /* renamed from: ew */
    public void m10744ew(int i) {
        this.avG.putInt("AntiInjectSystemKnowRandom", i).commit();
    }

    /* renamed from: DH */
    public int m11073DH() {
        return this.avA.getInt("AntiInjectSystemKnowRandom", 0);
    }

    /* renamed from: ex */
    public void m10743ex(int i) {
        this.avG.putInt("AntiInjectSystemUnknowCount", i).commit();
    }

    /* renamed from: DI */
    public int m11072DI() {
        return this.avA.getInt("AntiInjectSystemUnknowCount", 0);
    }

    /* renamed from: ey */
    public void m10742ey(int i) {
        this.avG.putInt("AntiInjectSystemUnknowRandom", i).commit();
    }

    /* renamed from: DJ */
    public int m11071DJ() {
        return this.avA.getInt("AntiInjectSystemUnknowRandom", 0);
    }

    /* renamed from: bN */
    public void m10866bN(boolean z) {
        this.avG.putBoolean("AppInjectedZygoteListFlag", z).commit();
    }

    /* renamed from: DK */
    public boolean m11070DK() {
        return this.avA.getBoolean("AppInjectedZygoteListFlag", true);
    }

    /* renamed from: bO */
    public void m10865bO(boolean z) {
        this.avG.putBoolean("anti_inject_protect_list_state", z).commit();
    }

    /* renamed from: DL */
    public boolean m11069DL() {
        return this.avA.getBoolean("anti_inject_protect_list_state", false);
    }

    /* renamed from: bP */
    public void m10864bP(boolean z) {
        this.avG.putBoolean("had_enter_anti_inject_protect_list", z).commit();
    }

    /* renamed from: DM */
    public boolean m11068DM() {
        return this.avA.getBoolean("had_enter_anti_inject_protect_list", false);
    }

    /* renamed from: bf */
    public void m10845bf(long j) {
        this.avG.putLong("last_accelerate_autostartup_speed_time", j).commit();
    }

    /* renamed from: DN */
    public long m11067DN() {
        return this.avA.getLong("last_accelerate_autostartup_speed_time", 0L);
    }

    /* renamed from: DO */
    public long m11066DO() {
        return this.avA.getLong("game_box_last_show_guid_time", 0L);
    }

    /* renamed from: bg */
    public void m10843bg(long j) {
        this.avG.putLong("game_box_last_show_guid_time", j).commit();
    }

    /* renamed from: DP */
    public int m11065DP() {
        return this.avA.getInt("game_box_last_show_guid_count" + KApplication.m13436ii(), 0);
    }

    /* renamed from: DQ */
    public void m11064DQ() {
        this.avG.putInt("game_box_last_show_guid_count" + KApplication.m13436ii(), m11065DP() + 1).commit();
    }

    /* renamed from: DR */
    public int m11063DR() {
        return this.avA.getInt("game_box_show_notification_guid_count" + KApplication.m13436ii(), 0);
    }

    /* renamed from: DS */
    public void m11062DS() {
        this.avG.putInt("game_box_show_notification_guid_count" + KApplication.m13436ii(), m11065DP() + 1).commit();
    }

    /* renamed from: DT */
    public boolean m11061DT() {
        return this.avA.getBoolean("game_had_ever_create_shortcut", false);
    }

    /* renamed from: DU */
    public void m11060DU() {
        this.avG.putBoolean("game_had_ever_create_shortcut", true).commit();
    }

    /* renamed from: DV */
    public boolean m11059DV() {
        return this.avA.getBoolean("game_had_ever_show_shortcut_success", false);
    }

    /* renamed from: DW */
    public void m11058DW() {
        this.avG.putBoolean("game_had_ever_show_shortcut_success", true).commit();
    }

    /* renamed from: DX */
    public void m11057DX() {
        this.avG.putBoolean("hadEnterGameBoxPage", true).commit();
    }

    /* renamed from: DY */
    public String m11056DY() {
        return this.avA.getString("game_box_last_app_name", "");
    }

    /* renamed from: ha */
    public void m10736ha(String str) {
        this.avG.putString("game_box_last_app_name", str).commit();
    }

    /* renamed from: bQ */
    public void m10863bQ(boolean z) {
        this.avG.putBoolean("is_first_time_enter_gamebox_from_ku_main", z).commit();
    }

    /* renamed from: DZ */
    public boolean m11055DZ() {
        return this.avA.getBoolean("is_first_time_enter_gamebox_from_ku_main", true);
    }

    /* renamed from: y */
    public void m10715y(String str, boolean z) {
        this.avG.putBoolean("is_first_time_start_recommend_game" + str, z).commit();
    }

    /* renamed from: hb */
    public boolean m10735hb(String str) {
        return this.avA.getBoolean("is_first_time_start_recommend_game" + str, true);
    }

    /* renamed from: n */
    public void m10718n(String str, long j) {
        this.avG.putLong("last_time_game_start" + str, j).commit();
    }

    /* renamed from: hc */
    public long m10734hc(String str) {
        return this.avA.getLong("last_time_game_start" + str, 0L);
    }

    /* renamed from: hd */
    public void m10733hd(String str) {
        this.avG.remove("last_time_click_play_btn_and_jump_gp_time" + str).commit();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.aks$a */
    /* loaded from: classes.dex */
    public class SharedPreferences$EditorC1045a implements SharedPreferences.Editor {

        /* renamed from: Lc */
        private SharedPreferences.Editor f1465Lc;

        public SharedPreferences$EditorC1045a(SharedPreferences.Editor editor) {
            this.f1465Lc = null;
            if (editor == null) {
                throw new RuntimeException("mEditor can not be null");
            }
            this.f1465Lc = editor;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            this.f1465Lc.putString(str, str2);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        @TargetApi(11)
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            if (Build.VERSION.SDK_INT >= 11) {
                this.f1465Lc.putStringSet(str, set);
            }
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i) {
            this.f1465Lc.putInt(str, i);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j) {
            this.f1465Lc.putLong(str, j);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f) {
            return this.f1465Lc.putFloat(str, f);
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            this.f1465Lc.putBoolean(str, z);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            this.f1465Lc.remove(str);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.f1465Lc.clear();
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            boolean commit;
            try {
                if (Build.VERSION.SDK_INT >= 9 && C3697uj.m2032kA()) {
                    this.f1465Lc.apply();
                    commit = true;
                } else {
                    commit = this.f1465Lc.commit();
                }
                return commit;
            } catch (Exception e) {
                return false;
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            if (Build.VERSION.SDK_INT >= 9) {
                this.f1465Lc.apply();
            }
        }
    }

    /* renamed from: bR */
    public void m10862bR(boolean z) {
        this.avG.putBoolean("KrPluginRootFailedFlag", z).commit();
    }

    /* renamed from: Ea */
    public long m11002Ea() {
        return this.avA.getLong("UranusPeekCountTime", 0L);
    }

    /* renamed from: bh */
    public void m10841bh(long j) {
        this.avG.putLong("UranusPeekCountTime", j).commit();
    }

    /* renamed from: Eb */
    public int m11001Eb() {
        return this.avA.getInt("UranusPeekCount", 0);
    }

    /* renamed from: ez */
    public void m10741ez(int i) {
        this.avG.putInt("UranusPeekCount", i).commit();
    }

    /* renamed from: Ec */
    public long m11000Ec() {
        return this.avA.getLong("UranusCheckTime", 0L);
    }

    /* renamed from: bi */
    public void m10839bi(long j) {
        this.avG.putLong("UranusCheckTime", j).commit();
    }

    /* renamed from: Ed */
    public String m10999Ed() {
        return this.avA.getString("fpifgotroot", "");
    }

    /* renamed from: Ee */
    public void m10998Ee() {
        if (abc.m12845qK().isRootPermition(true)) {
            this.avG.putString("fpifgotroot", C3949ze.m1324po()).commit();
        } else {
            this.avG.putString("fpifgotroot", "").commit();
        }
    }

    /* renamed from: Ef */
    public boolean m10997Ef() {
        boolean z;
        synchronized (avF) {
            z = !C3941yx.m1354e(this.avA.getLong("FlagsForMlSwitcher", 0L), 1L);
        }
        return z;
    }

    /* renamed from: Eg */
    public void m10996Eg() {
        synchronized (avF) {
            this.avG.putLong("FlagsForMlSwitcher", C3941yx.m1353f(this.avA.getLong("FlagsForMlSwitcher", 0L), 1L)).commit();
        }
    }

    /* renamed from: Eh */
    public boolean m10995Eh() {
        boolean m1354e;
        synchronized (avF) {
            m1354e = C3941yx.m1354e(this.avA.getLong("FlagsForMlSwitcher", 0L), 2L);
        }
        return m1354e;
    }

    /* renamed from: Ei */
    public void m10994Ei() {
        synchronized (avF) {
            this.avG.putLong("FlagsForMlSwitcher", C3941yx.m1353f(this.avA.getLong("FlagsForMlSwitcher", 0L), 2L)).commit();
        }
    }

    /* renamed from: Ej */
    public void m10993Ej() {
        this.avG.putBoolean("VER:5.3.3_20180111_04:30:54.222", true).commit();
    }

    /* renamed from: Ek */
    public long m10992Ek() {
        return this.avA.getLong("LastExamCureTime", 0L);
    }

    /* renamed from: bj */
    public void m10837bj(long j) {
        this.avG.putLong("LastExamCureTime", j).commit();
    }

    /* renamed from: El */
    public boolean m10991El() {
        return this.avA.getBoolean("is_show_notify_examination_oneday", false);
    }

    /* renamed from: Em */
    public void m10990Em() {
        this.avG.putBoolean("is_show_notify_examination_oneday", true).commit();
    }

    /* renamed from: En */
    public boolean m10989En() {
        return this.avA.getBoolean("is_show_notify_examination_threeday", false);
    }

    /* renamed from: Eo */
    public long m10988Eo() {
        return this.avA.getLong("LastSilentCheckTime", 0L);
    }

    /* renamed from: bk */
    public void m10835bk(long j) {
        this.avG.putLong("LastSilentCheckTime", j).commit();
    }

    /* renamed from: Ep */
    public boolean m10987Ep() {
        return this.avA.getBoolean("is_show_badge", false);
    }

    /* renamed from: bS */
    public void m10861bS(boolean z) {
        this.avG.putBoolean("is_show_badge", z).commit();
    }

    /* renamed from: Eq */
    public long m10986Eq() {
        return this.avA.getLong("490_1", 0L);
    }

    /* renamed from: bl */
    public void m10833bl(long j) {
        this.avG.putLong("490_1", j).commit();
    }

    /* renamed from: Er */
    public int m10985Er() {
        return this.avA.getInt("MaxKrRestartReportCount", 0);
    }

    /* renamed from: eA */
    public void m10780eA(int i) {
        this.avG.putInt("MaxKrRestartReportCount", i).commit();
    }

    /* renamed from: Es */
    public long m10984Es() {
        return this.avA.getLong("KrRestartReportTime", 0L);
    }

    /* renamed from: bm */
    public void m10831bm(long j) {
        this.avG.putLong("KrRestartReportTime", j).commit();
    }

    /* renamed from: Et */
    public int m10983Et() {
        return this.avA.getInt("482_1", 0);
    }

    /* renamed from: eB */
    public void m10779eB(int i) {
        this.avG.putInt("482_1", i).commit();
    }

    /* renamed from: Eu */
    public String m10982Eu() {
        return this.avA.getString("482_2", "");
    }

    /* renamed from: he */
    public void m10732he(String str) {
        this.avG.putString("482_2", str).commit();
    }

    /* renamed from: bn */
    public void m10829bn(long j) {
        this.avG.putLong("last_check_competitor_risk_time", j).commit();
    }

    /* renamed from: Ev */
    public long m10981Ev() {
        return this.avA.getLong("last_check_competitor_risk_time", 0L);
    }

    /* renamed from: aj */
    public void m10894aj(String str, String str2) {
        this.avG.putString("key_shark_config_prefix_" + str, str2).commit();
    }

    /* renamed from: hf */
    public String m10731hf(String str) {
        return this.avA.getString("key_shark_config_prefix_" + str, "");
    }

    /* renamed from: Ew */
    public int m10980Ew() {
        return this.avA.getInt("490_2", 0);
    }

    /* renamed from: eC */
    public void m10778eC(int i) {
        this.avG.putInt("490_2", i).commit();
    }

    /* renamed from: bT */
    public void m10860bT(boolean z) {
        this.avG.putBoolean("490_3", z).commit();
    }

    @Nullable
    /* renamed from: Ex */
    public String m10979Ex() {
        return this.avA.getString("490_4", null);
    }

    /* renamed from: hg */
    public void m10730hg(@Nullable String str) {
        if (str == null) {
            this.avG.remove("490_4");
        } else {
            this.avG.putString("490_4", str).commit();
        }
    }

    /* renamed from: Ey */
    public int m10978Ey() {
        return this.avA.getInt("490_5", 0);
    }

    /* renamed from: eD */
    public void m10777eD(int i) {
        this.avG.putInt("490_5", i).commit();
    }

    /* renamed from: Ez */
    public long m10977Ez() {
        return this.avA.getLong("490_6", 0L);
    }

    /* renamed from: bo */
    public void m10827bo(long j) {
        this.avG.putLong("490_6", j).commit();
    }

    /* renamed from: EA */
    public long m11028EA() {
        return this.avA.getLong("app_dist_examination_last_request_cloud", 0L);
    }

    /* renamed from: bp */
    public void m10825bp(long j) {
        this.avG.putLong("app_dist_examination_last_request_cloud", j).commit();
    }

    /* renamed from: EB */
    public long m11027EB() {
        return this.avA.getLong("app_dist_securityprotect_last_request_cloud", 0L);
    }

    /* renamed from: bq */
    public void m10823bq(long j) {
        this.avG.putLong("app_dist_securityprotect_last_request_cloud", j).commit();
    }

    /* renamed from: EC */
    public long m11026EC() {
        return this.avA.getLong("app_dist_toolbox_last_request_cloud", 0L);
    }

    /* renamed from: br */
    public void m10821br(long j) {
        this.avG.putLong("app_dist_toolbox_last_request_cloud", j).commit();
    }

    /* renamed from: ED */
    public long m11025ED() {
        return this.avA.getLong("app_dist_examination_last_download_app", 0L);
    }

    /* renamed from: bs */
    public void m10819bs(long j) {
        this.avG.putLong("app_dist_examination_last_download_app", j).commit();
    }

    /* renamed from: EE */
    public long m11024EE() {
        return this.avA.getLong("key_first_get_network_time_failed_for_shuamebuildin", 0L);
    }

    /* renamed from: bt */
    public void m10817bt(long j) {
        this.avG.putLong("key_first_get_network_time_failed_for_shuamebuildin", j).commit();
    }

    /* renamed from: EF */
    public boolean m11023EF() {
        return this.avA.getBoolean("key_is_ignore_limit_show_preapp_uninstall_page_for_shuamebuildin", false);
    }

    /* renamed from: EG */
    public void m11022EG() {
        this.avG.putBoolean("key_is_ignore_limit_show_preapp_uninstall_page_for_shuamebuildin", true).commit();
    }

    /* renamed from: EH */
    public boolean m11021EH() {
        return this.avA.getBoolean("key_is_first_time_fix_anti_acquire_root", true);
    }

    /* renamed from: EI */
    public void m11020EI() {
        this.avG.putBoolean("key_is_first_time_fix_anti_acquire_root", false).commit();
    }

    /* renamed from: EJ */
    public boolean m11019EJ() {
        return this.avA.getBoolean("key_is_clean_permanent_root_cause_reboot", false);
    }

    /* renamed from: EK */
    public void m11018EK() {
        this.avG.putBoolean("key_is_clean_permanent_root_cause_reboot", true).commit();
    }

    /* renamed from: eE */
    public void m10776eE(int i) {
        this.avG.putInt("key_clean_permanent_root_failed_count", i).commit();
    }

    /* renamed from: EL */
    public int m11017EL() {
        return this.avA.getInt("key_clean_permanent_root_failed_count", 0);
    }

    /* renamed from: bU */
    public void m10859bU(boolean z) {
        this.avG.putBoolean("is_show_business_splash_allowed", z).commit();
    }

    /* renamed from: EM */
    public boolean m11016EM() {
        return this.avA.getBoolean("is_show_business_splash_allowed", false);
    }

    /* renamed from: EN */
    public boolean m11015EN() {
        return this.avA.getBoolean("had_ever_cancle_update_dialog", false);
    }

    /* renamed from: bV */
    public void m10858bV(boolean z) {
        this.avG.putBoolean("had_ever_cancle_update_dialog", z).commit();
    }

    /* renamed from: eF */
    public void m10775eF(int i) {
        this.avG.putInt("ku_udapte_download_type", i).commit();
    }

    /* renamed from: EO */
    public int m11014EO() {
        return this.avA.getInt("ku_udapte_download_type", 3);
    }

    /* renamed from: ak */
    public void m10893ak(String str, String str2) {
        this.avG.putString("VER:5.2.2_20170329_10:06:02.593" + str, str2).commit();
    }

    /* renamed from: hh */
    public String m10729hh(String str) {
        return this.avA.getString("VER:5.2.2_20170329_10:06:02.593" + str, "");
    }

    /* renamed from: bW */
    public void m10857bW(boolean z) {
        this.avG.putBoolean("ku_three_proccess_moniter_switcher", z).commit();
    }

    /* renamed from: EP */
    public boolean m11013EP() {
        return this.avA.getBoolean("ku_three_proccess_moniter_switcher", false);
    }

    /* renamed from: EQ */
    public int m11012EQ() {
        return this.avA.getInt("adapt_num", 0);
    }

    /* renamed from: eG */
    public void m10774eG(int i) {
        this.avG.putInt("adapt_num", i).commit();
    }

    public int getRootState() {
        return this.avA.getInt("root_state", 999);
    }

    public void setRootState(int i) {
        this.avG.putInt("root_state", i).commit();
    }

    /* renamed from: ER */
    public int m11011ER() {
        return this.avA.getInt("root_process_state", 0);
    }

    /* renamed from: eH */
    public void m10773eH(int i) {
        this.avG.putInt("root_process_state", i).commit();
    }

    /* renamed from: ES */
    public int m11010ES() {
        return this.avA.getInt("root_scene", 999);
    }

    /* renamed from: eI */
    public void m10772eI(int i) {
        this.avG.putInt("root_scene", i).commit();
    }

    /* renamed from: ET */
    public boolean m11009ET() {
        return this.avA.getBoolean("is_enter_main_page", false);
    }

    /* renamed from: bX */
    public void m10856bX(boolean z) {
        this.avG.putBoolean("is_enter_main_page", z).commit();
    }

    /* renamed from: EU */
    public boolean m11008EU() {
        return this.avA.getBoolean("key_security_protect_do_not_remind_dialog", false);
    }

    /* renamed from: bY */
    public boolean m10855bY(boolean z) {
        return this.avG.putBoolean("key_security_protect_do_not_remind_dialog", z).commit();
    }

    /* renamed from: EV */
    public long m11007EV() {
        return this.avA.getLong("key_security_protect_pop_risk_dialog_timestamp", 0L);
    }

    /* renamed from: EW */
    public void m11006EW() {
        this.avG.putLong("key_security_protect_pop_risk_dialog_timestamp", System.currentTimeMillis()).commit();
    }

    /* renamed from: EX */
    public long m11005EX() {
        return this.avA.getLong("key_click_main_page_one_key_process_timestamp", 0L);
    }

    /* renamed from: EY */
    public void m11004EY() {
        this.avG.putLong("key_click_main_page_one_key_process_timestamp", System.currentTimeMillis()).commit();
    }

    /* renamed from: EZ */
    public void m11003EZ() {
        this.avG.putLong("key_last_time_opened_successed_anti_inject_timestamp", System.currentTimeMillis()).commit();
    }

    /* renamed from: Fa */
    public long m10950Fa() {
        return this.avA.getLong("key_last_time_replace_su_timestamp", 0L);
    }

    /* renamed from: Fb */
    public void m10949Fb() {
        this.avG.putLong("key_last_time_replace_su_timestamp", System.currentTimeMillis()).commit();
    }

    /* renamed from: bZ */
    public void m10854bZ(boolean z) {
        this.avG.putBoolean("490_7", z).commit();
    }

    /* renamed from: Fc */
    public boolean m10948Fc() {
        if (akh.m11295Au()) {
            return false;
        }
        return this.avA.getBoolean("490_7", true);
    }

    /* renamed from: ca */
    public void m10802ca(boolean z) {
        this.avG.putBoolean("490_8", z).commit();
    }

    /* renamed from: Fd */
    public boolean m10947Fd() {
        return this.avA.getBoolean("490_8", true);
    }

    /* renamed from: cb */
    public void m10801cb(boolean z) {
        this.avG.putBoolean("490_9", z).commit();
    }

    /* renamed from: Fe */
    public boolean m10946Fe() {
        return this.avA.getBoolean("490_9", true);
    }

    /* renamed from: bu */
    public void m10815bu(long j) {
        this.avG.putLong("491_0", j).commit();
    }

    /* renamed from: Ff */
    public long m10945Ff() {
        return this.avA.getLong("491_0", 0L);
    }

    /* renamed from: Fg */
    public long m10944Fg() {
        return this.avA.getLong("key_last_update_virus_timestamp", 0L);
    }

    /* renamed from: bv */
    public void m10813bv(long j) {
        this.avG.putLong("key_last_update_virus_timestamp", j).commit();
    }

    /* renamed from: Fh */
    public long m10943Fh() {
        return this.avA.getLong("key_update_virus_interval", 0L);
    }

    /* renamed from: bw */
    public void m10811bw(long j) {
        this.avG.putLong("key_update_virus_interval", j).commit();
    }

    /* renamed from: cc */
    public void m10800cc(boolean z) {
        this.avG.putBoolean("key_need_guide_open_anti_inject", z).commit();
    }

    /* renamed from: bx */
    public void m10809bx(long j) {
        this.avG.putLong("last_exam_ignore_purify_intro_time", j).commit();
    }

    /* renamed from: Fi */
    public long m10942Fi() {
        return this.avA.getLong("last_exam_ignore_purify_intro_time", 0L);
    }

    /* renamed from: Fj */
    public int m10941Fj() {
        return this.avA.getInt("exam_ignore_purify_intro_time", 0);
    }

    /* renamed from: eJ */
    public void m10771eJ(int i) {
        this.avG.putInt("exam_ignore_purify_intro_time", i).commit();
    }

    /* renamed from: by */
    public void m10807by(long j) {
        this.avG.putLong("last_exam_ignore_gamebox_manual_time", j).commit();
    }

    /* renamed from: Fk */
    public int m10940Fk() {
        return this.avA.getInt("exam_ignore_gamebox_manual_time", 0);
    }

    /* renamed from: eK */
    public void m10770eK(int i) {
        this.avG.putInt("exam_ignore_gamebox_manual_time", i).commit();
    }

    /* renamed from: Fl */
    public long m10939Fl() {
        return this.avA.getLong("last_exam_ignore_gamebox_manual_time", 0L);
    }

    /* renamed from: bz */
    public void m10805bz(long j) {
        this.avG.putLong("VER:5.3.3_20180111_04:34:18.337", j).commit();
    }

    /* renamed from: Fm */
    public int m10938Fm() {
        return this.avA.getInt("VER:5.3.3_20180111_04:36:33.137", 0);
    }

    /* renamed from: eL */
    public void m10769eL(int i) {
        this.avG.putInt("VER:5.3.3_20180111_04:36:33.137", i).commit();
    }

    /* renamed from: Fn */
    public long m10937Fn() {
        return this.avA.getLong("VER:5.3.3_20180111_04:34:18.337", 0L);
    }

    /* renamed from: hi */
    public void m10728hi(String str) {
        this.avG.putInt("app_dist_silent_download_success_time" + str, m10727hj(str) + 1).commit();
    }

    /* renamed from: hj */
    public int m10727hj(String str) {
        return this.avA.getInt("app_dist_silent_download_success_time" + str, 0);
    }

    /* renamed from: hk */
    public void m10726hk(String str) {
        this.avG.remove("app_dist_silent_download_success_time" + str).commit();
    }

    /* renamed from: hl */
    public void m10725hl(String str) {
        this.avG.putString("key_security_protect_recommand_pkg", str).commit();
    }

    /* renamed from: Fo */
    public String m10936Fo() {
        return this.avA.getString("key_security_protect_recommand_pkg", "");
    }

    /* renamed from: bA */
    public void m10891bA(long j) {
        this.avG.putLong("key_security_protect_recommand_ignore_timestamp", j).commit();
    }

    /* renamed from: Fp */
    public long m10935Fp() {
        return this.avA.getLong("key_security_protect_recommand_ignore_timestamp", 0L);
    }

    /* renamed from: bB */
    public void m10889bB(long j) {
        this.avG.putLong("key_security_protect_recommand_app_install_timestamp", j).commit();
    }

    /* renamed from: Fq */
    public long m10934Fq() {
        return this.avA.getLong("key_security_protect_recommand_app_install_timestamp", 0L);
    }

    /* renamed from: Fr */
    public boolean m10933Fr() {
        return this.avA.getBoolean("KCloudGuideKMSwitch", true);
    }

    /* renamed from: cd */
    public void m10799cd(boolean z) {
        this.avG.putBoolean("KCloudGuideKMSwitch", z).commit();
    }

    /* renamed from: Fs */
    public boolean m10932Fs() {
        if (akh.m11295Au()) {
            return false;
        }
        return this.avA.getBoolean("491_2", true);
    }

    /* renamed from: ce */
    public void m10798ce(boolean z) {
        this.avG.putBoolean("491_2", z).commit();
    }

    /* renamed from: cf */
    public void m10797cf(boolean z) {
        this.avG.putBoolean("km_enginer_is_enable_by_ku", z).commit();
    }

    /* renamed from: Ft */
    public boolean m10931Ft() {
        return this.avA.getBoolean("km_enginer_is_enable_by_ku", false);
    }

    /* renamed from: cg */
    public void m10796cg(boolean z) {
        if (z) {
            this.avG.putBoolean("km_enginer_is_enable_by_ku", false);
            this.avG.putInt("km_exam_ignore_time", 0);
            this.avG.putBoolean("km_notify_shown_by_engine_disable", false);
            this.avG.putBoolean("km_notify_shown_by_notify_exeed", false);
            this.avG.putBoolean("km_notify_shown_by_power_low", false);
            this.avG.putLong("km_last_notify_show_time", 0L).commit();
            return;
        }
        this.avG.putBoolean("km_enginer_is_enable_by_ku", true);
        this.avG.putInt("km_exam_ignore_time", 2);
        this.avG.putBoolean("km_notify_shown_by_engine_disable", true);
        this.avG.putBoolean("km_notify_shown_by_notify_exeed", true);
        this.avG.putBoolean("km_notify_shown_by_power_low", true);
        this.avG.putLong("km_last_notify_show_time", System.currentTimeMillis()).commit();
    }

    /* renamed from: Fu */
    public long m10930Fu() {
        return this.avA.getLong("491_3", 0L);
    }

    /* renamed from: Fv */
    public void m10929Fv() {
        this.avG.putLong("491_3", System.currentTimeMillis()).commit();
    }

    /* renamed from: Fw */
    public boolean m10928Fw() {
        return this.avA.getBoolean("IsShowExaminationWhenInstalled", true);
    }

    /* renamed from: Fx */
    public void m10927Fx() {
        this.avG.putBoolean("IsShowExaminationWhenInstalled", false).commit();
    }

    /* renamed from: Fy */
    public long m10926Fy() {
        return this.avA.getLong("ku_krdem_report_time", 0L);
    }

    /* renamed from: bC */
    public void m10887bC(long j) {
        this.avG.putLong("ku_krdem_report_time", j).commit();
    }

    /* renamed from: Fz */
    public boolean m10925Fz() {
        return this.avA.getBoolean("1480323418437", false);
    }

    /* renamed from: ch */
    public void m10795ch(boolean z) {
        this.avG.putBoolean("1480323418437", z).commit();
    }

    /* renamed from: FA */
    public long m10976FA() {
        return this.avA.getLong("last_animate_root_state_badge_timestamp", 0L);
    }

    /* renamed from: bD */
    public void m10885bD(long j) {
        this.avG.putLong("last_animate_root_state_badge_timestamp", j).commit();
    }

    /* renamed from: FB */
    public boolean m10975FB() {
        return this.avA.getBoolean("PraiseDialogRoot", true);
    }

    /* renamed from: ci */
    public void m10794ci(boolean z) {
        this.avG.putBoolean("PraiseDialogRoot", z).commit();
    }

    /* renamed from: FC */
    public boolean m10974FC() {
        return this.avA.getBoolean("PraiseDialogRisk", true);
    }

    /* renamed from: cj */
    public void m10793cj(boolean z) {
        this.avG.putBoolean("PraiseDialogRisk", z).commit();
    }

    /* renamed from: FD */
    public boolean m10973FD() {
        return this.avA.getBoolean("PraiseDialogOpt", true);
    }

    /* renamed from: ck */
    public void m10792ck(boolean z) {
        this.avG.putBoolean("PraiseDialogOpt", z).commit();
    }

    /* renamed from: FE */
    public boolean m10972FE() {
        return this.avA.getBoolean("PraiseDialogAll", true);
    }

    /* renamed from: cl */
    public void m10791cl(boolean z) {
        this.avG.putBoolean("PraiseDialogAll", z).commit();
    }

    /* renamed from: FF */
    public long m10971FF() {
        return this.avA.getLong("LastShowPraiseDialogTime", 0L);
    }

    /* renamed from: bE */
    public void m10883bE(long j) {
        this.avG.putLong("LastShowPraiseDialogTime", j).commit();
    }

    /* renamed from: FG */
    public long m10970FG() {
        return this.avA.getLong("VER:5.0.5_20170213_02:36:25.935", 0L);
    }

    /* renamed from: bF */
    public void m10881bF(long j) {
        this.avG.putLong("VER:5.0.5_20170213_02:36:25.935", j).commit();
    }

    /* renamed from: FH */
    public int m10969FH() {
        return this.avA.getInt("VER:5.05_20170213_05:11:12.790", 0);
    }

    /* renamed from: eM */
    public void m10768eM(int i) {
        this.avG.putInt("VER:5.05_20170213_05:11:12.790", i).commit();
    }

    /* renamed from: FI */
    public boolean m10968FI() {
        return this.avA.getBoolean("VER:5.05_20170215_11:33:23.053", false);
    }

    /* renamed from: cm */
    public void m10790cm(boolean z) {
        this.avG.putBoolean("VER:5.05_20170215_11:33:23.053", z).commit();
    }

    /* renamed from: FJ */
    public boolean m10967FJ() {
        return this.avA.getBoolean("VER:5.21_20170628_04:07:54.917", false);
    }

    /* renamed from: cn */
    public void m10789cn(boolean z) {
        this.avG.putBoolean("VER:5.21_20170628_04:07:54.917", z).commit();
    }

    /* renamed from: FK */
    public boolean m10966FK() {
        return this.avA.getBoolean("VER:5.21_20170629_08:01:42.440", false);
    }

    /* renamed from: co */
    public void m10788co(boolean z) {
        this.avG.putBoolean("VER:5.21_20170629_08:01:42.440", z).commit();
    }

    /* renamed from: cp */
    public void m10787cp(boolean z) {
        int i = z ? 2 : this.avA.getInt("VER:5.l10_20170308_04:35:40.559", 0) + 1;
        int i2 = i <= 2 ? i : 2;
        this.avG.putLong("VER:5.10_20170308_04:33:59.593", System.currentTimeMillis());
        this.avG.putInt("VER:5.l10_20170308_04:35:40.559", i2).commit();
    }

    /* renamed from: FL */
    public boolean m10965FL() {
        return m10964FM() || this.avA.getInt("VER:5.l10_20170308_04:35:40.559", 0) >= 2 || !acu.m12571g(this.avA.getLong("VER:5.10_20170308_04:33:59.593", 0L), 259200000L);
    }

    /* renamed from: cq */
    public void m10786cq(boolean z) {
        if (z) {
            this.avG.putLong("VER:5.1.0_20170321_05:57:20.953", System.currentTimeMillis());
        }
        this.avG.putBoolean("VER:5.10_20170313_03:42:41.362", z).commit();
    }

    /* renamed from: FM */
    public boolean m10964FM() {
        return this.avA.getBoolean("VER:5.10_20170313_03:42:41.362", false);
    }

    /* renamed from: cr */
    public void m10785cr(boolean z) {
        this.avG.putBoolean("VER:5.1.0_20170313_05:51:21.904", z).commit();
    }

    /* renamed from: FN */
    public boolean m10963FN() {
        return this.avA.getBoolean("VER:5.1.0_20170313_05:51:21.904", true);
    }

    /* renamed from: FO */
    public long m10962FO() {
        return this.avA.getLong("VER:5.1.0_20170321_05:57:20.953", 0L);
    }

    /* renamed from: FP */
    public long m10961FP() {
        return this.avA.getLong("VER:5.1.0_20170328_09:21:25.921", 0L);
    }

    /* renamed from: bG */
    public void m10879bG(long j) {
        this.avG.putLong("VER:5.1.0_20170328_09:21:25.921", j).commit();
    }

    /* renamed from: FQ */
    public int m10960FQ() {
        return this.avA.getInt("VER:5.1.0_20170329_10:57:00.618", 0);
    }

    /* renamed from: eN */
    public void m10767eN(int i) {
        this.avG.putInt("VER:5.1.0_20170329_10:57:00.618", i).commit();
    }

    /* renamed from: FR */
    public int m10959FR() {
        return this.avA.getInt("VER:5.1.0_20170329_11:38:12.250", 0);
    }

    /* renamed from: eO */
    public void m10766eO(int i) {
        this.avG.putInt("VER:5.1.0_20170329_11:38:12.250", i).commit();
    }

    /* renamed from: bH */
    public void m10877bH(long j) {
        this.avG.putLong("VER:5.2.0_20170511_11:12:03.122", j).commit();
    }

    /* renamed from: FS */
    public long m10958FS() {
        return this.avA.getLong("VER:5.2.0_20170511_11:12:03.122", 0L);
    }

    /* renamed from: bI */
    public void m10875bI(long j) {
        this.avG.putLong("VER:5.2.0_20170509_06:01:19.866", j).commit();
    }

    /* renamed from: FT */
    public long m10957FT() {
        return this.avA.getLong("VER:5.2.0_20170509_06:01:19.866", 0L);
    }

    /* renamed from: eP */
    public void m10765eP(int i) {
        this.avG.putLong("VER:5.2.0_20170511_10:54:58.258", i * 3600000).commit();
    }

    /* renamed from: FU */
    public long m10956FU() {
        return this.avA.getLong("VER:5.2.0_20170511_10:54:58.258", 1L);
    }

    /* renamed from: FV */
    public long m10955FV() {
        return this.avA.getLong("VER:5.2.0_20170512_01:10:59.013", 0L);
    }

    /* renamed from: bJ */
    public void m10873bJ(long j) {
        this.avG.putLong("VER:5.2.0_20170512_01:10:59.013", j).commit();
    }

    /* renamed from: FW */
    public void m10954FW() {
        int i = this.avA.getInt("VER:5.2.0_20170517_05:23:24.328", 0);
        if (i < 2) {
            this.avG.putLong("VER:5.2.0_20170524_08:45:18.043", System.currentTimeMillis());
            this.avG.putInt("VER:5.2.0_20170517_05:23:24.328", i + 1).commit();
        }
    }

    /* renamed from: FX */
    public boolean m10953FX() {
        return !acu.m12571g(this.avA.getLong("VER:5.2.0_20170524_08:45:18.043", 0L), 259200000L) || this.avA.getInt("VER:5.2.0_20170517_05:23:24.328", 0) >= 2 || this.avA.getInt("VER:5.2.0_20170517_05:22:30.760", 0) >= 2;
    }

    /* renamed from: FY */
    public boolean m10952FY() {
        return this.avA.getBoolean("VER:5.2.0_20170523_10:59:34.764", true);
    }

    /* renamed from: cs */
    public void m10784cs(boolean z) {
        this.avG.putBoolean("VER:5.2.0_20170523_10:59:34.764", z).commit();
    }

    /* renamed from: FZ */
    public void m10951FZ() {
        int i = this.avA.getInt("VER:5.2.0_20170517_05:22:30.760", 0);
        if (i < 2) {
            this.avG.putInt("VER:5.2.0_20170517_05:22:30.760", i + 1).commit();
        }
    }

    /* renamed from: hm */
    public void m10724hm(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.avG.putBoolean("VER:5.2.0_20170609_11:30:10.403" + str, true).commit();
        }
    }

    /* renamed from: hn */
    public boolean m10723hn(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return this.avA.getBoolean("VER:5.2.0_20170609_11:30:10.403" + str, false);
    }

    /* renamed from: ho */
    public void m10722ho(String str) {
        this.avG.putString("VER:5.22_20170807_02:55:32.496", str).commit();
    }

    /* renamed from: Ga */
    public String m10924Ga() {
        return this.avA.getString("VER:5.22_20170807_02:55:32.496", "");
    }

    /* renamed from: ct */
    public void m10783ct(boolean z) {
        this.avG.putBoolean("VER:5.22_20170807_02:58:39.982", z).commit();
    }

    /* renamed from: Gb */
    public boolean m10923Gb() {
        return this.avA.getBoolean("VER:5.22_20170807_02:58:39.982", false);
    }

    /* renamed from: eQ */
    public void m10764eQ(int i) {
        this.avG.putInt("VER:5.22_20170817_04:13:17.589", i).commit();
    }

    /* renamed from: Gc */
    public int m10922Gc() {
        return this.avA.getInt("VER:5.22_20170817_04:13:17.589", 0);
    }

    /* renamed from: c */
    public void m10803c(long j, String str) {
        if (!TextUtils.isEmpty(str)) {
            this.avG.putLong("VER:5.2.2_20170814_11:19:38.695" + str, j).commit();
        }
    }

    /* renamed from: hp */
    public long m10721hp(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return this.avA.getLong("VER:5.2.2_20170814_11:19:38.695" + str, 0L);
    }

    /* renamed from: d */
    public void m10781d(long j, String str) {
        if (!TextUtils.isEmpty(str)) {
            this.avG.putLong("VER:5.2.2_20170814_12:14:14.464" + str, j).commit();
        }
    }

    /* renamed from: hq */
    public long m10720hq(String str) {
        if (TextUtils.isEmpty(str)) {
            return 0L;
        }
        return this.avA.getLong("VER:5.2.2_20170814_12:14:14.464" + str, 0L);
    }

    /* renamed from: al */
    public void m10892al(String str, String str2) {
        this.avG.putString("VER:5.22_20170823_05:15:49.536" + str, str2).commit();
    }

    /* renamed from: hr */
    public String m10719hr(String str) {
        return this.avA.getString("VER:5.22_20170823_05:15:49.536" + str, "");
    }

    /* renamed from: Gd */
    public boolean m10921Gd() {
        return this.avA.getBoolean("VER:5.32_20171201_05:47:27.676", true);
    }

    /* renamed from: cu */
    public void m10782cu(boolean z) {
        this.avG.putBoolean("VER:5.32_20171201_05:47:27.676", z).commit();
    }

    /* renamed from: Ge */
    public int m10920Ge() {
        return this.avA.getInt("VER:5.32_20171204_10:01:58.480", 0);
    }

    /* renamed from: Gf */
    public void m10919Gf() {
        int m10920Ge = m10920Ge();
        if (m10920Ge <= 3) {
            this.avG.putInt("VER:5.32_20171204_10:01:58.480", m10920Ge + 1).commit();
        }
    }

    /* renamed from: Gg */
    public long m10918Gg() {
        return this.avA.getLong("VER:5.3.3_20180111_04:57:44.193", 0L);
    }

    /* renamed from: bK */
    public void m10871bK(long j) {
        this.avG.putLong("VER:5.3.3_20180111_04:57:44.193", j).commit();
    }

    /* renamed from: Gh */
    public int m10917Gh() {
        return this.avA.getInt("VER:5.3.3_20180111_05:02:39.956", 0);
    }

    /* renamed from: eR */
    public void m10763eR(int i) {
        this.avG.putInt("VER:5.3.3_20180111_05:02:39.956", i).commit();
    }

    /* renamed from: Gi */
    public long m10916Gi() {
        return this.avA.getLong("VER:5.3.3_20180111_06:18:36.950", 0L);
    }

    /* renamed from: bL */
    public void m10869bL(long j) {
        this.avG.putLong("VER:5.3.3_20180111_06:18:36.950", j).commit();
    }
}
