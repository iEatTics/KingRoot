package com.kingroot.kinguser;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.apz;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes.dex */
public class aqa {
    private apz aKL;
    private volatile ConcurrentLinkedQueue<C1463b> aKM;
    private AtomicLong aKN;
    private WeakReference<InterfaceC1462a> aKO;
    private AtomicBoolean aKP;
    private final aqf aKQ;
    private Handler mHandler;
    private RecyclerView mRecyclerView;

    /* renamed from: com.kingroot.kinguser.aqa$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1462a {
        /* renamed from: Mx */
        void mo8318Mx();

        /* renamed from: c */
        void mo8294c(int i, aqc aqcVar);

        /* renamed from: c */
        void mo8292c(aqc aqcVar);

        /* renamed from: d */
        void mo8288d(aqc aqcVar);

        /* renamed from: gn */
        void mo8277gn(int i);
    }

    public aqa(RecyclerView recyclerView, Activity activity, boolean z, apz.EnumC1455b enumC1455b) {
        this(recyclerView, activity, z, false, enumC1455b);
    }

    public aqa(RecyclerView recyclerView, Activity activity, boolean z, boolean z2, apz.EnumC1455b enumC1455b) {
        this.aKM = new ConcurrentLinkedQueue<>();
        this.aKN = new AtomicLong(0L);
        this.aKP = new AtomicBoolean(false);
        this.aKQ = new aqf() { // from class: com.kingroot.kinguser.aqa.1
            @Override // com.kingroot.kinguser.aqf
            /* renamed from: c */
            public void mo9597c(View view, int i) {
                if (i >= 0 && !aqa.this.aKP.get()) {
                    List<aqc> m9648Mq = aqa.this.aKL.m9648Mq();
                    if (m9648Mq.size() > i) {
                        aqc aqcVar = m9648Mq.get(i);
                        if (aqcVar.type == 1) {
                            List<aqc> list = aqd.m9601MC().get(aqcVar.name);
                            if (!C3942yy.m1351d(list)) {
                                ((apz.View$OnClickListenerC1456c) aqa.this.mRecyclerView.findViewHolderForAdapterPosition(i)).m9641a(aqcVar, list);
                                if (!aqcVar.akd) {
                                    aqa.this.mRecyclerView.smoothScrollToPosition(i);
                                    if (view != null) {
                                        if (aqcVar.aKZ instanceof aqv) {
                                            ady.m12308tK().mo1746bi(100316);
                                        } else if (aqcVar.aKZ instanceof aqu) {
                                            ady.m12308tK().mo1746bi(100317);
                                        } else if (aqcVar.aKZ instanceof aqt) {
                                            ady.m12308tK().mo1746bi(100318);
                                        }
                                    }
                                }
                            }
                            aqcVar.akd = !aqcVar.akd;
                        } else if (aqcVar.type == 0 || aqcVar.type == 3) {
                            InterfaceC1462a m9637Ms = aqa.this.m9637Ms();
                            if (m9637Ms != null) {
                                m9637Ms.mo8292c(aqcVar);
                            }
                        } else if (aqcVar.type == 6 && (aqcVar.aKZ instanceof aqj)) {
                            ((aqj) aqcVar.aKZ).m9587MP();
                            ady.m12308tK().mo1746bi(100572);
                        }
                    }
                }
            }

            @Override // com.kingroot.kinguser.aqf
            /* renamed from: l */
            public void mo9596l(View view, int i) {
                InterfaceC1462a m9637Ms;
                if (!aqa.this.aKP.get()) {
                    List<aqc> m9648Mq = aqa.this.aKL.m9648Mq();
                    if (m9648Mq.size() > i) {
                        aqc aqcVar = m9648Mq.get(i);
                        if (aqcVar.type == 3 && (m9637Ms = aqa.this.m9637Ms()) != null) {
                            m9637Ms.mo8288d(aqcVar);
                        }
                    }
                }
            }
        };
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.aqa.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (1 == message.what) {
                    aqa.this.m9635Mu();
                }
            }
        };
        this.mRecyclerView = recyclerView;
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setItemAnimator(new DefaultItemAnimator());
        this.mRecyclerView.setLayoutManager(new FixLinearLayoutManager(activity));
        this.aKL = new apz(this.aKQ, enumC1455b);
        ArrayList arrayList = new ArrayList();
        List<aqc> m9603MA = aqd.m9603MA();
        if (z2) {
            arrayList.add(aqc.m9611Mz());
        }
        arrayList.addAll(m9603MA);
        this.aKL.m9647aZ(z ? arrayList : null);
        this.mRecyclerView.setAdapter(this.aKL);
        this.aKL.onAttachedToRecyclerView(this.mRecyclerView);
        if (enumC1455b == apz.EnumC1455b.RESULT_PAGE) {
            for (aqc aqcVar : this.aKL.m9648Mq()) {
                if (aqcVar.aKZ instanceof aqj) {
                    aqj aqjVar = (aqj) aqcVar.aKZ;
                    if (aqjVar.mo9575vs()) {
                        aqjVar.m9586MQ();
                        this.aKL.m9646cG(true);
                        ady.m12308tK().mo1746bi(100571);
                    }
                }
            }
        }
    }

    /* renamed from: ij */
    public void m9617ij(String str) {
        List<aqc> m9648Mq = this.aKL.m9648Mq();
        if (!C3942yy.m1351d(m9648Mq) && m9648Mq.get(0).type == 5) {
            m9648Mq.get(0).aKW = str;
            this.aKL.notifyItemChanged(0);
        }
    }

    /* renamed from: ik */
    public void m9616ik(String str) {
        List<aqc> m9648Mq = this.aKL.m9648Mq();
        if (!C3942yy.m1351d(m9648Mq) && m9648Mq.get(0).type == 5) {
            m9648Mq.get(0).aKV = str;
            this.aKL.notifyItemChanged(0);
        }
    }

    public RecyclerView.ItemAnimator getItemAnimator() {
        return this.mRecyclerView.getItemAnimator();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ms */
    public InterfaceC1462a m9637Ms() {
        if (this.aKO != null) {
            return this.aKO.get();
        }
        return null;
    }

    /* renamed from: a */
    public void m9626a(InterfaceC1462a interfaceC1462a) {
        this.aKO = new WeakReference<>(interfaceC1462a);
    }

    /* renamed from: Mt */
    public final void m9636Mt() {
        m9630a(0, (aqc) null, -1L);
    }

    /* renamed from: a */
    public final void m9632a(int i, aqc aqcVar) {
        m9629a(i, aqcVar, 0L, 0);
    }

    /* renamed from: a */
    public final void m9630a(int i, aqc aqcVar, long j) {
        m9629a(i, aqcVar, j, 0);
    }

    /* renamed from: a */
    public void m9629a(int i, @Nullable aqc aqcVar, long j, int i2) {
        this.aKM.add(C1463b.m9612b(i, aqcVar, j, i2));
        this.mHandler.removeMessages(1);
        this.mHandler.sendEmptyMessage(1);
    }

    /* renamed from: il */
    public void m9615il(String str) {
        List<aqc> m9648Mq = this.aKL.m9648Mq();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < m9648Mq.size()) {
                if (!str.contentEquals(m9648Mq.get(i2).name)) {
                    i = i2 + 1;
                } else {
                    m9648Mq.remove(i2);
                    this.aKL.m9647aZ(m9648Mq);
                    this.aKL.notifyItemRemoved(i2);
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* renamed from: b */
    public void m9621b(aqc aqcVar) {
        if (aqcVar != null && !TextUtils.isEmpty(aqcVar.name)) {
            List<aqc> m9648Mq = this.aKL.m9648Mq();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < m9648Mq.size()) {
                    aqc aqcVar2 = m9648Mq.get(i2);
                    if (!aqc.m9610a(aqcVar2, aqcVar)) {
                        i = i2 + 1;
                    } else {
                        aqcVar2.m9604e(aqcVar);
                        this.aKL.notifyItemChanged(i2);
                        return;
                    }
                } else {
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Mu */
    public void m9635Mu() {
        InterfaceC1462a m9637Ms;
        C1463b peek = this.aKM.peek();
        if (peek != null) {
            long currentTimeMillis = System.currentTimeMillis();
            if (peek.aKS == null || peek.aKT == -1) {
                if (currentTimeMillis >= this.aKN.get()) {
                    this.aKM.clear();
                    this.aKP.set(false);
                    InterfaceC1462a m9637Ms2 = m9637Ms();
                    if (m9637Ms2 != null) {
                        m9637Ms2.mo8318Mx();
                        return;
                    }
                    return;
                }
                this.mHandler.sendEmptyMessageDelayed(1, this.aKN.get() - currentTimeMillis);
                return;
            }
            this.aKP.set(true);
            if (currentTimeMillis >= this.aKN.get()) {
                aqc aqcVar = peek.aKS;
                if (aqcVar.type == 2) {
                    aqd.m9600a(aqcVar.aKY, aqcVar);
                    this.aKM.poll();
                    this.mHandler.sendEmptyMessage(1);
                    m9624b(peek.f1539gw, aqcVar);
                    this.aKN.set(System.currentTimeMillis() + peek.aKT);
                    return;
                }
                if (aqcVar.type != 4) {
                    if (peek.aKU > 0 && (m9637Ms = m9637Ms()) != null) {
                        m9637Ms.mo8277gn(peek.aKU);
                    }
                    m9624b(peek.f1539gw, aqcVar);
                }
                InterfaceC1462a m9637Ms3 = m9637Ms();
                if (m9637Ms3 != null) {
                    m9637Ms3.mo8294c(peek.f1539gw, aqcVar);
                }
                this.aKM.poll();
                this.aKN.set(System.currentTimeMillis() + peek.aKT);
                this.mHandler.sendEmptyMessage(1);
                return;
            }
            this.mHandler.sendEmptyMessageDelayed(1, this.aKN.get() - currentTimeMillis);
        }
    }

    /* renamed from: b */
    private void m9624b(int i, aqc aqcVar) {
        int i2 = 0;
        List<aqc> m9648Mq = this.aKL.m9648Mq();
        if (1 == aqcVar.type) {
            if (m9648Mq.size() == 0) {
                m9648Mq.add(0, aqcVar);
                this.aKL.m9647aZ(m9648Mq);
                this.aKL.notifyItemInserted(0);
                this.mRecyclerView.scrollToPosition(0);
                return;
            }
            aqc aqcVar2 = m9648Mq.get(0);
            if (aqc.m9610a(aqcVar2, aqcVar)) {
                aqcVar2.m9604e(aqcVar);
                this.aKL.notifyItemChanged(0);
                return;
            }
            m9648Mq.add(0, aqcVar);
            this.aKL.m9647aZ(m9648Mq);
            this.aKL.notifyItemInserted(0);
            this.mRecyclerView.scrollToPosition(0);
        } else if (aqcVar.type == 0 || 3 == aqcVar.type || 6 == aqcVar.type) {
            if (aqcVar.aKZ instanceof aqq) {
                ady.m12308tK().mo1746bi(100310);
            } else if (aqcVar.aKZ instanceof aqp) {
                ady.m12308tK().mo1746bi(100312);
            } else if (aqcVar.aKZ instanceof aqn) {
                ady.m12308tK().mo1746bi(100314);
            } else if (aqcVar.aKZ instanceof aqi) {
                ady.m12308tK().mo1746bi(100351);
            } else if (aqcVar.aKZ instanceof aqm) {
                ady.m12308tK().mo1746bi(100632);
            }
            m9648Mq.add(0, aqcVar);
            this.aKL.m9647aZ(m9648Mq);
            this.aKL.notifyItemInserted(0);
            this.mRecyclerView.scrollToPosition(0);
        } else if (2 == aqcVar.type && !C3942yy.m1351d(m9648Mq)) {
            while (true) {
                if (i2 >= m9648Mq.size()) {
                    i2 = -1;
                    break;
                } else if (m9648Mq.get(i2).type == 1) {
                    break;
                } else {
                    i2++;
                }
            }
            m9631a(i, aqcVar, i2);
        }
    }

    /* renamed from: Mv */
    public void m9634Mv() {
        List<aqc> m9648Mq = this.aKL.m9648Mq();
        if (m9648Mq.size() > 0) {
            aqc aqcVar = null;
            int i = 0;
            while (true) {
                if (i >= m9648Mq.size()) {
                    i = -1;
                    break;
                }
                aqc aqcVar2 = m9648Mq.get(i);
                if (aqcVar2.type == 1) {
                    aqcVar = aqcVar2;
                    break;
                }
                i++;
            }
            if (i != -1 && i == m9648Mq.size() - 1) {
                try {
                    apz.View$OnClickListenerC1456c view$OnClickListenerC1456c = (apz.View$OnClickListenerC1456c) this.mRecyclerView.findViewHolderForAdapterPosition(i);
                    List<aqc> list = aqd.m9601MC().get(aqcVar.name);
                    if (view$OnClickListenerC1456c != null && !C3942yy.m1351d(list)) {
                        view$OnClickListenerC1456c.m9641a(aqcVar, list);
                        aqcVar.akd = aqcVar.akd ? false : true;
                    }
                } catch (Throwable th) {
                }
            }
        }
    }

    /* renamed from: a */
    public void m9627a(View.OnTouchListener onTouchListener) {
        if (this.mRecyclerView != null) {
            this.mRecyclerView.setOnTouchListener(onTouchListener);
        }
    }

    /* renamed from: t */
    public void m9614t(int i, boolean z) {
        if (this.aKL != null) {
            this.aKL.m9645t(i, z);
        }
    }

    /* renamed from: a */
    public void m9631a(int i, aqc aqcVar, int i2) {
        apz.View$OnClickListenerC1456c view$OnClickListenerC1456c = (apz.View$OnClickListenerC1456c) this.mRecyclerView.findViewHolderForAdapterPosition(i2);
        List<aqc> list = aqd.m9601MC().get(aqcVar.aKY);
        if (view$OnClickListenerC1456c != null) {
            view$OnClickListenerC1456c.m9642a(i, list, true);
        }
    }

    /* renamed from: a */
    public void m9628a(RecyclerView.OnScrollListener onScrollListener) {
        this.mRecyclerView.addOnScrollListener(onScrollListener);
    }

    /* renamed from: b */
    public void m9623b(RecyclerView.OnScrollListener onScrollListener) {
        this.mRecyclerView.removeOnScrollListener(onScrollListener);
    }

    /* renamed from: Mw */
    public RecyclerView m9633Mw() {
        return this.mRecyclerView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.aqa$b */
    /* loaded from: classes.dex */
    public static class C1463b {
        public aqc aKS;
        public long aKT = -1;
        public int aKU = 0;

        /* renamed from: gw */
        private int f1539gw;

        private C1463b() {
        }

        /* renamed from: b */
        public static C1463b m9612b(int i, aqc aqcVar, long j, int i2) {
            C1463b c1463b = new C1463b();
            c1463b.f1539gw = i;
            c1463b.aKS = aqcVar;
            c1463b.aKT = j;
            c1463b.aKU = i2;
            return c1463b;
        }
    }
}
