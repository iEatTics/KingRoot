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
public class aic {
    public static float aro = 140.0f;

    /* renamed from: Vd */
    private ListView f1453Vd;
    private PopupWindow ari;
    private List<String> ark;
    private C0981b arn;
    private Context mContext;
    private LayoutInflater mInflater;
    private View mView;

    /* renamed from: com.kingroot.kinguser.aic$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0980a {
        /* renamed from: dv */
        boolean mo7354dv(int i);
    }

    public aic(Context context, View view) {
        this.mContext = context;
        this.mView = view;
    }

    /* renamed from: a */
    public void m11673a(C0981b c0981b) {
        this.arn = c0981b;
        this.f1453Vd.setAdapter((ListAdapter) this.arn);
    }

    /* renamed from: Y */
    public void m11674Y(List<String> list) {
        this.mInflater = LayoutInflater.from(this.mContext);
        View inflate = this.mInflater.inflate(R.layout.template_pop_menu_window, (ViewGroup) null);
        this.ark = list;
        this.f1453Vd = (ListView) inflate.findViewById(R.id.list_view);
        this.f1453Vd.setAdapter((ListAdapter) this.arn);
        this.ari = new PopupWindow(inflate, abg.m12835r(aro), -2, true);
        this.ari.setBackgroundDrawable(C3953zi.m1311pr().getDrawable(R.drawable.pop_window_menu));
        this.ari.setTouchable(true);
        this.ari.setFocusable(true);
        this.ari.setAnimationStyle(R.style.PopupAnimation);
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.f1453Vd.setOnItemClickListener(onItemClickListener);
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

    /* renamed from: com.kingroot.kinguser.aic$c */
    /* loaded from: classes.dex */
    static class C0982c {

        /* renamed from: NE */
        ImageView f1454NE;
        TextView mTextView;

        private C0982c() {
        }
    }

    /* renamed from: com.kingroot.kinguser.aic$b */
    /* loaded from: classes.dex */
    public static class C0981b extends BaseAdapter {
        private List<String> ark;
        private boolean arm;
        private InterfaceC0980a arp;
        private Context context;

        public C0981b(Context context, List<String> list, boolean z, InterfaceC0980a interfaceC0980a) {
            this.ark = new ArrayList();
            this.arm = false;
            this.context = context;
            this.ark = list;
            this.arm = z;
            this.arp = interfaceC0980a;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            return this.ark.size();
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.ark.get(i);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C0982c c0982c;
            LayoutInflater from = LayoutInflater.from(this.context);
            if (view == null) {
                c0982c = new C0982c();
                view = from.inflate(R.layout.simple_popup_window_list_item, (ViewGroup) null);
                c0982c.mTextView = (TextView) view.findViewById(R.id.popup_window_list_item);
                c0982c.f1454NE = (ImageView) view.findViewById(R.id.popup_window_iv);
                view.setTag(c0982c);
            } else {
                c0982c = (C0982c) view.getTag();
            }
            c0982c.mTextView.setText((CharSequence) getItem(i));
            if (this.arm) {
                if (this.arp != null) {
                    if (this.arp.mo7354dv(i)) {
                        c0982c.f1454NE.setVisibility(0);
                    } else {
                        c0982c.f1454NE.setVisibility(8);
                    }
                }
            } else {
                c0982c.f1454NE.setVisibility(8);
            }
            return view;
        }
    }
}
