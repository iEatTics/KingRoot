package com.kingcore.uilib;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import com.kingroot.kinguser.abg;
/* loaded from: classes.dex */
public class VerticalTextView extends TextView {

    /* renamed from: DB */
    private int f727DB;

    /* renamed from: DC */
    private int f728DC;

    /* renamed from: DD */
    private final Rect f729DD;

    /* renamed from: DE */
    private int f730DE;

    /* renamed from: DF */
    private int f731DF;

    /* renamed from: DG */
    private int f732DG;

    /* renamed from: DH */
    private int f733DH;

    /* renamed from: DI */
    private int f734DI;

    /* renamed from: DJ */
    private int f735DJ;

    /* renamed from: DK */
    private int f736DK;

    /* renamed from: DL */
    private int f737DL;
    private Context mContext;

    public VerticalTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mContext = null;
        this.f729DD = new Rect();
        this.f730DE = 15;
        this.f731DF = 1;
        this.f732DG = 0;
        this.f733DH = 0;
        this.f734DI = 0;
        this.f735DJ = 0;
        this.f736DK = 0;
        this.f737DL = 0;
        this.mContext = context;
        init();
    }

    public VerticalTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = null;
        this.f729DD = new Rect();
        this.f730DE = 15;
        this.f731DF = 1;
        this.f732DG = 0;
        this.f733DH = 0;
        this.f734DI = 0;
        this.f735DJ = 0;
        this.f736DK = 0;
        this.f737DL = 0;
        this.mContext = context;
        init();
    }

    private void init() {
        int m12835r = abg.m12835r(this.f730DE);
        this.f735DJ = m12835r;
        this.f734DI = m12835r;
        this.f733DH = m12835r;
        this.f732DG = m12835r;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(m13479hi(), m13480hh());
    }

    /* renamed from: hh */
    private int m13480hh() {
        String[] textSnippets;
        CharSequence text = getText();
        if (text == null || text.length() == 0) {
            return 0;
        }
        int i = 0;
        for (String str : getTextSnippets()) {
            if (str.length() > i) {
                i = str.length();
            }
        }
        TextPaint paint = getPaint();
        Rect rect = new Rect();
        paint.getTextBounds(text.toString(), 0, text.length(), rect);
        return ((i - 1) * this.f737DL) + (rect.height() * i) + this.f735DJ + this.f734DI + this.f737DL;
    }

    /* renamed from: hi */
    private int m13479hi() {
        CharSequence text = getText();
        if (text == null || text.length() == 0) {
            return 0;
        }
        String[] textSnippets = getTextSnippets();
        TextPaint paint = getPaint();
        Rect rect = new Rect();
        paint.getTextBounds(text.toString(), 0, text.length(), rect);
        return ((textSnippets.length * rect.width()) / text.length()) + this.f732DG + this.f733DH + (this.f736DK * (textSnippets.length - 1));
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        int compoundPaddingRight;
        canvas.save();
        String m13478hj = m13478hj();
        if (m13478hj.length() > 0) {
            TextPaint paint = getPaint();
            paint.setColor(getTextColors().getDefaultColor());
            paint.getTextBounds(m13478hj, 0, m13478hj.length(), this.f729DD);
            int height = this.f729DD.height() * m13478hj.length();
            int width = this.f729DD.width() / m13478hj.length();
            boolean z = true;
            if (this.f731DF == 1) {
                z = true;
            } else if (this.f731DF == 2) {
                z = false;
            }
            String[] textSnippets = getTextSnippets();
            int length = textSnippets.length;
            int i = 0;
            int i2 = 1;
            while (i < length) {
                String str = textSnippets[i];
                for (int i3 = 1; i3 <= str.length(); i3++) {
                    char c = str.toCharArray()[i3 - 1];
                    if (z) {
                        compoundPaddingRight = this.f732DG + getCompoundPaddingRight() + ((this.f736DK + width) * (i2 - 1));
                    } else {
                        compoundPaddingRight = ((this.f727DB - getCompoundPaddingRight()) - (width * i2)) - (this.f736DK * (i2 - 1));
                    }
                    canvas.drawText(String.valueOf(c), compoundPaddingRight, this.f734DI + getCompoundPaddingTop() + this.f729DD.height() + ((this.f729DD.height() + this.f737DL) * (i3 - 1)), paint);
                }
                i++;
                i2++;
            }
            canvas.restore();
        }
    }

    private String[] getTextSnippets() {
        String[] split = m13478hj().split("\n");
        if (split == null) {
            return new String[0];
        }
        return split;
    }

    private int getWordWidth() {
        TextPaint paint = getPaint();
        Rect rect = new Rect();
        paint.getTextBounds(m13478hj(), 0, m13478hj().length(), rect);
        return rect.width() / m13478hj().length();
    }

    private int getWordHeight() {
        TextPaint paint = getPaint();
        Rect rect = new Rect();
        paint.getTextBounds(m13478hj(), 0, m13478hj().length(), rect);
        return rect.height();
    }

    /* renamed from: hj */
    private String m13478hj() {
        return super.getText().toString();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f728DC = i2;
        this.f727DB = i;
        this.f736DK = (int) (getWordWidth() * 0.5d);
        this.f737DL = (int) (getWordHeight() * 0.3d);
    }

    public void setEdgePadding(int i) {
        this.f732DG = i;
        this.f734DI = i;
        this.f733DH = i;
        this.f735DJ = i;
    }

    public void setPaddingLeft(int i) {
        this.f732DG = i;
    }

    public void setPaddingRight(int i) {
        this.f733DH = i;
    }

    public void setPaddingTop(int i) {
        this.f734DI = i;
    }

    public void setPaddingBottom(int i) {
        this.f735DJ = i;
    }

    public void setPaddingBetweenWord(int i) {
        this.f737DL = i;
    }

    public void setPaddingBetweenLine(int i) {
        this.f736DK = i;
    }
}
