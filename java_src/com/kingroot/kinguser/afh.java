package com.kingroot.kinguser;

import android.content.Context;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.aex;
import com.kingroot.kinguses.R;
import java.util.List;
/* loaded from: classes.dex */
public class afh extends AbstractC3856wr {
    private String[] afK;
    private List<aex.C0796a> agc;
    private View.OnClickListener agd;
    private LayoutInflater mLayoutInflater;

    /* renamed from: com.kingroot.kinguser.afh$a */
    /* loaded from: classes.dex */
    public static class C0806a {
        public ImageView afU;
        public TextView afW;
        public TextView afY;
        public CheckBox aga;
        public TextView age;
    }

    public afh(View.OnClickListener onClickListener, String[] strArr, LayoutInflater layoutInflater) {
        this.agd = onClickListener;
        this.afK = strArr;
        this.mLayoutInflater = layoutInflater;
    }

    public void setData(List<aex.C0796a> list) {
        this.agc = list;
    }

    /* renamed from: Z */
    public void m12080Z(List<aex.C0796a> list) {
        this.agc = list;
        notifyDataSetChanged();
    }

    /* renamed from: cP */
    public String m12079cP(int i) {
        String str = null;
        if (i >= 0 && i < this.afK.length) {
            str = this.afK[i];
        }
        return str != null ? str : "";
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.agc == null) {
            return 0;
        }
        return this.agc.size();
    }

    @Override // android.widget.Adapter
    /* renamed from: cR */
    public aex.C0796a getItem(int i) {
        if (this.agc == null) {
            return null;
        }
        return this.agc.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C0806a c0806a;
        Context context = this.mLayoutInflater.getContext();
        aex.C0796a item = getItem(i);
        if (view == null || view.getTag() == null) {
            C0806a c0806a2 = new C0806a();
            view = this.mLayoutInflater.inflate(R.layout.cleaner_unistall_list_item_selectable_app, (ViewGroup) null);
            c0806a2.afU = (ImageView) view.findViewById(R.id.item_icon);
            c0806a2.age = (TextView) view.findViewById(R.id.item_title);
            c0806a2.afW = (TextView) view.findViewById(R.id.item_describe);
            c0806a2.afY = (TextView) view.findViewById(R.id.item_describe2);
            c0806a2.aga = (CheckBox) view.findViewById(R.id.item_checkbox);
            acz.m12555l(c0806a2.aga);
            c0806a = c0806a2;
        } else {
            c0806a = (C0806a) view.getTag(R.id.unisntall_page_tag_content);
        }
        c0806a.aga.setVisibility(0);
        c0806a.aga.setId(i);
        c0806a.aga.setOnCheckedChangeListener(null);
        c0806a.aga.setChecked(item.afR);
        c0806a.aga.setOnClickListener(this.agd);
        c0806a.age.setText(item.afP.appName);
        acr imageFetcher = getImageFetcher();
        if (imageFetcher != null) {
            imageFetcher.m12665a(item.afP.packageName, c0806a.afU, C3953zi.m1311pr().getDrawable(R.drawable.default_icon));
        }
        if (item.afP.description != null && !item.afP.description.equals("")) {
            c0806a.afY.setText(item.afP.description);
        } else {
            String m12079cP = m12079cP(item.afP.classify);
            if (!m12079cP.equals("")) {
                c0806a.afY.setText(m12079cP);
            } else {
                c0806a.afY.setText(C3953zi.m1311pr().getString(R.string.uninstall_app_default_description));
            }
        }
        c0806a.afW.setText(Formatter.formatFileSize(context, item.afP.pkgSize));
        view.setTag(R.id.unisntall_page_tag_content, c0806a);
        return view;
    }
}
