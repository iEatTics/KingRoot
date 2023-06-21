package android.support.p004v4.app;

import android.support.annotation.IdRes;
import android.support.annotation.Nullable;
import android.view.View;
/* renamed from: android.support.v4.app.FragmentContainer */
/* loaded from: classes.dex */
public abstract class FragmentContainer {
    @Nullable
    public abstract View onFindViewById(@IdRes int i);

    public abstract boolean onHasView();
}
