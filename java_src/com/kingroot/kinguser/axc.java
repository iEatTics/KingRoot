package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Toast;
import com.kingroot.kinguser.activitys.SoftwareProtectListActivity;
import com.kingroot.kinguser.activitys.SuRequestDialogSettingActivity;
import com.kingroot.kinguser.activitys.SuRequestLogSettingActivity;
import com.kingroot.kinguser.agg;
import com.kingroot.kinguser.bhe;
import com.kingroot.kinguser.bhu;
import com.kingroot.kinguser.bic;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.p015ai.AntiInjectLogModel;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.lang.reflect.Field;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class axc extends axs {
    private AdapterView.OnItemClickListener aVh;
    private aks aXl;
    private agg aXm;
    private boolean aXn;
    private boolean aXo;
    private big aXp;
    private bim aXq;
    private bil aXr;
    private bed aXs;
    private bed aXt;
    private bid aXu;
    private bid aXv;
    private bed aXw;

    /* renamed from: vd */
    private void m8489vd() {
        if (this.aXr != null && this.aXr.isShowing()) {
            this.aXr.dismiss();
        }
        if (this.aXp != null && this.aXp.isShowing()) {
            this.aXp.dismiss();
        }
        if (this.aXq != null && this.aXq.isShowing()) {
            this.aXq.dismiss();
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStart() {
        super.onStart();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        m8489vd();
        super.onDestroy();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        getActivity().setIntent(intent);
    }

    public axc(Context context) {
        super(context);
        this.aXn = true;
        this.aXo = true;
        this.aVh = new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.axc.8
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                switch (axc.this.alr.get(i).aQX) {
                    case 10:
                        axc.this.m8510TG();
                        return;
                    case 20:
                        bat.m7892l(axc.this.getActivity());
                        return;
                    case 35:
                        Intent intent = new Intent();
                        intent.setClass(axc.this.getActivity(), SuRequestDialogSettingActivity.class);
                        axc.this.getActivity().startActivity(intent);
                        return;
                    case 36:
                        Intent intent2 = new Intent();
                        intent2.setClass(axc.this.getActivity(), SuRequestLogSettingActivity.class);
                        axc.this.getActivity().startActivity(intent2);
                        return;
                    case 40:
                        Context context2 = axc.this.getContext();
                        Intent intent3 = new Intent(context2, SoftwareProtectListActivity.class);
                        intent3.putExtra("software.protect_list.page", 1);
                        context2.startActivity(intent3);
                        return;
                    case 10001:
                        bhe.acm();
                        return;
                    case 10005:
                        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.axc.8.2
                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                            public void run() {
                                super.run();
                                ahl.m11725xm().m11734a(true, new IAntiInjectSwitcherOpObserver.Stub() { // from class: com.kingroot.kinguser.page.CommonSettingsPage$3$2$1
                                    @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                                    public void onSwitcherOpen(int i2) {
                                    }

                                    @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                                    public void onSwitcherClosed() {
                                    }
                                });
                            }
                        }));
                        return;
                    case 10006:
                        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.axc.8.3
                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                            public void run() {
                                super.run();
                                for (AntiInjectLogModel antiInjectLogModel : ahl.m11725xm().getAllLogs()) {
                                }
                            }
                        }));
                        return;
                    case 10008:
                        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.axc.8.1
                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                            public void run() {
                                super.run();
                                arv.m9499Nz().downloadWeSecure();
                            }
                        }));
                        return;
                    default:
                        return;
                }
            }
        };
        this.aXp = null;
        this.aXq = null;
        this.aXr = null;
        this.aXs = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.axc.13
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    Thread.sleep(2000L);
                } catch (InterruptedException e) {
                }
                if (!axc.this.aXo || !bhe.acj()) {
                    beg.m7461Zj().m7450c(axc.this.aXt);
                } else {
                    axc.this.getHandler().obtainMessage(7).sendToTarget();
                }
            }
        });
        this.aXt = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.axc.14
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    ady.m12308tK().mo1746bi(100048);
                    bhe.m7058a(false, axc.this.aXn, new bhe.InterfaceC2277a() { // from class: com.kingroot.kinguser.axc.14.1
                        @Override // com.kingroot.kinguser.bhe.InterfaceC2277a
                        /* renamed from: dt */
                        public void mo7047dt(boolean z) {
                            if (z) {
                                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axc.14.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        C3954zj.m1310b(C3953zi.m1311pr().getText(R.string.unroot_tosat_unroot_success));
                                        aho.m11711aO(KUApplication.m13453ge());
                                        aks.m11143BP().m10861bS(false);
                                    }
                                });
                            } else {
                                axc.this.getHandler().obtainMessage(5).sendToTarget();
                            }
                        }
                    });
                    if (axc.this.aXr != null) {
                        axc.this.m8495ds(true);
                        axc.this.aXr.dismiss();
                        axc.this.aXr = null;
                    }
                } catch (Exception e) {
                    if (axc.this.aXr != null) {
                        axc.this.m8495ds(true);
                        axc.this.aXr.dismiss();
                        axc.this.aXr = null;
                    }
                } catch (Throwable th) {
                    if (axc.this.aXr != null) {
                        axc.this.m8495ds(true);
                        axc.this.aXr.dismiss();
                        axc.this.aXr = null;
                    }
                    throw th;
                }
            }
        });
        this.aXu = null;
        this.aXv = null;
        this.aXw = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.axc.6
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                try {
                    Thread.sleep(1000L);
                    axc.this.getHandler().obtainMessage(6).sendToTarget();
                    if (axc.this.aXr != null) {
                        axc.this.aXr.dismiss();
                        axc.this.aXr = null;
                    }
                } catch (Exception e) {
                    if (axc.this.aXr != null) {
                        axc.this.aXr.dismiss();
                        axc.this.aXr = null;
                    }
                } catch (Throwable th) {
                    if (axc.this.aXr != null) {
                        axc.this.aXr.dismiss();
                        axc.this.aXr = null;
                    }
                    throw th;
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new bey(getActivity(), m1417V(2131165956L));
    }

    @Override // com.kingroot.kinguser.axs, com.kingroot.kinguser.AbstractC3921yl
    protected BaseAdapter getAdapter() {
        this.alr = new ArrayList<>();
        this.aXm = new agg(this.mContext, this.alr);
        return this.aXm;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.axs, com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        this.aXl = aks.m11143BP();
        this.f4011Vd.setClickable(true);
        setOnItemClickListener(this.aVh);
        this.f4011Vd.setDivider(null);
        m8497cp(0L);
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        super.mo1372i(obj);
        m8504Tv();
    }

    /* renamed from: cp */
    public void m8497cp(long j) {
        getHandler().sendMessageDelayed(getHandler().obtainMessage(0), j);
    }

    /* renamed from: Tv */
    private void m8504Tv() {
        m8511TF();
        this.aXm.notifyDataSetChanged();
    }

    /* renamed from: TF */
    private void m8511TF() {
        this.alr.clear();
        m8152ka(C3953zi.m1311pr().getString(R.string.king_tool_title_root_authorization));
        m8161UF();
        boolean m7763WS = bbv.m7771WK().m7763WS();
        boolean z = m7763WS && this.aXl.m11142BQ();
        m8158a(1, R.drawable.icon_general_setting_enable_root_authorization, C3953zi.m1311pr().getString(R.string.setting_list_item_root_authorize), z, m7763WS, new agg.InterfaceC0882a() { // from class: com.kingroot.kinguser.axc.1
            @Override // com.kingroot.kinguser.agg.InterfaceC0882a
            /* renamed from: p */
            public void mo8035p(View view) {
                if (bbv.m7771WK().m7763WS()) {
                    axc.this.aXl.m10850bc(!axc.this.aXl.m11142BQ());
                    if (!axc.this.aXl.m11142BQ()) {
                        bby.m7752WY();
                        bbf.m7834Wn();
                    } else {
                        aks.m11143BP().m10850bc(true);
                        ajn.m11456zp().m11455zq();
                        ajb.m11487yT().checkAsync(true, false, null);
                    }
                    axc.this.mo1402oR();
                    return;
                }
                Toast.makeText(axc.this.getContext(), C3953zi.m1311pr().getString(R.string.setting_su_switch_toast_warning_need_obtain_root), 1).show();
            }
        });
        if (z) {
            m8161UF();
            m8159a(2, R.drawable.icon_general_setting_smart_authorization, C3953zi.m1311pr().getString(R.string.setting_list_item_cloud_defense), this.aXl.m11136BW(), new agg.InterfaceC0882a() { // from class: com.kingroot.kinguser.axc.7
                @Override // com.kingroot.kinguser.agg.InterfaceC0882a
                /* renamed from: p */
                public void mo8035p(View view) {
                    axc.this.aXl.m10848bd(!axc.this.aXl.m11136BW());
                }
            });
        }
        if (z) {
            m8161UF();
            m8160a(35, R.drawable.icon_general_setting_root_auth_window, C3953zi.m1311pr().getString(R.string.setting_list_item_authorization_pop), "", (String[]) null, 0, (bhu.InterfaceC2291a) null);
        }
        if (z) {
            m8161UF();
            m8160a(36, R.drawable.icon_general_setting_root_records, C3953zi.m1311pr().getString(R.string.log_title), "", (String[]) null, 0, (bhu.InterfaceC2291a) null);
        }
        if (bat.isAvailable()) {
            m8161UF();
            m8152ka(C3953zi.m1311pr().getString(R.string.setting_update));
            m8161UF();
            m8160a(20, R.drawable.icon_general_setting_update_set, C3953zi.m1311pr().getString(R.string.setting_list_item_wifi_auto_update), "", (String[]) null, 0, (bhu.InterfaceC2291a) null);
        }
        m8161UF();
        m8152ka(C3953zi.m1311pr().getString(R.string.examination_settings_title_memory_free_protected));
        m8161UF();
        m8160a(40, R.drawable.icon_general_setting_protection_list, C3953zi.m1311pr().getString(R.string.examination_settings_item_memory_free_protected), "", (String[]) null, 0, (bhu.InterfaceC2291a) null);
        m8161UF();
        m8152ka(C3953zi.m1311pr().getString(R.string.setting_list_unroot_and_install));
        m8161UF();
        m8160a(10, R.drawable.icon_general_setting_uninstall, C3953zi.m1311pr().getString(R.string.setting_list_item_perfect_unroot), "", (String[]) null, 0, (bhu.InterfaceC2291a) null);
        m8161UF();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                m8504Tv();
                return;
            case 1:
                Toast.makeText(this.mContext, message.arg1, 0).show();
                return;
            case 2:
            case 3:
            case 4:
            default:
                return;
            case 5:
                m8507TJ();
                return;
            case 6:
                m8506TK();
                return;
            case 7:
                m8508TI();
                return;
        }
    }

    @Override // com.kingroot.kinguser.axs, com.kingroot.kinguser.AbstractC3921yl
    /* renamed from: oJ */
    protected int mo1419oJ() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TG */
    public void m8510TG() {
        ady.m12308tK().mo1746bi(100208);
        this.aXp = new big(this.mContext);
        this.aXq = new bim(this.mContext);
        this.aXp.show();
        this.aXp.setIcon(R.drawable.popwindow_waring_red);
        this.aXp.setTitleText(C3953zi.m1311pr().getString(R.string.unroot_dialog_tip_one));
        this.aXp.setTitleColor(C3953zi.m1311pr().getColor(R.color.red_1));
        this.aXp.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
        this.aXp.m6930lL(C3953zi.m1311pr().getString(R.string.dialog_btn_continue));
        this.aXp.m6927al(R.layout.unroot_dialog_tip_layout, 1);
        this.aXp.m6920a(bid.EnumC2302a.BTN_RIGHT, R.color.blue_2);
        this.aXp.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axc.9
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ady.m12308tK().mo1746bi(100204);
                axc.this.aXq.show();
                axc.this.aXq.setTitleText(C3953zi.m1311pr().getString(R.string.setting_list_item_perfect_unroot));
                axc.this.aXq.m6933d(C3953zi.m1311pr().getString(R.string.unroot_warning));
                axc.this.aXq.m6941lJ(C3953zi.m1311pr().getString(R.string.unroot_backup_root_tips));
                axc.this.aXq.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
                axc.this.aXq.m6939C(abg.m12835r(8.0f));
                axc.this.aXq.m6930lL(C3953zi.m1311pr().getString(R.string.dialog_btn_ok));
                axc.this.aXq.m6882a(bid.EnumC2302a.BTN_RIGHT, R.color.blue_2);
                axc.this.aXq.m6945b(new bic.InterfaceC2299a() { // from class: com.kingroot.kinguser.axc.9.1
                    @Override // com.kingroot.kinguser.bic.InterfaceC2299a
                    /* renamed from: d */
                    public void mo6940d(View view2, boolean z) {
                        aks.m11143BP().m10838bi(z);
                        if (!z) {
                            ady.m12308tK().mo1746bi(100243);
                        }
                        axc.this.m8509TH();
                    }
                });
                axc.this.aXq.m6947a(new bic.InterfaceC2299a() { // from class: com.kingroot.kinguser.axc.9.2
                    @Override // com.kingroot.kinguser.bic.InterfaceC2299a
                    /* renamed from: d */
                    public void mo6940d(View view2, boolean z) {
                        ady.m12308tK().mo1746bi(100207);
                    }
                });
            }
        });
        this.aXp.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axc.10
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ady.m12308tK().mo1746bi(100205);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TH */
    public void m8509TH() {
        this.aXn = true;
        this.aXo = true;
        if (beg.m7461Zj().m7450c(this.aXs)) {
            this.aXr = new bil(this.mContext);
            this.aXr.show();
            this.aXr.setTitleText(C3953zi.m1311pr().getString(R.string.unroot_dialog_title));
            this.aXr.m6921iZ(8);
            this.aXr.m6922ef(false);
            m8495ds(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ds */
    public void m8495ds(boolean z) {
        if (this.aXr != null) {
            try {
                Field declaredField = this.aXr.getClass().getSuperclass().getSuperclass().getSuperclass().getSuperclass().getDeclaredField("mShowing");
                declaredField.setAccessible(true);
                declaredField.set(this.aXr, Boolean.valueOf(z));
            } catch (Exception e) {
                this.aXo = false;
            }
        }
    }

    /* renamed from: TI */
    private void m8508TI() {
        if (this.aXr != null) {
            this.aXr.m6921iZ(0);
            this.aXr.mo6682lK(C3953zi.m1311pr().getString(R.string.unroot_progress_dialog_cancel));
            this.aXr.m6930lL(C3953zi.m1311pr().getString(R.string.unroot_progress_dialog_ok));
            this.aXr.m6933d(C3953zi.m1311pr().getString(R.string.unroot_dialog_warn_content_2));
            this.aXr.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axc.11
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    axc.this.aXn = false;
                    beg.m7461Zj().m7450c(axc.this.aXt);
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axc.11.1
                        @Override // java.lang.Runnable
                        public void run() {
                            axc.this.aXr.m6933d(C3953zi.m1311pr().getString(R.string.unroot_dialog_warn_content));
                            axc.this.aXr.m6921iZ(8);
                        }
                    });
                    ady.m12308tK().mo1746bi(100338);
                }
            });
            this.aXr.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axc.12
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    axc.this.aXn = true;
                    beg.m7461Zj().m7450c(axc.this.aXt);
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axc.12.1
                        @Override // java.lang.Runnable
                        public void run() {
                            axc.this.aXr.m6933d(C3953zi.m1311pr().getString(R.string.unroot_dialog_warn_content));
                            axc.this.aXr.m6921iZ(8);
                        }
                    });
                    ady.m12308tK().mo1746bi(100337);
                }
            });
            ady.m12308tK().mo1746bi(100336);
        }
    }

    /* renamed from: TJ */
    private void m8507TJ() {
        this.aXu = new bid(this.mContext);
        this.aXu.show();
        this.aXu.setTitleText(C3953zi.m1311pr().getString(R.string.unroot_dialog_fail_report_title));
        this.aXu.mo6682lK(C3953zi.m1311pr().getString(R.string.unroot_dialog_fail_report_btn_cancel));
        this.aXu.m6930lL(C3953zi.m1311pr().getString(R.string.unroot_dialog_fail_report_btn_commit));
        this.aXu.m6933d(C3953zi.m1311pr().getString(R.string.unroot_dialog_fail_report_content));
        this.aXu.m6938a(bid.EnumC2302a.BTN_RIGHT);
        this.aXu.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axc.2
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ady.m12308tK().mo1746bi(100244);
                axc.this.m8505TL();
            }
        });
        this.aXu.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axc.3
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
            }
        });
    }

    /* renamed from: TK */
    private void m8506TK() {
        this.aXv = new bid(this.mContext);
        this.aXv.show();
        this.aXv.setTitleText(C3953zi.m1311pr().getString(R.string.unroot_dialog_fail_report_commit_success_title));
        this.aXv.mo6682lK(C3953zi.m1311pr().getString(R.string.unroot_dialog_fail_report_commit_success_btn_continue));
        this.aXv.m6930lL(C3953zi.m1311pr().getString(R.string.unroot_dialog_fail_report_commit_success_btn_finish));
        this.aXv.m6933d(C3953zi.m1311pr().getString(R.string.unroot_dialog_fail_report_commit_success_content));
        this.aXv.m6938a(bid.EnumC2302a.BTN_RIGHT);
        this.aXv.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axc.4
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
            }
        });
        this.aXv.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axc.5
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ady.m12308tK().mo1746bi(100245);
                bgn.abM();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TL */
    public void m8505TL() {
        if (beg.m7461Zj().m7450c(this.aXw)) {
            bif bifVar = new bif(this.mContext);
            bifVar.show();
            bifVar.m6921iZ(8);
            bifVar.setTitleText(C3953zi.m1311pr().getString(R.string.unroot_dialog_fail_report_title));
            bifVar.m6933d(C3953zi.m1311pr().getString(R.string.unroot_dialog_fail_report_commit_tips));
            bifVar.m6922ef(false);
        }
    }
}
