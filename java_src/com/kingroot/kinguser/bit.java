package com.kingroot.kinguser;

import android.graphics.Color;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingcore.uilib.ProgressWhell;
import com.kingroot.kinguser.xmod.cloud.CveCloudListManager;
import com.kingroot.kinguser.xmod.p018ui.CveDetailActivity;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/* loaded from: classes.dex */
public class bit extends RecyclerView.Adapter<View$OnClickListenerC2349a> {
    private final List<CveCloudListManager.CveInfo> ajB = new ArrayList();
    private int buA;
    private InterfaceC2351b buz;

    /* renamed from: com.kingroot.kinguser.bit$b */
    /* loaded from: classes.dex */
    public interface InterfaceC2351b {
        void onFinish();
    }

    /* renamed from: aZ */
    public void m6832aZ(List<CveCloudListManager.CveInfo> list) {
        this.ajB.clear();
        this.ajB.addAll(list);
        notifyDataSetChanged();
    }

    public void adk() {
        for (CveCloudListManager.CveInfo cveInfo : this.ajB) {
            cveInfo.state = 0;
        }
        notifyDataSetChanged();
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    /* renamed from: g */
    public View$OnClickListenerC2349a onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new View$OnClickListenerC2349a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.cardview_cve_info, viewGroup, false));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    /* renamed from: a */
    public void onBindViewHolder(View$OnClickListenerC2349a view$OnClickListenerC2349a, int i) {
        view$OnClickListenerC2349a.m6828a(this.ajB.get(i));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        if (this.ajB == null) {
            return 0;
        }
        return this.ajB.size();
    }

    /* renamed from: a */
    public void m6835a(InterfaceC2351b interfaceC2351b) {
        this.buz = interfaceC2351b;
    }

    public void adl() {
        int size = this.ajB.size();
        for (final int i = 0; i < size; i++) {
            CveCloudListManager.CveInfo cveInfo = this.ajB.get(i);
            if (cveInfo != null) {
                cveInfo.state = 1;
                HandlerC3839wk.m1555nr().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.bit.1
                    @Override // java.lang.Runnable
                    public void run() {
                        bit.this.m6830ji(i);
                    }
                }, adm());
            }
        }
        notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ji */
    public void m6830ji(int i) {
        CveCloudListManager.CveInfo cveInfo;
        this.buA++;
        if (this.buA >= this.ajB.size()) {
            this.buA = 0;
            if (this.buz != null) {
                this.buz.onFinish();
            }
        } else if (i >= 0 && i < this.ajB.size() && (cveInfo = this.ajB.get(i)) != null) {
            cveInfo.state = 2;
            notifyItemChanged(i);
        }
    }

    private int adm() {
        return 3000 + new Random().nextInt(2000);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bit$a */
    /* loaded from: classes.dex */
    public class View$OnClickListenerC2349a extends RecyclerView.ViewHolder implements View.OnClickListener {
        private final ImageView ajH;
        private final TextView ajP;
        private final ProgressWhell amm;
        private final int buD;
        private final int buE;
        private final TextView buF;
        private final TextView buG;
        private final TextView buH;
        private final View buI;

        public View$OnClickListenerC2349a(View view) {
            super(view);
            this.buD = Color.parseColor("#f53a5d");
            this.buE = Color.parseColor("#009688");
            C3857ws.m1502a(((ViewGroup) view).findViewById(R.id.card_container), 2);
            this.ajH = (ImageView) view.findViewById(R.id.cve_card_header_icon);
            this.ajP = (TextView) view.findViewById(R.id.cve_card_header_title);
            this.buF = (TextView) view.findViewById(R.id.cve_card_content_desc);
            this.buI = view.findViewById(R.id.bottom_layout);
            this.buG = (TextView) view.findViewById(R.id.cve_no);
            this.buH = (TextView) view.findViewById(R.id.cve_level);
            this.buI.setOnClickListener(this);
            this.amm = (ProgressWhell) view.findViewById(R.id.card_bottom_progresswhell);
            this.amm.setBarColor(this.buE);
            this.amm.setProgress(0.0f);
            this.amm.setBarWidth(abg.m12835r(2.0f));
            this.amm.setCircleRadius(abg.m12835r(48.0f));
            this.amm.setCallback(new ProgressWhell.InterfaceC0462a() { // from class: com.kingroot.kinguser.bit.a.1
                @Override // com.kingcore.uilib.ProgressWhell.InterfaceC0462a
                /* renamed from: d */
                public void mo6827d(float f) {
                    if (f == 0.0f) {
                        View$OnClickListenerC2349a.this.amm.setProgress(1.0f);
                    } else if (f == 1.0f) {
                        View$OnClickListenerC2349a.this.amm.setProgress(0.0f);
                    }
                }
            });
        }

        /* renamed from: a */
        public void m6828a(CveCloudListManager.CveInfo cveInfo) {
            int i = R.drawable.cve_icon_safe;
            boolean m10964FM = aks.m11143BP().m10964FM();
            this.ajP.setText(cveInfo.name);
            this.buF.setText(cveInfo.desc);
            this.buG.setText(String.format(C3953zi.m1311pr().getString(R.string.cve_info_page_card_item_cve_no), cveInfo.bur));
            String string = C3953zi.m1311pr().getString(cveInfo.level);
            if (!TextUtils.isEmpty(string)) {
                this.buH.setText(String.format(C3953zi.m1311pr().getString(R.string.cve_info_page_card_item_cve_level), string));
            }
            switch (cveInfo.state) {
                case 0:
                    this.ajH.setVisibility(0);
                    this.amm.setVisibility(8);
                    ImageView imageView = this.ajH;
                    if (!m10964FM) {
                        i = R.drawable.cve_icon_danger;
                    }
                    imageView.setImageResource(i);
                    this.ajP.setTextColor(m10964FM ? this.buE : this.buD);
                    return;
                case 1:
                    this.ajH.setVisibility(8);
                    this.amm.setVisibility(0);
                    this.ajP.setTextColor(this.buE);
                    this.ajP.setText(C3953zi.m1311pr().getString(R.string.cve_info_page_fix_tips) + cveInfo.name);
                    return;
                case 2:
                    this.ajH.setVisibility(0);
                    this.amm.setVisibility(8);
                    this.ajH.setImageResource(R.drawable.cve_icon_safe);
                    this.ajP.setTextColor(this.buE);
                    this.ajP.setText(cveInfo.name);
                    return;
                default:
                    return;
            }
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int adapterPosition = getAdapterPosition();
            if (adapterPosition >= 0 && adapterPosition < bit.this.ajB.size()) {
                CveDetailActivity.m1464b((CveCloudListManager.CveInfo) bit.this.ajB.get(adapterPosition));
            }
        }
    }
}
