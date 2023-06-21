package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.p004v4.view.LayoutInflaterCompat;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AccelerateInterpolator;
import com.android.animation.AnimatorListenerAdapter;
import com.android.animation.ObjectAnimator;
import com.kingroot.kinguser.apz;
import com.kingroot.kinguser.aqa;
import com.kingroot.kinguses.R;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes.dex */
public class axh extends AbstractC3922ym implements aqa.InterfaceC1462a, InterfaceC3916yg {
    private int aKm;
    private bed aSe;
    private bev aYD;
    private aqa aYE;
    private final ConcurrentLinkedQueue<aqc> aYF;
    private RecyclerView.OnScrollListener aYG;
    private C3905xx aYd;
    private ViewTreeObserver.OnGlobalLayoutListener mOnGlobalLayoutListener;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.aYd = new C3905xx();
        LayoutInflaterCompat.setFactory(getLayoutInflater(), this.aYd);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        C3906xy.m1431ox().mo1423b(this);
        this.aYd.clean();
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        C3906xy.m1431ox().mo1424a(this);
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m8406a(RecyclerView recyclerView) {
        if (recyclerView != null) {
            int measuredHeight = recyclerView.getMeasuredHeight();
            int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
            this.aYD.m7369hz(bgi.getColor((int) ((computeVerticalScrollOffset > measuredHeight ? 1.0f : computeVerticalScrollOffset / measuredHeight) * 109), R.color.black_1));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hw */
    public void m8399hw(int i) {
        this.aKm += i;
        this.aKm = this.aKm <= 100 ? this.aKm : 100;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TZ */
    public int m8407TZ() {
        return this.aKm;
    }

    public axh(Context context) {
        super(context);
        this.aYF = new ConcurrentLinkedQueue<>();
        this.aKm = -1;
        this.mOnGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kingroot.kinguser.axh.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                axh.this.m8406a(axh.this.aYE.m9633Mw());
            }
        };
        this.aYG = new RecyclerView.OnScrollListener() { // from class: com.kingroot.kinguser.axh.2
            @Override // android.support.p007v7.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                super.onScrollStateChanged(recyclerView, i);
            }

            @Override // android.support.p007v7.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                super.onScrolled(recyclerView, i, i2);
                axh.this.m8406a(recyclerView);
            }
        };
        this.aSe = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.axh.3
            private long mStartTime;

            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                int i;
                aks m11143BP;
                int m10980Ew;
                super.run();
                this.mStartTime = System.currentTimeMillis();
                while (!axh.this.aYF.isEmpty()) {
                    final aqc aqcVar = (aqc) axh.this.aYF.peek();
                    if (aqcVar == null || !(aqcVar.aKZ instanceof aqh)) {
                        axh.this.aYF.poll();
                    } else {
                        final aqh aqhVar = (aqh) aqcVar.aKZ;
                        if (aqhVar instanceof aqq) {
                            if (!bfw.aaS().aaU() || !bfp.aay().isEnable()) {
                                axh.this.aYF.poll();
                            } else {
                                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axh.3.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        axh.this.aYE.m9615il(aqcVar.name);
                                        axh.this.m8399hw(aqhVar.mo9576MK());
                                        String m9598MD = aqe.m9598MD();
                                        axh.this.aYE.m9617ij(String.valueOf(axh.this.m8407TZ()));
                                        axh.this.aYE.m9616ik(m9598MD);
                                    }
                                });
                                axh.this.aYF.poll();
                            }
                        } else if (!aqhVar.mo9529My()) {
                            if (aqhVar instanceof aqi) {
                                axh.this.aYE.m9621b(axm.m8297b(aqhVar));
                            }
                            axh.this.aYF.poll();
                        } else {
                            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.axh.3.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    axh.this.aYE.m9615il(aqcVar.name);
                                    axh.this.m8399hw(aqhVar.mo9576MK());
                                    String m9598MD = aqe.m9598MD();
                                    axh.this.aYE.m9617ij(String.valueOf(axh.this.m8407TZ()));
                                    axh.this.aYE.m9616ik(m9598MD);
                                }
                            });
                            axh.this.aYF.poll();
                        }
                    }
                }
                int i2 = 0;
                Iterator<aqc> it = aqd.m9603MA().iterator();
                while (true) {
                    i = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    aqc next = it.next();
                    if (next.type != 0 && next.type != 3) {
                        break;
                    }
                    i2 = i + 1;
                }
                if (i > 0 && 2 != (m10980Ew = (m11143BP = aks.m11143BP()).m10980Ew())) {
                    if (m10980Ew == 0) {
                        m11143BP.m10778eC(1);
                        return;
                    }
                    long currentTimeMillis = (800 - System.currentTimeMillis()) + this.mStartTime;
                    Runnable runnable = new Runnable() { // from class: com.kingroot.kinguser.axh.3.2
                        @Override // java.lang.Runnable
                        public void run() {
                            if (axh.this.aYE != null) {
                                axh.this.aYE.m9614t(0, true);
                            }
                        }
                    };
                    if (currentTimeMillis <= 0) {
                        currentTimeMillis = 0;
                    }
                    C3840wl.m1551c(runnable, currentTimeMillis);
                    m11143BP.m10778eC(2);
                }
            }
        });
        ady.m12308tK().mo1746bi(100309);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
        this.aYE.m9623b(this.aYG);
        if (Build.VERSION.SDK_INT >= 16) {
            this.aYE.m9633Mw().getViewTreeObserver().removeOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
        } else {
            this.aYE.m9633Mw().getViewTreeObserver().removeGlobalOnLayoutListener(this.mOnGlobalLayoutListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStart() {
        super.onStart();
        this.aYE.m9617ij(String.valueOf(m8407TZ()));
        this.aYE.m9628a(this.aYG);
        this.aYE.m9633Mw().getViewTreeObserver().addOnGlobalLayoutListener(this.mOnGlobalLayoutListener);
        beg.m7461Zj().m7450c(this.aSe);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.aYD = new bev(getActivity(), m1417V(2131165430L));
        return this.aYD;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        String str;
        Intent intent = getIntent();
        if (intent != null) {
            this.aKm = intent.getIntExtra("opt.detail.score", -1);
            str = intent.getStringExtra("opt.detail.status");
        } else {
            str = null;
        }
        if (this.aKm == -1 || TextUtils.isEmpty(str) || aqd.m9602MB() == 0) {
            getActivity().finish();
        }
        View inflate = getLayoutInflater().inflate(R.layout.page_opt_detail, (ViewGroup) null);
        final RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.task_list);
        this.aYE = new aqa(recyclerView, getActivity(), true, true, apz.EnumC1455b.RESULT_PAGE);
        this.aYE.m9626a(this);
        recyclerView.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.axh.4
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                recyclerView.getViewTreeObserver().removeOnPreDrawListener(this);
                axh.this.aYD.m7371Zz();
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(axh.this.getContentView().findViewById(R.id.task_list), "translationY", abg.m12835r(axh.this.getContentView().findViewById(R.id.task_list).getHeight() / 2), 0.0f);
                ofFloat.setDuration(400L);
                ofFloat.setInterpolator(new AccelerateInterpolator());
                ofFloat.start();
                bhk.m6998a(axh.this.getContentView(), 400L, (AnimatorListenerAdapter) null);
                axh.this.getHandler().sendEmptyMessageDelayed(2, 500L);
                return true;
            }
        });
        this.aYE.m9617ij(String.valueOf(m8407TZ()));
        this.aYE.m9616ik(str);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        if (2 == message.what) {
            this.aYE.m9634Mv();
        }
        super.mo1413a(message);
    }

    @Override // com.kingroot.kinguser.aqa.InterfaceC1462a
    /* renamed from: c */
    public void mo8292c(aqc aqcVar) {
        if (aqcVar.aKZ instanceof aqh) {
            final aqh aqhVar = (aqh) aqcVar.aKZ;
            if (aqhVar instanceof aqq) {
                aks.m11143BP().m10993Ej();
                ady.m12308tK().mo1746bi(100311);
            } else if (aqhVar instanceof aqp) {
                ady.m12308tK().mo1746bi(100313);
            } else if (aqhVar instanceof aqn) {
                aks.m11143BP().m10994Ei();
                ady.m12308tK().mo1746bi(100315);
            } else if (aqhVar instanceof aqi) {
                ady.m12308tK().mo1746bi(100352);
            } else if (aqhVar instanceof aqk) {
                apd.m9836ao(((aqk) aqhVar).m9584KM(), "Optimi");
            } else if (aqhVar instanceof aqm) {
                ady.m12308tK().mo1746bi(100633);
            }
            beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.axh.5
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    aqhVar.m9594MJ();
                }
            }));
            if ((aqcVar.aKZ instanceof aqh) && !this.aYF.contains(aqcVar)) {
                this.aYF.add(aqcVar);
            }
        }
    }

    @Override // com.kingroot.kinguser.aqa.InterfaceC1462a
    /* renamed from: d */
    public void mo8288d(@NonNull aqc aqcVar) {
        if (3 == aqcVar.type && (aqcVar.aKZ instanceof aqh)) {
            final aqh aqhVar = (aqh) aqcVar.aKZ;
            if (aqhVar instanceof aqq) {
                ady.m12308tK().mo1746bi(100354);
            } else if (aqhVar instanceof aqp) {
                ady.m12308tK().mo1746bi(100356);
            } else if (aqhVar instanceof aqn) {
                ady.m12308tK().mo1746bi(100355);
            } else if (aqhVar instanceof aqi) {
                ady.m12308tK().mo1746bi(100353);
            }
            beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.axh.6
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    aqhVar.ignore();
                }
            }));
            this.aYE.m9615il(aqcVar.name);
            this.aYE.m9616ik(aqe.m9598MD());
        }
    }

    @Override // com.kingroot.kinguser.aqa.InterfaceC1462a
    /* renamed from: gn */
    public void mo8277gn(int i) {
    }

    @Override // com.kingroot.kinguser.aqa.InterfaceC1462a
    /* renamed from: Mx */
    public void mo8318Mx() {
    }

    @Override // com.kingroot.kinguser.aqa.InterfaceC1462a
    /* renamed from: c */
    public void mo8294c(int i, aqc aqcVar) {
    }
}
