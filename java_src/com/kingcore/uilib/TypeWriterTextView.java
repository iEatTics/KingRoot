package com.kingcore.uilib;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes.dex */
public class TypeWriterTextView extends TextView {

    /* renamed from: Dx */
    private long f723Dx;

    /* renamed from: Dy */
    private Runnable f724Dy;
    private Handler mHandler;
    private int mIndex;
    private CharSequence mText;

    /* renamed from: a */
    static /* synthetic */ int m13487a(TypeWriterTextView typeWriterTextView) {
        int i = typeWriterTextView.mIndex;
        typeWriterTextView.mIndex = i + 1;
        return i;
    }

    public TypeWriterTextView(Context context) {
        super(context);
        this.f723Dx = 25L;
        this.mHandler = new Handler();
        this.f724Dy = new Runnable() { // from class: com.kingcore.uilib.TypeWriterTextView.1
            @Override // java.lang.Runnable
            public void run() {
                TypeWriterTextView.this.setText(TypeWriterTextView.this.mText.subSequence(0, TypeWriterTextView.m13487a(TypeWriterTextView.this)));
                if (TypeWriterTextView.this.mIndex <= TypeWriterTextView.this.mText.length()) {
                    TypeWriterTextView.this.mHandler.postDelayed(TypeWriterTextView.this.f724Dy, TypeWriterTextView.this.f723Dx);
                }
            }
        };
    }

    public TypeWriterTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f723Dx = 25L;
        this.mHandler = new Handler();
        this.f724Dy = new Runnable() { // from class: com.kingcore.uilib.TypeWriterTextView.1
            @Override // java.lang.Runnable
            public void run() {
                TypeWriterTextView.this.setText(TypeWriterTextView.this.mText.subSequence(0, TypeWriterTextView.m13487a(TypeWriterTextView.this)));
                if (TypeWriterTextView.this.mIndex <= TypeWriterTextView.this.mText.length()) {
                    TypeWriterTextView.this.mHandler.postDelayed(TypeWriterTextView.this.f724Dy, TypeWriterTextView.this.f723Dx);
                }
            }
        };
    }

    /* renamed from: a */
    public void m13486a(CharSequence charSequence) {
        this.mText = charSequence;
        this.mIndex = 0;
        setText("");
        this.mHandler.removeCallbacks(this.f724Dy);
        this.mHandler.postDelayed(this.f724Dy, this.f723Dx);
    }

    public void setCharacterDelay(long j) {
        this.f723Dx = j;
    }
}
