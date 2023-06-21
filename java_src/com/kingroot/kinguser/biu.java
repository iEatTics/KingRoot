package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.xmod.cloud.CveCloudListManager;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class biu extends AbstractC3922ym implements View.OnClickListener {
    private ada anW;
    private ImageView aoR;
    private final int buD;
    private final int buE;
    private TextView buL;
    private TextView buM;
    private TextView buN;
    private TextView buO;
    private CveCloudListManager.CveInfo buP;
    private TextView mTitleView;

    /* renamed from: zv */
    private View f1689zv;

    public biu(Context context) {
        super(context);
        this.buD = Color.parseColor("#f53a5d");
        this.buE = Color.parseColor("#009688");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.anW = new ada(getActivity(), C3953zi.m1311pr().getString(R.string.cve_detail_page_title));
        View wholeView = this.anW.getWholeView();
        if (wholeView != null) {
            wholeView.findViewById(R.id.title_bar_divider).setVisibility(8);
        }
        return this.anW;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        this.f1689zv = getLayoutInflater().inflate(R.layout.page_cve_detail, (ViewGroup) null);
        this.mContentView = this.f1689zv.findViewById(R.id.container);
        C3857ws.m1502a(this.mContentView, 2);
        this.aoR = (ImageView) this.f1689zv.findViewById(R.id.cve_card_header_icon);
        this.mTitleView = (TextView) this.f1689zv.findViewById(R.id.cve_card_header_title);
        this.buL = (TextView) this.f1689zv.findViewById(R.id.cve_no);
        this.buM = (TextView) this.f1689zv.findViewById(R.id.cve_desc);
        this.buN = (TextView) this.f1689zv.findViewById(R.id.cve_version);
        this.buO = (TextView) this.f1689zv.findViewById(R.id.cve_link);
        return this.f1689zv;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        Intent intent;
        super.mo1370oI();
        if (this.buP == null && (intent = getIntent()) != null) {
            this.buP = (CveCloudListManager.CveInfo) intent.getParcelableExtra("cve_info");
        }
        if (this.buP != null) {
            boolean m10964FM = aks.m11143BP().m10964FM();
            this.aoR.setImageResource(m10964FM ? R.drawable.cve_icon_safe : R.drawable.cve_icon_danger);
            this.mTitleView.setText(this.buP.name);
            this.mTitleView.setTextColor(m10964FM ? this.buE : this.buD);
            this.buL.setText(this.buP.bur);
            this.buM.setText(this.buP.desc);
            this.buN.setText(this.buP.bus);
            this.buO.setText(this.buP.buu);
            this.buO.setTag(this.buP.buu);
            this.buO.setOnClickListener(this);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String[] split = view.getTag().toString().split("\n");
        if (split.length > 0) {
            getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(split[0])));
        }
        ady.m12308tK().mo1746bi(100579);
    }
}
