package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.kingroot.common.uilib.template.PinnedHeaderListView;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.yn */
/* loaded from: classes.dex */
public abstract class AbstractC3926yn<DataType> extends AbstractC3922ym implements AbsListView.OnScrollListener {

    /* renamed from: Vq */
    protected PinnedHeaderListView f4025Vq;

    /* renamed from: Vr */
    protected AbstractC3927a<DataType> f4026Vr;

    /* renamed from: Vs */
    protected int f4027Vs;
    protected View mHeaderView;

    protected abstract Drawable getDivider();

    @NonNull
    /* renamed from: oU */
    protected abstract AbstractC3927a<DataType> mo1387oU();

    /* renamed from: oW */
    protected abstract int mo1385oW();

    public AbstractC3926yn(Context context, String str) {
        super(context, str);
        this.f4027Vs = mo1385oW();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: oV */
    public AbstractC3927a<DataType> m1386oV() {
        return this.f4026Vr;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        this.f4025Vq = new PinnedHeaderListView(getContext());
        this.f4025Vq.m13334b(getImageFetcher());
        this.f4026Vr = mo1387oU();
        this.f4025Vq.setAdapter((ListAdapter) this.f4026Vr);
        if (this.f4027Vs != 0) {
            this.f4025Vq.setPinnedHeaderView(getLayoutInflater().inflate(this.f4027Vs, (ViewGroup) this.f4025Vq, false));
        }
        this.f4025Vq.setDivider(getDivider());
        this.f4025Vq.setCacheColorHint(0);
        this.f4025Vq.setBackgroundResource(R.color.general_light_bg);
        this.f4025Vq.setOnScrollListener(this);
        return this.f4025Vq;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f4025Vq.setOnItemClickListener(onItemClickListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m1388a(View.OnClickListener onClickListener) {
        if (this.mHeaderView != null) {
            this.mHeaderView.setOnClickListener(onClickListener);
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        this.f4025Vq.m13156bX(i);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        super.mo1372i(obj);
        if (this.f4026Vr != null && obj != null && (obj instanceof ArrayList)) {
            ArrayList arrayList = (ArrayList) obj;
            if (arrayList.size() > 0 && (arrayList.get(0) instanceof C3929b)) {
                this.f4026Vr.m1378k((ArrayList) obj);
                this.f4026Vr.notifyDataSetChanged();
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.yn$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC3927a<DataType> extends AbstractC3856wr implements PinnedHeaderListView.InterfaceC0575a {

        /* renamed from: Vt */
        protected ArrayList<C3929b<DataType>> f4028Vt;

        /* renamed from: Vu */
        protected int f4029Vu;
        private LayoutInflater mLayoutInflater;

        /* renamed from: b */
        public abstract View mo1384b(int i, View view, ViewGroup viewGroup);

        /* renamed from: c */
        public abstract View mo1379c(int i, View view, ViewGroup viewGroup);

        public AbstractC3927a(Context context) {
            this(context, -1);
        }

        public AbstractC3927a(Context context, int i) {
            this.f4028Vt = new ArrayList<>();
            this.f4029Vu = -1;
            this.mLayoutInflater = null;
            if (context != null) {
                this.mLayoutInflater = LayoutInflater.from(context);
            }
            this.f4029Vu = i;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public LayoutInflater getLayoutInflater() {
            if (this.mLayoutInflater == null) {
                this.mLayoutInflater = LayoutInflater.from(KUApplication.m13453ge());
            }
            return this.mLayoutInflater;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return 2;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int i) {
            if (this.f4028Vt == null) {
                return -1;
            }
            return this.f4028Vt.get(i).type;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.f4028Vt == null) {
                return 0;
            }
            return this.f4028Vt.size();
        }

        /* renamed from: k */
        public void m1378k(ArrayList<C3929b<DataType>> arrayList) {
            this.f4028Vt.clear();
            this.f4028Vt.addAll(arrayList);
        }

        /* renamed from: oX */
        public List<C3929b<DataType>> m1377oX() {
            return this.f4028Vt;
        }

        @Override // android.widget.Adapter
        /* renamed from: bU */
        public C3929b<DataType> getItem(int i) {
            if (this.f4028Vt != null && i < this.f4028Vt.size()) {
                return this.f4028Vt.get(i);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // com.kingroot.common.uilib.template.PinnedHeaderListView.InterfaceC0575a
        /* renamed from: bV */
        public int mo1381bV(int i) {
            if (i < 0 || this.f4028Vt == null || this.f4028Vt.size() == 0) {
                return 0;
            }
            if (i + 1 < this.f4028Vt.size()) {
                String m1380bW = m1380bW(i);
                String m1380bW2 = m1380bW(i + 1);
                if (m1380bW != null && m1380bW2 != null && !m1380bW.equals(m1380bW2)) {
                    return 2;
                }
            }
            return 1;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            return getItemViewType(i) == 1 ? mo1384b(i, view, viewGroup) : mo1379c(i, view, viewGroup);
        }

        /* renamed from: b */
        public void mo1383b(View view, int i, int i2) {
            if (this.f4029Vu != -1) {
                C3928a c3928a = (C3928a) view.getTag();
                if (c3928a == null) {
                    C3928a c3928a2 = new C3928a();
                    c3928a2.f4030Vv = (TextView) view.findViewById(this.f4029Vu);
                    view.setTag(c3928a2);
                    c3928a = c3928a2;
                }
                c3928a.f4030Vv.setText(m1380bW(i));
            }
        }

        /* renamed from: bW */
        private String m1380bW(int i) {
            return this.f4028Vt == null ? "" : this.f4028Vt.get(i).title;
        }

        /* renamed from: com.kingroot.kinguser.yn$a$a */
        /* loaded from: classes.dex */
        public class C3928a {

            /* renamed from: Vv */
            TextView f4030Vv;

            protected C3928a() {
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.yn$b */
    /* loaded from: classes.dex */
    public static class C3929b<DataType> {
        public DataType data;
        public String title;
        public int type;

        public C3929b(String str) {
            this.title = str;
            this.type = 1;
        }

        public C3929b(DataType datatype, String str) {
            this.data = datatype;
            this.type = 0;
            this.title = str;
        }

        public C3929b(DataType datatype, String str, int i) {
            this.title = str;
            this.data = datatype;
            this.type = i;
        }
    }
}
