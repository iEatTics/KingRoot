package com.kingroot.kinguser;

import android.content.Context;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
/* loaded from: classes.dex */
public class bql extends bqk {

    /* renamed from: a */
    public static boolean f2030a;
    private KeyEvent bIA;
    private bqx bIB;

    public bql(Context context) {
        super(context);
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int unicodeChar;
        bpy.m5846aP("openSDK_LOG.SecureWebView", "-->dispatchKeyEvent, is device support: " + f2030a);
        if (!f2030a) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyEvent.getAction() == 0) {
            switch (keyEvent.getKeyCode()) {
                case 4:
                    return super.dispatchKeyEvent(keyEvent);
                case 66:
                    return super.dispatchKeyEvent(keyEvent);
                case 67:
                    bqx.f2059b = true;
                    return super.dispatchKeyEvent(keyEvent);
                default:
                    if (keyEvent.getUnicodeChar() == 0) {
                        return super.dispatchKeyEvent(keyEvent);
                    }
                    if (bqw.bIT && (((unicodeChar = keyEvent.getUnicodeChar()) >= 33 && unicodeChar <= 95) || (unicodeChar >= 97 && unicodeChar <= 125))) {
                        this.bIA = new KeyEvent(0, 17);
                        return super.dispatchKeyEvent(this.bIA);
                    }
                    return super.dispatchKeyEvent(keyEvent);
            }
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        int unicodeChar;
        bpy.m5846aP("openSDK_LOG.SecureWebView", "-->onKeyDown, is device support: " + f2030a);
        if (!f2030a) {
            return super.onKeyDown(i, keyEvent);
        }
        if (keyEvent.getAction() == 0) {
            switch (keyEvent.getKeyCode()) {
                case 4:
                    return super.onKeyDown(i, keyEvent);
                case 66:
                    return super.onKeyDown(i, keyEvent);
                case 67:
                    bqx.f2059b = true;
                    return super.onKeyDown(i, keyEvent);
                default:
                    if (keyEvent.getUnicodeChar() == 0) {
                        return super.onKeyDown(i, keyEvent);
                    }
                    if (bqw.bIT && (((unicodeChar = keyEvent.getUnicodeChar()) >= 33 && unicodeChar <= 95) || (unicodeChar >= 97 && unicodeChar <= 125))) {
                        this.bIA = new KeyEvent(0, 17);
                        return super.onKeyDown(this.bIA.getKeyCode(), this.bIA);
                    }
                    return super.onKeyDown(i, keyEvent);
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        bpy.m5845aT("openSDK_LOG.SecureWebView", "-->create input connection, is edit: " + bqw.bIT);
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        bpy.m5848a("openSDK_LOG.SecureWebView", "-->onCreateInputConnection, inputConn is " + onCreateInputConnection);
        if (onCreateInputConnection != null) {
            f2030a = true;
            this.bIB = new bqx(super.onCreateInputConnection(editorInfo), false);
            return this.bIB;
        }
        f2030a = false;
        return onCreateInputConnection;
    }
}
