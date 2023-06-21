package com.kingroot.kinguser;

import android.support.p007v7.widget.helper.ItemTouchHelper;
/* loaded from: classes.dex */
public final class blo {
    public static String bAc = "http://pmir.3g.qq.com/";

    /* renamed from: b */
    public static void m6473b(boolean z) {
        bAc = z ? "http://wuptest.cs0309.3g.qq.com" : "http://pmir.3g.qq.com/";
    }

    public static String afq() {
        return "2.0.0";
    }

    public static int afr() {
        return ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
    }

    public static int afs() {
        return 8000;
    }

    public static int aft() {
        return 1;
    }
}
