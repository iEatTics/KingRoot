package com.kingroot.kinguser;

import android.content.Context;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.LinearLayoutManager;
import android.support.p007v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.kingroot.kinguser.bfx;
import com.kingroot.kinguser.bic;
import com.kingroot.kinguser.urlcheck.p016db.UrlCheckLog;
import com.kingroot.kinguser.urlcheck.p017ui.UrlCheckDetailActivity;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class bgb extends AbstractC3922ym implements View.OnClickListener, bfx.InterfaceC2227e {
    private View aVU;
    private List<UrlCheckLog> ahM;
    private View boA;
    private Button boB;
    private Button boC;
    private View boD;
    private bic boc;
    private bfx boo;
    private bed bos;
    private TextView boz;
    private RecyclerView mRecyclerView;

    public bgb(Context context) {
        super(context);
        this.ahM = new ArrayList();
        this.bos = new bed(new bek() { // from class: com.kingroot.kinguser.bgb.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                List<UrlCheckLog> m7235a = bfs.aaI().m7235a(false, 7776000000L);
                bgb.this.ahM.clear();
                bgb.this.ahM.addAll(m7235a);
                bgb.this.abv();
            }
        });
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.page_url_check_risk, (ViewGroup) null);
        this.aVU = inflate.findViewById(R.id.top_panel);
        this.boz = (TextView) this.aVU.findViewById(R.id.main_text_with_record_count);
        this.mRecyclerView = (RecyclerView) inflate.findViewById(R.id.risk_log_list_view);
        this.boo = new bfx(this.ahM, null, this);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.mRecyclerView.setItemAnimator(new DefaultItemAnimator());
        this.mRecyclerView.setAdapter(this.boo);
        this.boA = inflate.findViewById(R.id.open_btn_layout);
        this.boB = (Button) this.boA.findViewById(R.id.all_intercept_btn);
        this.boB.setOnClickListener(this);
        this.boC = (Button) this.boA.findViewById(R.id.all_trust_btn);
        this.boC.setOnClickListener(this);
        this.boD = inflate.findViewById(R.id.handled_tips_panel);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        ada adaVar = new ada(getActivity(), C3953zi.m1311pr().getString(R.string.urlcheck_info_page_title));
        View wholeView = adaVar.getWholeView();
        if (wholeView != null) {
            wholeView.findViewById(R.id.title_bar_divider).setVisibility(8);
        }
        return adaVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        ady.m12308tK().mo1746bi(100678);
        beg.m7461Zj().m7450c(this.bos);
    }

    private void abs() {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.bgb.2
            @Override // java.lang.Runnable
            public void run() {
                bgb.this.boD.setVisibility(0);
                bgb.this.aVU.setVisibility(8);
                bgb.this.mRecyclerView.setVisibility(8);
                bgb.this.boA.setVisibility(8);
                bgb.this.getHandler().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.bgb.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        bgb.this.getActivity().finish();
                    }
                }, 1000L);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (!C3942yy.m1351d(this.ahM)) {
            switch (view.getId()) {
                case R.id.all_intercept_btn /* 2131690209 */:
                    ady.m12308tK().mo1746bi(100679);
                    abu();
                    return;
                case R.id.all_trust_btn /* 2131690210 */:
                    ady.m12308tK().mo1746bi(100680);
                    if (bfw.aaS().aaZ()) {
                        m7133f(true, -1);
                        return;
                    } else {
                        abt();
                        return;
                    }
                default:
                    return;
            }
        }
    }

    @Override // com.kingroot.kinguser.bfx.InterfaceC2227e
    /* renamed from: e */
    public void mo7136e(View view, int i) {
        ady.m12308tK().mo1746bi(100681);
        if (bfw.aaS().aaZ()) {
            m7133f(false, i);
        } else {
            m7129iG(i);
        }
    }

    @Override // com.kingroot.kinguser.bfx.InterfaceC2227e
    /* renamed from: q */
    public void mo7128q(View view, final int i) {
        ady.m12308tK().mo1746bi(100682);
        try {
            final UrlCheckLog urlCheckLog = this.ahM.get(i);
            beg.m7461Zj().m7450c(new bed(new bek() { // from class: com.kingroot.kinguser.bgb.3
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    urlCheckLog.bnx = true;
                    bfs.aaI().m7231e(urlCheckLog);
                    urlCheckLog.m1995dQ(false);
                    bgb.this.ahM.remove(i);
                    bgb.this.abv();
                }
            }));
        } catch (Exception e) {
        }
    }

    @Override // com.kingroot.kinguser.bfx.InterfaceC2227e
    /* renamed from: c */
    public void mo7139c(View view, int i) {
        UrlCheckLog urlCheckLog;
        if (!C3942yy.m1351d(this.ahM) && i >= 0 && i <= this.ahM.size() && (urlCheckLog = this.ahM.get(i)) != null) {
            UrlCheckDetailActivity.m1992a(getContext(), urlCheckLog);
        }
    }

    /* renamed from: f */
    private void m7133f(final boolean z, final int i) {
        if (this.boc == null) {
            this.boc = new bic(getContext());
            this.boc.show();
            this.boc.m6941lJ(C3953zi.m1311pr().getString(R.string.urlcheck_risk_page_confrim_dialog_checkbox));
            this.boc.m6942ee(false);
            this.boc.setTitleText(C3953zi.m1311pr().getString(R.string.urlcheck_risk_page_confirm_dialog_title));
            this.boc.m6933d(C3953zi.m1311pr().getString(R.string.urlcheck_risk_page_confirm_dialog_content));
            this.boc.m6945b(new bic.InterfaceC2299a() { // from class: com.kingroot.kinguser.bgb.4
                @Override // com.kingroot.kinguser.bic.InterfaceC2299a
                /* renamed from: d */
                public void mo6940d(View view, boolean z2) {
                    if (z2) {
                        bfw.aaS().aba();
                    }
                    if (z) {
                        bgb.this.abt();
                    } else {
                        bgb.this.m7129iG(i);
                    }
                }
            });
            this.boc.m6947a(new bic.InterfaceC2299a() { // from class: com.kingroot.kinguser.bgb.5
                @Override // com.kingroot.kinguser.bic.InterfaceC2299a
                /* renamed from: d */
                public void mo6940d(View view, boolean z2) {
                }
            });
            return;
        }
        this.boc.dismiss();
        this.boc.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: iG */
    public void m7129iG(int i) {
        try {
            final UrlCheckLog urlCheckLog = this.ahM.get(i);
            beg.m7461Zj().m7450c(new bed(new bek() { // from class: com.kingroot.kinguser.bgb.6
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    bfs.aaI().m7230lh(urlCheckLog.f3653GY);
                    bfs.aaI().m7233d(urlCheckLog);
                    urlCheckLog.m1995dQ(true);
                }
            }));
            this.ahM.remove(i);
            abv();
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abt() {
        beg.m7461Zj().m7450c(new bed(new bek() { // from class: com.kingroot.kinguser.bgb.7
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                Iterator it = bgb.this.ahM.iterator();
                while (it.hasNext()) {
                    UrlCheckLog urlCheckLog = (UrlCheckLog) it.next();
                    it.remove();
                    bfs.aaI().m7230lh(urlCheckLog.f3653GY);
                    bfs.aaI().m7233d(urlCheckLog);
                    urlCheckLog.m1995dQ(true);
                }
                bgb.this.abv();
            }
        }));
    }

    private void abu() {
        beg.m7461Zj().m7450c(new bed(new bek() { // from class: com.kingroot.kinguser.bgb.8
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                Iterator it = bgb.this.ahM.iterator();
                while (it.hasNext()) {
                    UrlCheckLog urlCheckLog = (UrlCheckLog) it.next();
                    it.remove();
                    urlCheckLog.bnx = true;
                    bfs.aaI().m7231e(urlCheckLog);
                    urlCheckLog.m1995dQ(false);
                }
                bgb.this.abv();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abv() {
        if (C3942yy.m1351d(this.ahM)) {
            abs();
        } else {
            getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.bgb.9
                @Override // java.lang.Runnable
                public void run() {
                    bgb.this.aVU.setVisibility(0);
                    bgb.this.boz.setText("" + bgb.this.ahM.size());
                    bgb.this.boo.notifyDataSetChanged();
                }
            });
        }
    }
}
