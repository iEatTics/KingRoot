package com.kingroot.kinguser;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class adi extends ProgressDialog {

    /* renamed from: Dc */
    protected String f1396Dc;
    protected ImageView acx;
    protected TextView acy;
    protected Animation acz;
    private Context mContext;

    public adi(Context context) {
        super(context);
        this.mContext = context;
        this.acz = AnimationUtils.loadAnimation(context, R.anim.progress_rotation_anim);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.ProgressDialog, android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.km_progress_dialog);
        setCanceledOnTouchOutside(false);
        this.acy = (TextView) findViewById(R.id.progress_text);
        this.acx = (ImageView) findViewById(R.id.progress_iv);
    }

    /* renamed from: cp */
    public void m12541cp(int i) {
        this.f1396Dc = C3953zi.m1311pr().getString(i);
    }

    @Override // android.app.Dialog
    public void show() {
        if (!isShowing()) {
            try {
                super.show();
            } catch (Exception e) {
            }
        }
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.acx.setImageResource(R.drawable.common_loading_s);
        this.acx.startAnimation(this.acz);
        if (this.f1396Dc != null) {
            this.acy.setText(this.f1396Dc);
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        if (isShowing()) {
            super.dismiss();
        }
    }
}
