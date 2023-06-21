package com.kingroot.kinguser;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public abstract class anw implements View.OnClickListener {
    private final View.OnTouchListener aEA = new View.OnTouchListener() { // from class: com.kingroot.kinguser.anw.1
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                anw.this.aEz.mo10007Jy();
                return false;
            }
            return false;
        }
    };
    protected aoa aEz;
    protected View mView;

    /* JADX INFO: Access modifiers changed from: protected */
    public anw(View view, aoa aoaVar) {
        this.mView = view;
        this.aEz = aoaVar;
        m10031t(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: cD */
    public void m10032cD(boolean z) {
        this.mView.setVisibility(z ? 0 : 8);
    }

    /* renamed from: t */
    private void m10031t(View view) {
        if (view instanceof ViewGroup) {
            view.setOnTouchListener(this.aEA);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < ((ViewGroup) view).getChildCount()) {
                    m10031t(((ViewGroup) view).getChildAt(i2));
                    i = i2 + 1;
                } else {
                    return;
                }
            }
        }
    }
}
