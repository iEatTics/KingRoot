package com.kingroot.kinguser;

import android.view.View;
/* loaded from: classes.dex */
public class bji<T> {
    private boolean bwQ;
    private T data;
    private View itemView;

    public View adU() {
        return this.itemView;
    }

    /* renamed from: L */
    public void m6729L(View view) {
        this.itemView = view;
    }

    public bji(T t) {
        this.data = t;
    }

    public T getData() {
        return this.data;
    }

    public boolean isChecked() {
        return this.bwQ;
    }

    public void setChecked(boolean z) {
        this.bwQ = z;
    }
}
