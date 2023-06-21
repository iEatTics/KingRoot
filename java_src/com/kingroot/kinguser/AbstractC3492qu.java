package com.kingroot.kinguser;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.SectionIndexer;
/* renamed from: com.kingroot.kinguser.qu */
/* loaded from: classes.dex */
public abstract class AbstractC3492qu extends AbstractC3856wr implements SectionIndexer, InterfaceC3493qv {

    /* renamed from: Fo */
    protected final BaseAdapter f3448Fo;

    /* renamed from: Fp */
    private AbsListView f3449Fp;

    public AbstractC3492qu(BaseAdapter baseAdapter) {
        this.f3448Fo = baseAdapter;
    }

    @Override // com.kingroot.kinguser.InterfaceC3493qv
    /* renamed from: a */
    public void mo2519a(AbsListView absListView) {
        this.f3449Fp = absListView;
        if (this.f3448Fo instanceof InterfaceC3493qv) {
            ((InterfaceC3493qv) this.f3448Fo).mo2519a(absListView);
        }
    }

    /* renamed from: hE */
    public AbsListView m2521hE() {
        return this.f3449Fp;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f3448Fo.getCount();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f3448Fo.getItem(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return this.f3448Fo.getItemId(i);
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        return this.f3448Fo.getView(i, view, viewGroup);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return this.f3448Fo.areAllItemsEnabled();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        return this.f3448Fo.getDropDownView(i, view, viewGroup);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return this.f3448Fo.getItemViewType(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.f3448Fo.getViewTypeCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.f3448Fo.hasStableIds();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.f3448Fo.isEmpty();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return this.f3448Fo.isEnabled(i);
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        if (!(this.f3448Fo instanceof ArrayAdapter)) {
            this.f3448Fo.notifyDataSetChanged();
        }
    }

    public void notifyDataSetChanged(boolean z) {
        if (z || !(this.f3448Fo instanceof ArrayAdapter)) {
            this.f3448Fo.notifyDataSetChanged();
        }
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        this.f3448Fo.notifyDataSetInvalidated();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        this.f3448Fo.registerDataSetObserver(dataSetObserver);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        this.f3448Fo.unregisterDataSetObserver(dataSetObserver);
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i) {
        if (this.f3448Fo instanceof SectionIndexer) {
            return ((SectionIndexer) this.f3448Fo).getPositionForSection(i);
        }
        return 0;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i) {
        if (this.f3448Fo instanceof SectionIndexer) {
            return ((SectionIndexer) this.f3448Fo).getSectionForPosition(i);
        }
        return 0;
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        if (this.f3448Fo instanceof SectionIndexer) {
            return ((SectionIndexer) this.f3448Fo).getSections();
        }
        return null;
    }

    /* renamed from: hF */
    public BaseAdapter m2520hF() {
        return this.f3448Fo;
    }

    @Override // com.kingroot.kinguser.AbstractC3856wr
    /* renamed from: a */
    public void mo1503a(acr acrVar) {
        super.mo1503a(acrVar);
        if (this.f3448Fo instanceof AbstractC3856wr) {
            ((AbstractC3856wr) this.f3448Fo).mo1503a(acrVar);
        }
    }
}
