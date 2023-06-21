package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.support.p007v7.widget.RecyclerView;
import com.kingroot.kinguser.AbstractC3500rb;
/* renamed from: com.kingroot.kinguser.rc */
/* loaded from: classes.dex */
public class C3512rc extends AbstractC3500rb {
    @Override // com.kingroot.kinguser.AbstractC3500rb
    protected void animateRemoveImpl(RecyclerView.ViewHolder viewHolder) {
        ViewCompat.animate(viewHolder.itemView).translationX(-viewHolder.itemView.getWidth()).alpha(0.0f).setDuration(getRemoveDuration()).setInterpolator(this.mInterpolator).setListener(new AbstractC3500rb.C3509c(viewHolder)).setStartDelay(m2493g(viewHolder)).start();
    }

    @Override // com.kingroot.kinguser.AbstractC3500rb
    /* renamed from: b */
    protected void mo2491b(RecyclerView.ViewHolder viewHolder) {
        ViewCompat.setTranslationX(viewHolder.itemView, viewHolder.itemView.getWidth());
        ViewCompat.setAlpha(viewHolder.itemView, 0.0f);
    }

    @Override // com.kingroot.kinguser.AbstractC3500rb
    protected void animateAddImpl(RecyclerView.ViewHolder viewHolder) {
        ViewCompat.animate(viewHolder.itemView).translationY(0.0f).alpha(1.0f).setDuration(getAddDuration()).setInterpolator(this.mInterpolator).setListener(new AbstractC3500rb.C3508b(viewHolder)).setStartDelay(m2492h(viewHolder)).start();
    }
}
