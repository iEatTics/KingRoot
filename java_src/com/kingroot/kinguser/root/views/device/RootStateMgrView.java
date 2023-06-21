package com.kingroot.kinguser.root.views.device;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.support.annotation.LayoutRes;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.MarqueeView;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.C3948zd;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.activitys.AdaptRankingActivity;
import com.kingroot.kinguser.activitys.RootMgrActivity;
import com.kingroot.kinguser.activitys.RootPcGuideActivity;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.akj;
import com.kingroot.kinguser.aus;
import com.kingroot.kinguser.bce;
import com.kingroot.kinguser.bcp;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bgl;
import com.kingroot.kinguser.root.views.circles.GradientCircle;
import com.kingroot.kinguses.R;
import java.security.InvalidParameterException;
import java.util.List;
/* loaded from: classes.dex */
public class RootStateMgrView extends View {
    private bcp aVv;
    private final View.OnClickListener baW;
    private final View.OnClickListener bba;
    private final View.OnClickListener bbb;
    private final View.OnClickListener bhA;
    private RelativeLayout bhx;
    private RelativeLayout bhy;
    private final View.OnClickListener bhz;
    private LayoutInflater mLayoutInflater;

    /* renamed from: zv */
    private View f3495zv;

    public RootStateMgrView(Context context) {
        super((Context) C3948zd.m1327k(context));
        this.bbb = new View.OnClickListener() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100444);
                ady.m12308tK().m12341a(0, 0, 0, 2, 0, 0, 0);
                RootPcGuideActivity.m12611aL(RootStateMgrView.this.getContext());
            }
        };
        this.baW = new View.OnClickListener() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RootStateMgrView.this.aVv == null) {
                    RootStateMgrView.this.aVv = new bcp((Activity) RootStateMgrView.this.getContext(), RootStateMgrView.this.getContext());
                }
                RootStateMgrView.this.aVv.show();
                ady.m12308tK().m12341a(0, 0, 0, 0, 0, 2, 0);
            }
        };
        this.bhz = new View.OnClickListener() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100544);
                Intent intent = new Intent();
                intent.setClass(RootStateMgrView.this.getContext(), RootMgrActivity.class);
                RootStateMgrView.this.getContext().startActivity(intent);
            }
        };
        this.bba = new View.OnClickListener() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().m12341a(0, 0, 0, 0, 0, 0, 2);
                AdaptRankingActivity.m12651aL(RootStateMgrView.this.getContext());
            }
        };
        this.bhA = new View.OnClickListener() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RootStateMgrView.this.m2412cS(true);
                ady.m12308tK().m12341a(0, 0, 0, 0, 2, 0, 0);
            }
        };
        this.mLayoutInflater = LayoutInflater.from(context);
        m2410gy();
    }

    public RootStateMgrView(Context context, AttributeSet attributeSet) {
        super((Context) C3948zd.m1327k(context), attributeSet);
        this.bbb = new View.OnClickListener() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100444);
                ady.m12308tK().m12341a(0, 0, 0, 2, 0, 0, 0);
                RootPcGuideActivity.m12611aL(RootStateMgrView.this.getContext());
            }
        };
        this.baW = new View.OnClickListener() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (RootStateMgrView.this.aVv == null) {
                    RootStateMgrView.this.aVv = new bcp((Activity) RootStateMgrView.this.getContext(), RootStateMgrView.this.getContext());
                }
                RootStateMgrView.this.aVv.show();
                ady.m12308tK().m12341a(0, 0, 0, 0, 0, 2, 0);
            }
        };
        this.bhz = new View.OnClickListener() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100544);
                Intent intent = new Intent();
                intent.setClass(RootStateMgrView.this.getContext(), RootMgrActivity.class);
                RootStateMgrView.this.getContext().startActivity(intent);
            }
        };
        this.bba = new View.OnClickListener() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().m12341a(0, 0, 0, 0, 0, 0, 2);
                AdaptRankingActivity.m12651aL(RootStateMgrView.this.getContext());
            }
        };
        this.bhA = new View.OnClickListener() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                RootStateMgrView.this.m2412cS(true);
                ady.m12308tK().m12341a(0, 0, 0, 0, 2, 0, 0);
            }
        };
        this.mLayoutInflater = LayoutInflater.from(context);
        m2410gy();
    }

    /* renamed from: gy */
    private View m2410gy() {
        this.f3495zv = this.mLayoutInflater.inflate(R.layout.root_state_manager_layout, (ViewGroup) null);
        this.bhx = (RelativeLayout) this.f3495zv.findViewById(R.id.left_layout);
        this.bhy = (RelativeLayout) this.f3495zv.findViewById(R.id.right_layout);
        return this.f3495zv;
    }

    public View getWholeView() {
        return this.f3495zv;
    }

    /* renamed from: ie */
    public RelativeLayout m2407ie(int i) {
        switch (i) {
            case 0:
                return this.bhx;
            case 1:
                return this.bhy;
            default:
                throw new InvalidParameterException("invalid type: " + i);
        }
    }

    /* renamed from: af */
    public void m2413af(@LayoutRes int i, int i2) {
        m2403o(this.mLayoutInflater.inflate(i, (ViewGroup) m2407ie(i2), false), i2);
    }

    /* renamed from: o */
    public void m2403o(View view, int i) {
        if (view != null) {
            m2407ie(i).removeAllViews();
            m2407ie(i).addView(view);
        }
    }

    /* renamed from: dD */
    public void m2411dD(boolean z) {
        m2413af(R.layout.device_root_obtained_left_img, 0);
        m2413af(R.layout.device_root_obtained, 1);
        C3953zi m1311pr = C3953zi.m1311pr();
        ((TextView) this.f3495zv.findViewById(R.id.phone_brand_text)).setText(m1311pr.getString(R.string.kr4_brand) + bce.m7711Xk());
        ((TextView) this.f3495zv.findViewById(R.id.android_version)).setText(m1311pr.getString(R.string.kr4_Android) + Build.VERSION.RELEASE);
        TextView textView = (TextView) this.f3495zv.findViewById(R.id.root_state_notice);
        if (z) {
            textView.setVisibility(0);
            textView.setText(m1311pr.getString(R.string.device_root_dm_protect_description));
        } else {
            textView.setVisibility(8);
        }
        this.f3495zv.findViewById(R.id.root_manager_guide).setVisibility(0);
        this.f3495zv.findViewById(R.id.root_manager_guide).setOnClickListener(this.bhz);
    }

    /* renamed from: h */
    public void m2409h(View.OnClickListener onClickListener) {
        m2413af(R.layout.device_abnormal_root_left_img, 0);
        m2413af(R.layout.device_root_right_button_layout, 1);
        C3953zi m1311pr = C3953zi.m1311pr();
        ((TextView) this.f3495zv.findViewById(R.id.first_btn_title)).setText(m1311pr.getString(R.string.device_root_abnormal));
        Button button = (Button) this.f3495zv.findViewById(R.id.first_btn);
        button.setText(m1311pr.getString(R.string.device_fix_root));
        button.setOnClickListener(onClickListener);
        ((TextView) this.f3495zv.findViewById(R.id.first_btn_description)).setText(m1311pr.getString(R.string.device_fix_root_description));
        this.f3495zv.findViewById(R.id.root_manager_guide).setVisibility(8);
    }

    /* renamed from: XD */
    public void m2419XD() {
        m2413af(R.layout.device_root_obtained_left_img, 0);
        m2413af(R.layout.device_root_obtained, 1);
        C3953zi m1311pr = C3953zi.m1311pr();
        ((TextView) this.f3495zv.findViewById(R.id.phone_brand_text)).setText(m1311pr.getString(R.string.kr4_brand) + bce.m7711Xk());
        ((TextView) this.f3495zv.findViewById(R.id.android_version)).setText(m1311pr.getString(R.string.kr4_Android) + Build.VERSION.RELEASE);
        TextView textView = (TextView) this.f3495zv.findViewById(R.id.root_state_notice);
        textView.setVisibility(0);
        textView.setText(m1311pr.getString(R.string.device_root_cant_mount_description));
        this.f3495zv.findViewById(R.id.root_manager_guide).setVisibility(8);
    }

    /* renamed from: i */
    public void m2408i(View.OnClickListener onClickListener) {
        m2413af(R.layout.device_abnormal_root_left_img, 0);
        m2413af(R.layout.device_root_right_button_layout, 1);
        C3953zi m1311pr = C3953zi.m1311pr();
        ((TextView) this.f3495zv.findViewById(R.id.first_btn_title)).setText(m1311pr.getString(R.string.device_no_root));
        Button button = (Button) this.f3495zv.findViewById(R.id.first_btn);
        button.setText(m1311pr.getString(R.string.kr4_start_root));
        button.setOnClickListener(onClickListener);
        this.f3495zv.findViewById(R.id.first_btn_description).setVisibility(8);
        this.f3495zv.findViewById(R.id.root_manager_guide).setVisibility(8);
    }

    /* renamed from: j */
    public void m2406j(View.OnClickListener onClickListener) {
        m2413af(R.layout.device_abnormal_root_left_img, 0);
        m2413af(R.layout.device_root_right_button_layout, 1);
        C3953zi m1311pr = C3953zi.m1311pr();
        ((TextView) this.f3495zv.findViewById(R.id.first_btn_title)).setText(m1311pr.getString(R.string.device_no_root));
        Button button = (Button) this.f3495zv.findViewById(R.id.first_btn);
        button.setText(m1311pr.getString(R.string.kr4_try_to_root));
        button.setOnClickListener(onClickListener);
        ((TextView) this.f3495zv.findViewById(R.id.first_btn_description)).setText(m1311pr.getString(R.string.device_phone_can_try_root_description));
        this.f3495zv.findViewById(R.id.root_manager_guide).setVisibility(8);
    }

    /* renamed from: Xv */
    public void m2416Xv() {
        m2413af(R.layout.device_abnormal_root_left_img, 0);
        m2413af(R.layout.device_root_right_button_layout, 1);
        C3953zi m1311pr = C3953zi.m1311pr();
        ((TextView) this.f3495zv.findViewById(R.id.first_btn_title)).setText(m1311pr.getString(R.string.device_no_root));
        Button button = (Button) this.f3495zv.findViewById(R.id.first_btn);
        button.setText(m1311pr.getString(R.string.root_pc_guide));
        button.setOnClickListener(this.bbb);
        ((TextView) this.f3495zv.findViewById(R.id.first_btn_description)).setText(m1311pr.getString(R.string.device_pc_guide_description));
        this.f3495zv.findViewById(R.id.root_manager_guide).setVisibility(8);
    }

    /* renamed from: XE */
    public void m2418XE() {
        m2413af(R.layout.device_abnormal_root_left_img, 0);
        m2413af(R.layout.device_root_right_button_layout, 1);
        C3953zi m1311pr = C3953zi.m1311pr();
        ((TextView) this.f3495zv.findViewById(R.id.first_btn_title)).setText(m1311pr.getString(R.string.device_no_root));
        Button button = (Button) this.f3495zv.findViewById(R.id.first_btn);
        button.setText(m1311pr.getString(R.string.root_commit_adapt));
        button.setOnClickListener(this.bhA);
        ((TextView) this.f3495zv.findViewById(R.id.first_btn_description)).setText(m1311pr.getString(R.string.device_commit_adapt_description));
        this.f3495zv.findViewById(R.id.root_manager_guide).setVisibility(8);
    }

    /* renamed from: cS */
    public void m2412cS(boolean z) {
        m2413af(R.layout.device_no_root_left_img, 0);
        m2413af(R.layout.device_root_right_adapt_recieved, 1);
        akj m11270aT = akj.m11270aT(KApplication.m13453ge());
        m11270aT.m11272AN();
        long m11283AC = m11270aT.m11283AC();
        if (m11283AC <= 0) {
            m11283AC = aus.m8992EQ();
        }
        if (z) {
            m11283AC++;
            m11270aT.m11267am(m11283AC);
            m11270aT.m11268al(System.currentTimeMillis());
        }
        long j = m11283AC;
        C3953zi m1311pr = C3953zi.m1311pr();
        if (akj.m11270aT(KApplication.m13453ge()).m11285AA()) {
            long m11280AF = m11270aT.m11280AF();
            if (0 < m11280AF && m11280AF <= 1000) {
                ((TextView) this.f3495zv.findViewById(R.id.title_description)).setText(m1311pr.getString(R.string.device_root_adapat_received_descripton) + " >");
                this.f3495zv.findViewById(R.id.title_layout).setOnClickListener(this.bba);
                ady.m12308tK().m12341a(0, 0, 0, 0, 0, 0, 1);
            }
        }
        ((TextView) this.f3495zv.findViewById(R.id.first_btn_title)).setText("" + j);
        ((Button) this.f3495zv.findViewById(R.id.first_btn)).setOnClickListener(this.baW);
        this.f3495zv.findViewById(R.id.root_manager_guide).setVisibility(8);
        m11270aT.m11276AJ();
        m11270aT.m11269ak(m11270aT.m11283AC());
        m11270aT.m11266an(m11270aT.m11280AF());
        ady.m12308tK().m12341a(0, 0, 0, 0, 0, 1, 0);
    }

    /* renamed from: XF */
    public void m2417XF() {
        m2413af(R.layout.device_root_check, 0);
        m2413af(R.layout.device_root_right_checking, 1);
        this.f3495zv.findViewById(R.id.root_manager_guide).setVisibility(8);
        final GradientCircle gradientCircle = (GradientCircle) this.f3495zv.findViewById(R.id.root_state_img);
        gradientCircle.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                gradientCircle.m2420gD();
                gradientCircle.getViewTreeObserver().removeOnPreDrawListener(this);
                return true;
            }
        });
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                final List<CharSequence> abL = bgl.abL();
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.root.views.device.RootStateMgrView.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        RootStateMgrView.this.setCheckContent(abL);
                    }
                });
            }
        }));
    }

    /* renamed from: k */
    public void m2405k(View.OnClickListener onClickListener) {
        m2413af(R.layout.device_root_check, 0);
        m2413af(R.layout.device_root_right_button_layout, 1);
        C3953zi m1311pr = C3953zi.m1311pr();
        ((TextView) this.f3495zv.findViewById(R.id.first_btn_title)).setText(m1311pr.getString(R.string.device_root_check_time_out));
        Button button = (Button) this.f3495zv.findViewById(R.id.first_btn);
        button.setText(m1311pr.getString(R.string.device_root_retry));
        button.setOnClickListener(onClickListener);
        this.f3495zv.findViewById(R.id.first_btn_description).setVisibility(8);
        this.f3495zv.findViewById(R.id.root_manager_guide).setVisibility(8);
    }

    /* renamed from: l */
    public void m2404l(View.OnClickListener onClickListener) {
        m2413af(R.layout.device_abnormal_root_left_img, 0);
        m2413af(R.layout.device_root_right_button_layout, 1);
        C3953zi m1311pr = C3953zi.m1311pr();
        ((TextView) this.f3495zv.findViewById(R.id.first_btn_title)).setText(m1311pr.getString(R.string.device_root_fix_failed));
        Button button = (Button) this.f3495zv.findViewById(R.id.first_btn);
        button.setText(m1311pr.getString(R.string.device_root_retry));
        button.setOnClickListener(onClickListener);
        this.f3495zv.findViewById(R.id.first_btn_description).setVisibility(8);
        this.f3495zv.findViewById(R.id.root_manager_guide).setVisibility(8);
    }

    public void setCheckContent(List<CharSequence> list) {
        MarqueeView marqueeView = (MarqueeView) this.f3495zv.findViewById(R.id.marqueeView);
        if (marqueeView != null) {
            if (C3942yy.m1351d(list)) {
                C3953zi m1311pr = C3953zi.m1311pr();
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append(m1311pr.getString(R.string.kr4_brand) + bce.m7711Xk() + "\n");
                stringBuffer.append(m1311pr.getString(R.string.kr4_Android) + Build.VERSION.RELEASE + "\n");
                list.add(stringBuffer);
            }
            marqueeView.m13274J(list);
        }
    }
}
