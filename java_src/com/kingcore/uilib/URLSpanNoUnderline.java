package com.kingcore.uilib;

import android.text.TextPaint;
import android.text.style.URLSpan;
/* loaded from: classes.dex */
public class URLSpanNoUnderline extends URLSpan {

    /* renamed from: DA */
    private boolean f726DA;
    private int mColor;

    @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        super.updateDrawState(textPaint);
        textPaint.setUnderlineText(false);
        if (this.f726DA) {
            textPaint.setColor(this.mColor);
        }
    }
}
