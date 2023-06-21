package com.kingroot.kinguser;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cloudsdk.ext.p008kr.RootConst;
import com.kingcore.uilib.CheckingProgressBar;
import com.kingcore.uilib.ClipView;
import com.kingcore.uilib.RotatingCircle;
import com.kingcore.uilib.ShadowCircle;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.root.views.circles.AdaptRotatingCircle;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public final class bco extends AbstractC3447pz {
    private static int bhu = RootConst.ALLOW_FAIL_TIMES;
    private int aWR;
    private Animation acE;
    private TextView bbL;
    private ShadowCircle bgU;
    private CheckingProgressBar bgV;
    private RotatingCircle bgW;
    private ImageView bgX;
    private TextView bgY;
    private RelativeLayout bgZ;
    private TextView bha;
    private Animation bhb;
    private RelativeLayout bhc;
    private AdaptRotatingCircle bhd;
    private TextView bhe;
    private ImageView bhf;
    private ImageView bhg;
    private ClipView bhh;
    private boolean bhi;
    private long bhj;
    private long bhk;
    private long bhl;
    private long bhm;
    private int bhn;
    private boolean bho;
    private View bhp;
    private View bhq;
    private long bhr;
    private long bhs;
    private long bht;
    private Handler mHandler;

    public bco(Context context) {
        super(context);
        this.bhs = 0L;
        this.bht = 0L;
    }

    @Override // com.kingroot.kinguser.AbstractC3449qa
    /* renamed from: gy */
    protected View mo2612gy() {
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(getContext()).inflate(R.layout.root_base_upper_layout, (ViewGroup) null);
        this.bgU = (ShadowCircle) viewGroup.findViewById(R.id.root_circle_shadow);
        this.bgV = (CheckingProgressBar) viewGroup.findViewById(R.id.root_check_progress_bar);
        this.bgW = (RotatingCircle) viewGroup.findViewById(R.id.root_out_circle_out);
        this.bgX = (ImageView) viewGroup.findViewById(R.id.logo);
        this.bbL = (TextView) viewGroup.findViewById(R.id.main_text);
        this.bgY = (TextView) viewGroup.findViewById(R.id.secondary_text);
        this.bgZ = (RelativeLayout) viewGroup.findViewById(R.id.rooting_percent_layout);
        this.bhh = (ClipView) viewGroup.findViewById(R.id.root_success_tick);
        this.acE = AnimationUtils.loadAnimation(getContext(), R.anim.fade_in);
        this.bhb = AnimationUtils.loadAnimation(getContext(), R.anim.fade_out);
        this.bhc = (RelativeLayout) viewGroup.findViewById(R.id.root_adapt_layout);
        this.bhd = (AdaptRotatingCircle) viewGroup.findViewById(R.id.root_adapt_circle);
        this.bhe = (TextView) viewGroup.findViewById(R.id.root_adapt_num);
        this.bhf = (ImageView) viewGroup.findViewById(R.id.root_adapt_sun);
        this.bhg = (ImageView) viewGroup.findViewById(R.id.root_adapt_moon);
        this.bhp = viewGroup.findViewById(R.id.plus_one);
        this.bhq = viewGroup.findViewById(R.id.btn_check_ranking);
        return viewGroup;
    }

    /* renamed from: Ql */
    public void m7658Ql() {
        m7648Xx();
        this.bgW.setVisibility(4);
        this.bgV.setVisibility(0);
        this.bgX.setVisibility(0);
        this.bgX.setImageDrawable(bce.m7709bn(getContext()));
        this.bbL.setText(R.string.root_check_page_checking_root);
    }

    /* renamed from: Xt */
    public void m7652Xt() {
        m7647Xy();
        m7630id(R.drawable.root_lock);
        this.bbL.setText(R.string.root_can_root_and_unrooted);
    }

    /* renamed from: Qm */
    public void m7657Qm() {
        m7649Xw();
        m7630id(R.drawable.root_lock);
        this.bbL.setText(R.string.root_can_try_root_and_unrooted);
        this.bgY.setText(R.string.kr4_new_solution_can_try);
    }

    /* renamed from: kB */
    public void m7627kB(String str) {
        m7649Xw();
        m7630id(R.drawable.root_adaptive);
        this.bbL.setText(R.string.root_not_adapt);
        this.bgY.setText(str);
    }

    /* renamed from: Xu */
    public void m7651Xu() {
        m7649Xw();
        this.bgX.setVisibility(4);
        this.bbL.setText("");
        this.bgY.setText("");
        this.bhc.setVisibility(0);
        m7646Xz();
    }

    /* renamed from: Xv */
    public void m7650Xv() {
        m7649Xw();
        m7630id(R.drawable.root_pc);
        this.bbL.setText(R.string.kr4_phone_cant_root);
        this.bbL.setTextColor(C3953zi.m1311pr().getColor(R.color.main_title_text));
        this.bgY.setText(R.string.kr4_suggest_pc);
    }

    /* renamed from: ic */
    public void m7631ic(int i) {
        m7648Xx();
        this.bgW.setVisibility(0);
        this.bgW.m13512gD();
        this.bha = (TextView) getWholeView().findViewById(R.id.root_percentage);
        this.bgX.setVisibility(4);
        this.bgZ.setVisibility(0);
        this.bgY.setVisibility(0);
        if (i == 4) {
            this.bbL.setText(R.string.root_fix_rooting);
        } else {
            this.bbL.setText(R.string.kr4_rooting);
        }
        this.bgY.setText(R.string.rooting_tips_00);
    }

    /* renamed from: a */
    public void m7641a(boolean z, ClipView.InterfaceC0448b interfaceC0448b) {
        m7649Xw();
        this.bgX.setVisibility(4);
        this.bhh.setListener(interfaceC0448b);
        this.bhh.m13590gD();
        if (z) {
            this.bbL.setText(R.string.root_fix_success);
        } else {
            this.bbL.setText(R.string.root_got_success);
        }
        this.bbL.setTextColor(C3953zi.m1311pr().getColor(R.color.green_1));
        this.bgY.setText(R.string.root_goto_main);
    }

    /* renamed from: kC */
    public void m7626kC(String str) {
        m7649Xw();
        m7630id(R.drawable.main_page_root_abnormal);
        this.bbL.setText(R.string.root_failed);
        this.bbL.setTextColor(C3953zi.m1311pr().getColor(R.color.red_2));
        this.bgY.setText(str);
    }

    /* renamed from: Qo */
    public void m7656Qo() {
        this.bgZ.setVisibility(8);
        this.bgV.setVisibility(4);
        this.bgW.setVisibility(4);
        this.bgU.setVisibility(4);
        this.bgX.setVisibility(0);
        this.bbL.setVisibility(0);
        this.bgY.setVisibility(0);
        this.bgX.setImageResource(R.drawable.kr4_icon_network_disabled);
        this.bbL.setText(R.string.root_network_unavailable);
        this.bbL.setTextColor(C3953zi.m1311pr().getColor(R.color.main_title_text));
        this.bgY.setText(R.string.root_cant_obtain_solutions_from_remote);
    }

    /* renamed from: Xw */
    private void m7649Xw() {
        this.bgZ.setVisibility(8);
        this.bgU.setVisibility(0);
        this.bgV.setVisibility(4);
        this.bgW.setVisibility(8);
        this.bgW.m13510gX();
        this.bgX.setVisibility(0);
        this.bbL.setVisibility(0);
        this.bbL.setTextColor(C3953zi.m1311pr().getColor(R.color.main_title_text));
        this.bgY.setVisibility(0);
    }

    /* renamed from: Xx */
    private void m7648Xx() {
        this.bgZ.setVisibility(8);
        this.bgU.setVisibility(0);
        this.bgV.setVisibility(4);
        this.bgX.setVisibility(4);
        this.bbL.setVisibility(0);
        this.bbL.setTextColor(C3953zi.m1311pr().getColor(R.color.main_title_text));
        this.bgY.setVisibility(4);
        this.bhc.setVisibility(8);
        this.bgU.setOnClickListener(null);
    }

    /* renamed from: Xy */
    private void m7647Xy() {
        this.bgZ.setVisibility(8);
        this.bgU.setVisibility(0);
        this.bgV.setVisibility(4);
        this.bgW.m13510gX();
        this.bgW.setVisibility(8);
        this.bgX.setVisibility(0);
        this.bbL.setVisibility(0);
        this.bbL.setTextColor(C3953zi.m1311pr().getColor(R.color.main_title_text));
        this.bgY.setVisibility(4);
    }

    public void setPercentage(int i) {
        if (i != this.aWR) {
            this.bha.setText(i < 10 ? "0" + i : "" + i);
            this.aWR = i;
        }
    }

    /* renamed from: id */
    public void m7630id(int i) {
        this.bgX.clearAnimation();
        this.bgX.startAnimation(this.bhb);
        this.bgX.setImageResource(i);
        this.bgX.startAnimation(this.acE);
    }

    /* renamed from: Xz */
    public void m7646Xz() {
        this.bhf.clearAnimation();
        this.bhg.clearAnimation();
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 2, 0.5f);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setDuration(10000L);
        rotateAnimation.setInterpolator(linearInterpolator);
        this.bhf.startAnimation(rotateAnimation);
        RotateAnimation rotateAnimation2 = new RotateAnimation(180.0f, 540.0f, 1, 0.5f, 2, 0.5f);
        rotateAnimation2.setRepeatCount(-1);
        rotateAnimation2.setDuration(10000L);
        rotateAnimation2.setInterpolator(linearInterpolator);
        this.bhg.startAnimation(rotateAnimation2);
    }

    /* renamed from: a */
    public void m7642a(boolean z, long j, long j2, long j3, long j4, int i, boolean z2) {
        String string;
        this.bhi = z;
        this.bhj = j;
        this.bhk = j2;
        this.bhl = j3;
        this.bhm = j4;
        this.bhn = i;
        this.bho = z2;
        if (this.bhk > bhu) {
            this.bhe.setTextSize(48.0f);
        } else {
            this.bhe.setTextSize(64.0f);
        }
        if (!akj.m11270aT(KApplication.m13453ge()).m11285AA()) {
            m7653XC();
        }
        if (this.bhi) {
            this.bhj = this.bhk;
            if (0 < this.bhm && this.bhm <= 1000) {
                this.bbL.setText(getString(R.string.kr4_firstcommit_before1k));
            } else {
                this.bbL.setText(getString(R.string.kr4_firstcommit_after1k));
                m7653XC();
            }
            m7655XA();
        } else if (0 < this.bhm && this.bhm <= 200) {
            this.bhe.setText("" + this.bhk);
            if (this.bhn > 0) {
                this.bbL.setText(String.format(getString(R.string.kr4_remaining_day_format), Integer.valueOf(this.bhn)));
                if (this.bho) {
                    this.bgY.setText(getString(R.string.kr4_pc_solution_comming));
                    return;
                } else {
                    this.bgY.setText(getString(R.string.kr4_phone_solution_coming));
                    return;
                }
            }
            this.bbL.setText(getString(R.string.kr4_play_dayandnight));
            this.bgY.setText(bbl.m7807bm(getContext()));
        } else {
            if (200 < this.bhm && this.bhm <= 1000) {
                if (this.bhk >= this.bhj) {
                    String format = String.format(getString(R.string.kr4_n_adapt_requests_more), Long.valueOf(this.bhk - this.bhj));
                    if (this.bhm < this.bhl) {
                        format = format + String.format(getString(R.string.kr4_nth_faraway_append), Long.valueOf(this.bhm - 200));
                    }
                    this.bgY.setText(format);
                } else {
                    this.bgY.setText(String.format(getString(R.string.kr4_some_models_adapted_format), Build.VERSION.RELEASE));
                    getHandler().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.bco.1
                        @Override // java.lang.Runnable
                        public void run() {
                            bco.this.bgY.setText(String.format(bco.this.getString(R.string.kr4_nth_faraway), Long.valueOf(bco.this.bhm - 200)));
                        }
                    }, 6000L);
                }
            } else {
                if (this.bhk > this.bhj) {
                    string = String.format(getString(R.string.kr4_more_and_more_adapt_request), Long.valueOf(this.bhk - this.bhj));
                } else {
                    string = getString(R.string.kr4_wait_and_see_omg);
                }
                this.bgY.setText(string);
                m7653XC();
            }
            m7655XA();
        }
    }

    /* renamed from: XA */
    private void m7655XA() {
        if (this.bhk > this.bhj) {
            long j = this.bhk - this.bhj;
            long j2 = 33;
            long j3 = (j / ((int) (1000 / 33))) + 1;
            long j4 = j / j3;
            if (j4 < 20 && j4 != 0) {
                j2 = 1000 / j4;
            }
            if (j2 > 500) {
                j2 = 500;
            }
            this.bhs = j3;
            this.bht = j2;
            this.bhe.setText("" + this.bhj);
            getHandler().removeMessages(0);
            getHandler().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.bco.2
                @Override // java.lang.Runnable
                public void run() {
                    bco.this.bhr = bco.this.bhj;
                    bco.this.getHandler().sendEmptyMessage(0);
                }
            }, 1500L);
        } else {
            this.bhe.setText("" + this.bhk);
        }
        this.bhp.setVisibility(8);
        if (this.bhi) {
            this.bhp.setVisibility(0);
            TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 2.0f, 1, 0.0f);
            translateAnimation.setDuration(1500L);
            translateAnimation.setFillAfter(true);
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            AnimationSet animationSet = new AnimationSet(true);
            alphaAnimation.setDuration(1500L);
            alphaAnimation.setFillAfter(true);
            animationSet.addAnimation(translateAnimation);
            animationSet.addAnimation(alphaAnimation);
            this.bhp.startAnimation(animationSet);
            getHandler().postDelayed(new Runnable() { // from class: com.kingroot.kinguser.bco.3
                @Override // java.lang.Runnable
                public void run() {
                    TranslateAnimation translateAnimation2 = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, -2.0f);
                    translateAnimation2.setDuration(1300L);
                    translateAnimation2.setFillAfter(true);
                    AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
                    AnimationSet animationSet2 = new AnimationSet(true);
                    alphaAnimation2.setDuration(1300L);
                    alphaAnimation2.setFillAfter(true);
                    animationSet2.addAnimation(translateAnimation2);
                    animationSet2.addAnimation(alphaAnimation2);
                    animationSet2.setAnimationListener(new Animation.AnimationListener() { // from class: com.kingroot.kinguser.bco.3.1
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            bco.this.bhp.setVisibility(8);
                        }
                    });
                    bco.this.bhp.startAnimation(animationSet2);
                }
            }, 2000L);
        }
    }

    /* renamed from: XB */
    public void m7654XB() {
        this.bgZ.setVisibility(4);
        this.bgV.setVisibility(4);
        this.bgW.setVisibility(4);
        this.bgU.setVisibility(4);
        this.bgX.setVisibility(4);
        this.bbL.setVisibility(4);
        this.bgY.setVisibility(4);
    }

    /* renamed from: g */
    public void m7635g(View.OnClickListener onClickListener) {
        if (this.bgU != null) {
            this.bgU.setOnClickListener(onClickListener);
        }
    }

    /* renamed from: XC */
    public void m7653XC() {
        this.bgU.setOnClickListener(null);
        this.bhq.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Handler getHandler() {
        if (this.mHandler == null) {
            this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.bco.4
                @Override // android.os.Handler
                public void handleMessage(Message message) {
                    if (bco.this.bhr <= bco.this.bhk) {
                        bco.this.bhe.setText("" + bco.this.bhr);
                        bco.this.bhr += bco.this.bhs;
                        bco.this.mHandler.sendEmptyMessageDelayed(0, bco.this.bht);
                        return;
                    }
                    bco.this.bhe.setText("" + bco.this.bhk);
                }
            };
        }
        return this.mHandler;
    }
}
