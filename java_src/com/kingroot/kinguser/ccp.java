package com.kingroot.kinguser;

import android.content.Context;
/* loaded from: classes.dex */
public class ccp {

    /* renamed from: a */
    private Context f2246a;
    private cdj bXg;
    private cdg bXh;

    public ccp(Context context, String str, String str2, int i, int i2, String str3, int i3, String str4, String str5, boolean z, boolean z2) {
        this.f2246a = null;
        this.bXg = null;
        this.bXh = null;
        cdo.m4817a(z);
        this.f2246a = context;
        this.bXg = new cdj(context, str, str2, i, i2, str3, i3, str4, str5, z2);
        this.bXh = new cdg(context, this.bXg, i3);
    }

    public cdj akJ() {
        return this.bXg;
    }
}
