package com.kingroot.common.uilib;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguser.bce;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class MarqueeView extends ViewFlipper {

    /* renamed from: Po */
    private List<? extends CharSequence> f953Po;

    /* renamed from: Pp */
    private boolean f954Pp;

    /* renamed from: Pq */
    private InterfaceC0543a f955Pq;

    /* renamed from: Pr */
    private int f956Pr;

    /* renamed from: Ps */
    private boolean f957Ps;
    private int gravity;

    /* renamed from: hX */
    private int f958hX;
    private Context mContext;
    private int textColor;
    private int textSize;

    /* renamed from: com.kingroot.common.uilib.MarqueeView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0543a {
        /* renamed from: a */
        void m13269a(int i, TextView textView);
    }

    public MarqueeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f954Pp = false;
        this.f958hX = 2000;
        this.f956Pr = 500;
        this.textSize = 11;
        this.textColor = -1;
        this.f957Ps = false;
        this.gravity = 19;
        m13273a(context, attributeSet, 0);
    }

    /* renamed from: a */
    private void m13273a(Context context, AttributeSet attributeSet, int i) {
        this.mContext = context;
        if (this.f953Po == null) {
            this.f953Po = new ArrayList();
        }
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, afs.C0826a.MarqueeViewStyle, i, 0);
        this.f958hX = obtainStyledAttributes.getInteger(0, this.f958hX);
        this.f954Pp = obtainStyledAttributes.hasValue(1);
        this.f957Ps = obtainStyledAttributes.getBoolean(4, false);
        this.f956Pr = obtainStyledAttributes.getInteger(1, this.f956Pr);
        if (obtainStyledAttributes.hasValue(2)) {
            this.textSize = (int) obtainStyledAttributes.getDimension(2, this.textSize);
            this.textSize = bce.m7712A(this.textSize);
        }
        this.textColor = obtainStyledAttributes.getColor(3, this.textColor);
        switch (obtainStyledAttributes.getInt(5, 0)) {
            case 1:
                this.gravity = 17;
                break;
            case 2:
                this.gravity = 21;
                break;
        }
        obtainStyledAttributes.recycle();
        setFlipInterval(this.f958hX);
    }

    /* renamed from: J */
    public void m13274J(List<? extends CharSequence> list) {
        setNotices(list);
        start();
    }

    public boolean start() {
        int i = 0;
        if (this.f953Po == null || this.f953Po.size() == 0) {
            return false;
        }
        removeAllViews();
        m13270nT();
        while (true) {
            final int i2 = i;
            if (i2 >= this.f953Po.size()) {
                break;
            }
            final TextView m13271a = m13271a(this.f953Po.get(i2), i2);
            m13271a.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.common.uilib.MarqueeView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (MarqueeView.this.f955Pq != null) {
                        MarqueeView.this.f955Pq.m13269a(i2, m13271a);
                    }
                }
            });
            addView(m13271a);
            i = i2 + 1;
        }
        if (this.f953Po.size() > 1) {
            startFlipping();
        } else {
            stopFlipping();
        }
        return true;
    }

    /* renamed from: nT */
    private void m13270nT() {
        clearAnimation();
        Animation loadAnimation = AnimationUtils.loadAnimation(this.mContext, R.anim.anim_marquee_in);
        if (this.f954Pp) {
            loadAnimation.setDuration(this.f956Pr);
        }
        setInAnimation(loadAnimation);
        Animation loadAnimation2 = AnimationUtils.loadAnimation(this.mContext, R.anim.anim_marquee_out);
        if (this.f954Pp) {
            loadAnimation2.setDuration(this.f956Pr);
        }
        setOutAnimation(loadAnimation2);
    }

    /* renamed from: a */
    private TextView m13271a(CharSequence charSequence, int i) {
        TextView textView = new TextView(this.mContext);
        textView.setGravity(this.gravity);
        textView.setText(charSequence);
        textView.setTextColor(this.textColor);
        textView.setTextSize(this.textSize);
        textView.setSingleLine(this.f957Ps);
        textView.setTag(Integer.valueOf(i));
        return textView;
    }

    public void setNotices(List<? extends CharSequence> list) {
        this.f953Po = list;
    }

    public void setOnItemClickListener(InterfaceC0543a interfaceC0543a) {
        this.f955Pq = interfaceC0543a;
    }
}
