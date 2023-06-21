package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import cloudsdk.ext.p008kr.RootExtInfo;
import com.kingcore.uilib.ClipView;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.activitys.AdaptRankingActivity;
import com.kingroot.kinguser.activitys.MainActivity;
import com.kingroot.kinguser.activitys.RootPcGuideActivity;
import com.kingroot.kinguser.auj;
import com.kingroot.kinguser.bii;
import com.kingroot.kinguses.R;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class axq extends AbstractC3922ym implements auj.InterfaceC1613b {
    private static final String TAG = aiq.asd + "RootProcessPage";
    private int aSm;
    private bcp aVv;
    private boolean aYb;
    private CountDownTimer aYj;
    private C3850wq aZM;
    private bii baM;
    private auj.InterfaceC1612a baN;
    private View baO;
    private View baP;
    private bco baQ;
    private bcc baR;
    private boolean baS;
    private AtomicBoolean baT;
    private AtomicBoolean baU;
    private beu baV;
    private final View.OnClickListener baW;
    private final AbstractView$OnClickListenerC1947a baX;
    private final AbstractView$OnClickListenerC1948b baY;
    private final View.OnClickListener baZ;
    private final View.OnClickListener bba;
    private final View.OnClickListener bbb;
    private final View.OnClickListener bbc;
    private final View.OnClickListener bbd;
    private final ClipView.InterfaceC0448b bbe;
    private final ClipView.InterfaceC0448b bbf;
    private View mContentView;
    private long mStartTime;

    public axq(Context context) {
        super(context);
        this.mStartTime = 0L;
        this.aYj = new CountDownTimer(10000L, 10000L) { // from class: com.kingroot.kinguser.axq.1
            @Override // android.os.CountDownTimer
            public void onTick(long j) {
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                axq.this.getHandler().obtainMessage(1).sendToTarget();
            }
        };
        this.aYb = false;
        this.baS = false;
        this.baT = new AtomicBoolean(false);
        this.baU = new AtomicBoolean(false);
        this.baW = new View.OnClickListener() { // from class: com.kingroot.kinguser.axq.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (axq.this.aVv == null) {
                    axq.this.aVv = new bcp(axq.this.getActivity(), axq.this.getContext());
                }
                axq.this.aVv.show();
            }
        };
        this.baX = new AbstractView$OnClickListenerC1947a() { // from class: com.kingroot.kinguser.axq.11
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                aks.m11143BP().m10856bX(true);
                ady.m12308tK().mo1746bi(100447);
                axq.this.mo8200cS(true);
            }
        };
        this.baY = new AbstractView$OnClickListenerC1948b() { // from class: com.kingroot.kinguser.axq.12
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                aks.m11143BP().m10856bX(true);
                if (this.aYC) {
                    ady.m12308tK().mo1746bi(100443);
                } else {
                    ady.m12308tK().mo1746bi(100442);
                }
                axq.this.baN.mo8986Qj();
            }
        };
        this.baZ = new View.OnClickListener() { // from class: com.kingroot.kinguser.axq.13
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100446);
                axq.this.baN.mo8985Qk();
            }
        };
        this.bba = new View.OnClickListener() { // from class: com.kingroot.kinguser.axq.14
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AdaptRankingActivity.m12651aL(axq.this.getActivity());
            }
        };
        this.bbb = new View.OnClickListener() { // from class: com.kingroot.kinguser.axq.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100444);
                aks.m11143BP().m10856bX(true);
                RootPcGuideActivity.m12611aL(axq.this.getActivity());
            }
        };
        this.bbc = new View.OnClickListener() { // from class: com.kingroot.kinguser.axq.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activity activity = axq.this.getActivity();
                ady.m12308tK().mo1746bi(100532);
                Intent intent = new Intent();
                intent.setClass(activity, MainActivity.class);
                activity.startActivity(intent);
                activity.finish();
            }
        };
        this.bbd = new View.OnClickListener() { // from class: com.kingroot.kinguser.axq.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activity activity = axq.this.getActivity();
                ady.m12308tK().mo1746bi(100534);
                Intent intent = new Intent();
                intent.setClass(activity, MainActivity.class);
                activity.startActivity(intent);
                activity.finish();
            }
        };
        this.bbe = new ClipView.InterfaceC0448b() { // from class: com.kingroot.kinguser.axq.5
            @Override // com.kingcore.uilib.ClipView.InterfaceC0448b
            /* renamed from: gE */
            public void mo8192gE() {
                final aks m11143BP = aks.m11143BP();
                boolean m10972FE = m11143BP.m10972FE();
                boolean m10975FB = m11143BP.m10975FB();
                boolean abX = bgt.abX();
                if (!m10972FE || !m10975FB || !abX || axq.this.mContext == null) {
                    axq.this.baN.mo8970gQ(2000);
                    return;
                }
                axq.this.baM = new bii(axq.this.mContext);
                aks.m11143BP().m10883bE(System.currentTimeMillis());
                C3953zi m1311pr = C3953zi.m1311pr();
                axq.this.baM.show();
                axq.this.baM.m6912eg(true);
                axq.this.baM.m6907lN(m1311pr.getString(R.string.praise_dialog_root_title));
                axq.this.baM.m6908lM(m1311pr.getString(R.string.praise_dialog_root_content_text));
                axq.this.baM.m6911h(m1311pr.getDrawable(R.drawable.black_bg_1));
                axq.this.baM.m6909lK(m1311pr.getString(R.string.praise_dialog_root_left_button_text));
                axq.this.baM.m6910jd(R.drawable.pop_5star_root);
                axq.this.baM.m6906n(new View.OnClickListener() { // from class: com.kingroot.kinguser.axq.5.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        axq.this.baM.dismiss();
                        ady.m12308tK().mo1746bi(100564);
                        m11143BP.m10794ci(false);
                        axq.this.baN.mo8970gQ(500);
                    }
                });
                axq.this.baM.m6913a(new bii.InterfaceC2308a() { // from class: com.kingroot.kinguser.axq.5.2
                    @Override // com.kingroot.kinguser.bii.InterfaceC2308a
                    /* renamed from: UD */
                    public void mo6905UD() {
                        axq.this.baN.mo8970gQ(500);
                    }
                });
            }
        };
        this.bbf = new ClipView.InterfaceC0448b() { // from class: com.kingroot.kinguser.axq.6
            @Override // com.kingcore.uilib.ClipView.InterfaceC0448b
            /* renamed from: gE */
            public void mo8192gE() {
                axq.this.baN.mo8970gQ(2000);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100439);
        aks.m11143BP().m10790cm(false);
        Intent intent = getIntent();
        this.aSm = 0;
        if (intent != null) {
            this.aSm = intent.getIntExtra("root_process_state", 0);
            this.baN.mo8977cQ(intent.getBooleanExtra("fix_with_result", false));
        }
        if (this.aSm == 1) {
            this.mStartTime = System.currentTimeMillis();
            aiy.m11500yI().m11506a(getHandler());
            aiy.m11500yI().m11501ll();
            this.aYj.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        if (this.baS) {
            this.baS = false;
            if (C3748vb.m1917S(getContext())) {
                this.baN.mo8976cX(6);
            }
        }
        if (aks.m11143BP().m10968FI()) {
            this.baN.mo8970gQ(500);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.baV = new beu(getContext(), m1417V(2131165308L));
        this.baV.m7372m(this.bbd);
        return this.baV;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        this.aZM = new C3850wq(getContext());
        this.mContentView = this.aZM.getView();
        this.baR = new bcc(getContext(), (ViewGroup) this.mContentView.findViewById(R.id.control_panel_container));
        this.baQ = new bco(getContext());
        this.baO = this.baQ.getWholeView();
        this.baQ.m7654XB();
        this.aZM.m1512b(this.baO, 0, 0.6f);
        this.aZM.m1512b(this.baP, 1, 0.39999998f);
        this.aZM.m1523a(0, 0, 0, 0, 0);
        this.aZM.m1523a(1, 0, 0, 0, 0);
        this.mContentView.setFocusableInTouchMode(true);
        this.mContentView.setOnKeyListener(new View.OnKeyListener() { // from class: com.kingroot.kinguser.axq.7
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View view, int i, KeyEvent keyEvent) {
                return axq.this.baT.get() && i == 4;
            }
        });
        this.baN.mo8976cX(this.aSm);
        return this.mContentView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        if (!m8211TV()) {
            if (message.what == 10201) {
                Handler handler = getHandler();
                m8213TT();
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
                m8193hC(obtainMessage.arg1);
                m8212TU();
            } else if (message.what == 1) {
                bbv.m7771WK().m7762dC(true);
                int m7768WN = bbv.m7771WK().m7768WN();
                if (m7768WN == 128) {
                    m7768WN = 2;
                }
                m8193hC(m7768WN);
                m8212TU();
            }
        }
    }

    /* renamed from: TU */
    private void m8212TU() {
        this.aYb = true;
        aiy.m11500yI().m11499yJ();
    }

    /* renamed from: TV */
    private boolean m8211TV() {
        return this.aYb;
    }

    /* renamed from: TT */
    protected void m8213TT() {
        if (this.aYj != null) {
            this.aYj.cancel();
        }
    }

    /* renamed from: hC */
    private void m8193hC(int i) {
        aiy.m11507a(getActivity(), i);
    }

    /* renamed from: a */
    public void m8208a(auj.InterfaceC1612a interfaceC1612a) {
        this.baN = (auj.InterfaceC1612a) C3948zd.m1327k(interfaceC1612a);
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1613b
    /* renamed from: Ql */
    public void mo8217Ql() {
        if (this.baU.compareAndSet(false, true)) {
            this.baT.set(false);
            this.baQ.m7658Ql();
            this.aZM.m1522a(1, this.baR.m7725Xi().getWholeView());
        }
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1613b
    /* renamed from: a */
    public void mo8210a(RootExtInfo rootExtInfo) {
        ady.m12308tK().mo1746bi(100441);
        this.baU.set(false);
        this.baT.set(false);
        this.baQ.m7652Xt();
        bch m7727Xg = this.baR.m7727Xg();
        this.baY.m8190dv(false);
        m7727Xg.m7701e(this.baY);
        m7727Xg.m7700f(this.bbc);
        if (rootExtInfo != null) {
            m7727Xg.m7703i(rootExtInfo.useTime, rootExtInfo.succRate, rootExtInfo.succUsers);
        } else {
            m7727Xg.m7703i(120, 3, 0);
        }
        this.aZM.m1522a(1, m7727Xg.getWholeView());
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1613b
    /* renamed from: Qm */
    public void mo8216Qm() {
        ady.m12308tK().mo1746bi(100441);
        this.baU.set(false);
        this.baT.set(false);
        this.baQ.m7657Qm();
        bcj m7724Xj = this.baR.m7724Xj();
        this.baY.m8190dv(true);
        Button m7673Xp = m7724Xj.m7673Xp();
        TextView m7671Xr = m7724Xj.m7671Xr();
        Button m7672Xq = m7724Xj.m7672Xq();
        m7673Xp.setText(C3953zi.m1311pr().getString(R.string.kr4_try_to_root));
        m7673Xp.setOnClickListener(this.baY);
        m7671Xr.setVisibility(8);
        m7672Xq.setText(C3953zi.m1311pr().getString(R.string.root_enter_main_page));
        m7672Xq.setOnClickListener(this.bbc);
        this.aZM.m1522a(1, m7724Xj.getWholeView());
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1613b
    /* renamed from: a */
    public void mo8209a(RootExtInfo rootExtInfo, boolean z) {
        ady.m12308tK().mo1746bi(100441);
        this.baU.set(false);
        this.baT.set(false);
        this.baQ.m7650Xv();
        bcn m7728Xf = this.baR.m7728Xf();
        if (z) {
            this.baV.m7373it(0);
            ady.m12308tK().mo1746bi(100445);
            m7728Xf.m7660f(this.baZ);
        } else {
            ady.m12308tK().mo1746bi(100531);
            m7728Xf.m7659kA(C3953zi.m1311pr().getString(R.string.root_enter_main_page));
            m7728Xf.m7660f(this.bbc);
        }
        if (rootExtInfo != null) {
            m7728Xf.m7703i(rootExtInfo.useTime, rootExtInfo.succRate, rootExtInfo.succUsers);
        } else {
            m7728Xf.m7703i(120, 3, 0);
        }
        m7728Xf.m7661e(this.bbb);
        this.aZM.m1522a(1, m7728Xf.getWholeView());
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1613b
    /* renamed from: d */
    public void mo8198d(int i, int i2, int i3, int i4, int i5) {
        this.baU.set(false);
        final bcl m7729Xe = this.baR.m7729Xe();
        if (this.baT.compareAndSet(false, true)) {
            ady.m12308tK().mo1746bi(100450);
            this.baV.m7373it(4);
            this.baQ.m7631ic(i);
            m7729Xe = new bcl(getContext());
            this.baR.m7723a(m7729Xe);
            if (i == 4) {
                C3953zi m1311pr = C3953zi.m1311pr();
                m7729Xe.m7666kx(m1311pr.getString(R.string.fix_rooting_unpack));
                m7729Xe.m7665ky(m1311pr.getString(R.string.fix_rooting_cloud));
                m7729Xe.m7664kz(m1311pr.getString(R.string.fix_rooting_case));
            }
            this.aZM.m1522a(1, m7729Xe.getWholeView());
            m7729Xe.m7670Xs();
            m7729Xe.m7668ia(0);
            getHandler().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.axq.8
                @Override // java.lang.Runnable
                public void run() {
                    m7729Xe.m7667ib(0);
                    m7729Xe.m7668ia(1);
                    axq.this.getHandler().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.axq.8.1
                        @Override // java.lang.Runnable
                        public void run() {
                            m7729Xe.m7667ib(1);
                            m7729Xe.m7668ia(2);
                        }
                    }, 2000L);
                }
            }, 2000L);
        } else if (i2 == 2) {
            m7729Xe.m7669ae(i3, i4);
        }
        if (i5 == 100) {
            m7729Xe.m7667ib(2);
        } else {
            this.baQ.setPercentage(i5);
        }
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1613b
    /* renamed from: e */
    public void mo8196e(int i, int i2, int i3, int i4, int i5) {
        this.baU.set(false);
        bcl m7729Xe = this.baR.m7729Xe();
        if (this.baT.compareAndSet(false, true)) {
            ady.m12308tK().mo1746bi(100450);
            this.baQ.m7631ic(i);
            m7729Xe = new bcl(getContext());
            this.baR.m7723a(m7729Xe);
            if (i == 4) {
                C3953zi m1311pr = C3953zi.m1311pr();
                m7729Xe.m7666kx(m1311pr.getString(R.string.fix_rooting_unpack));
                m7729Xe.m7665ky(m1311pr.getString(R.string.fix_rooting_cloud));
                m7729Xe.m7664kz(m1311pr.getString(R.string.fix_rooting_case));
            }
            this.aZM.m1522a(1, m7729Xe.getWholeView());
            m7729Xe.m7670Xs();
            m7729Xe.m7667ib(0);
            m7729Xe.m7667ib(1);
            m7729Xe.m7668ia(2);
        } else if (i2 == 2) {
            m7729Xe.m7669ae(i3, i4);
        }
        if (i5 == 100) {
            m7729Xe.m7667ib(2);
        } else {
            this.baQ.setPercentage(i5);
        }
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1613b
    /* renamed from: cR */
    public void mo8201cR(boolean z) {
        this.baU.set(false);
        this.baT.set(false);
        if (z) {
            this.baQ.m7641a(true, this.bbf);
        } else {
            this.baQ.m7641a(false, this.bbe);
        }
        this.aZM.remove(1);
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1613b
    /* renamed from: Qn */
    public void mo8215Qn() {
        ady.m12308tK().mo1746bi(100445);
        this.baU.set(false);
        this.baT.set(false);
        this.baQ.m7626kC(C3953zi.m1311pr().getString(R.string.root_failed_try_again));
        this.baV.m7373it(0);
        if (aks.m11143BP().m10933Fr()) {
            ady.m12308tK().mo1746bi(100524);
            bci m7730Xd = this.baR.m7730Xd();
            Button m7693Xn = m7730Xd.m7693Xn();
            m7693Xn.setText(C3953zi.m1311pr().getString(R.string.root_again));
            m7693Xn.setVisibility(0);
            m7693Xn.setOnClickListener(this.baZ);
            this.aZM.m1522a(1, m7730Xd.getWholeView());
            return;
        }
        bcj m7724Xj = this.baR.m7724Xj();
        Button m7673Xp = m7724Xj.m7673Xp();
        TextView m7671Xr = m7724Xj.m7671Xr();
        Button m7672Xq = m7724Xj.m7672Xq();
        m7673Xp.setText(C3953zi.m1311pr().getString(R.string.subscribe_wx_account));
        m7673Xp.setOnClickListener(this.baW);
        m7671Xr.setText(C3953zi.m1311pr().getString(R.string.subscribe_wx_description));
        m7672Xq.setText(C3953zi.m1311pr().getString(R.string.root_again));
        m7672Xq.setOnClickListener(this.baZ);
        this.aZM.m1522a(1, m7724Xj.getWholeView());
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1613b
    /* renamed from: cT */
    public void mo8199cT(boolean z) {
        this.baU.set(false);
        this.baT.set(false);
        long m11283AC = akj.m11270aT(KApplication.m13453ge()).m11283AC();
        bcj m7724Xj = this.baR.m7724Xj();
        this.baX.m8191dx(false);
        Button m7673Xp = m7724Xj.m7673Xp();
        TextView m7671Xr = m7724Xj.m7671Xr();
        Button m7672Xq = m7724Xj.m7672Xq();
        m7673Xp.setText(C3953zi.m1311pr().getString(R.string.root_commit_adapt));
        m7673Xp.setOnClickListener(this.baX);
        m7671Xr.setText(C3953zi.m1311pr().getString(R.string.root_commit_adapt_guide));
        if (z) {
            if (m11283AC > 0) {
                this.baQ.m7626kC(C3953zi.m1311pr().getString(R.string.root_adapt_num, Long.valueOf(m11283AC)));
            } else {
                this.baQ.m7626kC(C3953zi.m1311pr().getString(R.string.root_adapt_num, Integer.valueOf(aus.m8992EQ())));
            }
            this.baV.m7373it(0);
            m7672Xq.setText(C3953zi.m1311pr().getString(R.string.root_again));
            m7672Xq.setOnClickListener(this.baZ);
        } else {
            ady.m12308tK().mo1746bi(100531);
            m7672Xq.setText(C3953zi.m1311pr().getString(R.string.root_enter_main_page));
            m7672Xq.setOnClickListener(this.bbc);
            if (m11283AC > 0) {
                this.baQ.m7627kB(C3953zi.m1311pr().getString(R.string.root_adapt_num, Long.valueOf(m11283AC)));
            } else {
                this.baQ.m7627kB(C3953zi.m1311pr().getString(R.string.root_adapt_num, Integer.valueOf(aus.m8992EQ())));
            }
        }
        this.aZM.m1522a(1, m7724Xj.getWholeView());
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1613b
    /* renamed from: cS */
    public void mo8200cS(boolean z) {
        ady.m12308tK().mo1746bi(100448);
        this.baU.set(false);
        this.baT.set(false);
        akj m11270aT = akj.m11270aT(KApplication.m13453ge());
        if (z) {
            m11270aT.m11267am(m11270aT.m11283AC() + 1);
            m11270aT.m11268al(System.currentTimeMillis());
        }
        this.baQ.m7635g(this.bba);
        this.baQ.m7651Xu();
        this.baQ.m7642a(z, m11270aT.m11284AB(), m11270aT.m11283AC(), m11270aT.m11281AE(), m11270aT.m11280AF(), m11270aT.m11279AG(), m11270aT.m11278AH());
        if (aks.m11143BP().m10933Fr()) {
            ady.m12308tK().mo1746bi(100524);
            ady.m12308tK().mo1746bi(100531);
            bci m7730Xd = this.baR.m7730Xd();
            Button m7693Xn = m7730Xd.m7693Xn();
            m7693Xn.setText(C3953zi.m1311pr().getString(R.string.root_enter_main_page));
            m7693Xn.setVisibility(0);
            m7693Xn.setOnClickListener(this.bbc);
            this.aZM.m1522a(1, m7730Xd.getWholeView());
        } else {
            ady.m12308tK().mo1746bi(100531);
            bcj m7724Xj = this.baR.m7724Xj();
            Button m7673Xp = m7724Xj.m7673Xp();
            TextView m7671Xr = m7724Xj.m7671Xr();
            Button m7672Xq = m7724Xj.m7672Xq();
            m7673Xp.setText(C3953zi.m1311pr().getString(R.string.subscribe_wx_account));
            m7673Xp.setOnClickListener(this.baW);
            m7671Xr.setText(C3953zi.m1311pr().getString(R.string.subscribe_wx_description));
            m7672Xq.setText(C3953zi.m1311pr().getString(R.string.root_enter_main_page));
            m7672Xq.setOnClickListener(this.bbc);
            this.aZM.m1522a(1, m7724Xj.getWholeView());
        }
        m11270aT.m11276AJ();
        m11270aT.m11269ak(m11270aT.m11283AC());
        m11270aT.m11266an(m11270aT.m11280AF());
    }

    @Override // com.kingroot.kinguser.auj.InterfaceC1613b
    /* renamed from: Qo */
    public void mo8214Qo() {
        this.baU.set(false);
        this.baT.set(false);
        this.baQ.m7656Qo();
        bcm m7726Xh = this.baR.m7726Xh();
        m7726Xh.m7707d(new View.OnClickListener() { // from class: com.kingroot.kinguser.axq.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    ady.m12308tK().mo1746bi(100440);
                    aks.m11143BP().m10856bX(true);
                    bgd.m7122bt(axq.this.getContext());
                    axq.this.baS = true;
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
        this.aZM.m1522a(1, m7726Xh.getWholeView());
    }

    /* renamed from: com.kingroot.kinguser.axq$a */
    /* loaded from: classes.dex */
    abstract class AbstractView$OnClickListenerC1947a implements View.OnClickListener {
        protected boolean bbk;

        private AbstractView$OnClickListenerC1947a() {
        }

        /* renamed from: dx */
        public void m8191dx(boolean z) {
            this.bbk = z;
        }
    }

    /* renamed from: com.kingroot.kinguser.axq$b */
    /* loaded from: classes.dex */
    abstract class AbstractView$OnClickListenerC1948b implements View.OnClickListener {
        protected boolean aYC;

        private AbstractView$OnClickListenerC1948b() {
        }

        /* renamed from: dv */
        public void m8190dv(boolean z) {
            this.aYC = z;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        if (this.baM != null && this.baM.isShowing()) {
            this.baM.dismiss();
        }
        super.onDestroy();
    }
}
