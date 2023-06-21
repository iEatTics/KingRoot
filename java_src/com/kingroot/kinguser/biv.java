package com.kingroot.kinguser;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.aic;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.bit;
import com.kingroot.kinguser.xmod.cloud.CveCloudListManager;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class biv extends AbstractC3922ym {
    private bed aRB;
    private ada anW;
    private bid aoy;
    private View buQ;
    private Button buR;
    private FixLinearLayoutManager buS;
    private boolean buT;
    private boolean buU;
    private bit buV;
    private View buW;
    private bit.InterfaceC2351b buX;
    private boolean mAnimating;
    private Handler mHandler;
    private RecyclerView mRecyclerView;

    /* renamed from: zv */
    private View f1690zv;

    public biv(Context context) {
        super(context);
        this.buT = true;
        this.buU = false;
        this.mAnimating = false;
        this.buV = new bit();
        this.mHandler = new Handler() { // from class: com.kingroot.kinguser.biv.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        biv.this.buV.m6832aZ((List) message.obj);
                        if (biv.this.buU) {
                            biv.this.adn();
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        };
        this.aRB = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.biv.9
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                List<CveCloudListManager.CveInfo> m6847jf = biq.ada().m6847jf(13);
                if (!C3942yy.m1351d(m6847jf)) {
                    Message obtain = Message.obtain();
                    obtain.what = 1;
                    obtain.obj = m6847jf;
                    biv.this.mHandler.sendMessage(obtain);
                }
            }
        });
        this.buX = new bit.InterfaceC2351b() { // from class: com.kingroot.kinguser.biv.10
            @Override // com.kingroot.kinguser.bit.InterfaceC2351b
            public void onFinish() {
                biv.this.m6817ei(true);
                biv.this.m6826Qs();
                biv.this.buV.adk();
                C3954zj.m1310b(C3953zi.m1311pr().getText(R.string.malicious_cleanup_result_finish));
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.anW = new ada(getActivity(), C3953zi.m1311pr().getString(R.string.cve_info_page_title));
        View wholeView = this.anW.getWholeView();
        if (wholeView != null) {
            wholeView.findViewById(R.id.title_bar_divider).setVisibility(8);
            this.buW = wholeView.findViewById(R.id.left_button);
            this.buW.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.biv.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    biv.this.getActivity().onBackPressed();
                }
            });
        }
        return this.anW;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        this.buU = getIntent().getBooleanExtra("auto_fix", false);
        beg.m7461Zj().m7450c(this.aRB);
        m6822aG(aks.m11143BP().m10964FM());
        ady.m12308tK().mo1746bi(100577);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        this.f1690zv = getLayoutInflater().inflate(R.layout.page_cve_info, (ViewGroup) null);
        this.mRecyclerView = (RecyclerView) this.f1690zv.findViewById(R.id.cve_list);
        this.buS = new FixLinearLayoutManager(this.mContext);
        this.mRecyclerView.setLayoutManager(this.buS);
        this.mRecyclerView.setItemAnimator(new DefaultItemAnimator());
        this.mRecyclerView.setAdapter(this.buV);
        this.buQ = this.f1690zv.findViewById(R.id.open_btn_layout);
        this.buQ.setVisibility(aks.m11143BP().m10964FM() ? 8 : 0);
        this.buR = (Button) this.f1690zv.findViewById(R.id.open_btn);
        this.buR.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.biv.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                biv.this.adn();
            }
        });
        return this.f1690zv;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onBackPressed() {
        return !this.buT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adn() {
        if (!aks.m11143BP().m10964FM() && !this.mAnimating) {
            this.mAnimating = true;
            this.buT = false;
            this.buQ.setVisibility(8);
            this.buV.m6835a(this.buX);
            this.buV.adl();
            ady.m12308tK().mo1746bi(100574);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ei */
    public void m6817ei(boolean z) {
        biq.ada().m6848eh(z);
        aks.m11143BP().m10786cq(z);
        if (!z) {
            aks.m11143BP().m10787cp(false);
        }
        this.buQ.setVisibility(z ? 8 : 0);
        m6822aG(z);
        if (z) {
            this.mAnimating = false;
            this.buT = true;
        } else if (this.mRecyclerView != null) {
            this.mRecyclerView.smoothScrollToPosition(0);
        }
        this.buV.notifyDataSetChanged();
        if (z) {
            ady.m12308tK().m1782bj(100584);
        } else {
            ady.m12308tK().m1781bk(100584);
        }
    }

    /* renamed from: aG */
    private void m6822aG(boolean z) {
        if (z) {
            this.anW.m12566ar(true);
            this.anW.m12567aq(false);
            this.anW.m12562c(C3953zi.m1311pr().getDrawable(R.drawable.common_more));
            getWholeView().findViewById(R.id.right_btn).setBackgroundResource(R.drawable.title_button_selector);
            this.anW.m12563b(new View.OnClickListener() { // from class: com.kingroot.kinguser.biv.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    biv.this.m6816r(view);
                    ady.m12308tK().mo1746bi(100578);
                }
            });
            return;
        }
        this.anW.m12566ar(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m6816r(View view) {
        final aic aicVar = new aic(getContext(), view);
        C3953zi m1311pr = C3953zi.m1311pr();
        ArrayList arrayList = new ArrayList();
        arrayList.add(m1311pr.getString(R.string.cve_info_page_option_menu));
        aic.C0981b c0981b = new aic.C0981b(getContext(), arrayList, false, null);
        aicVar.m11674Y(arrayList);
        aicVar.m11673a(c0981b);
        aicVar.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.biv.6
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                aicVar.dismiss();
                biv.this.m6814wC();
                ady.m12308tK().mo1746bi(100580);
            }
        });
        aicVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wC */
    public void m6814wC() {
        if (this.aoy == null) {
            this.aoy = new bid(getContext());
            this.aoy.show();
            this.aoy.setTitleText(C3953zi.m1311pr().getString(R.string.cve_info_page_title));
            this.aoy.m6933d(C3953zi.m1311pr().getString(R.string.cve_info_page_confirm_dialog_content));
            this.aoy.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.biv.7
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    biv.this.m6817ei(false);
                    ady.m12308tK().mo1746bi(100581);
                }
            });
            this.aoy.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.biv.8
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    ady.m12308tK().mo1746bi(100582);
                }
            });
            return;
        }
        this.aoy.dismiss();
        this.aoy.show();
    }

    /* renamed from: Qs */
    public void m6826Qs() {
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
            biiVar.m6906n(new View.OnClickListener() { // from class: com.kingroot.kinguser.biv.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    biiVar.dismiss();
                    ady.m12308tK().mo1746bi(100564);
                    m11143BP.m10793cj(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        m6815vd();
        super.onDestroy();
    }

    /* renamed from: vd */
    public void m6815vd() {
        if (this.aoy != null && this.aoy.isShowing()) {
            this.aoy.dismiss();
        }
    }
}
