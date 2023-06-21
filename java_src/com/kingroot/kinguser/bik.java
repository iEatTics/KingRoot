package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.support.annotation.UiThread;
import android.text.Html;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.aux;
import com.kingroot.kinguser.model.RootMgrLogInfo;
import com.kingroot.kinguser.model.SuRequestCmdModel;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.util.List;
/* loaded from: classes.dex */
public class bik extends bih implements aux.InterfaceC1673a {
    private ImageView ahP;
    private bgf apa;
    private aks bay;
    private Button brB;
    private TextView brC;
    private TextView brD;
    private TextView brE;
    private TextView brF;
    private CountDownTimer brG;
    private boolean brH;
    private boolean brI;
    private TextView brJ;
    private int brK;
    private int brL;
    private View.OnClickListener brM;
    private View.OnClickListener brN;
    private View.OnClickListener brO;
    private SuRequestCmdModel brr;
    private View bru;
    private View brv;
    private Button brx;
    private Button brz;
    private InterfaceC2318a btz;
    private String mAppName;

    /* renamed from: com.kingroot.kinguser.bik$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2318a {
        /* renamed from: vA */
        void mo6883vA();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    /* renamed from: iU */
    public void m6885iU(int i) {
        String format = String.format(getContext().getString(R.string.root_authorization_suggestion), Integer.valueOf(i));
        this.brE.setVisibility(0);
        this.brE.setText(format);
    }

