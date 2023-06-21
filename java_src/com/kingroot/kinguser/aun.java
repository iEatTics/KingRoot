package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.activitys.AdvancePermAppListActivity;
import com.kingroot.kinguser.activitys.DefaultAppSettingsActivity;
import com.kingroot.kinguser.activitys.RootMgrActivity;
import com.kingroot.kinguser.activitys.RootProcessActivity;
import com.kingroot.kinguser.activitys.SilentInstallActivity;
import com.kingroot.kinguser.advance.manager.IPermChangedListener;
import com.kingroot.kinguser.advance.model.AdvancePermModel;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import com.kingroot.kinguser.aue;
import com.kingroot.kinguser.aun;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.ztool.autostartmgr.AutoStartMgrActivity;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class aun implements aue.InterfaceC1603a {
    private aue.InterfaceC1604b aRA;
    private bed aRB = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.aun.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            boolean z = false;
            super.run();
            bbv m7771WK = bbv.m7771WK();
            boolean m7766WP = m7771WK.m7766WP();
            aun.this.aRA.mo8557u(ahe.m11803wL().m11804wK(), m7766WP);
            aun.this.aRA.mo8563cM(m7766WP);
            if (m7766WP) {
                aun.this.aRA.mo8562cN(false);
            } else {
                aue.InterfaceC1604b interfaceC1604b = aun.this.aRA;
                if (!m7771WK.m7767WO() && m7771WK.m7765WQ()) {
                    z = true;
                }
                interfaceC1604b.mo8562cN(z);
            }
            aun.this.m9077cZ(m7766WP);
            aun.this.m9086Qx();
        }
    });
    private IPermChangedListener aRC = new IPermChangedListener.Stub() { // from class: com.kingroot.kinguser.mvp.presenter.AdvancePermPagePresenter$2
        @Override // com.kingroot.kinguser.advance.manager.IPermChangedListener
        public void onChanged() {
            bed bedVar;
            beg m7461Zj = beg.m7461Zj();
            bedVar = aun.this.aRB;
            m7461Zj.m7450c(bedVar);
        }
    };
    private final WeakReference<Activity> aRz;

    public aun(@NonNull Activity activity, @NonNull aue.InterfaceC1604b interfaceC1604b) {
        this.aRz = new WeakReference<>(C3948zd.m1327k(activity));
        this.aRA = (aue.InterfaceC1604b) C3948zd.m1327k(interfaceC1604b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Qx */
    public void m9086Qx() {
        if (!bbv.m7771WK().m7766WP()) {
            ady.m12308tK().mo1746bi(100550);
        } else if (bbv.m7771WK().m7765WQ()) {
            ady.m12308tK().mo1746bi(100551);
        }
    }

    @Override // com.kingroot.kinguser.aue.InterfaceC1603a
    /* renamed from: PJ */
    public void mo9091PJ() {
        beg.m7461Zj().m7450c(this.aRB);
    }

    @Override // com.kingroot.kinguser.aue.InterfaceC1603a
    /* renamed from: PH */
    public void mo9093PH() {
        Activity activity = this.aRz.get();
        if (activity != null) {
            Intent intent = new Intent();
            intent.setClass(activity, AdvancePermAppListActivity.class);
            activity.startActivity(intent);
        }
    }

    @Override // com.kingroot.kinguser.aue.InterfaceC1603a
    /* renamed from: gJ */
    public void mo9076gJ(int i) {
        switch (i) {
            case 1:
                m9090QA();
                return;
            case 2:
                ady.m12308tK().mo1746bi(100517);
                m9089QB();
                return;
            case 3:
                m9088QC();
                return;
            case 4:
            default:
                return;
            case 5:
                m9087QD();
                return;
        }
    }

    @Override // com.kingroot.kinguser.aue.InterfaceC1603a
    /* renamed from: PI */
    public void mo9092PI() {
        ady.m12308tK().mo1746bi(100552);
        try {
            Intent intent = new Intent();
            Activity m12026vt = aft.m12026vt();
            intent.setClass(m12026vt, RootProcessActivity.class);
            intent.putExtra("root_process_state", 3);
            m12026vt.startActivity(intent);
            m12026vt.finish();
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cZ */
    public void m9077cZ(boolean z) {
        Map<Integer, List<AdvancePermModel>> m11806wI = ahe.m11803wL().m11806wI();
        C3953zi m1311pr = C3953zi.m1311pr();
        if (z) {
            if (!aks.m11143BP().m11142BQ()) {
                this.aRA.mo8566b(1, m1311pr.getString(R.string.root_auth_has_been_disable), true);
            } else if (bbv.m7771WK().m7764WR()) {
                this.aRA.mo8566b(1, m1311pr.getString(R.string.unable_grant_root_permission), true);
            } else {
                this.aRA.mo8569N(1, m9080bn(m11806wI.get(1)));
            }
            if (!aks.m11143BP().m10948Fc()) {
                this.aRA.mo8566b(2, m1311pr.getString(R.string.advance_perm_main_page_desc_silentinstall_close), true);
            } else {
                this.aRA.mo8569N(2, m9085Qy());
            }
            this.aRA.mo8569N(3, m9079bo(m11806wI.get(3)));
            this.aRA.mo8569N(5, m9084Qz());
            return;
        }
        this.aRA.mo8569N(1, m1311pr.getString(R.string.advance_perm_root_unroot_auth_sub_title));
        this.aRA.mo8569N(2, m1311pr.getString(R.string.advance_perm_root_unroot_slient_install_sub_title));
        this.aRA.mo8569N(3, m1311pr.getString(R.string.advance_perm_root_unroot_auto_sub_title));
        this.aRA.mo8569N(5, m1311pr.getString(R.string.advance_perm_noroot_default_settings_sub_title));
    }

    /* renamed from: bn */
    private String m9080bn(List<AdvancePermModel> list) {
        String str;
        int i;
        int i2;
        int i3;
        if (list == null) {
            return "";
        }
        C3953zi m1311pr = C3953zi.m1311pr();
        Set<String> m8707Sf = awb.m8706Sy().m8707Sf();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (AdvancePermModel advancePermModel : list) {
            switch (advancePermModel.apt) {
                case 0:
                    int i7 = i6;
                    for (String str2 : m8707Sf) {
                        if (!TextUtils.isEmpty(str2)) {
                            i7 = str2.equals(advancePermModel.packageName) ? i7 + 1 : i7;
                        }
                    }
                    i = i4;
                    i3 = i5;
                    i2 = i7;
                    break;
                case 1:
                    i = i4;
                    i2 = i6;
                    i3 = i5 + 1;
                    break;
                case 2:
                    i = i4 + 1;
                    i2 = i6;
                    i3 = i5;
                    break;
                default:
                    i = i4;
                    i2 = i6;
                    i3 = i5;
                    break;
            }
            i5 = i3;
            i6 = i2;
            i4 = i;
        }
        if (!abc.m12845qK().isRootPermition() || i6 == 0) {
            if (i5 <= 0) {
                str = "";
            } else {
                str = ("" + String.format(m1311pr.getString(R.string.advance_perm_main_page_desc_rootauth_allow), Integer.valueOf(i5))) + "  ";
            }
            return i4 > 0 ? str + String.format(m1311pr.getString(R.string.advance_perm_main_page_desc_rootauth_ask), Integer.valueOf(i4)) : str;
        }
        return String.format(m1311pr.getString(R.string.advance_perm_main_page_desc_rootauth_risk_deny), Integer.valueOf(i6));
    }

    /* renamed from: Qy */
    private String m9085Qy() {
        C3953zi m1311pr = C3953zi.m1311pr();
        List<SilentInstallLogInfo> m11873ah = agy.m11867wk().m11873ah(2592000000L);
        return C3942yy.m1352c(m11873ah) ? m1311pr.getString(R.string.advance_perm_main_page_desc_silentinstall_none) : String.format(m1311pr.getString(R.string.advance_perm_main_page_desc_silentinstall), Integer.valueOf(m11873ah.size()));
    }

    /* renamed from: bo */
    private String m9079bo(List<AdvancePermModel> list) {
        if (list == null) {
            return "";
        }
        C3953zi m1311pr = C3953zi.m1311pr();
        int i = 0;
        int i2 = 0;
        for (AdvancePermModel advancePermModel : list) {
            switch (advancePermModel.apv) {
                case 0:
                case 3:
                    i2++;
                    break;
                case 1:
                case 2:
                    i++;
                    break;
            }
            i2 = i2;
            i = i;
        }
        String str = "";
        if (i2 > 0) {
            str = ("" + String.format(m1311pr.getString(R.string.advance_perm_main_page_desc_autoboot_enable), Integer.valueOf(i2))) + "  ";
        }
        return i > 0 ? str + String.format(m1311pr.getString(R.string.advance_perm_main_page_desc_autoboot_disable), Integer.valueOf(i)) : str;
    }

    /* renamed from: Qz */
    private String m9084Qz() {
        int m11768wV = ahg.m11770wT().m11768wV();
        C3953zi m1311pr = C3953zi.m1311pr();
        return m11768wV <= 0 ? m1311pr.getString(R.string.advance_perm_root_default_settings_sub_title) : String.format(m1311pr.getString(R.string.def_setting_main_page_title), Integer.valueOf(m11768wV));
    }

    /* renamed from: QA */
    public void m9090QA() {
        Activity activity = this.aRz.get();
        if (activity != null) {
            Intent intent = new Intent();
            intent.setClass(activity, RootMgrActivity.class);
            ady.m12308tK().mo1746bi(100156);
            activity.startActivity(intent);
        }
    }

    /* renamed from: QB */
    private void m9089QB() {
        Activity activity = this.aRz.get();
        if (activity != null) {
            Intent intent = new Intent();
            intent.setClass(activity, SilentInstallActivity.class);
            activity.startActivity(intent);
        }
    }

    /* renamed from: QC */
    private void m9088QC() {
        Activity activity = this.aRz.get();
        if (activity != null) {
            Intent intent = new Intent();
            ady.m12308tK().mo1746bi(100061);
            intent.setClass(activity, AutoStartMgrActivity.class);
            activity.startActivity(intent);
        }
    }

    /* renamed from: QD */
    private void m9087QD() {
        Activity activity = this.aRz.get();
        if (activity != null) {
            Intent intent = new Intent();
            intent.setClass(activity, DefaultAppSettingsActivity.class);
            activity.startActivity(intent);
            ady.m12308tK().mo1746bi(100634);
            akt.m10713Gj().m10711Gl();
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void start() {
        ahe.m11803wL().m11810c(this.aRC);
    }

    @Override // com.kingroot.kinguser.InterfaceC3899xt
    public void destroy() {
        ahe.m11803wL().m11809d(this.aRC);
    }
}
