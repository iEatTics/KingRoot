package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.kingroot.common.uilib.AnimationListView;
import com.kingroot.common.uilib.KBaseListView;
import com.kingroot.kinguses.R;
/* renamed from: com.kingroot.kinguser.yl */
/* loaded from: classes.dex */
public abstract class AbstractC3921yl extends AbstractC3922ym {

    /* renamed from: Vd */
    protected ListView f4011Vd;

    /* renamed from: Ve */
    protected BaseAdapter f4012Ve;

    /* renamed from: Vf */
    private int f4013Vf;

    protected abstract BaseAdapter getAdapter();

    /* renamed from: oJ */
    protected abstract int mo1419oJ();

    public AbstractC3921yl(Context context) {
        super(context);
        this.f4013Vf = 0;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        if (this.f4012Ve != null && this.f4011Vd.getVisibility() == 0) {
            this.f4012Ve.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    public View mo1371oG() {
        return m1420oH();
    }

    /* renamed from: oH */
    private ListView m1420oH() {
        this.f4011Vd = new AnimationListView(getContext(), this.f4013Vf);
        m1421a(this.f4011Vd);
        return this.f4011Vd;
    }

    /* renamed from: a */
    private void m1421a(ListView listView) {
        if (listView != null) {
            this.f4012Ve = getAdapter();
            if ((listView instanceof KBaseListView) && (this.f4012Ve instanceof AbstractC3856wr)) {
                ((KBaseListView) listView).m13334b(getImageFetcher());
            }
            listView.setAdapter((ListAdapter) this.f4012Ve);
            listView.setId(R.id.list_view);
            listView.setDivider(getDivider());
            listView.setCacheColorHint(0);
            listView.setBackgroundResource(R.color.general_light_bg);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        if (this.f4011Vd == null) {
            View contentView = getContentView();
            if (contentView instanceof ListView) {
                this.f4011Vd = (ListView) contentView;
            } else {
                this.f4011Vd = (ListView) contentView.findViewById(mo1419oJ());
                if ((this.f4011Vd instanceof AnimationListView) && this.f4013Vf != 0) {
                    ((AnimationListView) this.f4011Vd).setAnimationType(this.f4013Vf);
                }
            }
            m1421a(this.f4011Vd);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        if (this.f4011Vd != null) {
            this.f4011Vd.setOnItemClickListener(onItemClickListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ListView getListView() {
        return this.f4011Vd;
    }

    protected Drawable getDivider() {
        return m1414Y(2130837953L);
    }
}
