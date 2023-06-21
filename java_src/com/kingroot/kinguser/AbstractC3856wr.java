package com.kingroot.kinguser;

import android.widget.BaseAdapter;
import java.lang.ref.WeakReference;
/* renamed from: com.kingroot.kinguser.wr */
/* loaded from: classes.dex */
public abstract class AbstractC3856wr extends BaseAdapter {

    /* renamed from: Nw */
    private WeakReference<acr> f3908Nw;

    /* renamed from: a */
    public void mo1503a(acr acrVar) {
        this.f3908Nw = new WeakReference<>(acrVar);
    }

    public acr getImageFetcher() {
        if (this.f3908Nw != null) {
            return this.f3908Nw.get();
        }
        return null;
    }
}
