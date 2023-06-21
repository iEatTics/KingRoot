package com.kingroot.kinguser;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class bqk extends WebView {
    public bqk(Context context) {
        super(context);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        WebSettings settings = getSettings();
        if (settings != null) {
            try {
                Method method = settings.getClass().getMethod("removeJavascriptInterface", String.class);
                if (method != null) {
                    method.invoke(this, "searchBoxJavaBridge_");
                }
            } catch (Exception e) {
            }
        }
    }
}
