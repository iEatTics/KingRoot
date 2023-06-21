package com.kingroot.kinguser.activitys;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.view.View;
import android.widget.Button;
import com.kingroot.common.framework.main.MainExitReceiver;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.aeb;
import com.kingroot.kinguser.ban;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class RePackageWarningActivity extends Activity {
    private boolean aix = false;
    private Button aiy;
    private Button aiz;

    @Override // android.app.Activity
    protected void onStop() {
        finish();
        super.onStop();
        MainExitReceiver.m13404jF();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_repackage_warning);
        this.aiy = (Button) findViewById(R.id.button_left);
        this.aiy.setText(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
        this.aiz = (Button) findViewById(R.id.button_right);
        this.aiz.setText(C3953zi.m1311pr().getString(R.string.repackage_update_now));
        this.aiy.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.activitys.RePackageWarningActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RePackageWarningActivity.this.aix = false;
                RePackageWarningActivity.this.finish();
            }
        });
        this.aiz.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.activitys.RePackageWarningActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100139);
                RePackageWarningActivity.this.aix = true;
                RePackageWarningActivity.this.finish();
            }
        });
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m12614vv();
    }

    /* renamed from: vv */
    private void m12614vv() {
        if (this.aix) {
            ban.m7903VE();
        } else {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.HOME");
            intent.setFlags(335544320);
            KUApplication.m13453ge().startActivity(intent);
        }
        aeb.m12285tV().m12286cI(5000);
        Process.killProcess(Process.myPid());
        System.exit(0);
    }
}
