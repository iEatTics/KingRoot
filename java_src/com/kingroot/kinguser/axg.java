package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.android.animation.Animator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.AnimatorSet;
import com.android.animation.ObjectAnimator;
import com.kingcore.uilib.PercentageIndicator;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.auh;
import com.kingroot.kinguser.bgl;
import com.kingroot.kinguser.root.views.device.RootStateMgrView;
import com.kingroot.kinguses.R;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes.dex */
public class axg extends AbstractC3922ym implements auh.InterfaceC1609b {
    private int aSl;
    private int aSm;
    private final CountDownTimer aYj;
    private int aYk;
    private boolean aYl;
    private auh.InterfaceC1608a aYm;
    private ViewGroup aYn;
    private RootStateMgrView aYo;
    private final Map<Integer, PercentageIndicator> aYp;
    private View.OnLongClickListener aYq;
    private final AbstractView$OnClickListenerC1835a aYr;
    private final View.OnClickListener aYs;
    private final View.OnClickListener aYt;
    private final View.OnClickListener aYu;
    private long mStartTime;

    public axg(Context context) {
        super(context);
        this.mStartTime = 0L;
        this.aYj = new CountDownTimer(10000L, 10000L) { // from class: com.kingroot.kinguser.axg.1
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                axg.this.getHandler().obtainMessage(1).sendToTarget();
            }
        };
        this.aYl = false;
        this.aYp = new HashMap();
        this.aYq = new View.OnLongClickListener() { // from class: com.kingroot.kinguser.axg.16
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                String charSequence = ((TextView) view).getText().toString();
                bgc.m7127A(axg.this.getContext(), charSequence);
                C3954zj.m1307c(String.format(C3953zi.m1311pr().getString(R.string.device_detail_copy), charSequence), 0);
                return true;
            }
        };
        this.aYr = new AbstractView$OnClickListenerC1835a() { // from class: com.kingroot.kinguser.axg.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (this.aYC) {
                    ady.m12308tK().mo1746bi(100443);
                    ady.m12308tK().m12341a(0, 0, 2, 0, 0, 0, 0);
                } else {
                    ady.m12308tK().m12341a(2, 0, 0, 0, 0, 0, 0);
                    ady.m12308tK().mo1746bi(100442);
                }
                axg.this.aYm.mo9045PX();
            }
        };
        this.aYs = new View.OnClickListener() { // from class: com.kingroot.kinguser.axg.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().m12341a(0, 2, 0, 0, 0, 0, 0);
                axg.this.aYm.mo9044PY();
            }
        };
        this.aYt = new View.OnClickListener() { // from class: com.kingroot.kinguser.axg.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().m12341a(0, 4, 0, 0, 0, 0, 0);
                axg.this.aYm.mo9044PY();
            }
        };
        this.aYu = new View.OnClickListener() { // from class: com.kingroot.kinguser.axg.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                axg.this.m8429TX();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100439);
        Intent intent = getIntent();
        this.aSl = bbv.m7771WK().m7770WL();
        this.aYk = bbv.m7771WK().m7769WM();
        if (intent != null) {
            this.aSm = intent.getIntExtra("root_process_state", 0);
        }
        if (bbv.m7771WK().m7767WO()) {
            m8428TY();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        if (!m8431TV()) {
            if (message.what == 10201) {
                Handler handler = getHandler();
                m8433TT();
                long currentTimeMillis = System.currentTimeMillis();
                Message obtainMessage = handler.obtainMessage(10201, message.arg1, message.arg2);
                if (aix.m11514dI(obtainMessage.arg1)) {
                    if (this.mStartTime != 0 && currentTimeMillis > this.mStartTime && currentTimeMillis - this.mStartTime < 2500) {
                        handler.sendMessageDelayed(obtainMessage, (this.mStartTime + 2500) - currentTimeMillis);
                        return;
                    }
                } else if (this.mStartTime != 0 && currentTimeMillis > this.mStartTime && currentTimeMillis - this.mStartTime < 10000) {
                    handler.sendMessageDelayed(obtainMessage, (this.mStartTime + 10000) - currentTimeMillis);
                    return;
                }
                this.aSl = bbv.m7771WK().m7770WL();
                this.aYk = aix.m11515dH(this.aSl);
                bbv.m7771WK().m7762dC(false);
                m8413hu(this.aSl);
                m8432TU();
            } else if (message.what == 1) {
                bbv.m7771WK().m7762dC(true);
                m8413hu(10);
                m8432TU();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        this.aYm.start();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        super.onDestroy();
        this.aYm.destroy();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        this.aYn = (ViewGroup) getLayoutInflater().inflate(R.layout.device_info, (ViewGroup) null);
        this.aYo = new RootStateMgrView(getContext());
        if (this.aSm == 0) {
            m8413hu(this.aSl);
        } else {
            m8412hv(this.aSm);
        }
        m8409z(this.aYn);
        m8435A(this.aYn);
        m8424b(this.aYn);
        return this.aYn;
    }

    /* renamed from: b */
    private void m8424b(ViewGroup viewGroup) {
        ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(0);
        for (int i = 0; i < viewGroup2.getChildCount(); i++) {
            View childAt = viewGroup2.getChildAt(i);
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(childAt, "alpha", 0.0f);
            ofFloat.setDuration(0L);
            ofFloat.start();
            m8410m(childAt, i * 100);
        }
    }

    /* renamed from: m */
    private void m8410m(final View view, final int i) {
        view.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.axg.9
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                view.getViewTreeObserver().removeOnPreDrawListener(this);
                axg.this.m8421c(view, i, view.getMeasuredWidth());
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m8421c(View view, int i, int i2) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, "translationX", -i2, 0.0f);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat, ofFloat2);
        animatorSet.setDuration(500L);
        animatorSet.setStartDelay(i);
        animatorSet.setInterpolator(new AccelerateInterpolator());
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.kingroot.kinguser.axg.10
            @Override // com.android.animation.AnimatorListenerAdapter, com.android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                axg.this.aYm.mo9043PZ();
            }
        });
        animatorSet.start();
    }

    /* renamed from: z */
    private void m8409z(View view) {
        view.findViewById(R.id.device_usage_container).setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axg.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                axg.this.aYm.mo9046PW();
            }
        });
        PercentageIndicator percentageIndicator = (PercentageIndicator) view.findViewById(R.id.rom);
        percentageIndicator.setTextStyle("ROM");
        PercentageIndicator percentageIndicator2 = (PercentageIndicator) view.findViewById(R.id.ram);
        percentageIndicator2.setTextStyle("RAM");
        PercentageIndicator percentageIndicator3 = (PercentageIndicator) view.findViewById(R.id.cpu);
        percentageIndicator3.setTextStyle("CPU");
        this.aYp.put(1, percentageIndicator);
        this.aYp.put(2, percentageIndicator2);
        this.aYp.put(3, percentageIndicator3);
        View findViewById = view.findViewById(R.id.purify_guide);
        if (ais.m11574yp()) {
            ady.m12308tK().mo1746bi(100547);
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axg.12
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    ady.m12308tK().mo1746bi(100548);
                    axg.this.m8430TW();
                }
            });
            return;
        }
        findViewById.setVisibility(8);
        view.findViewById(R.id.divider).setVisibility(8);
    }

    /* renamed from: A */
    private void m8435A(View view) {
        view.findViewById(R.id.item_module_header_container).setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.axg.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                axg.this.aYm.mo9047PV();
            }
        });
        mo8419cO(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        FrameLayout frameLayout = (FrameLayout) getWholeView().findViewById(R.id.root_state_manager);
        frameLayout.addView(this.aYo.getWholeView());
        C3857ws.m1502a(frameLayout, 4);
        C3857ws.m1502a(getWholeView().findViewById(R.id.device_usage_container), 4);
        C3857ws.m1502a(getWholeView().findViewById(R.id.hardware_info), 4);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        acv acvVar = new acv(getActivity(), "KingRoot Labs");
        acvVar.m12568cj(1);
        acvVar.m12564at(false);
        return acvVar;
    }

    @Override // com.kingroot.kinguser.auh.InterfaceC1609b
    /* renamed from: Q */
    public void mo8434Q(final int i, final int i2) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axg.14
            @Override // java.lang.Runnable
            public void run() {
                ((PercentageIndicator) axg.this.aYp.get(Integer.valueOf(i))).setPercentage(i2);
            }
        });
    }

    @Override // com.kingroot.kinguser.auh.InterfaceC1609b
    /* renamed from: k */
    public void mo8411k(final List<bgl.C2267a> list, final boolean z) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axg.15
            @Override // java.lang.Runnable
            public void run() {
                LinearLayout linearLayout = (LinearLayout) axg.this.aYn.findViewById(R.id.expandableLayout);
                LayoutInflater from = LayoutInflater.from(KApplication.m13453ge());
                for (bgl.C2267a c2267a : list) {
                    View inflate = from.inflate(R.layout.list_item_device_info, (ViewGroup) linearLayout, false);
                    ((TextView) inflate.findViewById(R.id.device_key)).setText(c2267a.boQ);
                    TextView textView = (TextView) inflate.findViewById(R.id.device_value);
                    textView.setText(c2267a.boR);
                    if (c2267a.boS) {
                        textView.setOnLongClickListener(axg.this.aYq);
                        textView.setClickable(true);
                    }
                    linearLayout.addView(inflate);
                }
                axg.this.mo8419cO(z);
            }
        });
    }

    @Override // com.kingroot.kinguser.auh.InterfaceC1609b
    /* renamed from: cO */
    public void mo8419cO(final boolean z) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.axg.2
            @Override // java.lang.Runnable
            public void run() {
                View findViewById = axg.this.aYn.findViewById(R.id.expandable_root);
                View findViewById2 = axg.this.aYn.findViewById(R.id.expand_icon);
                findViewById.setVisibility(z ? 0 : 8);
                axg.m8416f(findViewById2, z ? 180.0f : 0.0f);
                final View findViewById3 = axg.this.aYn.findViewById(R.id.hardware_info);
                findViewById3.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.axg.2.1
                    @Override // android.view.ViewTreeObserver.OnPreDrawListener
                    public boolean onPreDraw() {
                        ObjectAnimator.ofInt((ScrollView) axg.this.aYn.findViewById(R.id.device_scrollview), "scrollY", findViewById3.getTop()).setDuration(300L).start();
                        findViewById3.getViewTreeObserver().removeOnPreDrawListener(this);
                        return true;
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public static void m8416f(View view, float f) {
        bhk.m6994b(view, f - 180.0f, f, 300L);
    }

    /* renamed from: a */
    public void m8427a(auh.InterfaceC1608a interfaceC1608a) {
        this.aYm = interfaceC1608a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TW */
    public void m8430TW() {
        if (!ais.m11585ye().m11584yf()) {
            bar.m7897VK();
            return;
        }
        String m11578yl = ais.m11585ye().m11578yl();
        ApplicationInfo applicationInfo = null;
        try {
            applicationInfo = C3952zh.m1312pq().getApplicationInfo(m11578yl, 0);
        } catch (PackageManager.NameNotFoundException e) {
        }
        if (applicationInfo != null && !applicationInfo.enabled) {
            abc.m12845qK().m12846el(String.format(Locale.US, "pm enable %s", m11578yl));
        }
        ais.m11582yh();
    }

    /* renamed from: hu */
    public void m8413hu(int i) {
        switch (i) {
            case 1:
                this.aYo.m2411dD(false);
                ady.m12308tK().mo1746bi(100541);
                ady.m12308tK().mo1746bi(100543);
                return;
            case 2:
                this.aYo.m2411dD(true);
                ady.m12308tK().mo1746bi(100541);
                ady.m12308tK().mo1746bi(100543);
                return;
            case 3:
                this.aYo.m2409h(this.aYs);
                ady.m12308tK().mo1746bi(100542);
                ady.m12308tK().m12341a(0, 1, 0, 0, 0, 0, 0);
                return;
            case 4:
                this.aYo.m2419XD();
                ady.m12308tK().mo1746bi(100541);
                return;
            case 5:
                this.aYr.m8408dv(false);
                this.aYo.m2408i(this.aYr);
                ady.m12308tK().mo1746bi(100542);
                ady.m12308tK().m12341a(1, 0, 0, 0, 0, 0, 0);
                return;
            case 6:
                this.aYr.m8408dv(true);
                this.aYo.m2406j(this.aYr);
                ady.m12308tK().mo1746bi(100542);
                ady.m12308tK().m12341a(0, 0, 1, 0, 0, 0, 0);
                return;
            case 7:
                this.aYo.m2416Xv();
                ady.m12308tK().mo1746bi(100542);
                ady.m12308tK().m12341a(0, 0, 0, 1, 0, 0, 0);
                return;
            case 8:
                this.aYo.m2412cS(false);
                ady.m12308tK().mo1746bi(100542);
                return;
            case 9:
                if (akj.m11270aT(KApplication.m13453ge()).m11277AI()) {
                    this.aYo.m2412cS(false);
                } else {
                    this.aYo.m2418XE();
                    ady.m12308tK().m12341a(0, 0, 0, 0, 1, 0, 0);
                }
                ady.m12308tK().mo1746bi(100542);
                return;
            case 10:
                this.aYo.m2405k(this.aYu);
                return;
            default:
                return;
        }
    }

    /* renamed from: hv */
    public void m8412hv(int i) {
        switch (i) {
            case 1:
                this.aYo.m2417XF();
                return;
            case 2:
            case 3:
            default:
                return;
            case 4:
                this.aYo.m2404l(this.aYt);
                ady.m12308tK().m12341a(0, 3, 0, 0, 0, 0, 0);
                ady.m12308tK().mo1746bi(100542);
                return;
        }
    }

    /* renamed from: TV */
    private boolean m8431TV() {
        return this.aYl;
    }

    /* renamed from: TU */
    private void m8432TU() {
        this.aSm = 0;
        this.aYl = true;
        aiy.m11500yI().m11499yJ();
    }

    /* renamed from: TT */
    private void m8433TT() {
        if (this.aYj != null) {
            this.aYj.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TX */
    public void m8429TX() {
        m8412hv(1);
        this.aSm = 1;
        this.aYl = false;
        this.mStartTime = System.currentTimeMillis();
        this.aYj.start();
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.axg.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                int m11519aP = aix.m11519aP(false);
                aix.m11512q(m11519aP, true);
                axg.this.getHandler().obtainMessage(10201, m11519aP, 0).sendToTarget();
            }
        }));
    }

    /* renamed from: TY */
    private void m8428TY() {
        this.aSm = 1;
        this.aYl = false;
        this.mStartTime = System.currentTimeMillis();
        aiy.m11500yI().m11506a(getHandler());
        aiy.m11500yI().m11501ll();
        this.aYj.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.axg$a */
    /* loaded from: classes.dex */
    public abstract class AbstractView$OnClickListenerC1835a implements View.OnClickListener {
        protected boolean aYC;

        private AbstractView$OnClickListenerC1835a() {
        }

        /* renamed from: dv */
        public void m8408dv(boolean z) {
            this.aYC = z;
        }
    }

    @Override // com.kingroot.kinguser.auh.InterfaceC1609b
    /* renamed from: bY */
    public void mo8422bY(long j) {
        getHandler().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.axg.8
            @Override // java.lang.Runnable
            public void run() {
                axg.this.getActivity().finish();
            }
        }, j);
    }
}
