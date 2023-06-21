package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Telephony;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.utils.p011ui.ImageViewDot;
import com.kingroot.kinguser.aaq;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.ahl;
import com.kingroot.kinguser.aks;
import com.kingroot.kinguser.axa;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.p015ai.AntiInjectLogModel;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.kinguser.util.protect.RebootStat;
import com.kingroot.kinguser.view.antiview.AntiGridCanvas;
import com.kingroot.kinguser.view.antiview.AntiProcessCanvas;
import com.kingroot.kinguser.view.antiview.AntiWaveCanvas;
import com.kingroot.kinguses.R;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
/* loaded from: classes.dex */
public class axa extends AbstractC3922ym {
    private bia aWA;
    private bhz aWB;
    private AntiGridCanvas aWC;
    private AntiWaveCanvas aWD;
    private AntiProcessCanvas aWE;
    private AntiProcessCanvas aWF;
    private AntiProcessCanvas aWG;
    private ber aWH;
    private TextView aWI;
    private TextView aWJ;
    private TextView aWK;
    private long aWL;
    private long aWM;
    private long aWN;
    private afm aWO;
    private List<AntiInjectLogModel> aWP;
    private bif aWQ;
    private int aWR;
    private boolean aWS;
    private boolean aWT;
    private Button aWU;
    private Button aWV;
    private Button aWW;
    private TextView aWX;
    private Handler aWY;
    private bed aWZ;
    private ViewGroup aWo;
    private ViewGroup aWp;
    private ViewGroup aWq;
    private ViewGroup aWr;
    private ImageView aWs;
    private ImageView aWt;
    private ImageView aWu;
    private ImageView aWv;
    private ImageView aWw;
    private ImageView aWx;
    private bhr aWy;
    private bhy aWz;
    private bed aXa;
    private View.OnClickListener aXb;
    private ImageViewDot abC;
    private View mContentView;

