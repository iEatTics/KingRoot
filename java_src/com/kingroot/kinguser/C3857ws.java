package com.kingroot.kinguser;

import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.view.View;
import com.kingroot.common.uilib.ShadowProperty;
import com.kingroot.kinguses.R;
/* renamed from: com.kingroot.kinguser.ws */
/* loaded from: classes.dex */
public final class C3857ws {

    /* renamed from: NK */
    public static final int f3909NK = (int) C3953zi.m1311pr().getDimension(R.dimen.common_card_shadow_radius);

    /* renamed from: NL */
    public static final int f3910NL = (int) C3953zi.m1311pr().getDimension(R.dimen.corner_radius);

    /* renamed from: NM */
    private static final int f3911NM = bgi.getColor(153, R.color.white_3);

    /* renamed from: NN */
    private static final int f3912NN = bgi.getColor(R.color.card_view_stroke);

    /* renamed from: NP */
    private static final int f3913NP = (int) C3953zi.m1311pr().getDimension(R.dimen.common_card_stroke_width);

    /* renamed from: g */
    public static void m1498g(@NonNull View view) {
        m1500a(view, 2, true);
    }

    /* renamed from: h */
    public static void m1497h(@NonNull View view) {
        m1500a(view, 2, false);
    }

    /* renamed from: a */
    public static void m1502a(@NonNull View view, int i) {
        m1500a(view, i, false);
    }

    /* renamed from: a */
    public static void m1500a(@NonNull View view, int i, boolean z) {
        if (z) {
            switch (i) {
                case 0:
                    C3867wx.m1488a(view, C3906xy.m1431ox().getDrawable(R.drawable.shadow_blue));
                    return;
                case 1:
                    C3867wx.m1488a(view, C3906xy.m1431ox().getDrawable(R.drawable.shadow_red));
                    return;
                case 2:
                    C3867wx.m1488a(view, C3906xy.m1431ox().getDrawable(R.drawable.shadow));
                    return;
                case 3:
                    C3867wx.m1488a(view, C3906xy.m1431ox().getDrawable(R.drawable.shadow_green));
                    return;
                case 4:
                    C3867wx.m1488a(view, C3906xy.m1431ox().getDrawable(R.drawable.shadow_black));
                    return;
                default:
                    return;
            }
        }
        switch (i) {
            case 0:
                view.setBackgroundResource(R.drawable.shadow_blue);
                return;
            case 1:
                view.setBackgroundResource(R.drawable.shadow_red);
                return;
            case 2:
                view.setBackgroundResource(R.drawable.shadow);
                return;
            case 3:
                view.setBackgroundResource(R.drawable.shadow_green);
                return;
            case 4:
                view.setBackgroundResource(R.drawable.shadow_black);
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    public static void m1501a(@NonNull View view, @ColorInt int i, @ColorInt int i2) {
        C3860wv.m1495a(new ShadowProperty().m13240bO(i).m13239bP(f3909NK).m13241a(false, false, false, true), view, i2);
    }

    /* renamed from: a */
    public static void m1499a(@NonNull View view, View view2, int i) {
        if (view2 != null) {
            int measuredHeight = view.getMeasuredHeight();
            m1501a(view2, bgi.getColor((int) ((i > measuredHeight ? 1.0f : i / measuredHeight) * 61), R.color.black_1), bgi.getColor(R.color.transparent));
        }
    }
}
