package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.support.p007v7.widget.RecyclerView;
import android.text.Html;
import android.text.Spanned;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import com.kingroot.kinguser.advance.model.SilentInstallPermInfo;
import com.kingroot.kinguser.agj;
import com.kingroot.kinguser.aic;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class agi extends RecyclerView.Adapter {
    private List<C0901c> alI;
    private WeakReference<InterfaceC0898a> ams;
    private RecyclerView mRecyclerView;

    /* renamed from: com.kingroot.kinguser.agi$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0898a {
        /* renamed from: K */
        void mo8108K(int i, int i2);
    }

    public agi(List<C0901c> list, InterfaceC0898a interfaceC0898a) {
        this.alI = list;
        if (this.ams == null) {
            this.ams = new WeakReference<>(interfaceC0898a);
        }
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.cardview_silent_install, viewGroup, false);
        C3857ws.m1497h(inflate);
        return new View$OnClickListenerC0899b(inflate);
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((View$OnClickListenerC0899b) viewHolder).m11954a(this.alI.get(i));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.alI.size();
    }

    /* renamed from: com.kingroot.kinguser.agi$b */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC0899b extends RecyclerView.ViewHolder implements View.OnClickListener {
        View ajK;
        ImageView amt;
        TextView amu;
        TextView amv;
        ImageView amw;
        RecyclerView amx;
        agj amy;

        public View$OnClickListenerC0899b(View view) {
            super(view);
            this.amt = null;
            this.amu = null;
            this.ajK = null;
            this.amv = null;
            this.amw = null;
            this.amx = null;
            this.amy = null;
            this.amt = (ImageView) view.findViewById(R.id.card_header_icon);
            this.amu = (TextView) view.findViewById(R.id.card_header_title);
            this.ajK = view.findViewById(R.id.risk_app_icon);
            this.amv = (TextView) view.findViewById(R.id.card_header_sub_title);
            this.amw = (ImageView) view.findViewById(R.id.card_header_option_icon);
            this.amx = (RecyclerView) view.findViewById(R.id.card_list);
            this.amx.setLayoutManager(new FixLinearLayoutManager(view.getContext()));
            this.amw.setOnClickListener(this);
        }

        /* renamed from: a */
        public void m11954a(C0901c c0901c) {
            if (c0901c != null) {
                this.amt.setImageDrawable(c0901c.amD);
                this.amu.setText(c0901c.appName);
                this.ajK.setVisibility(c0901c.amG ? 0 : 8);
                this.amv.setText(c0901c.amE);
                this.amy = new agj(c0901c.amF);
                this.amx.setAdapter(this.amy);
                this.amw.setVisibility(c0901c.amH ? 0 : 8);
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            m11953g(view, getAdapterPosition());
        }

        /* renamed from: g */
        private void m11953g(View view, final int i) {
            Context context = view.getContext();
            final aic aicVar = new aic(context, view);
            ArrayList arrayList = new ArrayList();
            arrayList.add(C3953zi.m1311pr().getString(R.string.silent_install_allow));
            arrayList.add(C3953zi.m1311pr().getString(R.string.silent_install_deny));
            arrayList.add(C3953zi.m1311pr().getString(R.string.silent_install_ask));
            aic.C0981b c0981b = new aic.C0981b(context, arrayList, false, null);
            aicVar.m11674Y(arrayList);
            aicVar.m11673a(c0981b);
            aicVar.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.agi.b.1
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view2, int i2, long j) {
                    int i3;
                    aicVar.dismiss();
                    int i4 = -1;
                    switch (i2) {
                        case 0:
                            ady.m12308tK().mo1746bi(100487);
                            i3 = 1;
                            break;
                        case 1:
                            ady.m12308tK().mo1746bi(100488);
                            i3 = 0;
                            break;
                        case 2:
                            i4 = 2;
                            ady.m12308tK().mo1746bi(100489);
                        default:
                            i3 = i4;
                            break;
                    }
                    if (agi.this.ams != null) {
                        ((InterfaceC0898a) agi.this.ams.get()).mo8108K(i, i3);
                    }
                }
            });
            ady.m12308tK().mo1746bi(100486);
            aicVar.show();
        }
    }

    /* renamed from: com.kingroot.kinguser.agi$c */
    /* loaded from: classes.dex */
    public static class C0901c {
        public Drawable amD;
        public Spanned amE;
        public List<agj.C0903b> amF;
        public boolean amG;
        public boolean amH;
        public String appName;
        public String packageName;

        private C0901c(String str, Drawable drawable, String str2, Spanned spanned, List<agj.C0903b> list, boolean z, boolean z2) {
            this.packageName = str;
            this.amD = drawable;
            this.appName = str2;
            this.amE = spanned;
            this.amF = list;
            this.amG = z;
            this.amH = z2;
        }

        /* renamed from: a */
        public static C0901c m11952a(String str, boolean z, List<SilentInstallLogInfo> list) {
            String m7115jf;
            Spanned fromHtml;
            String str2;
            Drawable drawable;
            Drawable drawable2 = null;
            boolean z2 = true;
            if ("unknown".equals(str)) {
                String string = C3953zi.m1311pr().getString(R.string.silent_install_unknown_app);
                fromHtml = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_ask));
                z2 = false;
                str2 = string;
                drawable = C3953zi.m1311pr().getDrawable(R.drawable.default_icon);
            } else {
                if ("com.android.shell".equals(str)) {
                    m7115jf = C3953zi.m1311pr().getString(R.string.silent_install_setting_app_page_usb_item);
                    drawable2 = C3953zi.m1311pr().getDrawable(R.drawable.usb_icon);
                } else {
                    m7115jf = bgh.m7115jf(str);
                    try {
                        drawable2 = C3952zh.m1312pq().getApplicationIcon(str);
                    } catch (PackageManager.NameNotFoundException e) {
                    }
                }
                fromHtml = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_ask));
                if (drawable2 == null) {
                    drawable2 = C3953zi.m1311pr().getDrawable(R.drawable.default_icon);
                }
                SilentInstallPermInfo m11869fG = agy.m11867wk().m11869fG(str);
                if (m11869fG != null) {
                    switch (m11869fG.mRule) {
                        case 0:
                            fromHtml = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_deny));
                            str2 = m7115jf;
                            drawable = drawable2;
                            break;
                        case 1:
                            fromHtml = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_allow));
                            str2 = m7115jf;
                            drawable = drawable2;
                            break;
                        case 2:
                            fromHtml = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_ask));
                            str2 = m7115jf;
                            drawable = drawable2;
                            break;
                    }
                }
                str2 = m7115jf;
                drawable = drawable2;
            }
            return new C0901c(str, drawable, str2, fromHtml, agj.C0903b.m11946ae(list), z, z2);
        }

        /* renamed from: db */
        public void m11951db(int i) {
            switch (i) {
                case 0:
                    this.amE = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_deny));
                    return;
                case 1:
                    this.amE = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_allow));
                    return;
                case 2:
                    this.amE = Html.fromHtml(C3953zi.m1311pr().getString(R.string.silent_install_authorization_ask));
                    return;
                default:
                    return;
            }
        }
    }
}