    @Override // com.kingroot.kinguser.aux.InterfaceC1673a
    /* renamed from: a */
    public void mo1837a(String str, boolean z, final int i) {
        SuRequestCmdModel suRequestCmdModel = this.brr;
        if (suRequestCmdModel != null && isShowing() && z && suRequestCmdModel.adZ.equals(str) && i >= 0 && i <= 100) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bik.4
                @Override // java.lang.Runnable
                public void run() {
                    bik.this.m6885iU(i);
                }
            });
        }
        avv.m8742Sj().m8736di(true);
        avm.m8816RK().m8811RP();
    }

    /* renamed from: i */
    public void m6886i(SuRequestCmdModel suRequestCmdModel) {
        this.brr = suRequestCmdModel;
    }

    public bik(Context context, int i) {
        super(context);
        this.brL = 0;
        this.brH = false;
        this.brI = false;
        this.brM = new View.OnClickListener() { // from class: com.kingroot.kinguser.bik.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bik.this.brx != null) {
                    bik.this.brx.setBackgroundResource(R.drawable.radio_button_checked);
                }
                if (bik.this.brz != null) {
                    bik.this.brz.setBackgroundResource(R.drawable.selector_radio);
                }
                if (bik.this.brB != null) {
                    bik.this.brB.setBackgroundResource(R.drawable.selector_radio);
                }
                if (bik.this.brC != null) {
                    bik.this.brC.setText(R.string.request_dialog_remember_in_15_minutes);
                }
                bik.this.brL = 1;
            }
        };
        this.brN = new View.OnClickListener() { // from class: com.kingroot.kinguser.bik.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bik.this.brx != null) {
                    bik.this.brx.setBackgroundResource(R.drawable.selector_radio);
                }
                if (bik.this.brz != null) {
                    bik.this.brz.setBackgroundResource(R.drawable.radio_button_checked);
                }
                if (bik.this.brB != null) {
                    bik.this.brB.setBackgroundResource(R.drawable.selector_radio);
                }
                if (bik.this.brC != null) {
                    bik.this.brC.setText(R.string.request_dialog_remember_within_today);
                }
                bik.this.brL = 2;
            }
        };
        this.brO = new View.OnClickListener() { // from class: com.kingroot.kinguser.bik.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (bik.this.brx != null) {
                    bik.this.brx.setBackgroundResource(R.drawable.selector_radio);
                }
                if (bik.this.brz != null) {
                    bik.this.brz.setBackgroundResource(R.drawable.selector_radio);
                }
                if (bik.this.brB != null) {
                    bik.this.brB.setBackgroundResource(R.drawable.radio_button_checked);
                }
                if (bik.this.brC != null) {
                    bik.this.brC.setText(R.string.request_dialog_remember_permanently);
                }
                bik.this.brL = 0;
            }
        };
    }

    @Override // com.kingroot.kinguser.bih, com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acQ() {
        this.mContentView = this.mLayoutInflater.inflate(R.layout.common_su_request_dialog_content, (ViewGroup) m6926bI(1), false);
        return this.mContentView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bie, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCanceledOnTouchOutside(false);
        this.aci.setTextColor(C3953zi.m1311pr().getColor(R.color.dialog_normal_btn_text));
        this.aci.setText(C3953zi.m1311pr().getString(R.string.request_dialog_deny_button));
        this.acj.setTextColor(C3953zi.m1311pr().getColor(R.color.dialog_highlight_btn_text));
        this.acj.setText(C3953zi.m1311pr().getString(R.string.request_dialog_allow_button));
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
        View findViewById = findViewById(R.id.choice_15_minutes);
        this.brx = (Button) findViewById(R.id.choice_15_minutes_btn);
        View findViewById2 = findViewById(R.id.choice_today);
        this.brz = (Button) findViewById(R.id.choice_today_btn);
        View findViewById3 = findViewById(R.id.choice_permanent);
        this.brB = (Button) findViewById(R.id.choice_permanent_btn);
        this.brC = (TextView) findViewById(R.id.label_remember_choice);
        this.brJ = (TextView) findViewById(R.id.risk_tip);
        findViewById.setOnClickListener(this.brM);
        this.brx.setOnClickListener(this.brM);
        findViewById2.setOnClickListener(this.brN);
        this.brz.setOnClickListener(this.brN);
        findViewById3.setOnClickListener(this.brO);
        this.brB.setOnClickListener(this.brO);
        this.bru.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bik.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (8 == bik.this.brv.getVisibility()) {
                    bik.this.brv.setVisibility(0);
                    Drawable drawable = bik.this.getDrawable(R.drawable.up_arrow);
                    int dimension = (int) bik.this.getDimension(R.dimen.request_dialog_arrow_bound);
                    drawable.setBounds(0, 0, dimension, dimension);
                    bik.this.brC.setCompoundDrawables(drawable, null, null, null);
                    if (bik.this.apa != null) {
                        bik.this.apa.pause();
                    }
                } else {
                    bik.this.brv.setVisibility(8);
                    Drawable drawable2 = bik.this.getDrawable(R.drawable.arrow_down);
                    int dimension2 = (int) bik.this.getDimension(R.dimen.request_dialog_arrow_bound);
                    drawable2.setBounds(0, 0, dimension2, dimension2);
                    bik.this.brC.setCompoundDrawables(drawable2, null, null, null);
                    if (bik.this.apa != null) {
                        bik.this.apa.resume();
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
        acp.add(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable getDrawable(int i) {
        return getContext().getResources().getDrawable(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDimension(int i) {
        return getContext().getResources().getDimension(i);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        if (!this.brH) {
            if (this.brK == 1) {
                acL();
            } else {
                acM();
            }
        }
        this.brr = null;
        bbt.m7780WG().setSuRequestPromptLive(false);
        bbt.m7780WG().triggerSuRequestPrompt();
        dismiss();
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        long m11141BR;
        Drawable drawable;
        super.onAttachedToWindow();
        if (this.brr == null) {
            dismiss();
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
                m6885iU((int) ((this.brr.aRv * 100) / ((this.brr.aRv + this.brr.aRw) + this.brr.aRx)));
            }
        }
        if (this.brr.aRm == 2000) {
            this.mAppName = C3953zi.m1311pr().getString(R.string.root_authorization_console_name);
        } else if (this.brr.aRm < 10000) {
            this.mAppName = C3953zi.m1311pr().getString(R.string.root_authorization_system_name);
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
            this.brF.setText(Html.fromHtml(m6896bV(null)));
        } else {
            this.brF.setText(Html.fromHtml(m6896bV(avnVar.aTQ)));
        }
        this.brv.setVisibility(8);
        this.brx.setBackgroundResource(R.drawable.selector_radio);
        this.brz.setBackgroundResource(R.drawable.selector_radio);
        this.brB.setBackgroundResource(R.drawable.radio_button_checked);
        this.brC.setText(R.string.request_dialog_remember_permanently);
        Drawable drawable2 = getDrawable(R.drawable.arrow_down);
        int dimension = (int) getDimension(R.dimen.request_dialog_arrow_bound);
        drawable2.setBounds(0, 0, dimension, dimension);
        this.brC.setCompoundDrawables(drawable2, null, null, null);
        this.brL = 0;
        if (this.brr.aRr == 1) {
            this.bru.setVisibility(8);
        }
        this.acj.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bik.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                bik.this.m6904TT();
                bik.this.brI = true;
                bik.this.acL();
                bik.this.dismiss();
                bfm.aah().mo7270ai(3, 1);
            }
        });
        this.aci.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bik.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                bik.this.m6904TT();
                bik.this.brI = true;
                bik.this.acM();
                bik.this.dismiss();
                bfm.aah().mo7270ai(3, 1);
            }
        });
        this.apa = new bgf(m11141BR, 1000L) { // from class: com.kingroot.kinguser.bik.8
            @Override // com.kingroot.kinguser.bgf
            /* renamed from: g */
            public void mo1819g(long j, int i) {
                if (bik.this.brK == 1) {
                    bik.this.acj.setText(bik.this.getContext().getString(R.string.root_authorization_dialog_btn_allow) + " (" + Long.toString(j / 1000) + ")");
                    if (j < 6000) {
                        bik.this.acj.setTextColor(C3953zi.m1311pr().getColor(R.color.red_1));
                        return;
                    }
                    return;
                }
                bik.this.aci.setText(bik.this.getContext().getString(R.string.root_authorization_dialog_btn_deny) + " (" + Long.toString(j / 1000) + ")");
                if (j < 6000) {
                    bik.this.aci.setTextColor(C3953zi.m1311pr().getColor(R.color.red_1));
                }
            }

            @Override // com.kingroot.kinguser.bgf
            public void onFinish() {
                if (bik.this.brK == 1) {
                    bik.this.acL();
                } else {
                    bik.this.acM();
                }
                bik.this.dismiss();
            }
        };
        this.brG = new CountDownTimer(m11141BR, 100L) { // from class: com.kingroot.kinguser.bik.9
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
                Window window = bik.this.getWindow();
                if (window != null) {
                    window.setLayout(bhd.aci(), -2);
                }
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
            }
        };
        if (this.brG != null) {
            this.brG.start();
        }
        if (this.apa != null) {
            this.apa.abz();
        }
        m6903We();
        aeb.m12285tV().m12284tW();
        acp.add(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bij, android.app.Dialog
    public void onStop() {
        m6904TT();
        C3956zk.m1301dw("wk_su");
        super.onStop();
    }

    /* renamed from: We */
    private void m6903We() {
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

    @Override // com.kingroot.kinguser.bij, android.app.Dialog
    public void show() {
        if (this.brr != null) {
            try {
                super.show();
            } catch (Exception e) {
            }
        }
    }

    @Override // com.kingroot.kinguser.bij, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (this.btz != null) {
            this.btz.mo6883vA();
        }
        try {
            super.dismiss();
        } catch (Exception e) {
        }
    }

    @Override // com.kingroot.kinguser.bie, android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        switch (i) {
            case 21:
            case 22:
                return super.onKeyDown(i, keyEvent);
            default:
                return true;
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        switch (i) {
            case 21:
            case 22:
                return super.onKeyUp(i, keyEvent);
            default:
                return true;
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        return true;
    }

    /* renamed from: a */
    public void m6902a(InterfaceC2318a interfaceC2318a) {
        this.btz = interfaceC2318a;
    }

    /* renamed from: bV */
    private String m6896bV(List<String> list) {
        return (list == null || list.size() == 0) ? getContext().getString(R.string.request_dialog_default_use) : avn.m8803f(list, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TT */
    public void m6904TT() {
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
