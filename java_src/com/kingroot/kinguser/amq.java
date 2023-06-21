package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class amq implements amm {
    private String mTitle;

    public String getTitle() {
        return this.mTitle;
    }

    public amq(String str) {
        this.mTitle = str;
    }

    @Override // com.kingroot.kinguser.amm
    public int getType() {
        return 3;
    }
}
