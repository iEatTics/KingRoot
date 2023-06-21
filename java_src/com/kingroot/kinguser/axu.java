package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.animation.Animator;
import com.android.animation.ValueAnimator;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.agi;
import com.kingroot.kinguser.aic;
import com.kingroot.kinguser.aul;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
/* loaded from: classes.dex */
public class axu extends AbstractC3922ym implements aul.InterfaceC1617b {
    private ada anW;
    private bid aoy;
    private View bbD;
    private TextView bbE;
    private ImageView bbF;
    private View bbG;
    private View bbH;
    private TextView bbI;
    private TextView bbJ;
    private View bbK;
    private TextView bbL;
    private TextView bbM;
    private TextView bbN;
    private Button bbO;
    private View bbP;
    private View bbQ;
    private agi bbR;
    private aul.InterfaceC1616a bbS;
    public ValueAnimator bbT;
    private ValueAnimator.AnimatorUpdateListener bbU;
    private Animator.AnimatorListener bbV;
    private agi.InterfaceC0898a bbW;
    private RecyclerView mRecyclerView;

    /* renamed from: zv */
    private View f1632zv;

    /* renamed from: com.kingroot.kinguser.axu$7 */
    /* loaded from: classes.dex */
    class C19777 implements Animator.AnimatorListener {
        C19777() {
        }

