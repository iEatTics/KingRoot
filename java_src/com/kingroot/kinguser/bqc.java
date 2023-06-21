package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.os.Bundle;
import android.webkit.WebChromeClient;
/* loaded from: classes.dex */
public abstract class bqc extends Dialog {
    protected bps bIk;
    @SuppressLint({"NewApi"})
    protected final WebChromeClient bIl;

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.bIk = new bps();
    }
}
