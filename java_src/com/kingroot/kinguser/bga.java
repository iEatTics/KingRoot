package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.LinearLayoutManager;
import android.support.p007v7.widget.RecyclerView;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.animation.Animator;
import com.android.animation.ValueAnimator;
import com.kingroot.kinguser.aic;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.bfx;
import com.kingroot.kinguser.bga;
import com.kingroot.kinguser.bic;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.urlcheck.aidl.ICallback;
import com.kingroot.kinguser.urlcheck.p016db.UrlCheckLog;
import com.kingroot.kinguser.urlcheck.p017ui.UrlCheckRiskActivity;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
/* loaded from: classes.dex */
public class bga extends AbstractC3922ym implements bfx.InterfaceC2226d {
    private View aWk;
    private bid aoy;
    private TextView bbE;
    private ImageView bbF;
    private View bbH;
    private TextView bbI;
    private TextView bbJ;
    private TextView bbN;
    private Button bbO;
    private ValueAnimator bbT;
    private ValueAnimator.AnimatorUpdateListener bbU;
    private Animator.AnimatorListener bbV;
    private bic boc;
    private acw boe;
    private View bof;
    private View bog;
    private View boh;
    private View boi;
    private View boj;
    private View bok;
    private ViewStub bol;
    private List<UrlCheckLog> bom;
    private List<UrlCheckLog> bon;
    private bfx boo;
    private boolean bop;
    private boolean boq;
    private ICallback.Stub bor;
    private bed bos;
    private RecyclerView mRecyclerView;
    private TextView mTitleView;

    /* renamed from: zv */
    private View f1672zv;

