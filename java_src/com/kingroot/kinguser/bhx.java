package com.kingroot.kinguser;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public abstract class bhx {
    private View mContentView = acQ();
    private Context mContext;

    protected abstract View acQ();

    public bhx(Context context) {
        this.mContext = context;
    }

    public View getContentView() {
        return this.mContentView;
    }

    protected Context getContext() {
        return this.mContext;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: aA */
    public View m6952aA(int i) {
        return m6953a(i, null);
    }

    /* renamed from: a */
    protected View m6953a(int i, ViewGroup viewGroup) {
        try {
            return LayoutInflater.from(getContext()).inflate(i, viewGroup);
        } catch (Throwable th) {
            th.printStackTrace();
            return new View(getContext());
        }
    }
}
