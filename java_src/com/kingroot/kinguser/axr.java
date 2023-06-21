package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.p007v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.Button;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.activitys.AntiInjectLogActivity;
import com.kingroot.kinguser.activitys.ExaminationRecommendAppActivity;
import com.kingroot.kinguser.activitys.SoftwareProtectListActivity;
import com.kingroot.kinguser.agh;
import com.kingroot.kinguser.auk;
import com.kingroot.kinguser.bex;
import com.kingroot.kinguser.bic;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
import com.kingroot.kinguser.urlcheck.p017ui.UrlCheckMainActivity;
import com.kingroot.kinguser.xmod.p018ui.CveInfoActivity;
import com.kingroot.kinguses.R;
import java.util.List;
/* loaded from: classes.dex */
public class axr extends AbstractC3922ym implements auk.InterfaceC1615b {
    private View bbl;
    private agh bbm;
    private auk.InterfaceC1614a bbn;
    private boolean bbo;
    private bdg bbp;
    private agh.InterfaceC0896k bbq;
    private RecyclerView mRecyclerView;

    public axr(Context context) {
        super(context);
        this.bbo = false;
        this.bbq = new agh.InterfaceC0896k() { // from class: com.kingroot.kinguser.axr.3
            @Override // com.kingroot.kinguser.agh.InterfaceC0896k
            /* renamed from: c */
            public void mo8165c(View view, int i) {
                axr.this.bbn.mo8921gJ(i);
            }

            @Override // com.kingroot.kinguser.agh.InterfaceC0896k
            /* renamed from: d */
            public void mo8164d(View view, int i) {
                axr.this.bbn.mo8961a((Button) view, i);
            }

            @Override // com.kingroot.kinguser.agh.InterfaceC0896k
            /* renamed from: e */
            public void mo8163e(View view, int i) {
                axr.this.bbn.mo8920gR(i);
            }

            @Override // com.kingroot.kinguser.agh.InterfaceC0896k
            /* renamed from: f */
            public void mo8162f(View view, int i) {
                axr.this.bbn.mo8919gS(i);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.bbo = getIntent().getBooleanExtra("mode", false);
        ady.m12308tK().mo1746bi(100456);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        bex bexVar = new bex(getActivity(), C3953zi.m1311pr().getString(abc.m12845qK().isRootPermition() ? R.string.security_protect_page_title : R.string.system_security_shield));
        bexVar.m7365a(new bex.InterfaceC2164a() { // from class: com.kingroot.kinguser.axr.1
            @Override // com.kingroot.kinguser.bex.InterfaceC2164a
            /* renamed from: UE */
            public void mo7353UE() {
                aks.m11143BP().m10747et(0);
                aks.m11143BP().m10800cc(false);
                axr.this.bbn.mo8940cU(axr.this.bbo);
            }
        });
        return bexVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        boolean z = false;
        super.onResume();
        bex bexVar = (bex) m1407oM();
        if (abc.m12845qK().isRootPermition(false) && bfw.aaS().abe() && bfw.aaS().aaV()) {
            z = true;
        }
        bexVar.m12567aq(z);
        this.bbn.mo8940cU(this.bbo);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.page_security_protect_main, (ViewGroup) null);
        this.bbn.start();
        return inflate;
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: bm */
    public void mo8175bm(final List<bcy> list) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axr.5
            @Override // java.lang.Runnable
            public void run() {
                if (axr.this.mRecyclerView == null) {
                    axr.this.mRecyclerView = (RecyclerView) axr.this.getWholeView().findViewById(R.id.recycler_card_list);
                    axr.this.mRecyclerView.setLayoutManager(new C1960a(axr.this.mContext));
                    axr.this.mRecyclerView.setItemAnimator(new C3512rc());
                    axr.this.bbm = new agh(list, axr.this.bbq);
                    axr.this.mRecyclerView.setAdapter(axr.this.bbm);
                }
                axr.this.bbm.setData(list);
                axr.this.bbm.notifyDataSetChanged();
            }
        });
    }

    /* renamed from: com.kingroot.kinguser.axr$a */
    /* loaded from: classes.dex */
    static class C1960a extends FixLinearLayoutManager {
        public C1960a(Context context) {
            super(context);
        }

        @Override // android.support.p007v7.widget.LinearLayoutManager, android.support.p007v7.widget.RecyclerView.LayoutManager
        public boolean supportsPredictiveItemAnimations() {
            return true;
        }
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: b */
    public void mo8176b(final bdd bddVar) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axr.6
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView.ViewHolder findViewHolderForAdapterPosition = axr.this.mRecyclerView.findViewHolderForAdapterPosition(0);
                if (findViewHolderForAdapterPosition == null || !(findViewHolderForAdapterPosition instanceof agh.C0890f)) {
                    axr.this.bbm.notifyItemChanged(0);
                } else {
                    ((agh.C0890f) findViewHolderForAdapterPosition).m11964a(bddVar);
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: a */
    public void mo8183a(final int i, final bdg bdgVar) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axr.7
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView.ViewHolder findViewHolderForAdapterPosition = axr.this.mRecyclerView.findViewHolderForAdapterPosition(i);
                if (findViewHolderForAdapterPosition != null && (findViewHolderForAdapterPosition instanceof agh.C0894j)) {
                    ((agh.C0894j) findViewHolderForAdapterPosition).m11958b(bdgVar);
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    public void notifyItemRemoved(final int i) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axr.8
            @Override // java.lang.Runnable
            public void run() {
                axr.this.bbm.notifyItemRemoved(i);
            }
        });
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: cW */
    public void mo8172cW(final boolean z) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axr.9
            @Override // java.lang.Runnable
            public void run() {
                if (axr.this.bbl == null) {
                    axr.this.bbl = ((ViewStub) axr.this.getWholeView().findViewById(R.id.stub_empty_view)).inflate();
                    ((TextView) axr.this.bbl.findViewById(R.id.list_empty)).setText(C3953zi.m1311pr().getString(R.string.security_protect_empty_tip));
                }
                if (z) {
                    axr.this.bbl.setVisibility(0);
                } else {
                    axr.this.bbl.setVisibility(8);
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: a */
    public void mo8184a(final int i, final bdb bdbVar) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axr.10
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView.ViewHolder findViewHolderForAdapterPosition = axr.this.mRecyclerView.findViewHolderForAdapterPosition(i);
                if (findViewHolderForAdapterPosition != null && (findViewHolderForAdapterPosition instanceof agh.C0887d)) {
                    ((agh.C0887d) findViewHolderForAdapterPosition).m11967a(bdbVar);
                    ((FixLinearLayoutManager) axr.this.mRecyclerView.getLayoutManager()).scrollToPositionWithOffset(i, 0);
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: d */
    public void mo8170d(bdg bdgVar) {
        this.bbp = bdgVar;
        aff.m12095a(bdgVar.getTitle(), (Activity) getContext(), 10001);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onActivityResult(int i, int i2, Intent intent) {
        this.bbn.mo8941c(this.bbp);
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: Qp */
    public void mo8189Qp() {
        UrlCheckMainActivity.m1989f(null, true);
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: Qq */
    public void mo8188Qq() {
        Context m13453ge = KApplication.m13453ge();
        Intent intent = new Intent(m13453ge, SoftwareProtectListActivity.class);
        intent.putExtra("setting_title", C3953zi.m1311pr().getString(R.string.setting_soft_protect_list));
        intent.putExtra("software.protect_list.page", 0);
        intent.addFlags(268435456);
        m13453ge.startActivity(intent);
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: Qr */
    public void mo8187Qr() {
        AntiInjectLogActivity.m12648c(aft.m12026vt());
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: f */
    public void mo8167f(ExamRecommendAppInfo examRecommendAppInfo) {
        ExaminationRecommendAppActivity.m12620a(aft.m12026vt(), examRecommendAppInfo, "RootSafe");
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: cV */
    public void mo8173cV(boolean z) {
        Context m13453ge = KApplication.m13453ge();
        Intent intent = new Intent(m13453ge, CveInfoActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("auto_fix", z);
        m13453ge.startActivity(intent);
        ady.m12308tK().mo1746bi(100575);
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: a */
    public void mo8185a(final int i, final bcy bcyVar) {
        final bic bicVar = new bic(getContext());
        bicVar.show();
        bicVar.m6942ee(false);
        if (bcyVar instanceof bdg) {
            bicVar.setTitleText(C3953zi.m1311pr().getString(R.string.security_protect_trust_dialog_title));
            bicVar.m6933d(C3953zi.m1311pr().getString(R.string.security_protect_trust_dialog_desc));
        } else if (bcyVar instanceof bda) {
            bicVar.setTitleText(C3953zi.m1311pr().getString(R.string.examination_recommend_app_detail_network_change_title));
            bicVar.m6933d(C3953zi.m1311pr().getString(R.string.security_protect_cve_card_trust_tips_content));
        }
        bicVar.m6941lJ(C3953zi.m1311pr().getString(R.string.security_protect_trust_dialog_checked));
        bicVar.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
        bicVar.m6939C(abg.m12835r(8.0f));
        bicVar.m6930lL(C3953zi.m1311pr().getString(R.string.dialog_btn_ok));
        bicVar.m6945b(new bic.InterfaceC2299a() { // from class: com.kingroot.kinguser.axr.11
            @Override // com.kingroot.kinguser.bic.InterfaceC2299a
            /* renamed from: d */
            public void mo6940d(View view, boolean z) {
                ady.m12308tK().mo1746bi(100461);
                axr.this.bbn.mo8963a(i, bcyVar, z);
            }
        });
        bicVar.m6947a(new bic.InterfaceC2299a() { // from class: com.kingroot.kinguser.axr.2
            @Override // com.kingroot.kinguser.bic.InterfaceC2299a
            /* renamed from: d */
            public void mo6940d(View view, boolean z) {
                ady.m12308tK().mo1746bi(100462);
                bicVar.dismiss();
            }
        });
    }

    /* renamed from: a */
    public void m8182a(auk.InterfaceC1614a interfaceC1614a) {
        this.bbn = (auk.InterfaceC1614a) C3948zd.m1327k(interfaceC1614a);
    }

    @Override // com.kingroot.kinguser.auk.InterfaceC1615b
    /* renamed from: Qs */
    public void mo8186Qs() {
        final aks m11143BP = aks.m11143BP();
        boolean m10972FE = m11143BP.m10972FE();
        boolean m10974FC = m11143BP.m10974FC();
        boolean abX = bgt.abX();
        if (m10972FE && m10974FC && abX) {
            C3953zi m1311pr = C3953zi.m1311pr();
            final bii biiVar = new bii(this.mContext);
            aks.m11143BP().m10883bE(System.currentTimeMillis());
            biiVar.show();
            biiVar.m6907lN(m1311pr.getString(R.string.praise_dialog_risk_title));
            biiVar.m6908lM(m1311pr.getString(R.string.praise_dialog_risk_content_text));
            biiVar.m6911h(m1311pr.getDrawable(R.drawable.green_bg_1));
            biiVar.m6910jd(R.drawable.pop_5star_safe);
            biiVar.m6906n(new View.OnClickListener() { // from class: com.kingroot.kinguser.axr.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    biiVar.dismiss();
                    ady.m12308tK().mo1746bi(100564);
                    m11143BP.m10793cj(false);
                }
            });
        }
    }
}
