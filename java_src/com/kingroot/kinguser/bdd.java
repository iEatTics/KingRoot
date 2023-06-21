package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public class bdd extends bcy {
    private int biM;
    private String desc;
    private Drawable icon;
    private String title;

    public void setIcon(Drawable drawable) {
        this.icon = drawable;
    }

    public Drawable getIcon() {
        return this.icon;
    }

    public int getTitleColor() {
        return this.biM;
    }

    public void setTitleColor(int i) {
        this.biM = i;
    }

    /* renamed from: kK */
    public void m7566kK(String str) {
        this.desc = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getTitle() {
        return this.title;
    }

    @Override // com.kingroot.kinguser.bcy
    /* renamed from: Yo */
    public int mo7560Yo() {
        return -1;
    }

    @Override // com.kingroot.kinguser.bcy
    /* renamed from: Yp */
    public int mo7559Yp() {
        return 1;
    }
}
