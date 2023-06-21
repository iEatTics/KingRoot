package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.network.download.UpdateInfo;
import com.kingroot.kingmaster.network.updata.CheckResult;
import com.kingroot.kingmaster.network.updata.ICheckIPCListener;
import com.kingroot.kinguser.HandlerC3839wk;
import com.kingroot.kinguser.activitys.SoftwareHelpActivity;
import com.kingroot.kinguser.aei;
import com.kingroot.kinguser.awt;
import com.kingroot.kinguser.bhu;
import com.kingroot.kinguser.bie;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class awt extends axs {
    private boolean aVd;
    private agg aVe;
    private bid aVf;
    private String aVg;
    private AdapterView.OnItemClickListener aVh;
    private final ICheckIPCListener aVi;
    private bed aVj;

    public awt(Context context) {
        super(context);
        this.aVd = true;
        this.aVh = new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.awt.1
            private int aVk = 0;

            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == 0) {
                    int i2 = this.aVk + 1;
                    this.aVk = i2;
                    this.aVk = i2 % 7;
                    if (this.aVk == 0) {
                        try {
                            Log.i("guid", aav.getSharkGuid());
                            Log.i("kinglib", "1.5.1-beta1-2BA5F14C3BF42C33-164-64");
                        } catch (abn e) {
                        }
                    }
                }
                auc aucVar = awt.this.alr.get(i);
                switch (aucVar.aQX) {
                    case 12:
                    case 19:
                        awt.this.m8596vy();
                        return;
                    case 16:
                    case 34:
                        if (34 == aucVar.aQX) {
                            aks.m11143BP().m10872bJ(false);
                            awt.this.m8607Tw();
                        }
                        try {
                            Intent intent = new Intent();
                            intent.setClass(awt.this.getActivity(), SoftwareHelpActivity.class);
                            awt.this.getActivity().startActivity(intent);
                        } catch (Exception e2) {
                        }
                        ady.m12308tK().mo1746bi(100164);
                        return;
                    case 37:
                        bgc.m7126bp(awt.this.getContext());
                        beg.m7461Zj().m7450c(awt.this.aVj);
                        return;
                    case 38:
                        bgc.m7127A(awt.this.getContext(), aucVar.aRa);
                        C3954zj.m1310b(C3953zi.m1311pr().getText(R.string.about_qqgroup_copy_toast));
                        return;
                    case 39:
                        bgc.m7127A(awt.this.getContext(), aucVar.aRa);
                        C3954zj.m1310b(C3953zi.m1311pr().getText(R.string.about_gzh_copy_toast));
                        return;
                    case 41:
                        awt.this.m8611Ts();
                        return;
                    case 42:
                        bgc.m7125bq(awt.this.getContext());
                        ady.m12308tK().mo1746bi(100419);
                        return;
                    case 43:
                        bgc.m7124br(awt.this.getContext());
                        ady.m12308tK().mo1746bi(100614);
                        return;
                    case 44:
                        bgc.m7123bs(awt.this.getContext());
                        ady.m12308tK().mo1746bi(100615);
                        return;
                    default:
                        return;
                }
            }
        };
        this.aVi = new ICheckIPCListener.Stub() { // from class: com.kingroot.kinguser.page.AboutPage$4
            @Override // com.kingroot.kingmaster.network.updata.ICheckIPCListener
            public void onCheckStarted() {
                HandlerC3839wk.m1559bE(R.string.version_update_update_checking);
            }

            @Override // com.kingroot.kingmaster.network.updata.ICheckIPCListener
            public void onCheckEvent(int i) {
                if (i != 0) {
                    HandlerC3839wk.m1559bE(R.string.version_update_update_failed);
                }
            }

            @Override // com.kingroot.kingmaster.network.updata.ICheckIPCListener
            public void onCheckFinished(CheckResult checkResult) {
                boolean z;
                String str;
                UpdateInfo updateInfo = null;
                z = awt.this.aVd;
                if (!z && checkResult.err == 0) {
                    if (checkResult.mUpdateInfoList == null || checkResult.mUpdateInfoList.size() <= 0) {
                        str = null;
                    } else {
                        updateInfo = checkResult.mUpdateInfoList.get(0);
                        str = updateInfo.url;
                    }
                    if (str == null) {
                        awt.this.m8606Tx();
                        return;
                    }
                    aei.m12255a(4, updateInfo, checkResult);
                    awt.this.m8607Tw();
                }
            }
        };
        this.aVj = new bed(bem.LOW, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.awt.5
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
            }
        });
        this.alr = new ArrayList<>();
        this.aVe = new agg(getContext(), this.alr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStart() {
        super.onStart();
        this.aVd = false;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        this.aVd = true;
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        m8597vd();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    public View mo1371oG() {
        return getLayoutInflater().inflate(R.layout.about_ku_page, (ViewGroup) null);
    }

    @Override // com.kingroot.kinguser.axs, com.kingroot.kinguser.AbstractC3921yl
    /* renamed from: oJ */
    protected int mo1419oJ() {
        return R.id.related_setting_page_ll;
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    protected Drawable getDivider() {
        return m1414Y(2130837953L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
    }

    @Override // com.kingroot.kinguser.axs, com.kingroot.kinguser.AbstractC3921yl
    protected BaseAdapter getAdapter() {
        return this.aVe;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new bey(getActivity(), m1417V(2131165954L));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                m8608Tv();
                return;
            case 1:
            default:
                return;
            case 2:
                if (!m8609Tu()) {
                    HandlerC3839wk.m1559bE(R.string.version_update_toast_latest_version);
                    return;
                }
                return;
            case 3:
                String m12821eo = abj.m12821eo(C3958zl.m1295pw() + "/su");
                if (!m12821eo.equals(this.aVg)) {
                    this.aVg = m12821eo;
                    m8608Tv();
                    return;
                }
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.axs, com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        m8610Tt();
        this.aVe.notifyDataSetChanged();
        this.f4011Vd.setOnItemClickListener(this.aVh);
        m1418U(0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ts */
    public void m8611Ts() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://purifyapps.com/thanks"));
            if (C3952zh.m1312pq().queryIntentActivities(intent, 0).size() > 0) {
                intent.setFlags(335544320);
                KUApplication.m13453ge().startActivity(intent);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: Tt */
    private void m8610Tt() {
        int i;
        int i2;
        this.alr.clear();
        String str = this.aVg;
        if (str == null) {
            str = "";
        }
        getHandler().sendEmptyMessage(3);
        m8153g(String.format(getResources().getString(R.string.setting_cur_version_v), m8601dG()), String.format(getResources().getString(R.string.about_kernel_ver), str), R.drawable.ic_launcher);
        m8161UF();
        if (bhv.acP()) {
            i = 34;
        } else {
            i = 16;
        }
        m8156a(i, C3953zi.m1311pr().getString(R.string.setting_list_item_software_help), "", (String[]) null, 0, (bhu.InterfaceC2291a) null);
        m8161UF();
        if (bhv.acO()) {
            i2 = 19;
        } else {
            i2 = 12;
        }
        m8156a(i2, C3953zi.m1311pr().getString(R.string.setting_list_item_app_update), "", (String[]) null, 0, (bhu.InterfaceC2291a) null);
        if (!C3946zb.m1332pj()) {
            m8161UF();
            m8156a(41, C3953zi.m1311pr().getString(R.string.about_thanks), "", (String[]) null, 0, (bhu.InterfaceC2291a) null);
        }
        m8152ka(C3953zi.m1311pr().getString(R.string.about_follow_us));
        if (C3946zb.m1330pl()) {
            m8156a(43, C3953zi.m1311pr().getString(R.string.about_official_website), "", (String[]) null, 0, (bhu.InterfaceC2291a) null);
            m8161UF();
            m8156a(44, C3953zi.m1311pr().getString(R.string.about_xda_forum), "", (String[]) null, 0, (bhu.InterfaceC2291a) null);
            m8161UF();
            m8156a(42, C3953zi.m1311pr().getString(R.string.about_facebook), "", (String[]) null, 0, (bhu.InterfaceC2291a) null);
            m8161UF();
        } else {
            m8157a(37, C3953zi.m1311pr().getString(R.string.about_sina_weibo), C3953zi.m1311pr().getString(R.string.about_sina_weibo_account), C3953zi.m1311pr().getDrawable(R.drawable.about_weibo), (String[]) null, 0, (bhu.InterfaceC2291a) null);
            m8161UF();
            m8157a(39, C3953zi.m1311pr().getString(R.string.about_gongzhonghao), C3953zi.m1311pr().getString(R.string.about_gongzhopnghao_num), C3953zi.m1311pr().getDrawable(R.drawable.about_gongzhonghao), (String[]) null, 0, (bhu.InterfaceC2291a) null);
            m8161UF();
            Drawable drawable = C3953zi.m1311pr().getDrawable(R.drawable.about_qq);
            m8157a(38, C3953zi.m1311pr().getString(R.string.about_qqgroup1), C3953zi.m1311pr().getString(R.string.about_qqgroup_num1), drawable, (String[]) null, 0, (bhu.InterfaceC2291a) null);
            m8161UF();
            m8157a(38, C3953zi.m1311pr().getString(R.string.about_qqgroup2), C3953zi.m1311pr().getString(R.string.about_qqgroup_num2), drawable, (String[]) null, 0, (bhu.InterfaceC2291a) null);
            m8161UF();
        }
        m8154aG(C3953zi.m1311pr().getString(R.string.about_copyright), C3953zi.m1311pr().getString(R.string.about_all_right_reserved));
    }

    /* renamed from: dG */
    private String m8601dG() {
        return KApplication.m13430io();
    }

    /* renamed from: Tu */
    private boolean m8609Tu() {
        String str;
        try {
            str = C3953zi.m1311pr().getString(R.string.new_feature_content);
        } catch (Exception e) {
            str = null;
        }
        if (str == null) {
            return false;
        }
        this.aVf = new bid(this.mContext);
        this.aVf.show();
        this.aVf.setTitleText(C3953zi.m1311pr().getString(R.string.version_update_toast_latest_version));
        this.aVf.m6933d(str);
        this.aVf.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_i_know));
        this.aVf.mo6683iY(8);
        this.aVf.acV().requestFocus();
        this.aVf.m6928a(new bie.InterfaceC2305b() { // from class: com.kingroot.kinguser.awt.2
            @Override // com.kingroot.kinguser.bie.InterfaceC2305b
            /* renamed from: b */
            public boolean mo6923b(int i, KeyEvent keyEvent) {
                if (i == 23) {
                    awt.this.aVf.dismiss();
                    return true;
                }
                return true;
            }
        });
        return true;
    }

    /* renamed from: vd */
    private void m8597vd() {
        if (this.aVf != null && this.aVf.isShowing()) {
            this.aVf.dismiss();
        }
    }

    /* renamed from: Tv */
    private void m8608Tv() {
        m8610Tt();
        this.f4012Ve.notifyDataSetChanged();
    }

    /* renamed from: Tw */
    public void m8607Tw() {
        getHandler().obtainMessage(0).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: vy */
    public void m8596vy() {
        new Thread(new Runnable() { // from class: com.kingroot.kinguser.awt.3
            @Override // java.lang.Runnable
            public void run() {
                bat.m7893b(awt.this.aVi);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Tx */
    public void m8606Tx() {
        new Thread(new Runnable() { // from class: com.kingroot.kinguser.awt.4
            @Override // java.lang.Runnable
            public void run() {
                UpdateInfo updateInfo;
                try {
                    aeg m12265um = aeg.m12265um();
                    boolean mo12200uf = m12265um.mo12200uf();
                    boolean mo12207tc = m12265um.mo12207tc();
                    CheckResult mo12201ue = m12265um.mo12201ue();
                    if (mo12201ue == null || C3942yy.m1352c(mo12201ue.mUpdateInfoList)) {
                        updateInfo = null;
                    } else {
                        updateInfo = mo12201ue.mUpdateInfoList.get(0);
                    }
                    boolean z = updateInfo == null ? false : mo12200uf;
                    if (z && mo12207tc) {
                        if (m12265um.mo12199ug()) {
                            HandlerC3839wk.m1559bE(R.string.version_update_updating_new_version);
                        } else {
                            aei.m12255a(4, updateInfo, mo12201ue);
                        }
                    } else if (z) {
                        aei.m12255a(4, updateInfo, mo12201ue);
                    } else {
                        awt.this.getHandler().sendEmptyMessage(2);
                    }
                } catch (Throwable th) {
                }
            }
        }).start();
    }
}
