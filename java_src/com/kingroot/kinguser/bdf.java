package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public class bdf extends bcy {
    private boolean akd;
    private String biQ;
    private Drawable icon;
    private String title;

    public bdf(Drawable drawable, String str, String str2, boolean z) {
        this.icon = drawable;
        this.title = str;
        this.biQ = str2;
        this.akd = z;
    }

    public Drawable getIcon() {
        return this.icon;
    }

    public String getTitle() {
        return this.title;
    }

    /* renamed from: Yu */
    public String m7565Yu() {
        return this.biQ;
    }

    /* renamed from: dG */
    public void m7564dG(boolean z) {
        this.akd = z;
    }

    /* renamed from: gI */
    public boolean m7563gI() {
        return this.akd;
    }

    @Override // com.kingroot.kinguser.bcy
    /* renamed from: Yo */
    public int mo7560Yo() {
        return 30;
    }

    @Override // com.kingroot.kinguser.bcy
    /* renamed from: Yp */
    public int mo7559Yp() {
        return 6;
    }
}
