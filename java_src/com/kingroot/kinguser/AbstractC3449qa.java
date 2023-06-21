package com.kingroot.kinguser;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: com.kingroot.kinguser.qa */
/* loaded from: classes.dex */
public abstract class AbstractC3449qa {
    private Context mContext;

    /* renamed from: zv */
    private View f3347zv = mo2612gy();

    /* renamed from: gy */
    protected abstract View mo2612gy();

    public AbstractC3449qa(Context context) {
        this.mContext = context;
    }

    public View getWholeView() {
        return this.f3347zv;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Context getContext() {
        return this.mContext;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: aA */
    public View m2613aA(int i) {
        return m2614a(i, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public View m2614a(int i, ViewGroup viewGroup) {
        try {
            return LayoutInflater.from(getContext()).inflate(i, viewGroup);
        } catch (Throwable th) {
            th.printStackTrace();
            return new View(getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getString(int i) {
        return getContext().getString(i);
    }
}
