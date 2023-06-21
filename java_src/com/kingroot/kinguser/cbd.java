package com.kingroot.kinguser;

import android.content.Intent;
/* loaded from: classes.dex */
public class cbd {
    private int mId;
    private Intent mIntent;

    public void setIntent(Intent intent) {
        this.mIntent = intent;
    }

    public void setId(int i) {
        this.mId = i;
    }

    public Intent getIntent() {
        return this.mIntent;
    }

    public int getId() {
        return this.mId;
    }
}
