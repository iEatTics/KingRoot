package com.kingroot.kinguser;

import android.support.p007v7.widget.helper.ItemTouchHelper;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class cbr {

    /* renamed from: xY */
    private static final ccd<cbr> f2236xY = new cbs();

    public static cbr akD() {
        return f2236xY.get();
    }

    /* renamed from: a */
    public void m5000a(cbq cbqVar) {
        C3576s c3576s = new C3576s();
        c3576s.f3513gg = 0;
        c3576s.f3514gh = ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
        C0756ae c0756ae = new C0756ae();
        c0756ae.f1400gQ = new ArrayList<>();
        cav.akt().m5033a(11, c3576s, c0756ae, new cbt(this, cbqVar));
    }
}
