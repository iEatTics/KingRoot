package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public class bdc extends bcy {
    private String biL;
    private String desc;
    private Drawable icon;
    private String title;

    public bdc(Drawable drawable, String str, String str2, String str3) {
        this.icon = drawable;
        this.title = str;
        this.desc = str2;
        this.biL = str3;
    }

    public Drawable getIcon() {
        return this.icon;
    }

    public String getTitle() {
        return this.title;
    }

    /* renamed from: Ny */
    public String m7568Ny() {
        return this.desc;
    }

    /* renamed from: Yr */
    public String m7567Yr() {
        return this.biL;
    }

    @Override // com.kingroot.kinguser.bcy
    /* renamed from: Yo */
    public int mo7560Yo() {
        return 10;
    }

    @Override // com.kingroot.kinguser.bcy
    /* renamed from: Yp */
    public int mo7559Yp() {
        return 2;
    }
}
