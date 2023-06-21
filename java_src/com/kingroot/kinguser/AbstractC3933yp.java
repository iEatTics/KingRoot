package com.kingroot.kinguser;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: com.kingroot.kinguser.yp */
/* loaded from: classes.dex */
public abstract class AbstractC3933yp {

    /* renamed from: VC */
    private View f4038VC;

    /* renamed from: VD */
    private ViewGroup f4039VD;
    private Context mContext;
    private String mTitle;

    /* renamed from: oY */
    protected abstract View mo1368oY();

    /* renamed from: oZ */
    protected abstract ViewGroup mo1367oZ();

    /* renamed from: pa */
    protected abstract void mo1366pa();

    public AbstractC3933yp(Context context, String str) {
        try {
            this.mContext = context;
            this.mTitle = str == null ? "" : str;
            this.f4038VC = mo1368oY();
            if (this.f4038VC == null) {
                throw new NullPointerException();
            }
            this.f4039VD = mo1367oZ();
            mo1366pa();
            mo1375oI();
        } catch (Throwable th) {
        }
    }

    /* renamed from: oI */
    protected void mo1375oI() {
    }

    public Context getContext() {
        return this.mContext;
    }

    public String getTitle() {
        return this.mTitle;
    }

    public View getWholeView() {
        return this.f4038VC;
    }

    public ViewGroup getContainer() {
        return this.f4039VD;
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        if (this.f4039VD != null) {
            if (layoutParams == null) {
                this.f4039VD.addView(view);
            } else {
                this.f4039VD.addView(view, layoutParams);
            }
        }
    }

    public LayoutInflater getLayoutInflater() {
        return LayoutInflater.from(this.mContext);
    }
}