    public bga(Context context, boolean z) {
        super(context);
        this.bbT = new ValueAnimator();
        this.bom = new ArrayList();
        this.bon = new ArrayList();
        this.bop = false;
        this.boq = false;
        this.bor = new ICallback.Stub() { // from class: com.kingroot.kinguser.urlcheck.ui.page.UrlCheckMainPage$13
            @Override // com.kingroot.kinguser.urlcheck.aidl.ICallback
            public void onCallback(final int i) {
                bga.this.getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.urlcheck.ui.page.UrlCheckMainPage$13.1
                    @Override // java.lang.Runnable
                    public void run() {
                        bga.this.m7172dY(i == 0);
                    }
                });
            }
        };
        this.bbU = new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.bga.5
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (bga.this.bbI != null) {
                    bga.this.bbI.setText(valueAnimator.getAnimatedValue().toString());
                }
            }
        };
        this.bbV = new Animator.AnimatorListener() { // from class: com.kingroot.kinguser.bga.6
            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                bga.this.m7187UG();
                beg.m7461Zj().m7450c(bga.this.bos);
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        };
        this.bos = new bed(new bek() { // from class: com.kingroot.kinguser.bga.7
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
                super.run();
                if (!(bfw.aaS().aaU() && bfp.aay().isEnable())) {
                    bga.this.m7163iE(2);
                    bga.this.m7180b(2, null, null);
                    return;
                }
                List<UrlCheckLog> m7235a = bfs.aaI().m7235a(false, 7776000000L);
                List<UrlCheckLog> m7235a2 = bfs.aaI().m7235a(true, 7776000000L);
                if (m7235a2.size() >= 200) {
                    m7235a2 = m7235a2.subList(0, ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION);
                }
                if (!C3942yy.m1351d(m7235a)) {
                    bga.this.m7163iE(4);
                    bga.this.m7180b(4, m7235a2, m7235a);
                    return;
                }
                bga.this.m7163iE(1);
                bga.this.m7180b(1, m7235a2, m7235a);
            }
        });
        this.boq = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        bfw.aaS().m7205dT(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        ady.m12308tK().mo1746bi(100675);
        beg.m7461Zj().m7450c(this.bos);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.boe = new ada(getActivity(), C3953zi.m1311pr().getString(R.string.urlcheck_info_page_title));
        View wholeView = this.boe.getWholeView();
        if (wholeView != null) {
            wholeView.findViewById(R.id.title_bar_divider).setVisibility(8);
        }
        m7181aG(false);
        return this.boe;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        try {
            this.f1672zv = getLayoutInflater().inflate(R.layout.page_url_check_main, (ViewGroup) null);
        } catch (Exception e) {
        }
        this.bof = this.f1672zv.findViewById(R.id.top_panel);
        this.bbF = (ImageView) this.bof.findViewById(R.id.main_image);
        this.bbE = (TextView) this.bof.findViewById(R.id.main_text);
        this.bbN = (TextView) this.bof.findViewById(R.id.sub_text);
        this.bog = this.f1672zv.findViewById(R.id.main_tips_panel);
        this.boh = this.bog.findViewById(R.id.urlcheck_tips_risk);
        this.boi = this.bog.findViewById(R.id.urlcheck_tips_protect);
        this.bbO = (Button) this.bog.findViewById(R.id.main_button);
        this.bbH = this.f1672zv.findViewById(R.id.top_panel_animation);
        this.bbI = (TextView) this.f1672zv.findViewById(R.id.main_text_anim);
        this.bbJ = (TextView) this.f1672zv.findViewById(R.id.sub_text_anim);
        this.bbT.addUpdateListener(this.bbU);
        this.boj = this.f1672zv.findViewById(R.id.content_panel);
        this.bok = this.boj.findViewById(R.id.pending_handle_item);
        this.bol = (ViewStub) this.boj.findViewById(R.id.empty_tips);
        this.mTitleView = (TextView) this.boj.findViewById(R.id.title);
        this.mRecyclerView = (RecyclerView) this.boj.findViewById(R.id.log_list_view);
        this.boo = new bfx(this.bom, this, null);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.mRecyclerView.setItemAnimator(new DefaultItemAnimator());
        this.mRecyclerView.setAdapter(this.boo);
        return this.f1672zv;
    }

    @Override // com.kingroot.kinguser.bfx.InterfaceC2226d
    /* renamed from: p */
    public void mo7154p(View view, int i) {
        if (i >= 0 && i <= this.bom.size()) {
            this.bom.remove(i);
            abr();
            ady.m12308tK().mo1746bi(100677);
            bfs.aaI().m7233d(this.bom.get(i));
        }
    }

    @Override // com.kingroot.kinguser.bfx.InterfaceC2226d
    /* renamed from: e */
    public void mo7170e(View view, int i) {
        if (i >= 0 || i <= this.bom.size()) {
            ady.m12308tK().mo1746bi(100676);
            if (bfw.aaS().aaZ()) {
                m7162iF(i);
            } else {
                m7161iG(i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m7151r(View view) {
        final aic aicVar = new aic(getContext(), view);
        C3953zi m1311pr = C3953zi.m1311pr();
        ArrayList arrayList = new ArrayList();
        arrayList.add(m1311pr.getString(R.string.urlcheck_main_page_option_clear_log));
        arrayList.add(m1311pr.getString(bfw.aaS().aaW() ? R.string.urlcheck_main_page_option_close_notify : R.string.urlcheck_main_page_option_open_notify));
        arrayList.add(m1311pr.getString(bfw.aaS().aaU() ? R.string.urlcheck_main_page_option_disable : R.string.urlcheck_main_page_option_enable));
        aic.C0981b c0981b = new aic.C0981b(getContext(), arrayList, false, null);
        aicVar.m11674Y(arrayList);
        aicVar.m11673a(c0981b);
        aicVar.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.bga.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                aicVar.dismiss();
                switch (i) {
                    case 0:
                        ady.m12308tK().mo1746bi(100684);
                        bga.this.abm();
                        return;
                    case 1:
                        ady.m12308tK().mo1746bi(100685);
                        bga.this.abn();
                        return;
                    case 2:
                        ady.m12308tK().mo1746bi(100686);
                        bga.this.m7173dX(!bfw.aaS().aaU());
                        return;
                    default:
                        return;
                }
            }
        });
        aicVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abm() {
        beg.m7461Zj().m7450c(new bed(new bek() { // from class: com.kingroot.kinguser.bga.11
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                List<UrlCheckLog> m7235a = bfs.aaI().m7235a(true, 7776000000L);
                List<UrlCheckLog> m7235a2 = bfs.aaI().m7235a(false, 7776000000L);
                if (m7235a.size() > 0) {
                    bfs.aaI().m7232dP(true);
                    m7235a.clear();
                    bga.this.m7180b(m7235a2.size() > 0 ? 4 : 1, m7235a, m7235a2);
                    C3954zj.show(R.string.urlcheck_main_page_clear_all_log_toast);
                    return;
                }
                C3954zj.show(R.string.urlcheck_main_page_clear_no_log_toast);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abn() {
        bfw.aaS().m7204dU(!bfw.aaS().aaW());
        if (bfw.aaS().aaW()) {
            C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.urlcheck_main_page_open_banner_toast));
        } else {
            C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.urlcheck_main_page_close_banner_toast));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dX */
    public void m7173dX(boolean z) {
        if (z) {
            bfw.aaS().m7206dS(true);
            abo();
            return;
        }
        m7144wC();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aG */
    public void m7181aG(boolean z) {
        this.boe.m12566ar(z);
        this.boe.m12567aq(false);
        if (z) {
            this.boe.m12562c(C3953zi.m1311pr().getDrawable(R.drawable.common_more));
            this.boe.getWholeView().findViewById(R.id.right_btn).setBackgroundResource(R.drawable.title_button_selector);
            this.boe.m12563b(new View.OnClickListener() { // from class: com.kingroot.kinguser.bga.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    bga.this.m7151r(view);
                }
            });
        }
    }

    /* renamed from: wC */
    private void m7144wC() {
        if (this.aoy == null) {
            this.aoy = new bid(getContext());
            this.aoy.show();
            this.aoy.setTitleText(C3953zi.m1311pr().getString(R.string.urlcheck_main_page_confirm_dialog_title));
            this.aoy.m6933d(C3953zi.m1311pr().getString(R.string.urlcheck_main_page_confirm_dialog_content));
            this.aoy.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bga.13
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    ady.m12308tK().mo1746bi(100687);
                    bfw.aaS().m7206dS(false);
                    bfp.aay().m7252a(false, (ICallback) null);
                    bga.this.m7163iE(2);
                    bga.this.m7180b(2, null, null);
                    C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.urlcheck_main_page_disable_toast));
                }
            });
            this.aoy.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bga.14
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    ady.m12308tK().mo1746bi(100688);
                }
            });
            return;
        }
        this.aoy.dismiss();
        this.aoy.show();
    }

    private void abo() {
        m7181aG(false);
        this.bof.setVisibility(8);
        this.bbH.setVisibility(0);
        this.bbJ.setText(R.string.urlcheck_main_page_top_panel_opening);
        this.bbO.setVisibility(8);
        this.bop = false;
        this.bbT.removeAllListeners();
        this.bbT.setIntValues(0, new Random().nextInt(50) + 50);
        this.bbT.setDuration(35000L);
        this.bbT.addListener(new Animator.AnimatorListener() { // from class: com.kingroot.kinguser.bga.15
            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                bga.this.bop = true;
                bga.this.m7163iE(3);
                bga.this.m7180b(3, null, null);
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // com.android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }
        });
        this.bbT.start();
        bfp.aay().m7252a(true, (ICallback) this.bor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dY */
    public void m7172dY(boolean z) {
        if (!this.bop) {
            if (z) {
                aks.m11143BP().m10869bL(System.currentTimeMillis());
                this.bbT.removeAllListeners();
                this.bbT.cancel();
                this.bbT.setIntValues(Integer.parseInt(this.bbT.getAnimatedValue().toString()), 100);
                this.bbT.setDuration(5000L);
                this.bbT.addListener(this.bbV);
                this.bbT.start();
                return;
            }
            m7163iE(3);
            m7180b(3, null, null);
        }
    }

    /* renamed from: iE */
    public void m7163iE(final int i) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.bga.16
            @Override // java.lang.Runnable
            public void run() {
                bga.this.bbH.setVisibility(8);
                bga.this.bof.setVisibility(0);
                switch (i) {
                    case 1:
                        bga.this.m7181aG(true);
                        bga.this.bbF.setImageResource(R.drawable.virulence_domain_su);
                        bga.this.bbE.setText(R.string.security_protect_top_primary_normal);
                        bga.this.bbE.setTextColor(C3953zi.m1311pr().getColor(R.color.green_1));
                        return;
                    case 2:
                        bga.this.m7181aG(false);
                        bga.this.bbF.setImageResource(R.drawable.virulence_domain);
                        bga.this.bbE.setText(R.string.urlcheck_main_page_top_panel_disable);
                        bga.this.bbE.setTextColor(C3953zi.m1311pr().getColor(R.color.black_1));
                        return;
                    case 3:
                        bga.this.m7181aG(false);
                        bga.this.bbF.setImageResource(R.drawable.silent_install_main_abandon_icon);
                        bga.this.bbE.setTextColor(C3953zi.m1311pr().getColor(R.color.red));
                        bga.this.bbE.setText(R.string.silent_install_main_page_failed_tips);
                        bga.this.bbN.setVisibility(0);
                        bga.this.bbN.setText(R.string.silent_install_main_page_failed_sub_tips);
                        bfw.aaS().abh();
                        return;
                    case 4:
                        bga.this.m7181aG(true);
                        bga.this.bbF.setImageResource(R.drawable.safety_protective_warning);
                        bga.this.bbE.setText(R.string.examination_status_find_risks);
                        bga.this.bbE.setTextColor(C3953zi.m1311pr().getColor(R.color.red_1));
                        return;
                    default:
                        return;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abp() {
        UrlCheckRiskActivity.m1988aL(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m7180b(final int i, final List<UrlCheckLog> list, final List<UrlCheckLog> list2) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.bga.17
            /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
            @Override // java.lang.Runnable
            public void run() {
                bga.this.boj.setVisibility(0);
                bga.this.bok.setVisibility(8);
                bga.this.bbO.setVisibility(8);
                bga.this.bog.setVisibility(8);
                bga.this.mTitleView.setVisibility(8);
                bga.this.mRecyclerView.setVisibility(8);
                if (bga.this.aWk != null) {
                    bga.this.aWk.setVisibility(8);
                }
                bga.this.bom.clear();
                if (!C3942yy.m1351d(list)) {
                    bga.this.bom.addAll(list);
                }
                bga.this.bon.clear();
                if (!C3942yy.m1351d(list2)) {
                    bga.this.bon.addAll(list2);
                }
                switch (i) {
                    case 1:
                        break;
                    case 2:
                        bga.this.m7171dZ(false);
                        if (bga.this.boq) {
                            bga.this.boq = false;
                            bga.this.m7173dX(true);
                            return;
                        }
                        return;
                    case 3:
                        bga.this.m7171dZ(true);
                        return;
                    case 4:
                        bga.this.abq();
                        break;
                    default:
                        return;
                }
                bga.this.abr();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abq() {
        if (!C3942yy.m1351d(this.bon)) {
            this.bok.setVisibility(0);
            ((TextView) this.bok.findViewById(R.id.main_text)).setText(String.format(C3953zi.m1311pr().getString(R.string.urlcheck_unhanlde_risk_warning), Integer.valueOf(this.bon.size())));
            this.bok.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bga.18
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    bga.this.abp();
                }
            });
        }
    }

    /* renamed from: dZ */
    public void m7171dZ(boolean z) {
        this.bbO.setVisibility(0);
        this.bog.setVisibility(0);
        this.boh.findViewById(R.id.item_icon).setBackgroundResource(R.drawable.virulence_w);
        ((TextView) this.boh.findViewById(R.id.item_title)).setText(R.string.urlcheck_main_page_tips_risk);
        this.boi.findViewById(R.id.item_icon).setBackgroundResource(R.drawable.virulence_info);
        ((TextView) this.boi.findViewById(R.id.item_title)).setText(R.string.url_main_page_tips_protect);
        if (z) {
            this.bbO.setText(R.string.silent_install_main_page_failed_button_text);
            this.bbO.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bga.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    bgn.abM();
                }
            });
            return;
        }
        this.bbO.setText(R.string.permission_btn_open);
        this.bbO.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bga.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100689);
                bga.this.m7173dX(true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void abr() {
        if (C3942yy.m1351d(this.bom) && C3942yy.m1351d(this.bon)) {
            if (this.aWk == null) {
                try {
                    this.aWk = this.bol.inflate();
                } catch (Exception e) {
                }
            }
            this.aWk.setVisibility(0);
            TextView textView = (TextView) this.aWk.findViewById(R.id.list_empty);
            textView.setText(R.string.urlcheck_main_page_tips_panel_empty);
            textView.setTextColor(C3953zi.m1311pr().getColor(R.color.global_secondly_grey_text_color));
        } else if (C3942yy.m1351d(this.bom)) {
            this.boo.notifyDataSetChanged();
        } else {
            Iterator<UrlCheckLog> it = this.bom.iterator();
            int i = 0;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                int i2 = it.next().bnu + i;
                if (i2 >= 9999) {
                    i = 9999;
                    break;
                }
                i = i2;
            }
            String valueOf = String.valueOf(i);
            if (i >= 9999) {
                valueOf = valueOf + "+";
            }
            this.mTitleView.setVisibility(0);
            this.mTitleView.setText(C3953zi.m1311pr().getString(R.string.urlcheck_log_title, valueOf));
            this.mRecyclerView.setVisibility(0);
            if (bfw.aaS().aaX() && acu.m12571g(bfw.aaS().aaY(), 172800000L)) {
                bfw.aaS().m7209cv(System.currentTimeMillis());
                this.mRecyclerView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.bga.4
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        bga.this.mRecyclerView.getViewTreeObserver().removeOnPreDrawListener(this);
                        C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.bga.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                bga.this.boo.m7196r(0, true);
                            }
                        }, 1000L);
                        return false;
                    }
                });
            }
            this.boo.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: UG */
    public void m7187UG() {
        this.bbH.setVisibility(8);
        this.bof.setVisibility(0);
        this.bbF.setImageResource(R.drawable.silent_install_main_done_icon);
        this.bbE.setText(R.string.silent_install_main_page_success_tips);
        this.bbN.setVisibility(4);
    }

    /* renamed from: iF */
    private void m7162iF(final int i) {
        if (this.boc == null) {
            this.boc = new bic(getContext());
            this.boc.show();
            this.boc.m6941lJ(C3953zi.m1311pr().getString(R.string.urlcheck_risk_page_confrim_dialog_checkbox));
            this.boc.m6942ee(false);
            this.boc.setTitleText(C3953zi.m1311pr().getString(R.string.urlcheck_risk_page_confirm_dialog_title));
            this.boc.m6933d(C3953zi.m1311pr().getString(R.string.urlcheck_risk_page_confirm_dialog_content));
            this.boc.m6945b(new bic.InterfaceC2299a() { // from class: com.kingroot.kinguser.bga.8
                @Override // com.kingroot.kinguser.bic.InterfaceC2299a
                /* renamed from: d */
                public void mo6940d(View view, boolean z) {
                    if (z) {
                        bfw.aaS().aba();
                    }
                    bga.this.m7161iG(i);
                }
            });
            this.boc.m6947a(new bic.InterfaceC2299a() { // from class: com.kingroot.kinguser.bga.9
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
    /* renamed from: iG */
    public void m7161iG(int i) {
        try {
            final UrlCheckLog urlCheckLog = this.bom.get(i);
            this.bom.remove(i);
            abr();
            beg.m7461Zj().m7450c(new bed(new bek() { // from class: com.kingroot.kinguser.bga.10
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    if (urlCheckLog != null) {
                        bfs.aaI().m7233d(urlCheckLog);
                        bfs.aaI().m7230lh(urlCheckLog.f3653GY);
                        urlCheckLog.m1995dQ(true);
                    }
                }
            }));
        } catch (Exception e) {
        }
    }
}
