package com.kingroot.kinguser.ztool.autostartmgr;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes.dex */
public class KmGradualChangeNumber extends TextView {
    final Runnable bwA;
    private int bwz;
    private boolean mAnimating;
    private int mNumber;

    public KmGradualChangeNumber(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bwA = new Runnable() { // from class: com.kingroot.kinguser.ztool.autostartmgr.KmGradualChangeNumber.1
            @Override // java.lang.Runnable
            public void run() {
                int i = 100;
                KmGradualChangeNumber.this.mAnimating = true;
                int i2 = KmGradualChangeNumber.this.mNumber - KmGradualChangeNumber.this.bwz;
                if (i2 == 0) {
                    KmGradualChangeNumber.this.mAnimating = false;
                    return;
                }
                int abs = Math.abs(i2);
                if (abs <= 100) {
                    i = abs > 10 ? 10 : 1;
                }
                KmGradualChangeNumber kmGradualChangeNumber = KmGradualChangeNumber.this;
                int i3 = KmGradualChangeNumber.this.bwz;
                if (i2 <= 0) {
                    i = -i;
                }
                kmGradualChangeNumber.bwz = i + i3;
                KmGradualChangeNumber.this.setText(String.valueOf(KmGradualChangeNumber.this.bwz));
                KmGradualChangeNumber.this.postDelayed(this, 60L);
            }
        };
    }

    public void setNumber(int i) {
        if (this.mNumber != i) {
            this.mNumber = i;
            if (!this.mAnimating) {
                removeCallbacks(this.bwA);
                postDelayed(this.bwA, 60L);
            }
        }
    }
}
