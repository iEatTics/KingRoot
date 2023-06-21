package com.kingroot.kinguser;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguses.R;
/* renamed from: com.kingroot.kinguser.qd */
/* loaded from: classes.dex */
public class C3454qd {

    /* renamed from: CX */
    private ImageView f3360CX;

    /* renamed from: CY */
    private ImageView f3361CY;

    /* renamed from: CZ */
    private ImageView f3362CZ;

    /* renamed from: Da */
    private ImageView f3363Da;

    /* renamed from: Db */
    private ImageView f3364Db;

    /* renamed from: zv */
    private View f3365zv = m2608gy();

    public View getWholeView() {
        return this.f3365zv;
    }

    /* renamed from: gy */
    public View m2608gy() {
        View inflate = LayoutInflater.from(KApplication.m13453ge()).inflate(R.layout.app_download_star_layout, (ViewGroup) null);
        this.f3360CX = (ImageView) inflate.findViewById(R.id.star0);
        this.f3361CY = (ImageView) inflate.findViewById(R.id.star1);
        this.f3362CZ = (ImageView) inflate.findViewById(R.id.star2);
        this.f3363Da = (ImageView) inflate.findViewById(R.id.star3);
        this.f3364Db = (ImageView) inflate.findViewById(R.id.star4);
        return inflate;
    }

    /* renamed from: r */
    public void m2607r(int i, int i2) {
        int i3;
        int i4;
        float f = i2 != 0 ? i / i2 : -1.0f;
        float f2 = (f < 0.0f || f > 5.0f) ? 4.0f : f;
        int i5 = R.drawable.star_yellow;
        int i6 = R.drawable.star_half;
        int i7 = R.drawable.star_gray;
        if (f2 >= 0.0f && f2 < 1.0f) {
            if (f2 == 0.0f) {
                i6 = R.drawable.star_gray;
            }
            i5 = R.drawable.star_gray;
            i3 = R.drawable.star_gray;
            i4 = i6;
            i6 = R.drawable.star_gray;
        } else if (f2 >= 1.0f && f2 < 2.0f) {
            if (f2 == 1.0f) {
                i6 = R.drawable.star_gray;
            }
            i3 = i6;
            i4 = R.drawable.star_yellow;
            i5 = R.drawable.star_gray;
            i6 = R.drawable.star_gray;
        } else if (f2 >= 2.0f && f2 < 3.0f) {
            if (f2 == 2.0f) {
                i6 = R.drawable.star_gray;
            }
            i3 = R.drawable.star_yellow;
            i4 = R.drawable.star_yellow;
            i5 = R.drawable.star_gray;
        } else if (f2 >= 3.0f && f2 < 4.0f) {
            if (f2 == 3.0f) {
                i6 = R.drawable.star_gray;
            }
            i3 = R.drawable.star_yellow;
            i4 = R.drawable.star_yellow;
            int i8 = i6;
            i6 = R.drawable.star_yellow;
            i5 = i8;
        } else if (f2 < 4.0f || f2 >= 5.0f) {
            i7 = R.drawable.star_yellow;
            i6 = R.drawable.star_yellow;
            i3 = R.drawable.star_yellow;
            i4 = R.drawable.star_yellow;
        } else {
            if (f2 != 4.0f) {
                i7 = R.drawable.star_half;
            }
            i6 = R.drawable.star_yellow;
            i3 = R.drawable.star_yellow;
            i4 = R.drawable.star_yellow;
        }
        this.f3360CX.setImageResource(i4);
        this.f3361CY.setImageResource(i3);
        this.f3362CZ.setImageResource(i6);
        this.f3363Da.setImageResource(i5);
        this.f3364Db.setImageResource(i7);
    }
}
