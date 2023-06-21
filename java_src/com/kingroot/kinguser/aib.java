package com.kingroot.kinguser;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aib {

    /* renamed from: Vd */
    private ListView f1450Vd;
    private PopupWindow ari;
    private C0976b arj;
    private Context mContext;
    private LayoutInflater mInflater;
    private View mView;

    /* renamed from: com.kingroot.kinguser.aib$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0975a {
        /* renamed from: dv */
        boolean mo7374dv(int i);
    }

    public aib(Context context, View view) {
        this.mContext = context;
        this.mView = view;
    }

    /* renamed from: a */
    public void m11676a(C0976b c0976b) {
        this.arj = c0976b;
        this.f1450Vd.setAdapter((ListAdapter) this.arj);
    }

    public void init() {
        this.mInflater = LayoutInflater.from(this.mContext);
        View inflate = this.mInflater.inflate(R.layout.template_pop_menu_window, (ViewGroup) null);
        this.f1450Vd = (ListView) inflate.findViewById(R.id.list_view);
        this.f1450Vd.setAdapter((ListAdapter) this.arj);
        this.ari = new PopupWindow(inflate, abg.m12835r(aic.aro), -2, true);
        this.ari.setBackgroundDrawable(C3953zi.m1311pr().getDrawable(R.drawable.pop_window_menu));
        this.ari.setTouchable(true);
        this.ari.setFocusable(true);
        this.ari.setAnimationStyle(R.style.PopupAnimation);
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f1450Vd.setOnItemClickListener(onItemClickListener);
    }

    public void show() {
        int[] iArr = new int[2];
        this.mView.getLocationOnScreen(iArr);
        this.ari.showAtLocation(this.mView, 48, ((iArr[0] - this.mView.getWidth()) / 2) - abg.m12835r(32.0f), iArr[1] + this.mView.getHeight());
    }

    public void dismiss() {
        if (this.ari != null && this.ari.isShowing()) {
            this.ari.dismiss();
        }
    }

    /* renamed from: com.kingroot.kinguser.aib$b */
    /* loaded from: classes.dex */
    public static class C0976b extends BaseAdapter {
        private List<C0977c> ark;
        private InterfaceC0975a arl;
        private boolean arm;
        private Context context;

        public C0976b(Context context, List<C0977c> list, boolean z, InterfaceC0975a interfaceC0975a) {
            this.ark = new ArrayList();
            this.arm = false;
            this.context = context;
            this.ark = list;
            this.arm = z;
            this.arl = interfaceC0975a;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.ark.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return getItem(i).f1451id;
        }

        @Override // android.widget.Adapter
        /* renamed from: dw */
        public C0977c getItem(int i) {
            return this.ark.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C0978d c0978d;
            LayoutInflater from = LayoutInflater.from(this.context);
            if (view == null) {
                C0978d c0978d2 = new C0978d();
                view = from.inflate(R.layout.simple_popup_window_list_item, (ViewGroup) null);
                c0978d2.mTextView = (TextView) view.findViewById(R.id.popup_window_list_item);
                c0978d2.f1452NE = (ImageView) view.findViewById(R.id.popup_window_iv);
                view.setTag(c0978d2);
                c0978d = c0978d2;
            } else {
                c0978d = (C0978d) view.getTag();
            }
            C0977c item = getItem(i);
            c0978d.mTextView.setText(item.content);
            if (this.arm) {
                int i2 = item.f1451id;
                if (this.arl != null) {
                    if (this.arl.mo7374dv(i2)) {
                        c0978d.f1452NE.setVisibility(0);
                    } else {
                        c0978d.f1452NE.setVisibility(8);
                    }
                }
            } else {
                c0978d.f1452NE.setVisibility(8);
            }
            return view;
        }
    }

    /* renamed from: com.kingroot.kinguser.aib$c */
    /* loaded from: classes.dex */
    public static class C0977c {
        String content;

        /* renamed from: id */
        int f1451id;

        public C0977c(int i, String str) {
            this.f1451id = i;
            this.content = str;
        }
    }

    /* renamed from: com.kingroot.kinguser.aib$d */
    /* loaded from: classes.dex */
    static class C0978d {

        /* renamed from: NE */
        ImageView f1452NE;
        TextView mTextView;

        private C0978d() {
        }
    }
}
