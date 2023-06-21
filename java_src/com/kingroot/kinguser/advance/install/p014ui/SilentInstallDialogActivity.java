package com.kingroot.kinguser.advance.install.p014ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.C3956zk;
import com.kingroot.kinguser.advance.install.aidl.CheckResult;
import com.kingroot.kinguser.advance.install.aidl.SilentInstallRequest;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.agy;
import com.kingroot.kinguser.ahc;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bgf;
import com.kingroot.kinguser.bgh;
import com.kingroot.kinguses.R;
/* renamed from: com.kingroot.kinguser.advance.install.ui.SilentInstallDialogActivity */
/* loaded from: classes.dex */
public class SilentInstallDialogActivity extends Activity implements View.OnClickListener, CompoundButton.OnCheckedChangeListener {
    private SilentInstallLogInfo aoP;
    private SilentInstallRequest aoQ;
    private ImageView aoR;
    private ImageView aoS;
    private ImageView aoT;
    private TextView aoU;
    private TextView aoV;
    private Button aoW;
    private Button aoX;
    private CheckBox aoY;
    private long mDuration;
    private TextView mTitleView;
    private Context mContext = null;
    private boolean aoZ = false;
    private bgf apa = new bgf(30000, 1000) { // from class: com.kingroot.kinguser.advance.install.ui.SilentInstallDialogActivity.1
        @Override // com.kingroot.kinguser.bgf
        /* renamed from: g */
        public void mo1819g(long j, int i) {
            SilentInstallDialogActivity.this.aoW.setText(SilentInstallDialogActivity.this.mContext.getString(R.string.silent_install_deny) + " (" + Long.toString(j / 1000) + ")");
            if (j < 6000) {
                SilentInstallDialogActivity.this.aoW.setTextColor(C3953zi.m1311pr().getColor(R.color.red_1));
            }
        }

        @Override // com.kingroot.kinguser.bgf
        public void onFinish() {
            SilentInstallDialogActivity.this.m12416c(false, true);
            SilentInstallDialogActivity.this.finish();
        }
    };

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mContext = this;
        setContentView(R.layout.dialog_silent_install_choice);
        getWindow().setLayout(-1, -2);
        this.mTitleView = (TextView) findViewById(R.id.title);
        this.aoR = (ImageView) findViewById(R.id.title_icon);
        this.aoS = (ImageView) findViewById(R.id.caller_icon);
        this.aoT = (ImageView) findViewById(R.id.installer_icon);
        this.aoU = (TextView) findViewById(R.id.caller_name);
        this.aoV = (TextView) findViewById(R.id.installer_name);
        this.aoW = (Button) findViewById(R.id.button_left);
        this.aoY = (CheckBox) findViewById(R.id.checkbox_remember);
        this.aoX = (Button) findViewById(R.id.button_right);
        if (!m12414h(getIntent())) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        m12416c(false, true);
        setIntent(intent);
        if (!m12414h(getIntent())) {
            finish();
        }
    }

    /* renamed from: h */
    private boolean m12414h(Intent intent) {
        this.aoQ = null;
        this.aoP = null;
        this.aoZ = false;
        this.apa.m7117iH(0);
        if (intent != null) {
            this.aoQ = (SilentInstallRequest) intent.getParcelableExtra(SilentInstallRequest.KEY);
            this.aoP = (SilentInstallLogInfo) intent.getParcelableExtra("silent_install_log_info");
        }
        return (this.aoQ == null || this.aoP == null) ? false : true;
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        C3956zk.m1303a(30000L, 805306378, "silent_install_alert", false);
        ady.m12308tK().mo1746bi(100506);
        this.aoY.setChecked(false);
        this.aoY.setOnCheckedChangeListener(this);
        this.aoW.setText(R.string.silent_install_deny);
        this.aoX.setText(R.string.silent_install_allow);
        this.aoW.setOnClickListener(this);
        this.aoX.setOnClickListener(this);
        m12413wH();
        this.apa.abz();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.apa.cancel();
    }

    @Override // android.app.Activity
    protected void onStop() {
        C3956zk.m1301dw("silent_install_alert");
        m12416c(false, true);
        finish();
        super.onStop();
    }

    /* renamed from: wH */
    private void m12413wH() {
        this.mTitleView.setText(R.string.silent_install_dialog_title);
        this.aoR.setImageResource(R.drawable.silent_install_title_icon);
        if (this.aoP != null) {
            if (this.aoP.anE.equals("unknown")) {
                this.aoS.setImageResource(R.drawable.unknown_app);
                this.aoU.setText(R.string.silent_install_unknown_app);
            } else if (this.aoP.anE.equals("com.android.shell")) {
                this.aoS.setImageResource(R.drawable.usb_icon);
                this.aoU.setText(R.string.silent_install_dialog_usb_installer);
            } else {
                try {
                    this.aoS.setImageDrawable(C3952zh.m1312pq().getApplicationIcon(this.aoP.anE));
                    this.aoU.setText(bgh.m7115jf(this.aoP.anE));
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
            if (TextUtils.isEmpty(this.aoP.anH)) {
                this.aoT.setImageResource(R.drawable.unknown_app);
                this.aoV.setText(R.string.silent_install_unknown_app);
                return;
            }
            Drawable m12415fM = m12415fM(this.aoP.apL);
            if (m12415fM != null) {
                this.aoT.setImageDrawable(m12415fM);
            } else {
                this.aoT.setImageResource(R.drawable.unknown_app);
            }
            this.aoV.setText(this.aoP.apK);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        boolean z = view.getId() == R.id.button_right;
        if (z) {
            ady.m12308tK().mo1746bi(100507);
        } else {
            ady.m12308tK().mo1746bi(100508);
        }
        m12416c(z, false);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m12416c(boolean z, boolean z2) {
        if (!this.aoZ) {
            this.aoZ = true;
            if (z2 && !z) {
                ady.m12308tK().mo1746bi(100509);
            }
            if (this.aoP != null) {
                this.aoP.mState = z ? 1 : 0;
                agy.m11867wk().m11876a(this.aoP);
            }
            if (this.mDuration > 0) {
                agy.m11867wk().m11870d(this.aoP.anE, this.aoP.mState, this.mDuration);
            }
            m12418aH(z);
        }
    }

    /* renamed from: aH */
    private void m12418aH(boolean z) {
        try {
            this.aoQ.m12443a(new CheckResult(z ? 2 : 1));
            if (this.aoP != null) {
                final ahc m11836d = ahc.m11836d(this.aoP);
                beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.ui.SilentInstallDialogActivity.2
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        ady.m12308tK().m12331a(m11836d);
                    }
                }));
            }
        } catch (RemoteException e) {
            if (this.aoP != null) {
                final ahc m11836d2 = ahc.m11836d(this.aoP);
                beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.ui.SilentInstallDialogActivity.2
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        ady.m12308tK().m12331a(m11836d2);
                    }
                }));
            }
        } catch (Throwable th) {
            if (this.aoP != null) {
                final ahc m11836d3 = ahc.m11836d(this.aoP);
                beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.advance.install.ui.SilentInstallDialogActivity.2
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        super.run();
                        ady.m12308tK().m12331a(m11836d3);
                    }
                }));
            }
            throw th;
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (z) {
            ady.m12308tK().mo1746bi(100510);
        }
        this.mDuration = z ? 86400000L : 0L;
    }

    /* renamed from: fM */
    private Drawable m12415fM(String str) {
        PackageInfo packageArchiveInfo = C3952zh.m1312pq().getPackageArchiveInfo(str, 1);
        if (packageArchiveInfo == null || packageArchiveInfo.applicationInfo == null) {
            return null;
        }
        ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
        applicationInfo.sourceDir = str;
        applicationInfo.publicSourceDir = str;
        return C3952zh.m1312pq().getApplicationIcon(applicationInfo);
    }
}
