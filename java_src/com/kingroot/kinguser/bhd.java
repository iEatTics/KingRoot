package com.kingroot.kinguser;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.TextView;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class bhd {
    private static Paint bpM;

    /* renamed from: a */
    public static float m7061a(TextView textView) {
        if (bpM == null) {
            bpM = new Paint();
        }
        bpM.setTextSize(textView.getTextSize());
        return bpM.measureText(((Object) textView.getText()) + "");
    }

    public static int aci() {
        int i = KUApplication.m13453ge().getResources().getDisplayMetrics().widthPixels;
        if (KUApplication.m13453ge().getResources().getConfiguration().orientation == 2) {
            return (i * 7) / 10;
        }
        return -1;
    }

    /* renamed from: d */
    public static Bitmap m7060d(View view, int i, int i2) {
        view.layout(0, 0, i, i2);
        view.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (measuredWidth <= 0 || measuredHeight <= 0) {
            return null;
        }
        Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        view.draw(new Canvas(createBitmap));
        return createBitmap;
    }
}
