package com.kingroot.kinguser;

import android.graphics.Rect;
import android.support.p007v7.widget.RecyclerView;
import android.view.View;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class ani extends RecyclerView.ItemDecoration {
    private static final String TAG = aiq.arY + "MainHorizontalAppRVItemDecoration";
    private final float aAG = 3.5f;
    private int aAH;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.ani$a */
    /* loaded from: classes.dex */
    public enum EnumC1264a {
        TYPE_NONE,
        TYPE_INCREASE,
        TYPE_DECREASE
    }

    @Override // android.support.p007v7.widget.RecyclerView.ItemDecoration
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        C3953zi m1311pr = C3953zi.m1311pr();
        int dimensionPixelOffset = m1311pr.getDimensionPixelOffset(R.dimen.apps_market_main_app_item_left_right_padding) - ((m1311pr.getDimensionPixelOffset(R.dimen.app_market_main_app_item_h_w) - m1311pr.getDimensionPixelOffset(R.dimen.app_market_main_app_icon_h_w)) / 2);
        int measuredWidth = recyclerView.getMeasuredWidth() - dimensionPixelOffset;
        if (this.aAH <= 0) {
            this.aAH = view.getMeasuredWidth();
        }
        int m10262a = m10262a((this.aAH * 1) / 3, this.aAH / 5, measuredWidth, this.aAH, 3.5f, EnumC1264a.TYPE_NONE, true);
        if (recyclerView.getChildAdapterPosition(view) == 0) {
            rect.set(dimensionPixelOffset, 0, m10262a, 0);
        } else {
            rect.set(0, 0, m10262a, 0);
        }
    }

    /* renamed from: a */
    private int m10262a(int i, int i2, int i3, int i4, float f, EnumC1264a enumC1264a, boolean z) {
        int i5 = (int) ((i3 - (i4 * f)) / ((int) f));
        if (z) {
            if (i5 > i) {
                if (enumC1264a != EnumC1264a.TYPE_DECREASE) {
                    return m10262a(i, i2, i3, i4, m10261s(f), EnumC1264a.TYPE_INCREASE, true);
                }
                return i5;
            } else if (i5 < i2) {
                return m10262a(i, i2, i3, i4, m10260t(f), EnumC1264a.TYPE_DECREASE, enumC1264a != EnumC1264a.TYPE_INCREASE);
            } else {
                return i5;
            }
        }
        return i5;
    }

    /* renamed from: s */
    private float m10261s(float f) {
        float f2 = 0.1f + f;
        float abs = Math.abs(f2 - ((int) f2));
        return (0.25f >= abs || abs >= 0.85f) ? m10261s(f2) : f2;
    }

    /* renamed from: t */
    private float m10260t(float f) {
        float f2 = f - 0.1f;
        float abs = Math.abs(f2 - ((int) f2));
        return (0.25f >= abs || abs >= 0.85f) ? m10260t(f2) : f2;
    }
}
