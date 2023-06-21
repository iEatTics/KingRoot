package com.kingroot.kinguser;

import android.view.KeyEvent;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
/* loaded from: classes.dex */
public class bqx extends InputConnectionWrapper {

    /* renamed from: a */
    public static String f2058a;

    /* renamed from: b */
    public static boolean f2059b = false;

    /* renamed from: c */
    public static boolean f2060c = false;

    public bqx(InputConnection inputConnection, boolean z) {
        super(inputConnection, z);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i) {
        f2060c = true;
        f2058a = charSequence.toString();
        bpy.m5848a("openSDK_LOG.CaptureInputConnection", "-->setComposingText: " + charSequence.toString());
        return super.setComposingText(charSequence, i);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i) {
        f2060c = true;
        f2058a = charSequence.toString();
        bpy.m5848a("openSDK_LOG.CaptureInputConnection", "-->commitText: " + charSequence.toString());
        return super.commitText(charSequence, i);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            bpy.m5845aT("openSDK_LOG.CaptureInputConnection", "sendKeyEvent");
            f2058a = String.valueOf((char) keyEvent.getUnicodeChar());
            f2060c = true;
            bpy.m5846aP("openSDK_LOG.CaptureInputConnection", "s: " + f2058a);
        }
        bpy.m5846aP("openSDK_LOG.CaptureInputConnection", "-->sendKeyEvent: " + f2058a);
        return super.sendKeyEvent(keyEvent);
    }
}
