package com.kingroot.kinguser.view;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.annotation.UiThread;
import android.text.Html;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.common.framework.main.MainExitReceiver;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.acp;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aeb;
import com.kingroot.kinguser.aih;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.auw;
import com.kingroot.kinguser.aux;
import com.kingroot.kinguser.avm;
import com.kingroot.kinguser.avn;
import com.kingroot.kinguser.avu;
import com.kingroot.kinguser.avv;
import com.kingroot.kinguser.bbo;
import com.kingroot.kinguser.bbt;
import com.kingroot.kinguser.bfm;
import com.kingroot.kinguser.bgf;
import com.kingroot.kinguser.bhd;
import com.kingroot.kinguser.model.RootMgrLogInfo;
import com.kingroot.kinguser.model.SuRequestCmdModel;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.util.List;
/* loaded from: classes.dex */
public class PermissionRequestActivityMiui extends Activity implements aux.InterfaceC1673a {
    private ImageView ahP;
    private bgf apa;
    private aks bay;
    private View brA;
    private Button brB;
    private TextView brC;
    private TextView brD;
    private TextView brE;
    private TextView brF;
    private CountDownTimer brG;
    private TextView brJ;
    private int brK;
    private SuRequestCmdModel brr;
    private Button brs;
    private Button brt;
    private View bru;
    private View brv;
    private View brw;
    private Button brx;
    private View bry;
    private Button brz;
    private String mAppName;
    private boolean brH = false;
    private boolean brI = false;
    private int brL = 0;
    private View.OnClickListener brM = new View.OnClickListener() { // from class: com.kingroot.kinguser.view.PermissionRequestActivityMiui.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PermissionRequestActivityMiui.this.brx != null) {
                PermissionRequestActivityMiui.this.brx.setBackgroundResource(R.drawable.radio_button_checked);
            }
            if (PermissionRequestActivityMiui.this.brz != null) {
                PermissionRequestActivityMiui.this.brz.setBackgroundResource(R.drawable.selector_radio);
            }
            if (PermissionRequestActivityMiui.this.brB != null) {
                PermissionRequestActivityMiui.this.brB.setBackgroundResource(R.drawable.selector_radio);
            }
            if (PermissionRequestActivityMiui.this.brC != null) {
                PermissionRequestActivityMiui.this.brC.setText(R.string.request_dialog_remember_in_15_minutes);
            }
            PermissionRequestActivityMiui.this.brL = 1;
        }
    };
    private View.OnClickListener brN = new View.OnClickListener() { // from class: com.kingroot.kinguser.view.PermissionRequestActivityMiui.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PermissionRequestActivityMiui.this.brx != null) {
                PermissionRequestActivityMiui.this.brx.setBackgroundResource(R.drawable.selector_radio);
            }
            if (PermissionRequestActivityMiui.this.brz != null) {
                PermissionRequestActivityMiui.this.brz.setBackgroundResource(R.drawable.radio_button_checked);
            }
            if (PermissionRequestActivityMiui.this.brB != null) {
                PermissionRequestActivityMiui.this.brB.setBackgroundResource(R.drawable.selector_radio);
            }
            if (PermissionRequestActivityMiui.this.brC != null) {
                PermissionRequestActivityMiui.this.brC.setText(R.string.request_dialog_remember_within_today);
            }
            PermissionRequestActivityMiui.this.brL = 2;
        }
    };
    private View.OnClickListener brO = new View.OnClickListener() { // from class: com.kingroot.kinguser.view.PermissionRequestActivityMiui.3
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PermissionRequestActivityMiui.this.brx != null) {
                PermissionRequestActivityMiui.this.brx.setBackgroundResource(R.drawable.selector_radio);
            }
            if (PermissionRequestActivityMiui.this.brz != null) {
                PermissionRequestActivityMiui.this.brz.setBackgroundResource(R.drawable.selector_radio);
            }
            if (PermissionRequestActivityMiui.this.brB != null) {
                PermissionRequestActivityMiui.this.brB.setBackgroundResource(R.drawable.radio_button_checked);
            }
            if (PermissionRequestActivityMiui.this.brC != null) {
                PermissionRequestActivityMiui.this.brC.setText(R.string.request_dialog_remember_permanently);
            }
            PermissionRequestActivityMiui.this.brL = 0;
        }
    };

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null) {
            this.brr = (SuRequestCmdModel) intent.getParcelableExtra("REQ_MODEL");
        }
        setContentView(R.layout.dialog_su_request);
        this.brt = (Button) findViewById(R.id.button_left);
        this.brs = (Button) findViewById(R.id.button_right);
        this.brt.setTextColor(C3953zi.m1311pr().getColor(R.color.dialog_normal_btn_text));
        this.brt.setText(C3953zi.m1311pr().getString(R.string.request_dialog_deny_button));
        this.brs.setTextColor(C3953zi.m1311pr().getColor(R.color.dialog_highlight_btn_text));
        this.brs.setText(C3953zi.m1311pr().getString(R.string.request_dialog_allow_button));
        this.bay = aks.m11143BP();
        TextView textView = (TextView) findViewById(R.id.secondary_title);
        textView.setVisibility(0);
        textView.setText(C3953zi.m1311pr().getString(R.string.request_dialog_is_requesting_root));
        this.brD = (TextView) findViewById(R.id.title);
        this.brE = (TextView) findViewById(R.id.item_suggestion);
        this.brF = (TextView) findViewById(R.id.use_desc);
        this.ahP = (ImageView) findViewById(R.id.title_icon);
        this.bru = findViewById(R.id.choice_trigger);
        this.brv = findViewById(R.id.choice_panel);
        this.brw = findViewById(R.id.choice_15_minutes);
        this.brx = (Button) findViewById(R.id.choice_15_minutes_btn);
        this.bry = findViewById(R.id.choice_today);
        this.brz = (Button) findViewById(R.id.choice_today_btn);
        this.brA = findViewById(R.id.choice_permanent);
        this.brB = (Button) findViewById(R.id.choice_permanent_btn);
        this.brC = (TextView) findViewById(R.id.label_remember_choice);
        this.brJ = (TextView) findViewById(R.id.risk_tip);
        this.brw.setOnClickListener(this.brM);
        this.brx.setOnClickListener(this.brM);
        this.bry.setOnClickListener(this.brN);
        this.brz.setOnClickListener(this.brN);
        this.brA.setOnClickListener(this.brO);
        this.brB.setOnClickListener(this.brO);
        this.bru.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.view.PermissionRequestActivityMiui.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (8 == PermissionRequestActivityMiui.this.brv.getVisibility()) {
                    PermissionRequestActivityMiui.this.brv.setVisibility(0);
                    Drawable m1824iT = PermissionRequestActivityMiui.this.m1824iT(R.drawable.up_arrow);
                    int dimension = (int) PermissionRequestActivityMiui.this.getDimension(R.dimen.request_dialog_arrow_bound);
                    m1824iT.setBounds(0, 0, dimension, dimension);
                    PermissionRequestActivityMiui.this.brC.setCompoundDrawables(m1824iT, null, null, null);
                    if (PermissionRequestActivityMiui.this.apa != null) {
                        PermissionRequestActivityMiui.this.apa.pause();
                    }
                } else {
                    PermissionRequestActivityMiui.this.brv.setVisibility(8);
                    Drawable m1824iT2 = PermissionRequestActivityMiui.this.m1824iT(R.drawable.arrow_down);
                    int dimension2 = (int) PermissionRequestActivityMiui.this.getDimension(R.dimen.request_dialog_arrow_bound);
                    m1824iT2.setBounds(0, 0, dimension2, dimension2);
                    PermissionRequestActivityMiui.this.brC.setCompoundDrawables(m1824iT2, null, null, null);
                    if (PermissionRequestActivityMiui.this.apa != null) {
                        PermissionRequestActivityMiui.this.apa.resume();
                    }
                }
                ady.m12308tK().mo1746bi(100153);
            }
        });
        Drawable drawable = C3953zi.m1311pr().getDrawable(R.drawable.icon_risk_warning);
        if (drawable != null) {
            int dimension = (int) C3953zi.m1311pr().getDimension(R.dimen.risk_icon_bound_width_2);
            drawable.setBounds(0, 0, dimension, dimension);
        }
        this.brJ.setCompoundDrawables(drawable, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: iT */
    public Drawable m1824iT(int i) {
        return getResources().getDrawable(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDimension(int i) {
        return getResources().getDimension(i);
    }

    @Override // android.app.Activity
    protected void onStop() {
        m1842TT();
        C3956zk.m1301dw("wk_su");
        if (!this.brH) {
            if (this.bay.m11140BS() == 1) {
                acL();
            } else {
                acM();
            }
        }
        this.brr = null;
        bbt.m7780WG().setSuRequestPromptLive(false);
        bbt.m7780WG().triggerSuRequestPrompt();
        finish();
        super.onStop();
        MainExitReceiver.m13404jF();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        long m11141BR;
        Drawable drawable;
        super.onAttachedToWindow();
        if (this.brr == null) {
            finish();
            return;
        }
        this.mAppName = this.brr.mAppName;
        ady.m12308tK().mo1746bi(100033);
        this.brH = false;
        this.brI = false;
        bbt.m7780WG().setSuRequestPromptLive(true);
        if (auw.m8886jn(this.brr.adZ) == 5) {
            this.brK = 0;
            m11141BR = 10000;
        } else if (avu.m8746hj(this.brr.riskType)) {
            this.brK = 0;
            m11141BR = 1000 * this.bay.m11141BR();
        } else {
            this.brK = this.bay.m11140BS();
            m11141BR = 1000 * this.bay.m11141BR();
        }
        C3956zk.m1303a(m11141BR, 805306378, "wk_su", false);
        this.brE.setVisibility(8);
        if (this.brr.aRr == 0) {
            if (this.brr.aRv == -1 || this.brr.aRw == -1 || this.brr.aRx == -1) {
                new aux(KUApplication.m13453ge()).m8885a(this.brr.adZ, this);
            } else {
                m1823iU((int) ((this.brr.aRv * 100) / ((this.brr.aRv + this.brr.aRw) + this.brr.aRx)));
            }
        }
        if (this.brr.aRm == 2000) {
            this.mAppName = getString(R.string.root_authorization_console_name);
        } else if (this.brr.aRm < 10000) {
            this.mAppName = getString(R.string.root_authorization_system_name);
        }
        try {
            drawable = C3952zh.m1312pq().getApplicationIcon(this.brr.adZ);
        } catch (PackageManager.NameNotFoundException e) {
            drawable = null;
        }
        if (drawable != null) {
            this.ahP.setImageDrawable(drawable);
        } else {
            this.ahP.setImageResource(R.drawable.default_dialog_app);
        }
        this.brD.setText(this.mAppName);
        if (avu.m8746hj(this.brr.riskType)) {
            this.brJ.setVisibility(0);
            this.brJ.setText(C3953zi.m1311pr().getString(R.string.root_authorization_risk_app_description_format, this.brr.aRu));
        } else {
            this.brJ.setVisibility(8);
        }
        avn avnVar = avm.m8816RK().m8815RL().get(this.brr.adZ);
        if (avnVar == null) {
            this.brF.setText(Html.fromHtml(m1834bV(null)));
        } else {
            this.brF.setText(Html.fromHtml(m1834bV(avnVar.aTQ)));
        }
        this.brv.setVisibility(8);
        this.brx.setBackgroundResource(R.drawable.selector_radio);
        this.brz.setBackgroundResource(R.drawable.selector_radio);
        this.brB.setBackgroundResource(R.drawable.radio_button_checked);
        this.brC.setText(R.string.request_dialog_remember_permanently);
        Drawable m1824iT = m1824iT(R.drawable.arrow_down);
        int dimension = (int) getDimension(R.dimen.request_dialog_arrow_bound);
        m1824iT.setBounds(0, 0, dimension, dimension);
        this.brC.setCompoundDrawables(m1824iT, null, null, null);
        this.brL = 0;
        if (this.brr.aRr == 1) {
            this.bru.setVisibility(8);
        }
        this.brs.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.view.PermissionRequestActivityMiui.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PermissionRequestActivityMiui.this.m1842TT();
                PermissionRequestActivityMiui.this.brI = true;
                PermissionRequestActivityMiui.this.acL();
                PermissionRequestActivityMiui.this.finish();
                bfm.aah().mo7270ai(3, 1);
            }
        });
        this.brt.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.view.PermissionRequestActivityMiui.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PermissionRequestActivityMiui.this.m1842TT();
                PermissionRequestActivityMiui.this.brI = true;
                PermissionRequestActivityMiui.this.acM();
                PermissionRequestActivityMiui.this.finish();
                bfm.aah().mo7270ai(3, 1);
            }
        });
        this.apa = new bgf(m11141BR, 1000L) { // from class: com.kingroot.kinguser.view.PermissionRequestActivityMiui.7
            @Override // com.kingroot.kinguser.bgf
            /* renamed from: g */
            public void mo1819g(long j, int i) {
                if (PermissionRequestActivityMiui.this.brK == 1) {
                    PermissionRequestActivityMiui.this.brs.setText(C3953zi.m1311pr().getString(R.string.root_authorization_dialog_btn_allow) + " (" + Long.toString(j / 1000) + ")");
                    if (j < 6000) {
                        PermissionRequestActivityMiui.this.brs.setTextColor(C3953zi.m1311pr().getColor(R.color.orange_2));
                        return;
                    }
                    return;
                }
                PermissionRequestActivityMiui.this.brt.setText(C3953zi.m1311pr().getString(R.string.root_authorization_dialog_btn_deny) + " (" + Long.toString(j / 1000) + ")");
                if (j < 6000) {
                    PermissionRequestActivityMiui.this.brt.setTextColor(C3953zi.m1311pr().getColor(R.color.orange_2));
                }
            }

            @Override // com.kingroot.kinguser.bgf
            public void onFinish() {
                if (PermissionRequestActivityMiui.this.brK == 1) {
                    PermissionRequestActivityMiui.this.acL();
                } else {
                    PermissionRequestActivityMiui.this.acM();
                }
                PermissionRequestActivityMiui.this.finish();
            }
        };
        this.brG = new CountDownTimer(m11141BR, 100L) { // from class: com.kingroot.kinguser.view.PermissionRequestActivityMiui.8
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                Window window = PermissionRequestActivityMiui.this.getWindow();
                if (window != null) {
                    window.setLayout(bhd.aci(), -2);
                }
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
            }
        };
        this.brG.start();
        if (this.apa != null) {
            this.apa.abz();
        }
        m1841We();
        aeb.m12285tV().m12284tW();
        acp.add(this);
    }

    /* renamed from: We */
    private void m1841We() {
        aih.m11645xI().m11644xJ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void acL() {
        long j;
        int i;
        int i2 = 3;
        if (this.brr != null) {
            this.bay.m11091Cp();
            ady.m12308tK().mo1746bi(100034);
            this.brH = true;
            if (this.brI) {
                switch (this.brL) {
                    case 0:
                        i = 3;
                        j = 0;
                        break;
                    case 1:
                        j = 900;
                        i = 1;
                        break;
                    case 2:
                        j = 86400;
                        i = 2;
                        break;
                    default:
                        i = 3;
                        j = 0;
                        break;
                }
                bbt.m7780WG().addAllowRule(this.mAppName, this.brr.adZ, j);
                i2 = i;
            } else {
                bbt.m7780WG().addAskRule(this.mAppName, this.brr.adZ, 0L);
            }
            bbt.m7780WG().doActionForCallingUid(this.brr.aRm, 0, true);
            bbt.m7780WG().rootMgrToast(C3953zi.m1311pr().getString(R.string.version_update_auto_allow_prompt) + " " + this.mAppName + " " + C3953zi.m1311pr().getString(R.string.root_authorization_suffix_toast_permission), this.brr.adZ);
            bbo.m7795Wv().addLog(new RootMgrLogInfo(0L, System.currentTimeMillis(), this.brr.adZ, this.mAppName, 100, 2));
            ady.m12325b(this.brr.adZ, i2, 0, this.brI ? false : true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void acM() {
        int i;
        long j;
        int i2;
        if (this.brr != null) {
            this.bay.m11091Cp();
            this.brH = true;
            if (this.brI) {
                switch (this.brL) {
                    case 0:
                        j = 0;
                        i2 = 3;
                        break;
                    case 1:
                        j = 900;
                        i2 = 1;
                        break;
                    case 2:
                        j = 86400;
                        i2 = 2;
                        break;
                    default:
                        j = 0;
                        i2 = 3;
                        break;
                }
                bbt.m7780WG().addDenyRule(this.mAppName, this.brr.adZ, j);
                i = i2;
            } else {
                bbt.m7780WG().addAskRule(this.mAppName, this.brr.adZ, 0L);
                i = 3;
            }
            bbt.m7780WG().doActionForCallingUid(this.brr.aRm, 1, true);
            bbt.m7780WG().rootMgrToast(C3953zi.m1311pr().getString(R.string.version_update_auto_deny_prompt) + " " + this.mAppName + " " + C3953zi.m1311pr().getString(R.string.root_authorization_suffix_toast_permission), this.brr.adZ);
            bbo.m7795Wv().addLog(new RootMgrLogInfo(0L, System.currentTimeMillis(), this.brr.adZ, this.mAppName, 100, 3));
            ady.m12325b(this.brr.adZ, i, 1, !this.brI);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    /* renamed from: iU */
    public void m1823iU(int i) {
        String format = String.format(C3953zi.m1311pr().getString(R.string.root_authorization_suggestion), Integer.valueOf(i));
        this.brE.setVisibility(0);
        this.brE.setText(format);
    }

    @Override // com.kingroot.kinguser.aux.InterfaceC1673a
    /* renamed from: a */
    public void mo1837a(String str, boolean z, final int i) {
        SuRequestCmdModel suRequestCmdModel = this.brr;
        if (suRequestCmdModel != null && !isFinishing() && z && suRequestCmdModel.adZ.equals(str) && i >= 0 && i <= 100) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.view.PermissionRequestActivityMiui.9
                @Override // java.lang.Runnable
                public void run() {
                    PermissionRequestActivityMiui.this.m1823iU(i);
                }
            });
        }
        avv.m8742Sj().m8736di(true);
        avm.m8816RK().m8811RP();
    }

    /* renamed from: bV */
    private String m1834bV(List<String> list) {
        return (list == null || list.size() == 0) ? C3953zi.m1311pr().getString(R.string.request_dialog_default_use) : avn.m8803f(list, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TT */
    public void m1842TT() {
        if (this.apa != null) {
            this.apa.cancel();
            this.apa = null;
        }
        if (this.brG != null) {
            this.brG.cancel();
            this.brG = null;
        }
    }
}
