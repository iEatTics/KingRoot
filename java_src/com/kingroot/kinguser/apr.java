package com.kingroot.kinguser;

import android.view.MotionEvent;
/* loaded from: classes.dex */
public class apr {
    private apq aJr;
    private float aJs;
    private float aJt;
    private float aJu;
    private float aJv;
    private float aJw;
    private float aJx;

    public apr(apq apqVar) {
        this.aJr = apqVar;
    }

    public void onTouchEvent(MotionEvent motionEvent) {
        switch (motionEvent.getActionMasked()) {
            case 2:
                if (motionEvent.getPointerCount() > 1) {
                    this.aJt = m9755e(motionEvent);
                    double degrees = Math.toDegrees(Math.atan(this.aJt)) - Math.toDegrees(Math.atan(this.aJs));
                    if (Math.abs(degrees) <= 120.0d) {
                        this.aJr.mo3933a((float) degrees, (this.aJw + this.aJu) / 2.0f, (this.aJx + this.aJv) / 2.0f);
                    }
                    this.aJs = this.aJt;
                    return;
                }
                return;
            case 3:
            case 4:
            default:
                return;
            case 5:
            case 6:
                if (motionEvent.getPointerCount() == 2) {
                    this.aJs = m9755e(motionEvent);
                    return;
                }
                return;
        }
    }

    /* renamed from: e */
    private float m9755e(MotionEvent motionEvent) {
        this.aJu = motionEvent.getX(0);
        this.aJv = motionEvent.getY(0);
        this.aJw = motionEvent.getX(1);
        this.aJx = motionEvent.getY(1);
        return (this.aJx - this.aJv) / (this.aJw - this.aJu);
    }
}
