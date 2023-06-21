package com.kingroot.kinguser;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.bhk;
import com.kingroot.kinguses.R;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class anx {
    private static final String TAG = aiq.arY + "DownloadStatusView";
    private TextView aAM;
    private ImageView aEC;
    private ImageView aED;
    private ImageView aEE;
    private InterfaceC1346a aEG;

    /* renamed from: zv */
    private View f1497zv;
    private AtomicBoolean aEF = new AtomicBoolean(false);
    private volatile int mRepeatCount = 0;

    /* renamed from: com.kingroot.kinguser.anx$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1346a {
        /* renamed from: xr */
        void mo8249xr();
    }

    public anx(Context context) {
        this.f1497zv = m10021aU(context);
    }

    public View getWholeView() {
        return this.f1497zv;
    }

    /* renamed from: aU */
    public View m10021aU(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.app_market_download_status_view, (ViewGroup) null);
        this.aEC = (ImageView) inflate.findViewById(R.id.new_dot);
        this.aAM = (TextView) inflate.findViewById(R.id.download_count);
        this.aED = (ImageView) inflate.findViewById(R.id.download_icon);
        this.aEE = (ImageView) inflate.findViewById(R.id.download_line);
        return inflate;
    }

    /* renamed from: fK */
    public void m10016fK(int i) {
        stopAnimation();
        this.aEC.setVisibility(i);
        this.aAM.setText("");
    }

    /* renamed from: fL */
    public void m10015fL(int i) {
        this.aAM.setText(i > 99 ? "99+" : String.valueOf(i));
        this.aEC.setVisibility(8);
    }

    /* renamed from: fM */
    public void m10014fM(int i) {
        stopAnimation();
        this.aAM.setText(i > 99 ? "99+" : String.valueOf(i));
        this.aEC.setVisibility(8);
    }

    /* renamed from: l */
    public void m10013l(Context context, int i) {
        if (this.aEF.compareAndSet(false, true)) {
            this.aEE.clearAnimation();
            this.aED.clearAnimation();
            Animation loadAnimation = AnimationUtils.loadAnimation(context, R.anim.slide_in_vertical);
            loadAnimation.setRepeatCount(i);
            if (i != -1) {
                loadAnimation.setAnimationListener(new bhk.animationAnimation$AnimationListenerC2285a() { // from class: com.kingroot.kinguser.anx.1
                    @Override // com.kingroot.kinguser.bhk.animationAnimation$AnimationListenerC2285a, android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        anx.this.aEG.mo8249xr();
                        anx.this.aEF.set(false);
                    }
                });
            }
            this.aED.startAnimation(loadAnimation);
            this.mRepeatCount = i;
        }
    }

    public void stopAnimation() {
        if (this.aEF.compareAndSet(true, false) && this.mRepeatCount == -1) {
            this.aEE.clearAnimation();
            this.aED.clearAnimation();
        }
    }

    /* renamed from: JM */
    public void m10030JM() {
        this.aED.setImageResource(R.drawable.down_white_animation);
        this.aEE.setImageResource(R.drawable.down_white_line);
    }

    /* renamed from: JN */
    public void m10029JN() {
        m10030JM();
        this.aAM.setTextColor(-1);
    }

    /* renamed from: JO */
    public void m10028JO() {
        this.aED.setImageResource(R.drawable.download_black_animation);
        this.aEE.setImageResource(R.drawable.selector_download_status_black);
    }

    /* renamed from: JP */
    public void m10027JP() {
        this.aED.setVisibility(0);
        this.aED.setImageResource(R.drawable.apps_market_entry_arrow);
        this.aEE.setImageResource(R.drawable.selector_apps_market_entry);
    }

    /* renamed from: JQ */
    public void m10026JQ() {
        this.aED.setVisibility(4);
        this.aED.setImageResource(R.drawable.well_chosen_flower);
        this.aEE.setImageResource(R.drawable.selector_well_chosen_entry);
    }

    /* renamed from: aV */
    public void m10020aV(final Context context) {
        this.aEE.clearAnimation();
        this.aED.clearAnimation();
        Animation loadAnimation = AnimationUtils.loadAnimation(context, R.anim.app_market_entry_scale);
        loadAnimation.setAnimationListener(new bhk.animationAnimation$AnimationListenerC2285a() { // from class: com.kingroot.kinguser.anx.2
            @Override // com.kingroot.kinguser.bhk.animationAnimation$AnimationListenerC2285a, android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                anx.this.m10026JQ();
                Animation loadAnimation2 = AnimationUtils.loadAnimation(context, R.anim.well_chosen_scale);
                loadAnimation2.setInterpolator(new animationInterpolatorC3896xr(EnumC3895xq.BOUNCE_OUT));
                loadAnimation2.setAnimationListener(new bhk.animationAnimation$AnimationListenerC2285a() { // from class: com.kingroot.kinguser.anx.2.1
                    @Override // com.kingroot.kinguser.bhk.animationAnimation$AnimationListenerC2285a, android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation2) {
                        Animation loadAnimation3 = AnimationUtils.loadAnimation(context, R.anim.well_chosen_flower);
                        loadAnimation3.setRepeatCount(2);
                        anx.this.aED.startAnimation(loadAnimation3);
                        anx.this.aED.setVisibility(4);
                        anx.this.aEG.mo8249xr();
                    }
                });
                anx.this.aEE.startAnimation(loadAnimation2);
            }
        });
        this.aED.startAnimation(loadAnimation);
        this.aEE.startAnimation(loadAnimation);
        ady.m12308tK().mo1746bi(100598);
    }

    /* renamed from: Jm */
    public ImageView m10024Jm() {
        return this.aEE;
    }

    /* renamed from: JR */
    public ImageView m10025JR() {
        return this.aEC;
    }

    /* renamed from: a */
    public void m10023a(InterfaceC1346a interfaceC1346a) {
        this.aEG = interfaceC1346a;
    }
}
