package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.os.SystemClock;
import android.support.annotation.IntRange;
import android.support.annotation.Nullable;
import android.support.p004v4.view.LayoutInflaterCompat;
import android.support.p004v4.view.PointerIconCompat;
import android.support.p007v7.widget.RecyclerView;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ObjectAnimator;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.MainExpCircleView;
import com.kingroot.common.uilib.SlidingUpPanelLayout;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.activitys.AppsMarketMainActivity;
import com.kingroot.kinguser.activitys.AppsMarketWellChosenAppsActivity;
import com.kingroot.kinguser.activitys.SoftwareHelpActivity;
import com.kingroot.kinguser.anx;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.apx;
import com.kingroot.kinguser.apz;
import com.kingroot.kinguser.aqa;
import com.kingroot.kinguser.aui;
import com.kingroot.kinguser.axm;
import com.kingroot.kinguser.bhw;
import com.kingroot.kinguser.bic;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener;
import com.kingroot.kinguser.toolbox.view.ToolBoxView;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import com.tencent.feedback.eup.CrashReport;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class axm extends AbstractC3922ym implements apx.InterfaceC1449a, aqa.InterfaceC1462a, aui.InterfaceC1611b, InterfaceC3916yg {
    public static final int[] aZB = {0, 1, 2};
    public static final float[] aZC = {0.44f, 0.08f, 0.48f};
    public static final float[] aZD = {0.44f, 0.18f, 0.38f};
    public static final float[] aZE = {0.62f, 0.0f, 0.38f};

    /* renamed from: RG */
    private int f1626RG;
    private ILoadAppStatusListener aBo;
    private anx.InterfaceC1346a aEG;
    private MainExpCircleView aKk;
    private aqa aYE;
    private C3905xx aYd;
    public volatile boolean aZF;
    private asd aZG;
    private bet aZH;
    private bhw aZI;
    private bic aZJ;
    private AtomicBoolean aZK;
    private aui.InterfaceC1610a aZL;
    private C3850wq aZM;
    private View aZN;
    private View aZO;
    private Button aZP;
    private TextView aZQ;
    private ToolBoxView aZR;
    private apy aZS;
    private RecyclerView aZT;
    private AtomicBoolean aZU;
    private CountDownLatch aZV;
    private TextView aZW;
    private ViewGroup aZX;
    private int aZY;
    private AppBaseModel aZZ;
    private SlidingUpPanelLayout aou;
    private ImageView baa;
    private ImageView bab;
    private final AnimatorListenerAdapter bac;

    public axm(Context context) {
        super(context);
        this.aZF = false;
        this.aZG = new asd();
        this.aZK = new AtomicBoolean(false);
        this.aZU = new AtomicBoolean(false);
        this.aZV = new CountDownLatch(1);
        this.bac = new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.axm.8
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                axm.this.m8305Ux();
                axm.this.aZL.mo8995gN(bbv.m7771WK().m7769WM());
                axm.this.aZH.m7383b(axm.this.aEG);
            }
        };
        this.aBo = new ILoadAppStatusListener.Stub() { // from class: com.kingroot.kinguser.page.MainPage$27
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowDownloadCount(final int i) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.page.MainPage$27.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Context context2;
                        anx m7388Jo = axm.this.aZH.m7388Jo();
                        context2 = axm.this.mContext;
                        m7388Jo.m10013l(context2, -1);
                        axm.this.aZH.m7388Jo().m10015fL(i);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowWaitDownloadCount(final int i) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.page.MainPage$27.2
                    @Override // java.lang.Runnable
                    public void run() {
                        axm.this.aZH.m7388Jo().m10014fM(i);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowDot() {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.page.MainPage$27.3
                    @Override // java.lang.Runnable
                    public void run() {
                        axm.this.aZH.m7388Jo().m10016fK(0);
                    }
                });
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadAppStatusListener
            public void onShowNormal() {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.page.MainPage$27.4
                    @Override // java.lang.Runnable
                    public void run() {
                        axm.this.aZH.m7388Jo().m10016fK(8);
                    }
                });
            }
        };
        this.aEG = new anx.InterfaceC1346a() { // from class: com.kingroot.kinguser.axm.20
            @Override // com.kingroot.kinguser.anx.InterfaceC1346a
            /* renamed from: xr */
            public void mo8249xr() {
                axm.this.aZV.countDown();
            }
        };
    }

    @Nullable
    /* renamed from: b */
    public static aqc m8297b(aqb aqbVar) {
        if (!(aqbVar instanceof aqh)) {
            return null;
        }
        aqh aqhVar = (aqh) aqbVar;
        boolean z = false;
        if (!(aqhVar instanceof aqi)) {
            z = true;
        }
        int mo9576MK = aqhVar.mo9576MK();
        aqc m9606a = aqc.m9606a(aqhVar.mo9580ME(), aqhVar.mo9579MF(), mo9576MK > 0 ? " + " + mo9576MK : "", aqbVar.getKey(), aqbVar, z);
        m9606a.akK = aqhVar.getIconDrawable();
        return m9606a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            aks.m11143BP().m10856bX(true);
            this.aYd = new C3905xx();
            LayoutInflaterCompat.setFactory(getLayoutInflater(), this.aYd);
            ady.m12308tK().mo1746bi(100333);
            this.aZL.start();
            this.aZL.mo9020Qc();
            this.aZL.mo9021Qb();
            bfm.aah().mo7270ai(1, 4);
        } catch (Exception e) {
            CrashReport.handleCatchException(new Thread(), e, e.getMessage(), "catch main page NPE".getBytes());
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.aZH = new bet(this.mContext, m1417V(2131165308L), this);
        return this.aZH;
    }

    /* renamed from: Un */
    public int m8315Un() {
        return this.aZG.m9493NK().mo9496NJ();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        try {
            this.aZS = new apy(getContext());
            this.aZM = new C3850wq(getContext());
            this.aKk = this.aZS.m9668Mj();
            this.aZX = (ViewGroup) getLayoutInflater().inflate(R.layout.app_market_kr_main_banner, (ViewGroup) null);
            this.aZY = (int) C3953zi.m1311pr().getDimension(R.dimen.kr_main_banner_ad_outer_h);
            this.aZX.setLayoutParams(new FrameLayout.LayoutParams(-1, this.aZY));
            this.aKk.addView(this.aZX);
            this.baa = (ImageView) this.aZX.findViewById(R.id.close);
            this.bab = (ImageView) this.aZX.findViewById(R.id.content);
            this.aZX.setVisibility(8);
            this.aZM.m1512b(this.aKk, 0, 0.0f);
            this.aZO = this.aZM.m1524a(R.layout.layout_main_page_control_panel, 1, 0.0f);
            this.aZN = this.aZM.m1524a(R.layout.layout_main_page_menu, 2, 0.0f);
            this.aZM.m1515a(aZB, aZD);
            this.aKk.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kingroot.kinguser.axm.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (Build.VERSION.SDK_INT >= 16) {
                        axm.this.aKk.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    } else {
                        axm.this.aKk.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    }
                    axm.this.m8314Uo();
                }
            });
            this.aZN.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kingroot.kinguser.axm.12
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (Build.VERSION.SDK_INT >= 16) {
                        axm.this.aZN.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    } else {
                        axm.this.aZN.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    }
                    axm.this.f1626RG = (int) (axm.this.aZN.getHeight() * 0.27d);
                    axm.this.m8286dw(true);
                }
            });
            this.aZQ = (TextView) this.aZO.findViewById(R.id.title);
            this.aZP = (Button) this.aZO.findViewById(R.id.btn);
            this.aZP.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axm.21
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (axm.this.aou.getPanelState() != SlidingUpPanelLayout.EnumC0560c.DRAGGING) {
                        aks.m11143BP().m11004EY();
                        axm.this.m8313Up();
                    }
                }
            });
            beg.m7461Zj().m7451b(new bek() { // from class: com.kingroot.kinguser.axm.22
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    try {
                        if (bfm.aah().mo7275ZV()) {
                            axm.this.getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axm.22.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    bwl.m5321a(KApplication.m13453ge(), 2, axm.this.aZP);
                                }
                            });
                        }
                    } catch (Throwable th) {
                    }
                }
            });
            m8312Uq();
            this.aZR = (ToolBoxView) getWholeView().findViewById(R.id.tool_box_layout);
            C3857ws.m1498g(this.aZR);
            this.aou = (SlidingUpPanelLayout) getWholeView().findViewById(R.id.sliding_up_panel_layout);
            this.aou.m13225a(this);
            this.aZR.setSlidingUpPanelLayout(this.aou);
            bfl.m7265a(getHandler(), 5, this.aou);
            this.aZT = new RecyclerView(getContext());
            this.aYE = new aqa(this.aZT, getActivity(), false, apz.EnumC1455b.MAIN_PAGE);
            this.aYE.m9626a(this);
            this.aYE.m9627a(new View.OnTouchListener() { // from class: com.kingroot.kinguser.axm.23
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    return true;
                }
            });
            this.aZX.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axm.24
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    axm.this.m8289d(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.axm.24.1
                        @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            axm.this.aZL.mo9010a(axm.this.aZZ, axm.this.mContext);
                        }
                    });
                    akl.m11257AS().m11198ax(axm.this.aZZ.bannerId);
                    akl.m11257AS().m11199aw(System.currentTimeMillis());
                }
            });
            this.baa.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axm.25
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    axm.this.m8289d((AnimatorListenerAdapter) null);
                    akl.m11257AS().m11198ax(axm.this.aZZ.bannerId);
                    akl.m11257AS().m11199aw(System.currentTimeMillis());
                    ady.m12308tK().mo1746bi(100708);
                }
            });
        } catch (Exception e) {
            CrashReport.handleCatchException(new Thread(), e, e.getMessage(), "catch main page NPE".getBytes());
        }
        return this.aZM.getView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m8289d(final AnimatorListenerAdapter animatorListenerAdapter) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.aZX, "translationY", 0.0f, -this.aZY);
        ofFloat.setDuration(400L);
        ofFloat.setInterpolator(new animationInterpolatorC3896xr(EnumC3895xq.QUINT_IN));
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.axm.26
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                if (animatorListenerAdapter != null) {
                    animatorListenerAdapter.onAnimationStart(animator);
                }
            }

            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                if (animatorListenerAdapter != null) {
                    animatorListenerAdapter.onAnimationCancel(animator);
                }
            }

            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                axm.this.aZX.setVisibility(8);
                if (animatorListenerAdapter != null) {
                    animatorListenerAdapter.onAnimationEnd(animator);
                }
            }

            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                super.onAnimationRepeat(animator);
                if (animatorListenerAdapter != null) {
                    animatorListenerAdapter.onAnimationRepeat(animator);
                }
            }
        });
        ofFloat.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Uo */
    public void m8314Uo() {
        if (this.aZU.getAndSet(true)) {
            this.aZS.m9664Mn();
            this.aZM.m1515a(aZB, aZE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Up */
    public void m8313Up() {
        bfm.aah().mo7270ai(2, 1);
        int mo9496NJ = this.aZG.m9493NK().mo9496NJ();
        if (2 == mo9496NJ) {
            ady.m12308tK().mo1746bi(100308);
            aho.m11711aO(KUApplication.m13453ge());
            aks.m11143BP().m10861bS(false);
            adm.m12480st().m12501cy(16);
            aks.m11143BP().m10996Eg();
            aks.m11143BP().m10837bj(System.currentTimeMillis());
            aks.m11143BP().m10927Fx();
            this.aZM.m1522a(2, this.aZT);
            this.aZM.m1514a(aZB, aZC, true);
            this.aZQ.setText(m1417V(2131165452L));
            this.aZQ.setTextColor(C3906xy.m1431ox().getColor(R.color.skin_main_panel_text_normal));
            this.aZP.setVisibility(8);
            m8286dw(false);
            this.aZK.set(true);
            this.aZL.mo8997gL(800);
            this.aZS.m9655gD();
        } else if (4 == mo9496NJ || 5 == mo9496NJ) {
            ady.m12308tK().mo1746bi(100308);
            this.aZL.mo8998g(aqe.m9598MD(), this.aZS.m9665Mm(), PointerIconCompat.TYPE_GRAB);
        }
    }

    /* renamed from: Uq */
    private void m8312Uq() {
        ((Button) this.aZO.findViewById(R.id.btn)).setText(R.string.main_page_control_panel_one_click_optimize);
        View findViewById = this.aZN.findViewById(R.id.security_protect);
        View findViewById2 = this.aZN.findViewById(R.id.permission_mgr);
        boolean isRootPermition = abc.m12845qK().isRootPermition();
        ((TextView) findViewById.findViewById(R.id.main_text)).setText(isRootPermition ? R.string.main_pag_menu_security_protect_main_text : R.string.system_security_shield);
        ((TextView) findViewById.findViewById(R.id.sub_text)).setText(isRootPermition ? R.string.main_pag_menu_security_protect_sub_text : R.string.system_security_shield_desc);
        ((TextView) findViewById2.findViewById(R.id.main_text)).setText(R.string.main_pag_menu_permission_mgr_main_text);
        this.aZW = (TextView) findViewById2.findViewById(R.id.sub_text);
        this.aZW.setText(R.string.main_pag_menu_permission_mgr_sub_text);
        ((ImageView) findViewById.findViewById(R.id.icon)).setImageResource(R.drawable.main_page_menu_safety_icon);
        ((ImageView) findViewById2.findViewById(R.id.icon)).setImageResource(R.drawable.main_page_menu_permissions_icon);
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axm.27
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100455);
                axm.this.aZL.mo9018Qe();
            }
        });
        findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axm.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100477);
                axm.this.aZL.mo9017Qf();
            }
        });
        C3857ws.m1498g(this.aZN);
    }

    /* renamed from: vd */
    private void m8254vd() {
        if (this.aZI != null && this.aZI.isShowing()) {
            this.aZI.dismiss();
        }
        if (this.aZJ != null && this.aZJ.isShowing()) {
            this.aZJ.dismiss();
        }
        this.aZH.m7375vd();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        m8254vd();
        this.aZL.mo9022Qa();
        this.aZR.onDestroy();
        C3906xy.m1431ox().mo1423b(this);
        this.aYd.clean();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        getHandler().sendMessageDelayed(getHandler().obtainMessage(5), 800L);
        this.aZG.m9492a(ase.m9490gt(0));
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onBackPressed() {
        super.onBackPressed();
        if (this.aou.getPanelState() == SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
            this.aou.setPanelState(SlidingUpPanelLayout.EnumC0560c.COLLAPSED);
            return true;
        }
        m8295bY(0L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        this.aZL.mo9022Qa();
        this.aZR.onResume();
        if (this.aZG.m9493NK().mo9496NJ() == 2) {
            this.aZL.mo8995gN(bbv.m7771WK().m7769WM());
        }
        C3906xy.m1431ox().mo1424a(this);
        m8311Ur();
        super.onResume();
    }

    /* renamed from: Ur */
    private void m8311Ur() {
        if (anf.m10297IU()) {
            beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new C19053()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.axm$3 */
    /* loaded from: classes.dex */
    public class C19053 extends bek {
        C19053() {
        }

        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            try {
                axm.this.aZV.await();
            } catch (InterruptedException e) {
            }
            final boolean m12634vs = AppsMarketWellChosenAppsActivity.m12634vs();
            final int mo10402fk = alx.m10508HB().mo10402fk(alx.m10508HB().mo10407HD().intValue());
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axm.3.1
                @Override // java.lang.Runnable
                public void run() {
                    if (axm.this.aZR != null) {
                        axm.this.aZR.setWellChosenMode(m12634vs);
                        axm.this.aZR.setWellChosenCount(mo10402fk);
                    }
                    if (axm.this.aZG.m9493NK().mo9496NJ() != 0) {
                        if (m12634vs) {
                            axm.this.aZH.m7388Jo().m10026JQ();
                            axm.this.aZH.m7388Jo().m10024Jm().setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axm.3.1.1
                                @Override // android.view.View.OnClickListener
                                public void onClick(View view) {
                                    ady.m12308tK().mo1746bi(100599);
                                    AppsMarketMainActivity.m12636aN(axm.this.mContext);
                                }
                            });
                            return;
                        }
                        axm.this.aZH.m7388Jo().m10027JP();
                        axm.this.aZH.m7388Jo().m10024Jm().setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axm.3.1.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                ady.m12308tK().mo1746bi(100621);
                                AppsMarketMainActivity.m12637aL(axm.this.getContext());
                            }
                        });
                    }
                }
            });
            if (!m12634vs) {
                amz.m10365II().m10358b(axm.this.aBo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        if (1 == message.what) {
            m8308Uu();
        } else if (4 == message.what) {
            this.aZL.mo9029LY();
        } else if (message.what == 5) {
            m8307Uv();
        } else if (message.what == 6) {
            if (message.obj instanceof String) {
                if (this.aZQ != null) {
                    this.aZQ.setVisibility(0);
                    this.aZQ.setText((String) message.obj);
                }
            } else {
                return;
            }
        }
        super.mo1413a(message);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        getActivity().setIntent(intent);
    }

    @Override // com.kingroot.kinguser.apx.InterfaceC1449a
    /* renamed from: b */
    public void mo8298b(int i, aqb aqbVar, aqb aqbVar2) {
        switch (i) {
            case 0:
                this.aYE.m9636Mt();
                return;
            case 1:
                if (aqbVar instanceof aqs) {
                    aqs aqsVar = (aqs) aqbVar;
                    aqc m9607a = aqc.m9607a(aqsVar.mo9554MT(), null, null, aqbVar.getKey(), aqbVar);
                    m9607a.akK = aqsVar.getIconDrawable();
                    this.aYE.m9630a(1, m9607a, m8293c(aqbVar));
                    return;
                }
                return;
            case 2:
                if (aqbVar instanceof aqs) {
                    aqs aqsVar2 = (aqs) aqbVar;
                    this.aYE.m9629a(2, aqc.m9607a(aqsVar2.mo9557ME(), aqsVar2.mo9556MF(), aqsVar2.mo9553MU(), aqbVar.getKey(), aqbVar), m8293c(aqbVar), aqsVar2.mo9568MW());
                    return;
                }
                return;
            case 3:
                if ((aqbVar instanceof aqy) && aqbVar2 != null) {
                    aqy aqyVar = (aqy) aqbVar;
                    this.aYE.m9630a(3, aqc.m9609a(aqyVar.m9551ME(), aqyVar.m9548MU(), aqyVar.getKey(), aqbVar, aqyVar.m9543Ni(), 3), m8293c(aqbVar));
                    return;
                }
                return;
            case 4:
                if (aqbVar instanceof aqy) {
                    aqy aqyVar2 = (aqy) aqbVar;
                    this.aYE.m9632a(4, aqc.m9609a(aqyVar2.m9551ME(), aqyVar2.m9548MU(), aqyVar2.getKey(), aqbVar, aqyVar2.m9543Ni(), 4));
                    return;
                }
                return;
            case 5:
                aqc m8297b = m8297b(aqbVar);
                if (m8297b != null) {
                    if (aqbVar instanceof aqk) {
                        this.aZL.mo9014a(aqbVar);
                    }
                    this.aYE.m9630a(5, m8297b, m8293c(aqbVar));
                    return;
                }
                return;
            case 6:
                if (aqbVar instanceof aqs) {
                    aqs aqsVar3 = (aqs) aqbVar;
                    aqc m9605b = aqc.m9605b(aqsVar3.mo9554MT(), null, null, aqbVar.getKey(), aqbVar);
                    m9605b.akK = aqsVar3.getIconDrawable();
                    this.aYE.m9630a(6, m9605b, m8293c(aqbVar));
                    return;
                }
                return;
            case 7:
                if (aqbVar instanceof aqs) {
                    aqs aqsVar4 = (aqs) aqbVar;
                    this.aYE.m9629a(7, aqc.m9605b(aqsVar4.mo9557ME(), aqsVar4.mo9556MF(), aqsVar4.mo9553MU(), aqbVar.getKey(), aqbVar), m8293c(aqbVar), aqsVar4.mo9568MW());
                    return;
                }
                return;
            case 8:
                if (aqbVar instanceof aqj) {
                    aqj aqjVar = (aqj) aqbVar;
                    aqc m9608a = aqc.m9608a(aqjVar.mo9580ME(), aqjVar.mo9579MF(), aqjVar.getKey(), aqjVar);
                    if (m9608a != null) {
                        this.aYE.m9630a(8, m9608a, m8293c(aqbVar));
                        return;
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.kingroot.kinguser.aqa.InterfaceC1462a
    /* renamed from: c */
    public void mo8292c(aqc aqcVar) {
    }

    @Override // com.kingroot.kinguser.aqa.InterfaceC1462a
    /* renamed from: d */
    public void mo8288d(aqc aqcVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Us */
    public void m8310Us() {
        getHandler().removeMessages(1);
        getHandler().sendEmptyMessage(1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStart() {
        super.onStart();
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.axm.4
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                bhv.acN().refresh();
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axm.4.1
                    @Override // java.lang.Runnable
                    public void run() {
                        axm.this.aZH.m12567aq(bhv.acN().m6965iR(0));
                    }
                });
            }
        }));
        m8309Ut();
        m8310Us();
        if (bbv.m7771WK().m7766WP() && akt.m10713Gj().m10712Gk()) {
            this.aZW.setText(R.string.default_settings_suggest);
            this.aZW.setTextColor(m1415X(2131624055L));
            return;
        }
        this.aZW.setText(R.string.main_pag_menu_permission_mgr_sub_text);
        this.aZW.setTextColor(m1415X(2131624184L));
    }

    /* renamed from: Ut */
    private void m8309Ut() {
        int mo9496NJ = this.aZG.m9493NK().mo9496NJ();
        if (mo9496NJ == 5 || mo9496NJ == 2 || mo9496NJ == 4) {
            this.aZL.mo9016Qg();
        } else if (mo9496NJ == 0) {
            m8281gM(300);
        }
        if (this.aZG.m9493NK().mo9496NJ() != 3) {
            if (this.aZN.getParent() == null) {
                this.aZM.m1522a(2, this.aZN);
                this.aZM.m1515a(aZB, aZD);
                this.aZP.setVisibility(0);
            }
            m8286dw(true);
        }
        if (this.aou.getPanelState() == SlidingUpPanelLayout.EnumC0560c.COLLAPSED) {
            m8273hz(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dw */
    public void m8286dw(boolean z) {
        if (this.aou.getPanelState() == SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
            this.aou.setPanelHeight(this.f1626RG);
            m8274hy(this.f1626RG);
            this.aZR.setHeaderHeight(this.f1626RG);
        } else if (z) {
            this.aou.m13224a(SlidingUpPanelLayout.EnumC0560c.COLLAPSED, false);
            this.aou.setPanelHeight(this.f1626RG);
            m8274hy(this.f1626RG);
            this.aZR.setHeaderHeight(this.f1626RG);
        } else {
            this.aou.m13224a(SlidingUpPanelLayout.EnumC0560c.HIDDEN, false);
            m8274hy(0);
        }
    }

    /* renamed from: hy */
    private void m8274hy(int i) {
        View findViewById = getWholeView().findViewById(R.id.menu_container);
        findViewById.setPadding(findViewById.getPaddingLeft(), findViewById.getPaddingTop(), findViewById.getPaddingRight(), i);
    }

    /* renamed from: gM */
    public void m8281gM(int i) {
        m8314Uo();
        this.aZL.mo8996gM(i);
        this.aZS.m9655gD();
        getHandler().sendEmptyMessageDelayed(4, 10000L);
    }

    /* renamed from: Uu */
    private void m8308Uu() {
        int mo9496NJ = this.aZG.m9493NK().mo9496NJ();
        if (mo9496NJ == 5) {
            this.aZQ.setText(aqe.m9598MD());
        } else if (mo9496NJ == 4) {
            this.aZQ.setText(m1417V(2131165451L));
        }
        this.aZP.setBackgroundDrawable(C3906xy.m1431ox().getDrawable(R.drawable.skin_main_panel_button_bg_normal));
        this.aZQ.setTextColor(C3906xy.m1431ox().getColor(R.color.skin_main_panel_text_normal));
        if (mo9496NJ == 5) {
            this.aZP.setText(m1417V(2131165429L));
        } else if (mo9496NJ == 4) {
            this.aZP.setText(m1417V(2131165428L));
        } else if (mo9496NJ == 2) {
            this.aZP.setText(m1417V(2131165431L));
        }
        if (mo9496NJ == 5 || mo9496NJ == 2) {
            if (this.aZL.mo9027Me() > 0) {
                this.aZQ.setTextColor(C3906xy.m1431ox().getColor(R.color.skin_main_panel_text_warning));
                this.aZP.setBackgroundDrawable(C3906xy.m1431ox().getDrawable(R.drawable.skin_main_panel_button_bg_warning));
                return;
            }
            this.aZQ.setTextColor(C3906xy.m1431ox().getColor(R.color.skin_main_panel_text_normal));
            this.aZP.setBackgroundDrawable(C3906xy.m1431ox().getDrawable(R.drawable.skin_main_panel_button_bg_normal));
        }
    }

    @Override // com.kingroot.kinguser.aqa.InterfaceC1462a
    /* renamed from: Mx */
    public void mo8318Mx() {
        this.aZS.m9667Mk();
        mo8280gO(4);
        int mo9031LV = this.aZL.mo9031LV();
        if (this.aZK.get()) {
            String m9598MD = aqe.m9598MD();
            long m9666Ml = this.aZS.m9666Ml();
            long addDuration = this.aYE.getItemAnimator().getAddDuration();
            if (m9666Ml <= mo9031LV * addDuration) {
                m9666Ml = mo9031LV * addDuration;
            }
            this.aZL.mo9009a(m9598MD, m9666Ml, this.aZS.m9665Mm(), PointerIconCompat.TYPE_GRAB);
        }
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1611b
    /* renamed from: gO */
    public void mo8280gO(int i) {
        int mo9030LW = this.aZL.mo9030LW();
        if (this.aZL.mo9031LV() == 0 && mo9030LW == 0) {
            if (!this.aZL.mo9028Mc()) {
                this.aZK.set(false);
                this.aZL.mo8997gL(0);
            }
            this.aZG.m9491gs(7);
        } else {
            this.aZG.m9491gs(i);
        }
        m8310Us();
    }

    @Override // com.kingroot.kinguser.aqa.InterfaceC1462a
    /* renamed from: c */
    public void mo8294c(int i, aqc aqcVar) {
        if (aqcVar.type == 4 && i == 6 && (aqcVar.aKZ instanceof aqs)) {
            final aqs aqsVar = (aqs) aqcVar.aKZ;
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axm.5
                @Override // java.lang.Runnable
                public void run() {
                    axm.this.aZQ.setText(aqsVar.mo9554MT());
                }
            });
        }
    }

    @Override // com.kingroot.kinguser.apx.InterfaceC1449a
    /* renamed from: Mf */
    public void mo8322Mf() {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axm.6
            @Override // java.lang.Runnable
            public void run() {
                axm.this.aZS.m9654gl(100);
                axm.this.aZS.m9652nL();
                axm.this.aZG.m9491gs(1);
                axm.this.m8310Us();
            }
        });
    }

    @Override // com.kingroot.kinguser.apx.InterfaceC1449a
    /* renamed from: a */
    public void mo8304a(aqh aqhVar, boolean z) {
        if (!z) {
            this.aZL.mo9006b(aqhVar);
        }
    }

    @Override // com.kingroot.kinguser.apx.InterfaceC1449a
    /* renamed from: Mg */
    public void mo8321Mg() {
        getHandler().removeMessages(4);
        int mo9031LV = this.aZL.mo9031LV();
        if (100 == this.aZS.m9665Mm() && mo9031LV == 0) {
            this.aZK.set(false);
            this.aZL.mo8997gL(0);
        } else {
            this.aZG.m9491gs(2);
            m8310Us();
        }
        C3840wl.m1551c(new Runnable() { // from class: com.kingroot.kinguser.axm.7
            @Override // java.lang.Runnable
            public void run() {
                axm.this.aZS.m9662a(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.axm.7.1
                    @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        axm.this.aZS.m9663Mo();
                        axm.this.aZM.m1515a(axm.aZB, axm.aZD);
                        bhk.m6988e(axm.this.aZO, axm.this.bac);
                        if (anf.m10297IU()) {
                            axm.this.aZL.mo9015Qh();
                        }
                    }
                });
                if (bav.m7889VN()) {
                    bav.m7876dA(false);
                    C3954zj.m1307c(axm.this.m1417V(2131166164L), 1);
                }
            }
        }, 0L);
        ady.m12308tK().mo1746bi(100307);
    }

    @Override // com.kingroot.kinguser.apx.InterfaceC1449a
    /* renamed from: Mh */
    public void mo8320Mh() {
        this.aZG.m9491gs(3);
        m8310Us();
    }

    @Override // com.kingroot.kinguser.apx.InterfaceC1449a
    /* renamed from: Mi */
    public void mo8319Mi() {
    }

    @Override // com.kingroot.kinguser.apx.InterfaceC1449a
    /* renamed from: ih */
    public void mo8271ih(String str) {
        mo8268jk(str);
    }

    @Override // com.kingroot.kinguser.apx.InterfaceC1449a
    /* renamed from: g */
    public void mo8283g(aqs aqsVar) {
        this.aZS.m9659a(aqsVar);
    }

    @Override // com.kingroot.kinguser.apx.InterfaceC1449a
    /* renamed from: h */
    public void mo8276h(aqs aqsVar) {
        this.aZS.m9657b(aqsVar);
    }

    @Override // com.kingroot.kinguser.aqa.InterfaceC1462a
    /* renamed from: gn */
    public void mo8277gn(int i) {
        this.aZS.m9653gm(i);
    }

    @Override // com.kingroot.kinguser.apx.InterfaceC1449a
    /* renamed from: gk */
    public void mo8278gk(int i) {
        this.aZS.m9653gm(-i);
    }

    @Override // com.kingroot.kinguser.apx.InterfaceC1449a
    /* renamed from: ii */
    public void mo8270ii(String str) {
        mo8268jk(str);
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1611b
    /* renamed from: jk */
    public void mo8268jk(String str) {
        getHandler().obtainMessage(6, str).sendToTarget();
    }

    /* renamed from: a */
    public void m8303a(aui.InterfaceC1610a interfaceC1610a) {
        this.aZL = (aui.InterfaceC1610a) C3948zd.m1327k(interfaceC1610a);
    }

    /* renamed from: bY */
    public void m8295bY(long j) {
        getHandler().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.axm.9
            @Override // java.lang.Runnable
            public void run() {
                axm.this.getActivity().finish();
            }
        }, j);
    }

    /* renamed from: Uv */
    private void m8307Uv() {
        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.axm.10
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                final boolean isRootPermition = abc.m12845qK().isRootPermition();
                super.run();
                if (!aij.m11631xR() || aks.m11143BP().m11086Cu()) {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axm.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            axm.this.aZL.mo9019Qd();
                        }
                    });
                } else {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axm.10.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (isRootPermition) {
                                axm.this.m8306Uw();
                            } else {
                                axm.this.aZL.mo9019Qd();
                            }
                        }
                    });
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Uw */
    public void m8306Uw() {
        this.aZJ = new bic(this.mContext);
        if (!getActivity().isFinishing()) {
            this.aZJ.show();
            this.aZJ.m6947a(new bic.InterfaceC2299a() { // from class: com.kingroot.kinguser.axm.11
                @Override // com.kingroot.kinguser.bic.InterfaceC2299a
                /* renamed from: d */
                public void mo6940d(View view, boolean z) {
                    aks.m11143BP().m10830bm(z);
                    axm.this.aZL.mo9019Qd();
                }
            });
            this.aZJ.setTitleText(C3953zi.m1311pr().getString(R.string.knox_forbid));
            this.aZJ.m6945b(new bic.InterfaceC2299a() { // from class: com.kingroot.kinguser.axm.13
                @Override // com.kingroot.kinguser.bic.InterfaceC2299a
                /* renamed from: d */
                public void mo6940d(View view, boolean z) {
                    aks.m11143BP().m10830bm(z);
                    aij.m11633xP();
                    axm.this.aZL.mo9019Qd();
                }
            });
        }
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1611b
    /* renamed from: Qi */
    public void mo8317Qi() {
        ady.m12308tK().mo1746bi(100234);
        this.aZI = new bhw(this.mContext);
        this.aZI.m6956a(new bhw.InterfaceC2294a() { // from class: com.kingroot.kinguser.axm.14
            @Override // com.kingroot.kinguser.bhw.InterfaceC2294a
            /* renamed from: F */
            public void mo6954F(View view) {
                ady.m12308tK().mo1746bi(100235);
                SoftwareHelpActivity.m12587j(axm.this.getContext(), 2);
            }
        });
        this.aZI.show();
    }

    @Override // com.kingroot.common.uilib.SlidingUpPanelLayout.InterfaceC0559b
    public void onPanelSlide(View view, float f) {
        float f2;
        if (f > 0.5f) {
            f2 = 109 * (1.0f - f);
        } else {
            f2 = 109 * f;
        }
        m8273hz((int) f2);
    }

    /* renamed from: hz */
    private void m8273hz(@IntRange(from = 0, m13740to = 255) int i) {
        this.aZH.m7378hz(bgi.getColor(i, R.color.black_1));
    }

    @Override // com.kingroot.common.uilib.SlidingUpPanelLayout.InterfaceC0559b
    /* renamed from: b */
    public void mo7324b(View view, SlidingUpPanelLayout.EnumC0560c enumC0560c, SlidingUpPanelLayout.EnumC0560c enumC0560c2) {
        if (enumC0560c2 == SlidingUpPanelLayout.EnumC0560c.EXPANDED) {
            this.aZR.setToolBoxState(ToolBoxView.EnumC3656b.EXPANDED);
            ady.m12308tK().mo1746bi(100511);
        } else if (enumC0560c2 == SlidingUpPanelLayout.EnumC0560c.COLLAPSED) {
            this.aZR.setToolBoxState(ToolBoxView.EnumC3656b.COLLAPSED);
        } else if (enumC0560c2 == SlidingUpPanelLayout.EnumC0560c.DRAGGING) {
            bfm.aah().mo7270ai(5, 3);
        }
    }

    /* renamed from: c */
    private long m8293c(aqb aqbVar) {
        if (!this.aZK.get()) {
            return 0L;
        }
        if (aqbVar instanceof aqy) {
            aqy aqyVar = (aqy) aqbVar;
            if (((aqbVar instanceof ard) || (aqbVar instanceof arg)) && !aqyVar.m9545Ng()) {
                return 1000L;
            }
            return 400L;
        }
        return 300L;
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1611b
    /* renamed from: gP */
    public void mo8279gP(int i) {
        this.aZS.m9654gl(this.aZS.m9665Mm() + i);
        m8310Us();
        if (this.aZF && this.aZS.m9665Mm() == 100) {
            int m10969FH = aks.m11143BP().m10969FH() + 1;
            aks.m11143BP().m10768eM(m10969FH);
            if (adk.m12539b(aks.m11143BP().m10970FG(), System.currentTimeMillis(), 259200000L) && m10969FH >= 3) {
                m8316Qs();
            }
        }
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1611b
    /* renamed from: cP */
    public void mo8290cP(final boolean z) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axm.15
            @Override // java.lang.Runnable
            public void run() {
                ((bet) axm.this.f4016Vh).m7379dK(z);
            }
        });
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1611b
    /* renamed from: D */
    public void mo8323D(final String str, final boolean z) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axm.16
            @Override // java.lang.Runnable
            public void run() {
                ((bet) axm.this.f4016Vh).m7377j(str, z);
            }
        });
    }

    /* renamed from: com.kingroot.kinguser.axm$17 */
    /* loaded from: classes.dex */
    class C188917 implements apv.InterfaceC1441b {
        final /* synthetic */ AppBaseModel ayI;

        C188917(AppBaseModel appBaseModel) {
            this.ayI = appBaseModel;
        }

        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
        /* renamed from: a */
        public void mo4137a(String str, final Bitmap bitmap) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axm.17.1
                @Override // java.lang.Runnable
                public void run() {
                    if (axm.this.aZZ != null) {
                        axm.this.bab.setImageBitmap(bitmap);
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(axm.this.aZX, "translationY", -axm.this.aZY, 0.0f);
                        ofFloat.setDuration(850L);
                        ofFloat.setInterpolator(new animationInterpolatorC3896xr(EnumC3895xq.BOUNCE_OUT));
                        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.axm.17.1.1
                            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                                super.onAnimationStart(animator);
                                axm.this.aZX.setVisibility(0);
                            }
                        });
                        ofFloat.start();
                        ady.m12308tK().mo1746bi(100706);
                        if (C188917.this.ayI.jumptype == 1) {
                            ana.m10352IO().mo10330a(axm.this.getActivity().getClass().getName(), axm.this.getActivity().hashCode(), C188917.this.ayI.reportInfo);
                        }
                    }
                }
            });
        }

        @Override // com.kingroot.kinguser.apv.InterfaceC1441b
        /* renamed from: eE */
        public void mo4136eE(String str) {
        }
    }

    @Override // com.kingroot.kinguser.aui.InterfaceC1611b
    /* renamed from: n */
    public void mo8263n(AppBaseModel appBaseModel) {
        this.aZZ = appBaseModel;
        apv.m9735LO().m9730a(appBaseModel.iconUrl, new C188917(appBaseModel));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1020) {
            this.aZF = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
        amz.m10365II().m10361a(this.aBo);
        this.aZF = false;
        this.aZV.countDown();
    }

    /* renamed from: Qs */
    private void m8316Qs() {
        final aks m11143BP = aks.m11143BP();
        boolean m10972FE = m11143BP.m10972FE();
        boolean m10973FD = m11143BP.m10973FD();
        boolean abX = bgt.abX();
        if (m10972FE && m10973FD && abX) {
            C3953zi m1311pr = C3953zi.m1311pr();
            final bii biiVar = new bii(this.mContext);
            long currentTimeMillis = System.currentTimeMillis();
            aks.m11143BP().m10883bE(currentTimeMillis);
            biiVar.show();
            biiVar.m6907lN(m1311pr.getString(R.string.praise_dialog_safe_title, Long.valueOf((currentTimeMillis - aks.m11143BP().m10970FG()) / 86400000)));
            biiVar.m6908lM(m1311pr.getString(R.string.praise_dialog_safe_content_text));
            biiVar.m6906n(new View.OnClickListener() { // from class: com.kingroot.kinguser.axm.18
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    biiVar.dismiss();
                    ady.m12308tK().mo1746bi(100564);
                    m11143BP.m10792ck(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ux */
    public void m8305Ux() {
        if (!adk.m12539b(0L, SystemClock.elapsedRealtime(), 300000L) && !aks.m11143BP().m10966FK() && bbu.m7772hS(bbv.m7771WK().m7770WL())) {
            ady.m12308tK().mo1746bi(100640);
            big bigVar = new big(this.mContext);
            C3953zi m1311pr = C3953zi.m1311pr();
            bigVar.show();
            bigVar.setCanceledOnTouchOutside(false);
            bigVar.setTitleText(m1311pr.getString(R.string.reboot_guide_root_dialog_title));
            bigVar.m6931iX(8);
            bigVar.m6930lL(m1311pr.getString(R.string.reboot_guide_root_dialog_button_text));
            bigVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axm.19
                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                /* renamed from: n */
                public void mo1843n(View view) {
                    ady.m12308tK().mo1746bi(100641);
                    axm.this.aZL.mo9026PX();
                }
            });
            aks.m11143BP().m10788co(true);
        }
    }
}
