package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.bjq;
import com.kingroot.kinguses.R;
import java.util.List;
/* loaded from: classes.dex */
public class aey extends AbstractC3856wr {
    private String[] afK;
    private List<bjq.C2442d> agc;
    private View.OnClickListener agd;
    private LayoutInflater mLayoutInflater;

    /* renamed from: com.kingroot.kinguser.aey$a */
    /* loaded from: classes.dex */
    public static class C0798a {
        public ImageView afU;
        public TextView afW;
        public TextView afY;
        public CheckBox aga;
        public TextView age;
    }

    public aey(View.OnClickListener onClickListener, String[] strArr, LayoutInflater layoutInflater) {
        this.agd = onClickListener;
        this.afK = strArr;
        this.mLayoutInflater = layoutInflater;
    }

    /* renamed from: Z */
    public void m12142Z(List<bjq.C2442d> list) {
        this.agc = list;
        notifyDataSetChanged();
    }

    /* renamed from: cP */
    public String m12141cP(int i) {
        String str = null;
        if (this.afK == null) {
            return "";
        }
        if (i >= 0 && i < this.afK.length) {
            str = this.afK[i];
        }
        return str == null ? "" : str;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.agc == null) {
            return 0;
        }
        return this.agc.size();
    }

    @Override // android.widget.Adapter
    /* renamed from: cQ */
    public bjq.C2442d getItem(int i) {
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
        C0798a c0798a;
        Context context = this.mLayoutInflater.getContext();
        bjq.C2442d item = getItem(i);
        if (view == null || view.getTag() == null) {
            C0798a c0798a2 = new C0798a();
            view = this.mLayoutInflater.inflate(R.layout.cleaner_unistall_list_item_selectable_app, (ViewGroup) null);
            c0798a2.afU = (ImageView) view.findViewById(R.id.item_icon);
            c0798a2.age = (TextView) view.findViewById(R.id.item_title);
            c0798a2.afW = (TextView) view.findViewById(R.id.item_describe);
            c0798a2.afY = (TextView) view.findViewById(R.id.item_describe2);
            c0798a2.aga = (CheckBox) view.findViewById(R.id.item_checkbox);
            acz.m12555l(c0798a2.aga);
            c0798a = c0798a2;
        } else {
            c0798a = (C0798a) view.getTag(R.id.unisntall_page_tag_content);
        }
        c0798a.aga.setVisibility(0);
        c0798a.aga.setId(i);
        c0798a.aga.setOnCheckedChangeListener(null);
        c0798a.aga.setChecked(item.afR);
        c0798a.aga.setOnClickListener(this.agd);
        c0798a.age.setText(item.afP.appName);
        acr imageFetcher = getImageFetcher();
        if (imageFetcher != null) {
            if (item.bxZ == 2) {
                if (item.bya != null && !TextUtils.isEmpty(item.bya.agY)) {
                    imageFetcher.m12663b(item.bya.agY, c0798a.afU, R.drawable.default_icon);
                }
            } else {
                imageFetcher.m12665a(item.afP.packageName, c0798a.afU, C3953zi.m1311pr().getDrawable(R.drawable.default_icon));
            }
        }
        boolean m1332pj = C3946zb.m1332pj();
        if (item.afP != null && !TextUtils.isEmpty(item.afP.description) && m1332pj) {
            c0798a.afY.setText(item.afP.description);
        } else {
            String m12141cP = m12141cP(item.afP.classify);
            if (!TextUtils.isEmpty(m12141cP)) {
                c0798a.afY.setText(m12141cP);
            } else {
                c0798a.afY.setText(C3953zi.m1311pr().getString(R.string.uninstall_app_default_description));
            }
        }
        c0798a.afW.setText(Formatter.formatFileSize(context, item.afP.pkgSize));
        view.setTag(R.id.unisntall_page_tag_content, c0798a);
        return view;
    }
}
