package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.p007v7.widget.helper.ItemTouchHelper;
/* renamed from: com.kingroot.kinguser.pe */
/* loaded from: classes.dex */
public class C3417pe {

    /* renamed from: yB */
    private cbh f3279yB;

    /* renamed from: ym */
    private InterfaceC3443pv f3280ym;

    /* renamed from: yo */
    private cbe f3281yo;

    public C3417pe(@NonNull InterfaceC3443pv interfaceC3443pv, @NonNull cbe cbeVar, @NonNull cbh cbhVar) {
        this.f3280ym = null;
        this.f3281yo = null;
        this.f3279yB = null;
        this.f3279yB = cbhVar;
        this.f3280ym = interfaceC3443pv;
        this.f3281yo = cbeVar;
    }

    /* renamed from: ax */
    public InterfaceC3442pu m2660ax(int i) {
        switch (i) {
            case 1:
            case 3:
            case 4:
            case 9:
            case 1701:
                return new C3391os(this.f3280ym, this.f3281yo);
            case 6:
                return new C3394ov(this.f3280ym);
            case 17:
            case 19:
            case 21:
            case 785:
            case 1579:
            case 1606:
                return new C3393ou(this.f3280ym, this.f3281yo);
            case ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION /* 200 */:
                return new C3395ow(this.f3281yo);
            case 615:
                return new C3392ot(this.f3281yo);
            default:
                return this.f3279yB;
        }
    }

    /* renamed from: gj */
    public cbe m2659gj() {
        return this.f3281yo;
    }
}
