package com.kingroot.common.uilib;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.kingroot.kinguser.AbstractC3856wr;
import com.kingroot.kinguser.acr;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class KBaseListView extends ListView {

    /* renamed from: Nw */
    private WeakReference<acr> f834Nw;

    /* renamed from: Nx */
    private AbsListView.OnScrollListener f835Nx;

    /* renamed from: b */
    public void m13334b(acr acrVar) {
        if (acrVar == null) {
            this.f834Nw = null;
        } else {
            this.f834Nw = new WeakReference<>(acrVar);
        }
        ListAdapter adapter = getAdapter();
        if (adapter != null && (adapter instanceof AbstractC3856wr)) {
            ((AbstractC3856wr) adapter).mo1503a(acrVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: nH */
    public void m13332nH() {
        acr acrVar;
        if (this.f834Nw != null && (acrVar = this.f834Nw.get()) != null) {
            acrVar.pause();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: nI */
    public void m13331nI() {
        acr acrVar;
        if (this.f834Nw != null && (acrVar = this.f834Nw.get()) != null) {
            acrVar.resume();
        }
    }

    public acr getImageFetcher() {
        if (this.f834Nw != null) {
            return this.f834Nw.get();
        }
        return null;
    }

    private void init() {
        setSuperOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.kingroot.common.uilib.KBaseListView.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (i == 2) {
                    KBaseListView.this.m13332nH();
                } else {
                    KBaseListView.this.m13331nI();
                }
                if (KBaseListView.this.f835Nx != null) {
                    KBaseListView.this.f835Nx.onScrollStateChanged(absListView, i);
                }
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
                if (KBaseListView.this.f835Nx != null) {
                    KBaseListView.this.f835Nx.onScroll(absListView, i, i2, i3);
                }
            }
        });
    }

    private void setSuperOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        super.setOnScrollListener(onScrollListener);
    }

    @Override // android.widget.AbsListView
    public void setOnScrollListener(AbsListView.OnScrollListener onScrollListener) {
        this.f835Nx = onScrollListener;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.widget.AdapterView
    public void setAdapter(ListAdapter listAdapter) {
        if (listAdapter instanceof AbstractC3856wr) {
            ((AbstractC3856wr) listAdapter).mo1503a(getImageFetcher());
        }
        super.setAdapter(listAdapter);
    }

    public KBaseListView(Context context) {
        super(context);
        init();
    }

    public KBaseListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init();
    }

    public KBaseListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init();
    }
}
