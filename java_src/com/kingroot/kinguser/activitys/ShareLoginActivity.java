package com.kingroot.kinguser.activitys;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.kingcore.uilib.ProgressWhell;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3826wd;
import com.kingroot.kinguser.C3828we;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3954zj;
import com.kingroot.kinguser.abg;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.bwd;
import com.kingroot.kinguser.bwe;
import com.kingroot.kinguser.bwf;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguses.R;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class ShareLoginActivity extends Activity {
    private RelativeLayout aiH;
    private RelativeLayout aiI;
    private LinearLayout aiJ;
    private C3826wd aiK;
    private bwe aiL;
    protected FrameLayout aiM;
    private RelativeLayout aiN;
    private ProgressWhell aiO;
    private int aiP;
    private View.OnClickListener aiQ = new View.OnClickListener() { // from class: com.kingroot.kinguser.activitys.ShareLoginActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (view != ShareLoginActivity.this.aiH) {
                if (view != ShareLoginActivity.this.aiI) {
                    if (view == ShareLoginActivity.this.aiJ) {
                        ShareLoginActivity.this.finish();
                        return;
                    }
                    return;
                }
                ady.m12308tK().mo1746bi(100658);
                ShareLoginActivity.this.m12601a(ShareLoginActivity.this.aiR);
                if (ShareLoginActivity.this.aiM.getVisibility() == 8) {
                    ShareLoginActivity.this.aiM.setVisibility(0);
                    ShareLoginActivity.this.aiN.setVisibility(8);
                    return;
                }
                return;
            }
            ady.m12308tK().mo1746bi(100659);
            if (ShareLoginActivity.this.aiK.isWXAppInstalled()) {
                ShareLoginActivity.this.aiK.m1576nk();
                if (ShareLoginActivity.this.aiM.getVisibility() == 8) {
                    ShareLoginActivity.this.aiM.setVisibility(0);
                    ShareLoginActivity.this.aiN.setVisibility(8);
                    return;
                }
                return;
            }
            final bid bidVar = new bid(ShareLoginActivity.this);
            C3953zi m1311pr = C3953zi.m1311pr();
            bidVar.show();
            bidVar.setCanceledOnTouchOutside(false);
            bidVar.setTitleText(m1311pr.getString(R.string.share_no_wechat_title));
            bidVar.m6933d(m1311pr.getString(R.string.share_no_wechat_content));
            bidVar.m6930lL(m1311pr.getString(R.string.share_install_wechat));
            bidVar.mo6682lK(m1311pr.getString(R.string.dialog_btn_cancel));
            bidVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.activitys.ShareLoginActivity.2.1
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view2) {
                    bidVar.dismiss();
                }
            });
            bidVar.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.kingroot.kinguser.activitys.ShareLoginActivity.2.2
                @Override // android.content.DialogInterface.OnDismissListener
                public void onDismiss(DialogInterface dialogInterface) {
                    if (ShareLoginActivity.this.aie == 1) {
                        ShareLoginActivity.this.finish();
                    }
                }
            });
            bidVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.activitys.ShareLoginActivity.2.3
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view2) {
                    AppDownLoadModel appDownLoadModel = new AppDownLoadModel();
                    appDownLoadModel.pkgName = "com.tencent.mm";
                    AppDetailActivity.m12647a(ShareLoginActivity.this, appDownLoadModel);
                    if (ShareLoginActivity.this.aie == 1) {
                        ShareLoginActivity.this.finish();
                    }
                }
            });
        }
    };
    public bwd aiR = new bwd() { // from class: com.kingroot.kinguser.activitys.ShareLoginActivity.3
        @Override // com.kingroot.kinguser.bwd
        public void onComplete(Object obj) {
            if (obj != null) {
                JSONObject jSONObject = (JSONObject) obj;
                if (jSONObject.length() != 0) {
                    ShareLoginActivity.this.finish();
                    m12593a(jSONObject);
                }
            }
        }

        /* renamed from: a */
        protected void m12593a(JSONObject jSONObject) {
            try {
                C3826wd.f3855Mu.f3861My = jSONObject.getString("openid").trim();
                C3826wd.f3855Mu.f3862Mz = "";
                C3828we.m1572a(KApplication.m13453ge(), true, C3826wd.f3855Mu);
            } catch (Exception e) {
            }
        }

        @Override // com.kingroot.kinguser.bwd
        public void onError(bwf bwfVar) {
            C3828we.m1572a(KApplication.m13453ge(), false, C3826wd.f3855Mu);
        }

        @Override // com.kingroot.kinguser.bwd
        public void onCancel() {
            C3828we.m1572a(KApplication.m13453ge(), false, C3826wd.f3855Mu);
        }
    };
    private C3828we.C3829a aiS = new C3828we.C3829a() { // from class: com.kingroot.kinguser.activitys.ShareLoginActivity.4
        @Override // com.kingroot.kinguser.C3828we.C3829a
        /* renamed from: b */
        public void mo1568b(boolean z, C3826wd.C3827a c3827a) {
            if (z) {
                ShareLoginActivity.this.finish();
            } else {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.activitys.ShareLoginActivity.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (ShareLoginActivity.this.aie == 1) {
                            ShareLoginActivity.this.finish();
                        } else if (ShareLoginActivity.this.aiM.getVisibility() == 0) {
                            ShareLoginActivity.this.aiM.setVisibility(8);
                            ShareLoginActivity.this.aiN.setVisibility(0);
                        }
                    }
                });
            }
        }
    };
    private int aie;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100657);
        try {
            Intent intent = getIntent();
            if (intent != null && intent.getExtras() != null) {
                this.aie = intent.getIntExtra("ShareLoginActivity_from_scene", 0);
                this.aiP = intent.getIntExtra("ShareLoginActivity_login_type", 0);
            }
        } catch (Exception e) {
        }
        requestWindowFeature(1);
        setContentView(R.layout.activity_share_login);
        this.aiN = (RelativeLayout) findViewById(R.id.share_dialog);
        this.aiM = (FrameLayout) findViewById(R.id.loading_layout);
        this.aiO = (ProgressWhell) findViewById(R.id.loading_progress);
        this.aiO.setVisibility(0);
        this.aiO.setBarColor(C3953zi.m1311pr().getColor(R.color.white_1));
        this.aiO.setProgress(0.0f);
        this.aiO.setBarWidth(abg.m12835r(2.0f));
        this.aiO.setCircleRadius(abg.m12835r(20.0f));
        this.aiO.setCallback(new ProgressWhell.InterfaceC0462a() { // from class: com.kingroot.kinguser.activitys.ShareLoginActivity.1
            @Override // com.kingcore.uilib.ProgressWhell.InterfaceC0462a
            /* renamed from: d */
            public void mo6827d(float f) {
                if (f == 0.0f) {
                    ShareLoginActivity.this.aiO.setProgress(1.0f);
                } else if (f == 1.0f) {
                    ShareLoginActivity.this.aiO.setProgress(0.0f);
                }
            }
        });
        this.aiO.m13555gU();
        this.aiH = (RelativeLayout) findViewById(R.id.button_left);
        this.aiI = (RelativeLayout) findViewById(R.id.button_right);
        this.aiJ = (LinearLayout) findViewById(R.id.outside_area);
        this.aiH.setOnClickListener(this.aiQ);
        this.aiI.setOnClickListener(this.aiQ);
        this.aiJ.setOnClickListener(this.aiQ);
        C3828we.m1571a(this.aiS);
        this.aiK = new C3826wd(KApplication.m13453ge());
        this.aiL = bwe.m5337f("100833207", KApplication.m13453ge());
        if (this.aie == 1) {
            this.aiM.setVisibility(0);
            this.aiN.setVisibility(8);
            if (this.aiP == 0) {
                this.aiI.performClick();
            } else {
                this.aiH.performClick();
            }
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        C3828we.m1571a(this.aiS);
        super.onDestroy();
    }

    /* renamed from: aK */
    public static void m12600aK(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, ShareLoginActivity.class);
        context.startActivity(intent);
    }

    /* renamed from: a */
    public static void m12603a(Context context, int i, int i2) {
        Intent intent = new Intent();
        intent.setClass(context, ShareLoginActivity.class);
        intent.putExtra("ShareLoginActivity_from_scene", i);
        intent.putExtra("ShareLoginActivity_login_type", i2);
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 11101 || i == 10102) {
            bwe.m5340b(i, i2, intent, this.aiR);
        }
        if (this.aie == 1) {
            finish();
        } else if (this.aiM.getVisibility() == 0) {
            this.aiM.setVisibility(8);
            this.aiN.setVisibility(0);
        }
        super.onActivityResult(i, i2, intent);
    }

    /* renamed from: a */
    public void m12601a(bwd bwdVar) {
        if (!this.aiL.agl()) {
            this.aiL.m5338c(this, "all", bwdVar);
        } else {
            C3954zj.m1307c(getString(R.string.share_login_no_support_wechat), 0);
        }
    }
}
