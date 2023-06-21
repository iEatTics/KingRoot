package com.kingroot.kinguser;

import android.app.Dialog;
import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.StyleRes;
import com.kingroot.kinguser.activitys.KUBaseActivity;
/* loaded from: classes.dex */
public class bij extends Dialog {
    private final Context bty;

    public bij(@NonNull Context context, @StyleRes int i) {
        super(context, i);
        this.bty = context;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onStop() {
        if (this.bty instanceof KUBaseActivity) {
            ((KUBaseActivity) this.bty).m12618b(this);
            super.onStop();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Dialog
    public void onStart() {
        super.onStart();
        if (this.bty instanceof KUBaseActivity) {
            ((KUBaseActivity) this.bty).m12619a(this);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            if (!isShowing()) {
                super.show();
            }
        } catch (Exception e) {
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            if (isShowing()) {
                super.dismiss();
            }
        } catch (Exception e) {
        }
    }

    public Context acW() {
        return this.bty;
    }
}
