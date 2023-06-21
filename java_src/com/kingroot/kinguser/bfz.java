package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.kingroot.kinguser.bic;
import com.kingroot.kinguser.urlcheck.p016db.UrlCheckLog;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bfz extends AbstractC3922ym implements View.OnClickListener {
    private TextView bnV;
    private TextView bnW;
    private TextView bnX;
    private TextView bnY;
    private Button bnZ;
    private Button boa;
    private UrlCheckLog bob;
    private bic boc;

    public bfz(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        ada adaVar = new ada(getActivity(), C3953zi.m1311pr().getString(R.string.urlcheck_detail_page_title));
        View wholeView = adaVar.getWholeView();
        if (wholeView != null) {
            wholeView.findViewById(R.id.title_bar_divider).setVisibility(8);
        }
        return adaVar;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.page_risk_url_detail, (ViewGroup) null);
        this.bnV = (TextView) inflate.findViewById(R.id.risk_text);
        this.bnW = (TextView) inflate.findViewById(R.id.url);
        this.bnX = (TextView) inflate.findViewById(R.id.time);
        this.bnY = (TextView) inflate.findViewById(R.id.risk);
        this.bnZ = (Button) inflate.findViewById(R.id.trust_btn);
        this.bnZ.setOnClickListener(this);
        this.boa = (Button) inflate.findViewById(R.id.intercept_btn);
        this.boa.setOnClickListener(this);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        ady.m12308tK().mo1746bi(100683);
        Intent intent = getIntent();
        if (intent == null) {
            getActivity().finish();
        }
        this.bob = (UrlCheckLog) intent.getParcelableExtra("key_risk_url_log");
        if (this.bob == null) {
            getActivity().finish();
        }
        this.bnV.setText(this.bob.aaO());
        this.bnW.setText(this.bob.url);
        this.bnX.setText(this.bob.aaQ());
        this.bnY.setText(this.bob.aaP());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.intercept_btn /* 2131690179 */:
                ady.m12308tK().mo1746bi(100682);
                beg.m7461Zj().m7450c(new bed(new bek() { // from class: com.kingroot.kinguser.bfz.1
                    @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                    public void run() {
                        bfz.this.bob.bnx = true;
                        bfs.aaI().m7231e(bfz.this.bob);
                        bfz.this.bob.m1995dQ(false);
                    }
                }));
                getActivity().finish();
                return;
            case R.id.trust_btn /* 2131690180 */:
                ady.m12308tK().mo1746bi(100681);
                if (bfw.aaS().aaZ()) {
                    abk();
                    return;
                } else {
                    abl();
                    return;
                }
            default:
                return;
        }
    }

    private void abk() {
        if (this.boc == null) {
            this.boc = new bic(getContext());
            this.boc.show();
            this.boc.m6941lJ(C3953zi.m1311pr().getString(R.string.urlcheck_risk_page_confrim_dialog_checkbox));
            this.boc.m6942ee(false);
            this.boc.setTitleText(C3953zi.m1311pr().getString(R.string.urlcheck_risk_page_confirm_dialog_title));
            this.boc.m6933d(C3953zi.m1311pr().getString(R.string.urlcheck_risk_page_confirm_dialog_content));
            this.boc.m6945b(new bic.InterfaceC2299a() { // from class: com.kingroot.kinguser.bfz.2
                @Override // com.kingroot.kinguser.bic.InterfaceC2299a
                /* renamed from: d */
                public void mo6940d(View view, boolean z) {
                    if (z) {
                        bfw.aaS().aba();
                    }
                    bfz.this.abl();
                }
            });
            this.boc.m6947a(new bic.InterfaceC2299a() { // from class: com.kingroot.kinguser.bfz.3
                @Override // com.kingroot.kinguser.bic.InterfaceC2299a
                /* renamed from: d */
                public void mo6940d(View view, boolean z) {
                }
            });
            return;
        }
        this.boc.dismiss();
        this.boc.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abl() {
        try {
            beg.m7461Zj().m7450c(new bed(new bek() { // from class: com.kingroot.kinguser.bfz.4
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    bfs.aaI().m7230lh(bfz.this.bob.f3653GY);
                    bfs.aaI().m7233d(bfz.this.bob);
                    bfz.this.bob.m1995dQ(true);
                }
            }));
            getActivity().finish();
        } catch (Exception e) {
        }
    }
}
