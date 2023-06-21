package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class adg extends BaseAdapter {
    private ArrayList<String> acr;
    private InterfaceC0718a acs;
    private int act;
    private Context mContext;

    /* renamed from: com.kingroot.kinguser.adg$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0718a {
        /* renamed from: b */
        void mo6958b(View view, int i);
    }

    public adg(Context context, ArrayList<String> arrayList, int i) {
        this.mContext = context;
        this.acr = arrayList;
        this.act = i;
    }

    /* renamed from: a */
    public void m12544a(InterfaceC0718a interfaceC0718a) {
        this.acs = interfaceC0718a;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.acr.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return null;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(final int i, View view, ViewGroup viewGroup) {
        C0719b c0719b;
        Drawable drawable;
        if (view == null) {
            C0719b c0719b2 = new C0719b();
            view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_text_radio, (ViewGroup) null);
            c0719b2.mTextView = (TextView) view.findViewById(R.id.item_title);
            c0719b2.acv = (ImageView) view.findViewById(R.id.radio_button);
            view.setTag(c0719b2);
            c0719b = c0719b2;
        } else {
            c0719b = (C0719b) view.getTag();
        }
        c0719b.acv.setTag(Integer.valueOf(i));
        c0719b.acv.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.adg.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                Integer num = (Integer) view2.getTag();
                if (num != null && adg.this.acs != null) {
                    adg.this.act = i;
                    adg.this.acs.mo6958b(view2, num.intValue());
                }
            }
        });
        if (this.act == i) {
            drawable = C3953zi.m1311pr().getDrawable(R.drawable.radio_button_checked);
        } else {
            drawable = C3953zi.m1311pr().getDrawable(R.drawable.radio_button_selector);
        }
        if (drawable != null) {
            c0719b.acv.setBackgroundDrawable(drawable);
        }
        c0719b.mTextView.setText(this.acr.get(i));
        view.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.adg.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                C0719b c0719b3 = (C0719b) view2.getTag();
                if (c0719b3.acv != null) {
                    c0719b3.acv.setPressed(true);
                    Integer num = (Integer) c0719b3.acv.getTag();
                    if (num != null && adg.this.acs != null) {
                        adg.this.act = i;
                        adg.this.acs.mo6958b(c0719b3.acv, num.intValue());
                    }
                }
            }
        });
        return view;
    }

    /* renamed from: com.kingroot.kinguser.adg$b */
    /* loaded from: classes.dex */
    public class C0719b {
        public ImageView acv;
        public TextView mTextView;

        public C0719b() {
        }
    }
}
