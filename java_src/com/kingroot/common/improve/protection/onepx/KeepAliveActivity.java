package com.kingroot.common.improve.protection.onepx;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.view.Window;
import android.view.WindowManager;
import com.tencent.feedback.eup.CrashReport;
/* loaded from: classes.dex */
public class KeepAliveActivity extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent == null) {
            finish();
        } else if (intent.getIntExtra("uid", -1) != Process.myUid()) {
            finish();
        } else {
            try {
                Window window = getWindow();
                window.setGravity(51);
                WindowManager.LayoutParams attributes = window.getAttributes();
                attributes.x = 0;
                attributes.y = 0;
                attributes.height = 1;
                attributes.width = 1;
                window.setAttributes(attributes);
            } catch (Exception e) {
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent == null) {
            finish();
        } else if (intent.getIntExtra("uid", -1) != Process.myUid()) {
            finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            super.onBackPressed();
        } catch (Exception e) {
            if (e instanceof IllegalStateException) {
                CrashReport.handleCatchException(new Thread(), e, e.getMessage(), null);
            }
        }
    }
}
