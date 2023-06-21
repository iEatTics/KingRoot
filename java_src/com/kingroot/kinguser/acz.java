package com.kingroot.kinguser;

import android.graphics.Rect;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewParent;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class acz {
    /* renamed from: a */
    public static void m12556a(final View view, final int i, final int i2, final int i3, final int i4) {
        ViewParent parent;
        if (view != null && (parent = view.getParent()) != null && (parent instanceof View)) {
            final View view2 = (View) parent;
            view2.post(new Runnable() { // from class: com.kingroot.kinguser.acz.1
                @Override // java.lang.Runnable
                public void run() {
                    Rect rect = new Rect();
                    view.getHitRect(rect);
                    rect.left -= i;
                    rect.top -= i2;
                    rect.right += i3;
                    rect.bottom += i4;
                    view2.setTouchDelegate(new TouchDelegate(rect, view));
                }
            });
        }
    }

    /* renamed from: l */
    public static void m12555l(View view) {
        if (view != null && view.getContext() != null) {
            C3953zi m1311pr = C3953zi.m1311pr();
            m12556a(view, (int) m1311pr.getDimension(R.dimen.list_item_paddingLeft), (int) m1311pr.getDimension(R.dimen.list_item_paddingTop), (int) m1311pr.getDimension(R.dimen.list_item_paddingLeft), (int) m1311pr.getDimension(R.dimen.list_item_paddingBottom));
        }
    }
}
