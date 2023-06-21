package com.kingroot.kinguser;

import android.content.Intent;
import android.view.KeyEvent;
/* loaded from: classes.dex */
public abstract class acn {
    public abstract void onActivityResult(int i, int i2, Intent intent);

    public abstract boolean onKeyDown(int i, KeyEvent keyEvent);

    public abstract void onPause();

    public abstract void onResume();

    public abstract void onStop();
}
