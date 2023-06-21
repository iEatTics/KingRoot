package com.kingroot.common.uilib.template;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.AbstractC3922ym;
/* loaded from: classes.dex */
public abstract class AbsActivity extends Activity {

    /* renamed from: UZ */
    private AbstractC3922ym f1185UZ;

    /* renamed from: Va */
    private SelfKillReceiver f1186Va;
    private volatile Handler mHandler = null;

    /* renamed from: oC */
    public abstract AbstractC3922ym mo1242oC();

    /* renamed from: oB */
    public AbstractC3922ym m13159oB() {
        return this.f1185UZ;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        this.f1185UZ = mo1242oC();
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onCreate(bundle);
                this.f1185UZ.mo1410oF();
                View wholeView = this.f1185UZ.getWholeView();
                if (wholeView != null) {
                    setContentView(wholeView, new LinearLayout.LayoutParams(-1, -1));
                }
            } catch (Throwable th) {
            }
        }
        m13158oD();
    }

    @Override // android.app.Activity
    public void onRestart() {
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onRestart();
            } catch (Throwable th) {
            }
        }
        super.onRestart();
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onStart();
            } catch (Throwable th) {
            }
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onResume();
            } catch (Throwable th) {
            }
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onNewIntent(intent);
            } catch (Throwable th) {
            }
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onPause();
            } catch (Throwable th) {
            }
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onStop() {
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onStop();
            } catch (Throwable th) {
            }
        }
        super.onStop();
    }

    @Override // android.app.Activity
    public void onDestroy() {
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onDestroy();
            } catch (Throwable th) {
            }
        }
        m13157oE();
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onActivityResult(i, i2, intent);
            } catch (Throwable th) {
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f1185UZ != null) {
            try {
                if (this.f1185UZ.onKeyUp(i, keyEvent)) {
                    return true;
                }
            } catch (Throwable th) {
            }
        }
        return super.onKeyUp(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f1185UZ != null) {
            try {
                if (this.f1185UZ.onKeyDown(i, keyEvent)) {
                    return true;
                }
            } catch (Throwable th) {
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public void onUserInteraction() {
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onUserInteraction();
            } catch (Throwable th) {
            }
        }
        super.onUserInteraction();
    }

    @Override // android.app.Activity
    public void onUserLeaveHint() {
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onUserLeaveHint();
            } catch (Throwable th) {
            }
        }
        super.onUserLeaveHint();
    }

    @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        if (this.f1185UZ != null && this.f1185UZ.f4016Vh != null) {
            intent.putExtra("Title", this.f1185UZ.f4016Vh.getTitle());
        } else {
            intent.putExtra("Title", "");
        }
        try {
            super.startActivity(intent);
        } catch (Throwable th) {
        }
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i) {
        if (this.f1185UZ != null && this.f1185UZ.f4016Vh != null) {
            intent.putExtra("Title", this.f1185UZ.f4016Vh.getTitle());
        } else {
            intent.putExtra("Title", "");
        }
        try {
            super.startActivityForResult(intent, i);
        } catch (Throwable th) {
        }
    }

    @Override // android.app.Activity
    public void finish() {
        try {
            super.finish();
        } catch (Throwable th) {
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper
    protected void onApplyThemeResource(Resources.Theme theme, int i, boolean z) {
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onApplyThemeResource(theme, i, z);
            } catch (Throwable th) {
            }
        }
        super.onApplyThemeResource(theme, i, z);
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onSaveInstanceState(bundle);
            } catch (Throwable th) {
            }
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onPostCreate(bundle);
            } catch (Throwable th) {
            }
        }
        super.onPostCreate(bundle);
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onPostResume();
            } catch (Throwable th) {
            }
        }
        super.onPostResume();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        boolean z = false;
        if (this.f1185UZ != null) {
            try {
                z = this.f1185UZ.onBackPressed();
            } catch (Throwable th) {
            }
        }
        if (!z) {
            try {
                super.onBackPressed();
            } catch (Throwable th2) {
            }
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        if (this.f1185UZ == null || !this.f1185UZ.onKeyLongPress(i, keyEvent)) {
            return super.onKeyLongPress(i, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        if (this.f1185UZ == null || !this.f1185UZ.onKeyMultiple(i, i2, keyEvent)) {
            return super.onKeyMultiple(i, i2, keyEvent);
        }
        return true;
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f1185UZ == null || !this.f1185UZ.onTouchEvent(motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        if (this.f1185UZ != null) {
            try {
                this.f1185UZ.onLowMemory();
            } catch (Throwable th) {
            }
        }
        super.onLowMemory();
    }

    /* loaded from: classes.dex */
    public class SelfKillReceiver extends BroadcastReceiver {
        protected SelfKillReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("action_self_kill".equals(intent.getAction())) {
                AbsActivity.this.finish();
            }
        }
    }

    /* renamed from: oD */
    private void m13158oD() {
        try {
            this.f1186Va = new SelfKillReceiver();
            registerReceiver(this.f1186Va, new IntentFilter("action_self_kill"));
        } catch (Throwable th) {
            if (KApplication.m13437ih()) {
                th.printStackTrace();
            }
        }
    }

    /* renamed from: oE */
    private void m13157oE() {
        unregisterReceiver(this.f1186Va);
    }
}