        @Override // com.android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        @Override // com.android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            axu.this.getHandler().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.axu.7.1
                @Override // java.lang.Runnable
                public void run() {
                    axu.this.m8144UG();
                    axu.this.getHandler().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.axu.7.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            axu.this.mo8143a(0, true, true);
                            axu.this.mo8132cW(true);
                        }
                    }, 1000L);
                }
            }, 500L);
        }

        @Override // com.android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // com.android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }
    }

    public axu(Context context) {
        super(context);
        this.bbT = new ValueAnimator();
        this.bbU = new ValueAnimator.AnimatorUpdateListener() { // from class: com.kingroot.kinguser.axu.1
            @Override // com.android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (axu.this.bbI != null) {
                    axu.this.bbI.setText(valueAnimator.getAnimatedValue().toString());
                }
            }
        };
        this.bbV = new C19777();
        this.bbW = new agi.InterfaceC0898a() { // from class: com.kingroot.kinguser.axu.4
            @Override // com.kingroot.kinguser.agi.InterfaceC0898a
            /* renamed from: K */
            public void mo8108K(int i, int i2) {
                axu.this.bbS.mo8908R(i, i2);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100484);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.anW = new ada(getActivity(), C3953zi.m1311pr().getString(R.string.silent_install_main_page_title));
        View wholeView = this.anW.getWholeView();
        if (wholeView != null) {
            wholeView.findViewById(R.id.title_bar_divider).setVisibility(8);
        }
        return this.anW;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m8116r(View view) {
        final aic aicVar = new aic(getContext(), view);
        final C3953zi m1311pr = C3953zi.m1311pr();
        final ArrayList arrayList = new ArrayList();
        arrayList.add(m1311pr.getString(R.string.silent_install_option_menu_settings));
        arrayList.add(m1311pr.getString(R.string.silent_install_option_menu_disable));
        arrayList.add(m1311pr.getString(R.string.silent_install_option_menu_app_list));
        aic.C0981b c0981b = new aic.C0981b(getContext(), arrayList, false, null);
        aicVar.m11674Y(arrayList);
        aicVar.m11673a(c0981b);
        aicVar.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.axu.8
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                aicVar.dismiss();
                String str = (String) arrayList.get(i);
                if (str.equals(m1311pr.getString(R.string.silent_install_option_menu_settings))) {
                    axu.this.bbS.mo8910Qt();
                } else if (str.equals(m1311pr.getString(R.string.silent_install_option_menu_disable))) {
                    ady.m12308tK().mo1746bi(100496);
                    axu.this.m8109wC();
                } else if (str.equals(m1311pr.getString(R.string.silent_install_option_menu_app_list))) {
                    ady.m12308tK().mo1746bi(100499);
                    axu.this.bbS.mo8909Qu();
                }
            }
        });
        aicVar.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        this.bbS.mo8912PJ();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        this.f1632zv = getLayoutInflater().inflate(R.layout.page_silent_install_main, (ViewGroup) null);
        this.bbD = this.f1632zv.findViewById(R.id.top_panel);
        this.bbG = this.f1632zv.findViewById(R.id.content_panel);
        this.bbK = this.f1632zv.findViewById(R.id.top_panel_with_record);
        this.bbF = (ImageView) this.f1632zv.findViewById(R.id.main_image);
        this.bbE = (TextView) this.f1632zv.findViewById(R.id.main_text);
        this.bbN = (TextView) this.f1632zv.findViewById(R.id.sub_text);
        this.bbP = this.f1632zv.findViewById(R.id.silent_install_warning_tips_usb);
        this.bbQ = this.f1632zv.findViewById(R.id.silent_install_warning_tips_app);
        this.bbO = (Button) this.f1632zv.findViewById(R.id.main_button);
        this.bbH = this.f1632zv.findViewById(R.id.top_panel_animation);
        this.bbI = (TextView) this.f1632zv.findViewById(R.id.main_text_anim);
        this.bbJ = (TextView) this.f1632zv.findViewById(R.id.sub_text_anim);
        this.bbL = (TextView) this.f1632zv.findViewById(R.id.main_text_with_record_count);
        this.bbM = (TextView) this.f1632zv.findViewById(R.id.sub_text_with_record);
        this.bbT.addUpdateListener(this.bbU);
        this.bbS.start();
        return this.f1632zv;
    }

    @Override // com.kingroot.kinguser.aul.InterfaceC1617b
    /* renamed from: bm */
    public void mo8134bm(final List<agi.C0901c> list) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axu.9
            @Override // java.lang.Runnable
            public void run() {
                if (axu.this.mRecyclerView == null) {
                    axu.this.mRecyclerView = (RecyclerView) axu.this.f1632zv.findViewById(R.id.recycler_card_list);
                    axu.this.mRecyclerView.setLayoutManager(new FixLinearLayoutManager(axu.this.mContext));
                    axu.this.mRecyclerView.setItemAnimator(new DefaultItemAnimator());
                    axu.this.bbR = new agi(list, axu.this.bbW);
                    axu.this.mRecyclerView.setAdapter(axu.this.bbR);
                }
                axu.this.bbG.setVisibility(8);
                axu.this.mRecyclerView.setVisibility(0);
                ady.m12308tK().mo1746bi(100485);
            }
        });
    }

    @Override // com.kingroot.kinguser.aul.InterfaceC1617b
    /* renamed from: Qv */
    public void mo8146Qv() {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axu.10
            @Override // java.lang.Runnable
            public void run() {
                if (axu.this.bbR != null) {
                    axu.this.bbR.notifyDataSetChanged();
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.aul.InterfaceC1617b
    /* renamed from: Qw */
    public void mo8145Qw() {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axu.11
            @Override // java.lang.Runnable
            public void run() {
                axu.this.bbD.setVisibility(8);
                axu.this.bbK.setVisibility(8);
                axu.this.bbH.setVisibility(0);
                axu.this.bbJ.setText(R.string.silent_install_main_page_starting_tips);
                axu.this.bbO.setVisibility(8);
                axu.this.bbT.removeAllListeners();
                axu.this.bbT.setIntValues(0, new Random().nextInt(50) + 50);
                axu.this.bbT.setDuration(15000L);
                axu.this.bbT.start();
            }
        });
    }

    @Override // com.kingroot.kinguser.aul.InterfaceC1617b
    /* renamed from: cY */
    public void mo8131cY(final boolean z) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axu.12
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    axu.this.bbT.cancel();
                    axu.this.bbT.setIntValues(Integer.parseInt(axu.this.bbT.getAnimatedValue().toString()), 100);
                    axu.this.bbT.setDuration(5000L);
                    axu.this.bbT.addListener(axu.this.bbV);
                    axu.this.bbT.start();
                    return;
                }
                axu.this.mo8143a(0, true, false);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: UG */
    public void m8144UG() {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axu.13
            @Override // java.lang.Runnable
            public void run() {
                axu.this.bbH.setVisibility(8);
                axu.this.bbK.setVisibility(8);
                axu.this.bbD.setVisibility(0);
                axu.this.bbF.setImageResource(R.drawable.silent_install_main_done_icon);
                axu.this.bbE.setText(R.string.silent_install_main_page_success_tips);
                axu.this.bbN.setVisibility(4);
            }
        });
    }

    @Override // com.kingroot.kinguser.aul.InterfaceC1617b
    /* renamed from: a */
    public void mo8143a(final int i, final boolean z, final boolean z2) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axu.14
            @Override // java.lang.Runnable
            public void run() {
                if (z) {
                    axu.this.bbO.setVisibility(8);
                    if (!z2) {
                        axu.this.bbO.setVisibility(0);
                        axu.this.bbH.setVisibility(8);
                        axu.this.bbD.setVisibility(0);
                        axu.this.bbK.setVisibility(8);
                        axu.this.bbF.setImageResource(R.drawable.silent_install_main_abandon_icon);
                        axu.this.bbE.setTextColor(C3953zi.m1311pr().getColor(R.color.red));
                        axu.this.bbE.setText(R.string.silent_install_main_page_failed_tips);
                        axu.this.bbN.setText(R.string.silent_install_main_page_failed_sub_tips);
                        axu.this.bbO.setText(R.string.silent_install_main_page_failed_button_text);
                        axu.this.bbO.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axu.14.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                bgn.abM();
                            }
                        });
                        axu.this.m8136aG(false);
                        return;
                    } else if (i > 0) {
                        axu.this.bbH.setVisibility(8);
                        axu.this.bbD.setVisibility(8);
                        axu.this.bbK.setVisibility(0);
                        axu.this.bbM.setText(R.string.silent_install_main_page_sub_tile);
                        axu.this.bbL.setText(String.format(C3953zi.m1311pr().getString(R.string.silent_install_main_page_main_title), Integer.valueOf(i)));
                        axu.this.m8136aG(true);
                        return;
                    } else {
                        axu.this.bbH.setVisibility(8);
                        axu.this.bbD.setVisibility(0);
                        axu.this.bbK.setVisibility(8);
                        axu.this.bbF.setImageResource(R.drawable.silent_install_main_enable_icon);
                        axu.this.bbE.setText(R.string.silent_install_main_page_main_title_no_app);
                        axu.this.bbE.setTextColor(C3953zi.m1311pr().getColor(R.color.blue_1));
                        axu.this.bbN.setText(R.string.silent_install_main_page_sub_title_no_app);
                        axu.this.m8136aG(true);
                        return;
                    }
                }
                axu.this.bbO.setVisibility(0);
                axu.this.bbH.setVisibility(8);
                axu.this.bbD.setVisibility(0);
                axu.this.bbK.setVisibility(8);
                ady.m12308tK().mo1746bi(100502);
                axu.this.bbO.setText(R.string.permission_btn_open);
                axu.this.bbO.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axu.14.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        ady.m12308tK().mo1746bi(100503);
                        axu.this.bbS.mo8902cX(true);
                    }
                });
                axu.this.bbF.setImageResource(R.drawable.silent_install_main_disable_icon);
                axu.this.bbE.setText(R.string.silent_install_main_page_main_title_disable);
                axu.this.bbE.setTextColor(C3953zi.m1311pr().getColor(R.color.black_1));
                axu.this.m8136aG(false);
            }
        });
    }

    @Override // com.kingroot.kinguser.aul.InterfaceC1617b
    /* renamed from: cW */
    public void mo8132cW(final boolean z) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axu.2
            @Override // java.lang.Runnable
            public void run() {
                if (axu.this.mRecyclerView != null) {
                    axu.this.mRecyclerView.setVisibility(8);
                }
                axu.this.bbG.setVisibility(0);
                axu.this.bbP.findViewById(R.id.item_icon).setBackgroundResource(R.drawable.silent_install_main_page_tips_usb_icon);
                ((TextView) axu.this.bbP.findViewById(R.id.item_title)).setText(R.string.silent_install_main_page_tips_title_usb);
                ((TextView) axu.this.bbP.findViewById(R.id.item_desc)).setText(R.string.silent_install_main_page_tips_desc_usb);
                axu.this.bbQ.findViewById(R.id.item_icon).setBackgroundResource(R.drawable.silent_install_main_page_tips_app_icon);
                ((TextView) axu.this.bbQ.findViewById(R.id.item_title)).setText(R.string.silent_install_main_page_tips_title_app);
                ((TextView) axu.this.bbQ.findViewById(R.id.item_desc)).setText(R.string.silent_install_main_page_tips_desc_app);
                ImageView imageView = (ImageView) axu.this.bbP.findViewById(R.id.warning_icon);
                ImageView imageView2 = (ImageView) axu.this.bbQ.findViewById(R.id.warning_icon);
                if (z) {
                    imageView.setVisibility(0);
                    imageView2.setVisibility(0);
                    imageView.setImageResource(R.drawable.icon_allow);
                    imageView2.setImageResource(R.drawable.icon_allow);
                    return;
                }
                imageView.setVisibility(8);
                imageView2.setVisibility(8);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aG */
    public void m8136aG(boolean z) {
        if (z) {
            this.anW.m12566ar(true);
            this.anW.m12567aq(false);
            this.anW.m12562c(C3953zi.m1311pr().getDrawable(R.drawable.common_more));
            getWholeView().findViewById(R.id.right_btn).setBackgroundResource(R.drawable.title_button_selector);
            this.anW.m12563b(new View.OnClickListener() { // from class: com.kingroot.kinguser.axu.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    axu.this.m8116r(view);
                }
            });
            return;
        }
        this.anW.m12566ar(false);
    }

    /* renamed from: a */
    public void m8142a(aul.InterfaceC1616a interfaceC1616a) {
        this.bbS = (aul.InterfaceC1616a) C3948zd.m1327k(interfaceC1616a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: wC */
    public void m8109wC() {
        if (this.aoy == null) {
            this.aoy = new bid(getContext());
            this.aoy.show();
            this.aoy.setTitleText(C3953zi.m1311pr().getString(R.string.silent_install_disable_dialog_title));
            this.aoy.m6933d(C3953zi.m1311pr().getString(R.string.silent_install_disable_dialog_content));
            this.aoy.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axu.5
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    ady.m12308tK().mo1746bi(100497);
                    axu.this.bbS.mo8902cX(false);
                }
            });
            this.aoy.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axu.6
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    ady.m12308tK().mo1746bi(100498);
                }
            });
            return;
        }
        this.aoy.dismiss();
        this.aoy.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        super.onDestroy();
        if (this.aoy != null && this.aoy.isShowing()) {
            this.aoy.dismiss();
        }
    }
}