    /* renamed from: com.kingroot.kinguser.axa$1 */
    /* loaded from: classes.dex */
    public class C17551 extends bek {
        C17551() {
        }

        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            ahl.m11725xm().m11734a(true, new IAntiInjectSwitcherOpObserver.Stub() { // from class: com.kingroot.kinguser.page.AntiInjectPage$1$1
                @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                public void onSwitcherOpen(int i) {
                    ahl.m11727xk();
                    if (i == 0) {
                        axa.this.aWS = true;
                        ady.m12308tK().mo1746bi(100214);
                        aks.m11143BP().m10868bL(false);
                        aks.m11143BP().m10746eu(0);
                        aks.m11143BP().m11003EZ();
                        RebootStat rebootStat = ahl.m11725xm().getRebootStat();
                        if (rebootStat != null) {
                            int i2 = rebootStat.failPeekCount;
                        }
                        if (aks.m11143BP().m11100Cg()) {
                            aks.m11143BP().m10840bh(false);
                            axa.this.m8542TE();
                            return;
                        }
                        return;
                    }
                    ady.m12308tK().mo1746bi(100215);
                    aks.m11143BP().m10868bL(true);
                    axa.this.aWS = false;
                    axa.this.aWR = 0;
                    axa.this.getHandler().removeMessages(1);
                    Message message = new Message();
                    message.what = 0;
                    Bundle bundle = new Bundle();
                    bundle.putInt(Telephony.BaseMmsColumns.FROM, 7);
                    message.setData(bundle);
                    axa.this.getHandler().sendMessageDelayed(message, 50L);
                }

                @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                public void onSwitcherClosed() {
                }
            });
        }
    }

    public axa(Context context) {
        super(context);
        this.aWP = null;
        this.aWQ = null;
        this.aWR = 0;
        this.aWS = false;
        this.aWT = false;
        this.aWY = new Handler();
        this.aWZ = new bed(bem.IMMEDIATE, bec.Normal, true, new C17551());
        this.aXa = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.axa.5
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                axa.this.aWP = ahl.m11725xm().getAllLogs();
                if (axa.this.aWP != null && axa.this.aWP.size() > 0) {
                    LinkedList linkedList = new LinkedList();
                    linkedList.addAll(axa.this.aWP);
                    axa.this.aWP.clear();
                    int size = linkedList.size();
                    for (int i = 0; i < size; i++) {
                        if (!acu.m12573b(((AntiInjectLogModel) linkedList.get(i)).time, System.currentTimeMillis(), 2592000000L)) {
                            axa.this.aWP.add(linkedList.get(i));
                        }
                    }
                    axa.this.getHandler().obtainMessage(5).sendToTarget();
                }
            }
        });
        this.aXb = new View.OnClickListener() { // from class: com.kingroot.kinguser.axa.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                axa.this.m8543TD();
            }
        };
        this.aWy = new bhr(context);
        this.aWE = new AntiProcessCanvas(getContext());
        this.aWF = new AntiProcessCanvas(getContext());
        this.aWG = new AntiProcessCanvas(getContext());
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.aWH = new ber(getActivity(), C3953zi.m1311pr().getString(R.string.anti_inject_page_title)) { // from class: com.kingroot.kinguser.axa.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.kingroot.kinguser.ber, com.kingroot.kinguser.ada, com.kingroot.kinguser.AbstractC3933yp
            /* renamed from: oI */
            public void mo1375oI() {
                super.mo1375oI();
                axa.this.abC = this.abC;
            }
        };
        this.aWH.m12566ar(false);
        return this.aWH;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        Intent intent = getIntent();
        m8527dp(intent != null ? intent.getBooleanExtra("AntiInjectPage.is_auto_open", false) : false);
        m8545TB();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        m8519vd();
        super.onDestroy();
        aks.m11143BP().m10866bN(true);
    }

    /* renamed from: vd */
    public void m8519vd() {
        if (this.aWQ != null && this.aWQ.isShowing()) {
            this.aWQ.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        getHandler().obtainMessage(5).sendToTarget();
        this.abC.setShowDot(bhq.acE().m6965iR(0));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onBackPressed() {
        if (this.aWT) {
            return true;
        }
        return super.onBackPressed();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.page_anti_inject_main, (ViewGroup) null);
        this.aWo = (ViewGroup) inflate.findViewById(R.id.header_view);
        this.aWo.setBackgroundColor(C3953zi.m1311pr().getColor(R.color.black_1));
        this.aWp = (ViewGroup) inflate.findViewById(R.id.feature1);
        this.aWq = (ViewGroup) inflate.findViewById(R.id.feature2);
        this.aWr = (ViewGroup) inflate.findViewById(R.id.feature3);
        this.aWU = (Button) inflate.findViewById(R.id.testBtnFail);
        this.aWV = (Button) inflate.findViewById(R.id.testBtnReboot);
        this.aWW = (Button) inflate.findViewById(R.id.testBtnCheckFlag);
        this.aWX = (TextView) inflate.findViewById(R.id.testTvDisplayFlag);
        this.aWU.setVisibility(8);
        this.aWV.setVisibility(8);
        this.aWW.setVisibility(8);
        this.aWX.setVisibility(8);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                this.aWH.m7394dI(false);
                this.aWH.m7393dJ(false);
                this.aWT = false;
                m8526dq(this.aWS);
                this.aWz = this.aWy.acH();
                this.aWz.m6951d(this.aXb);
                this.mContentView = this.aWz.getContentView();
                m8541a(this.mContentView, this.aWo);
                int i = message.getData().getInt(Telephony.BaseMmsColumns.FROM);
                if (i != 0) {
                    m8523hp(i);
                }
                this.abC.setShowDot(bhq.acE().m6965iR(0));
                return;
            case 1:
                this.aWN = Math.abs(System.currentTimeMillis() - this.aWM);
                this.aWR++;
                this.aWL = m8521hr(this.aWR);
                if (this.aWN > BuglyBroadcastRecevier.UPLOADLIMITED) {
                    this.aWR = 0;
                    this.aWS = false;
                    aks.m11143BP().m10868bL(true);
                    Message message2 = new Message();
                    Bundle bundle = new Bundle();
                    message2.what = 0;
                    bundle.putInt(Telephony.BaseMmsColumns.FROM, 6);
                    message2.setData(bundle);
                    getHandler().sendMessageDelayed(message2, 50L);
                    return;
                }
                m8522hq(this.aWR);
                Message message3 = new Message();
                message3.what = 1;
                if (this.aWR == 100) {
                    beg.m7461Zj().m7450c(this.aXa);
                    message3.what = 2;
                }
                getHandler().sendMessageDelayed(message3, this.aWL);
                return;
            case 2:
                this.aWo.setBackgroundColor(C3953zi.m1311pr().getColor(R.color.green_0));
                this.aWT = false;
                this.aWH.m7394dI(false);
                this.aWH.m7393dJ(true);
                m8526dq(this.aWS);
                this.aWD = new AntiWaveCanvas(getContext());
                m8541a(this.aWD, this.aWo);
                this.aWB = this.aWy.acJ();
                this.mContentView = this.aWB.getContentView();
                m8541a(this.mContentView, this.aWo);
                Set<String> aal = bfn.aaj().aal();
                if (aal != null && aal.size() > 0) {
                    aks.m11143BP().m10747et(1);
                    m8532bd(getContext());
                    getHandler().obtainMessage(5).sendToTarget();
                    return;
                }
                aks.m11143BP().m10747et(1);
                getHandler().obtainMessage(5).sendToTarget();
                this.abC.setShowDot(bhq.acE().m6965iR(0));
                return;
            case 3:
                boolean booleanValue = (message.obj == null || !(message.obj instanceof Boolean)) ? false : ((Boolean) message.obj).booleanValue();
                if (booleanValue) {
                    this.aWS = true;
                    this.aWH.m7393dJ(true);
                    m8525dr(booleanValue);
                    this.aWD = new AntiWaveCanvas(getContext());
                    m8541a(this.aWD, this.aWo);
                    this.aWB = this.aWy.acJ();
                    this.mContentView = this.aWB.getContentView();
                    m8541a(this.mContentView, this.aWo);
                    getHandler().obtainMessage(5).sendToTarget();
                    return;
                }
                this.aWS = false;
                this.aWH.m7393dJ(false);
                m8525dr(booleanValue);
                this.aWz = this.aWy.acH();
                this.aWz.m6951d(this.aXb);
                this.mContentView = this.aWz.getContentView();
                m8541a(this.mContentView, this.aWo);
                return;
            case 4:
                if (this.aWQ != null) {
                    this.aWQ.dismiss();
                    return;
                }
                return;
            case 5:
            case 6:
            case 7:
            default:
                return;
            case 8:
                m8533bc(getContext());
                return;
            case 9:
                m8531be(getContext());
                return;
            case 10:
                m8543TD();
                return;
        }
    }

    /* renamed from: dp */
    private void m8527dp(final boolean z) {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.axa.8
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                boolean z2 = true;
                super.run();
                if (z) {
                    axa.this.aWo.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.axa.8.1
                        @Override // android.view.ViewTreeObserver.OnPreDrawListener
                        public boolean onPreDraw() {
                            axa.this.getHandler().sendEmptyMessageDelayed(10, 0L);
                            axa.this.aWo.getViewTreeObserver().removeOnPreDrawListener(this);
                            return true;
                        }
                    });
                    z2 = false;
                } else {
                    int m11076DE = aks.m11143BP().m11076DE();
                    if (m11076DE != 1 && m11076DE != 2) {
                        z2 = false;
                    }
                    axa.this.getHandler().sendMessage(axa.this.getHandler().obtainMessage(3, Boolean.valueOf(z2)));
                    boolean m11723xo = ahl.m11725xm().m11723xo();
                    if (z2 != m11723xo) {
                        axa.this.getHandler().sendMessage(axa.this.getHandler().obtainMessage(3, Boolean.valueOf(m11723xo)));
                        z2 = m11723xo;
                    }
                }
                if (z2) {
                    axa.this.aWP = ahl.m11725xm().getAllLogs();
                    if (axa.this.aWP != null && axa.this.aWP.size() > 0) {
                        LinkedList linkedList = new LinkedList();
                        linkedList.addAll(axa.this.aWP);
                        axa.this.aWP.clear();
                        int size = linkedList.size();
                        for (int i = 0; i < size; i++) {
                            if (!acu.m12573b(((AntiInjectLogModel) linkedList.get(i)).time, System.currentTimeMillis(), 2592000000L)) {
                                axa.this.aWP.add(linkedList.get(i));
                            }
                        }
                        axa.this.getHandler().sendEmptyMessage(5);
                    }
                }
                if (aks.m11143BP().m11070DK()) {
                    bfn.aaj().aak();
                    aks.m11143BP().m10866bN(false);
                }
            }
        }));
    }

    /* renamed from: TB */
    private void m8545TB() {
        C3953zi m1311pr = C3953zi.m1311pr();
        View findViewById = getContentView().findViewById(R.id.feature1);
        this.aWI = (TextView) findViewById.findViewById(R.id.item_title);
        this.aWs = (ImageView) findViewById.findViewById(R.id.item_icon);
        this.aWv = (ImageView) findViewById.findViewById(R.id.item_icon_overlay);
        ((TextView) findViewById.findViewById(R.id.item_description)).setText(m1311pr.getString(R.string.security_protect_feature1_desrc));
        this.aWI.setText(m1311pr.getString(R.string.security_protect_feature1_title));
        this.aWs.setImageDrawable(m1311pr.getDrawable(R.drawable.anti_defend_engine_white));
        View findViewById2 = getContentView().findViewById(R.id.feature2);
        this.aWJ = (TextView) findViewById2.findViewById(R.id.item_title);
        this.aWt = (ImageView) findViewById2.findViewById(R.id.item_icon);
        this.aWw = (ImageView) findViewById2.findViewById(R.id.item_icon_overlay);
        ((TextView) findViewById2.findViewById(R.id.item_description)).setText(m1311pr.getString(R.string.security_protect_feature2_desrc));
        this.aWJ.setText(m1311pr.getString(R.string.security_protect_feature2_title));
        this.aWt.setImageDrawable(m1311pr.getDrawable(R.drawable.anti_defend_safe_white));
        View findViewById3 = getContentView().findViewById(R.id.feature3);
        this.aWK = (TextView) findViewById3.findViewById(R.id.item_title);
        this.aWu = (ImageView) findViewById3.findViewById(R.id.item_icon);
        this.aWx = (ImageView) findViewById3.findViewById(R.id.item_icon_overlay);
        ((TextView) findViewById3.findViewById(R.id.item_description)).setText(m1311pr.getString(R.string.security_protect_feature3_desrc));
        this.aWK.setText(m1311pr.getString(R.string.security_protect_feature3_title));
        this.aWu.setImageDrawable(m1311pr.getDrawable(R.drawable.anti_defend_app_white));
    }

    /* renamed from: dq */
    private void m8526dq(boolean z) {
        if (z) {
            if (this.mContentView != null) {
                m8530c(this.aWo, this.mContentView);
            }
            if (this.aWC != null) {
                m8530c(this.aWo, this.aWC);
                return;
            }
            return;
        }
        if (this.aWC != null) {
            m8530c(this.aWo, this.aWC);
        }
        if (this.aWD != null) {
            m8530c(this.aWo, this.aWD);
        }
        if (this.mContentView != null) {
            m8530c(this.aWo, this.mContentView);
        }
        if (this.aWE != null) {
            m8530c(this.aWp, this.aWE);
        }
        if (this.aWF != null) {
            m8530c(this.aWq, this.aWF);
        }
        if (this.aWG != null) {
            m8530c(this.aWr, this.aWG);
        }
        this.aWv.clearAnimation();
        this.aWv.setVisibility(8);
        this.aWw.clearAnimation();
        this.aWw.setVisibility(8);
        this.aWx.clearAnimation();
        this.aWx.setVisibility(8);
        this.aWs.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_defend_engine_white));
        this.aWt.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_defend_safe_white));
        this.aWu.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_defend_app_white));
    }

    /* renamed from: hp */
    private void m8523hp(int i) {
        int i2;
        switch (i) {
            case 6:
                int m11075DF = aks.m11143BP().m11075DF() + 1;
                aks.m11143BP().m10746eu(m11075DF);
                i2 = m11075DF + 1;
                break;
            case 7:
                RebootStat rebootStat = ahl.m11725xm().getRebootStat();
                if (rebootStat != null) {
                    i2 = rebootStat.failPeekCount;
                    break;
                }
            default:
                i2 = 0;
                break;
        }
        Set<String> aal = bfn.aaj().aal();
        aks.m11143BP().m10747et(0);
        if (i2 < 3) {
            if (aal != null && aal.size() > 0) {
                m8531be(getContext());
                return;
            } else {
                C3954zj.m1310b(C3953zi.m1311pr().getText(R.string.anti_inject_open_fail_toast));
                return;
            }
        }
        m8533bc(getContext());
    }

    /* renamed from: hq */
    private void m8522hq(int i) {
        this.aWA.setPercentage(i);
        if (this.aWC != null) {
            this.aWC.setCurPercent(i);
        }
        if (i >= 0 && i <= 34) {
            this.aWE.setCurPercentage(i);
            m8535b(this.aWE, this.aWp);
            this.aWE.acR();
            this.aWE.setVisibility(0);
            if (i == 34) {
                this.aWs.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_defend_engine));
                this.aWv.setVisibility(0);
                this.aWv.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_list_item_green));
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation.setFillAfter(true);
                alphaAnimation.setDuration(500L);
                this.aWv.startAnimation(alphaAnimation);
                this.aWv.bringToFront();
                this.aWE.setVisibility(4);
            }
        } else if (i <= 66) {
            this.aWF.setCurPercentage(i);
            m8535b(this.aWF, this.aWq);
            this.aWF.acR();
            this.aWF.setVisibility(0);
            if (i == 66) {
                this.aWt.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_defend_safe));
                this.aWw.setVisibility(0);
                this.aWw.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_list_item_green));
                AlphaAnimation alphaAnimation2 = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation2.setFillAfter(true);
                alphaAnimation2.setDuration(500L);
                this.aWw.startAnimation(alphaAnimation2);
                this.aWw.bringToFront();
                this.aWF.setVisibility(4);
            }
        } else if (i <= 100) {
            this.aWG.setCurPercentage(i);
            m8535b(this.aWG, this.aWr);
            this.aWG.acR();
            this.aWG.setVisibility(0);
            if (i == 100) {
                this.aWu.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_defend_app));
                this.aWx.setVisibility(0);
                this.aWx.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_list_item_green));
                AlphaAnimation alphaAnimation3 = new AlphaAnimation(0.0f, 1.0f);
                alphaAnimation3.setFillAfter(true);
                alphaAnimation3.setDuration(500L);
                this.aWx.startAnimation(alphaAnimation3);
                this.aWx.bringToFront();
                this.aWG.setVisibility(4);
            }
        }
    }

    /* renamed from: dr */
    private void m8525dr(boolean z) {
        if (z) {
            if (this.mContentView != null) {
                m8530c(this.aWo, this.mContentView);
            }
            this.aWE.setCurPercentage(100);
            m8535b(this.aWE, this.aWp);
            this.aWv.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_list_item_green));
            this.aWF.setCurPercentage(100);
            m8535b(this.aWF, this.aWq);
            this.aWw.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_list_item_green));
            this.aWG.setCurPercentage(100);
            m8535b(this.aWG, this.aWr);
            this.aWx.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_list_item_green));
            this.aWs.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_defend_engine));
            this.aWt.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_defend_safe));
            this.aWu.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_defend_app));
            return;
        }
        if (this.aWD != null) {
            m8530c(this.aWo, this.aWD);
        }
        if (this.mContentView != null) {
            m8530c(this.aWo, this.mContentView);
        }
        this.aWv.clearAnimation();
        this.aWv.setVisibility(4);
        this.aWw.clearAnimation();
        this.aWw.setVisibility(4);
        this.aWx.clearAnimation();
        this.aWx.setVisibility(4);
        if (this.aWE != null) {
            m8530c(this.aWp, this.aWE);
        }
        if (this.aWF != null) {
            m8530c(this.aWq, this.aWF);
        }
        if (this.aWG != null) {
            m8530c(this.aWr, this.aWG);
        }
        this.aWs.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_defend_engine_white));
        this.aWt.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_defend_safe_white));
        this.aWu.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.anti_defend_app_white));
    }

    /* renamed from: a */
    private void m8541a(View view, ViewGroup viewGroup) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.addRule(14);
        try {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            viewGroup.addView(view, layoutParams);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setFillAfter(true);
        alphaAnimation.setDuration(100L);
        view.startAnimation(alphaAnimation);
    }

    /* renamed from: b */
    private void m8535b(View view, ViewGroup viewGroup) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        view.setPadding(bgk.m7111c(getContext(), 16.0f), bgk.m7111c(getContext(), 12.0f), bgk.m7111c(getContext(), 16.0f), bgk.m7111c(getContext(), 12.0f));
        try {
            if (view.getParent() != null) {
                ((ViewGroup) view.getParent()).removeView(view);
            }
            viewGroup.addView(view, layoutParams);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: c */
    private void m8530c(ViewGroup viewGroup, View view) {
        try {
            viewGroup.removeView(view);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* renamed from: hr */
    private long m8521hr(int i) {
        if (this.aWS) {
            return 30L;
        }
        if (i <= 0 || i >= 11) {
            if (i >= 11 && i < 21) {
                return 500L;
            }
            if (i >= 21 && i < 41) {
                return 1500L;
            }
            if (i >= 41 && i < 71) {
                return 200L;
            }
            if (i < 71 || i >= 81) {
                return (i < 71 || i > 100) ? 50L : 100L;
            }
            return 3000L;
        }
        return 100L;
    }

    /* renamed from: bc */
    private void m8533bc(Context context) {
        C3953zi m1311pr = C3953zi.m1311pr();
        bid bidVar = new bid(context);
        bidVar.show();
        bidVar.setTitleText(m1311pr.getString(R.string.anti_open_fail_dialog_title));
        bidVar.m6933d(m1311pr.getString(R.string.anti_open_fail_dialog_content));
        bidVar.m6930lL(m1311pr.getString(R.string.anti_open_fail_dialog_confirm));
        bidVar.mo6682lK(m1311pr.getString(R.string.anti_open_fail_dialog_dimiss));
        bidVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axa.9
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ady.m12308tK().mo1746bi(100216);
            }
        });
        bidVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axa.10
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                axa.this.m8543TD();
            }
        });
    }

    /* renamed from: bd */
    private void m8532bd(Context context) {
        C3953zi m1311pr = C3953zi.m1311pr();
        bid bidVar = new bid(context);
        bidVar.show();
        bidVar.setTitleText(m1311pr.getString(R.string.anti_open_guide_reboot_title));
        bidVar.m6933d(m1311pr.getString(R.string.anti_open_success_guide_reboot_content));
        bidVar.m6930lL(m1311pr.getString(R.string.anti_open_guide_reboot_confirm));
        bidVar.mo6682lK(m1311pr.getString(R.string.anti_open_guide_reboot_dismiss));
        bidVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axa.11
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                aks.m11143BP().m10747et(1);
            }
        });
        bidVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axa.12
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                aks.m11143BP().m10747et(2);
                axa.this.m8544TC();
            }
        });
    }

    /* renamed from: be */
    private void m8531be(Context context) {
        C3953zi m1311pr = C3953zi.m1311pr();
        bid bidVar = new bid(context);
        bidVar.show();
        bidVar.setTitleText(m1311pr.getString(R.string.anti_open_guide_reboot_title));
        bidVar.m6933d(m1311pr.getString(R.string.anti_open_fail_guide_reboot_content));
        bidVar.m6930lL(m1311pr.getString(R.string.anti_open_guide_reboot_confirm));
        bidVar.mo6682lK(m1311pr.getString(R.string.anti_open_guide_reboot_dismiss));
        bidVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axa.2
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                C3954zj.m1310b(C3953zi.m1311pr().getText(R.string.anti_inject_open_fail_toast));
                RebootStat rebootStat = ahl.m11725xm().getRebootStat();
                if (rebootStat != null) {
                    int i = rebootStat.failPeekCount;
                }
                aks.m11143BP().m10747et(0);
            }
        });
        bidVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.axa.3
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                aks.m11143BP().m10747et(3);
                axa.this.m8544TC();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TC */
    public void m8544TC() {
        this.aWQ = new bif(getContext());
        this.aWQ.show();
        this.aWQ.setTitleText(getContext().getString(R.string.anti_open_guide_reboot_title));
        this.aWQ.m6933d(C3953zi.m1311pr().getString(R.string.anti_guide_reboot_progress_dialog_text));
        this.aWQ.m6921iZ(8);
        this.aWQ.m6922ef(false);
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.axa.4
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                long currentTimeMillis = System.currentTimeMillis();
                aaq.m12952a(KApplication.m13453ge().getPackageName(), new aaq.InterfaceC0617a() { // from class: com.kingroot.kinguser.axa.4.1
                    @Override // com.kingroot.kinguser.aaq.InterfaceC0617a
                    /* renamed from: ab */
                    public void mo8518ab(boolean z) {
                        ahk.m11743aJ(z);
                    }
                });
                try {
                    ahl.m11725xm().notifyManuallyReboot();
                } catch (Throwable th) {
                }
                long currentTimeMillis2 = 1000 - (System.currentTimeMillis() - currentTimeMillis);
                if (currentTimeMillis2 > 0) {
                    try {
                        Thread.sleep(currentTimeMillis2);
                    } catch (InterruptedException e) {
                    }
                }
                abc.m12845qK().m12846el("reboot");
                axa.this.getHandler().obtainMessage(4).sendToTarget();
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TD */
    public void m8543TD() {
        ady.m12308tK().mo1746bi(100213);
        this.aWM = System.currentTimeMillis();
        if (this.mContentView != null) {
            m8530c(this.aWo, this.mContentView);
            this.mContentView = null;
        }
        this.aWC = new AntiGridCanvas(getContext());
        this.aWC.setViewConfig(this.aWo);
        m8541a(this.aWC, this.aWo);
        this.aWA = this.aWy.acI();
        this.mContentView = this.aWA.getContentView();
        m8541a(this.mContentView, this.aWo);
        getHandler().sendMessage(getHandler().obtainMessage(1));
        this.aWH.m7394dI(true);
        this.aWT = true;
        beg.m7461Zj().m7450c(this.aWZ);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TE */
    public void m8542TE() {
        ArrayList<String> arrayList = new ArrayList();
        if (this.aWO == null) {
            this.aWO = afm.m12052aJ(getContext());
        }
        ArrayList<String> arrayList2 = new ArrayList();
        arrayList2.add("com.tencent.mobileqq");
        for (String str : arrayList2) {
            if (m8520jX(str)) {
                arrayList.add(str);
            }
        }
        if (arrayList != null && arrayList.size() > 0) {
            ahl.m11725xm().addProtectedPackages(arrayList);
            for (String str2 : arrayList) {
                this.aWO.m12051fg(str2);
            }
        }
    }

    /* renamed from: jX */
    private boolean m8520jX(String str) {
        try {
            C3952zh.m1312pq().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
