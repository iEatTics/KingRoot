package com.kingroot.kinguser;

import android.support.p004v4.view.ViewCompat;
import android.support.p007v7.widget.LinearLayoutManager;
import android.support.p007v7.widget.RecyclerView;
import android.support.p007v7.widget.StaggeredGridLayoutManager;
import android.view.View;
/* renamed from: com.kingroot.kinguser.qn */
/* loaded from: classes.dex */
public class C3478qn implements InterfaceC3477qm {

    /* renamed from: Eu */
    protected final InterfaceC3479a f3395Eu;

    /* renamed from: Ev */
    protected boolean f3396Ev = false;
    protected final RecyclerView mRecyclerView;

    /* renamed from: com.kingroot.kinguser.qn$a */
    /* loaded from: classes.dex */
    public interface InterfaceC3479a {
        /* renamed from: hs */
        boolean mo2587hs();

        /* renamed from: ht */
        boolean mo2586ht();
    }

    public C3478qn(RecyclerView recyclerView) {
        int orientation;
        this.mRecyclerView = recyclerView;
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if ((layoutManager instanceof LinearLayoutManager) || (layoutManager instanceof StaggeredGridLayoutManager)) {
            if (layoutManager instanceof LinearLayoutManager) {
                orientation = ((LinearLayoutManager) layoutManager).getOrientation();
            } else {
                orientation = ((StaggeredGridLayoutManager) layoutManager).getOrientation();
            }
            if (orientation == 0) {
                this.f3395Eu = new C3480b();
                return;
            } else {
                this.f3395Eu = new C3481c();
                return;
            }
        }
        throw new IllegalArgumentException("Recycler views with custom layout managers are not supported by this adapter out of the box.Try implementing and providing an explicit 'impl' parameter to the other c'tors, or otherwise create a custom adapter subclass of your own.");
    }

    @Override // com.kingroot.kinguser.InterfaceC3477qm
    public View getView() {
        return this.mRecyclerView;
    }

    @Override // com.kingroot.kinguser.InterfaceC3477qm
    /* renamed from: hs */
    public boolean mo2585hs() {
        return !this.f3396Ev && this.f3395Eu.mo2587hs();
    }

    @Override // com.kingroot.kinguser.InterfaceC3477qm
    /* renamed from: ht */
    public boolean mo2584ht() {
        return !this.f3396Ev && this.f3395Eu.mo2586ht();
    }

    /* renamed from: com.kingroot.kinguser.qn$b */
    /* loaded from: classes.dex */
    public class C3480b implements InterfaceC3479a {
        protected C3480b() {
        }

        @Override // com.kingroot.kinguser.C3478qn.InterfaceC3479a
        /* renamed from: hs */
        public boolean mo2587hs() {
            return !ViewCompat.canScrollHorizontally(C3478qn.this.mRecyclerView, -1);
        }

        @Override // com.kingroot.kinguser.C3478qn.InterfaceC3479a
        /* renamed from: ht */
        public boolean mo2586ht() {
            return !ViewCompat.canScrollHorizontally(C3478qn.this.mRecyclerView, 1);
        }
    }

    /* renamed from: com.kingroot.kinguser.qn$c */
    /* loaded from: classes.dex */
    public class C3481c implements InterfaceC3479a {
        protected C3481c() {
        }

        @Override // com.kingroot.kinguser.C3478qn.InterfaceC3479a
        /* renamed from: hs */
        public boolean mo2587hs() {
            return !ViewCompat.canScrollVertically(C3478qn.this.mRecyclerView, -1);
        }

        @Override // com.kingroot.kinguser.C3478qn.InterfaceC3479a
        /* renamed from: ht */
        public boolean mo2586ht() {
            return !ViewCompat.canScrollVertically(C3478qn.this.mRecyclerView, 1);
        }
    }
}
