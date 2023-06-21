package com.kingroot.kinguser.gamebox.foreground.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.kingroot.kinguser.abg;
/* loaded from: classes.dex */
public class GameScreenShotImage extends ImageView {
    private GridView aQl;
    private int aQm;

    public GameScreenShotImage(Context context) {
        super(context);
    }

    public GameScreenShotImage(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public GameScreenShotImage(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        if (bitmap != null) {
            m3749P(bitmap.getWidth(), bitmap.getHeight());
        }
    }

    public void setContainer(GridView gridView) {
        this.aQl = gridView;
    }

    public void setShotCountInContainer(int i) {
        this.aQm = i;
    }

    /* renamed from: P */
    private void m3749P(int i, int i2) {
        int m12836qc;
        int i3;
        ViewGroup.LayoutParams layoutParams;
        if (i > 0 && i2 > 0) {
            if (i <= i2) {
                m12836qc = (int) (abg.m12836qc() / 2.5d);
                i3 = (int) (m12836qc * 1.5d);
            } else {
                m12836qc = (int) (abg.m12836qc() / 1.3d);
                i3 = (int) (m12836qc * (i2 / i));
            }
            ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
            if (layoutParams2 == null) {
                layoutParams = new ViewGroup.LayoutParams(m12836qc, i3);
            } else {
                layoutParams2.height = i3;
                layoutParams2.width = m12836qc;
                layoutParams = layoutParams2;
            }
            setLayoutParams(layoutParams);
            if (this.aQl != null) {
                this.aQl.setLayoutParams(new LinearLayout.LayoutParams(m12836qc * this.aQm, -1));
            }
        }
    }
}
