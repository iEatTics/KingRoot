package com.kingroot.kinguser.gamebox.foreground.view;

import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.RotateAnimation;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingcore.uilib.LoadingCircle;
import com.kingcore.uilib.TypeWriterTextView;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.abd;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class GameBoxTitleView extends RelativeLayout {
    private TextView aFj;
    private TextView aQh;
    private TypeWriterTextView aQi;
    private LoadingCircle aQj;
    private boolean aQk;
    private Context mContext;

    public GameBoxTitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.aQk = false;
        this.mContext = context;
        m3754Lc();
    }

    @SuppressLint({"NewApi"})
    /* renamed from: Lc */
    private void m3754Lc() {
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.gamebox_title_view, (ViewGroup) this, true);
        this.aFj = (TextView) inflate.findViewById(R.id.game_title_main);
        this.aQj = (LoadingCircle) inflate.findViewById(R.id.game_title_tick_icon);
        this.aQi = (TypeWriterTextView) inflate.findViewById(R.id.game_title_sub);
        this.aQh = (TextView) inflate.findViewById(R.id.game_title_sub_arrow);
        ViewGroup viewGroup = (ViewGroup) inflate.findViewById(R.id.text_layout);
        if (abd.m12839qb() >= 11) {
            viewGroup.setLayoutTransition(new LayoutTransition());
        }
    }

    private void setSecondTitle(String str) {
        this.aQi.setVisibility(0);
        this.aQi.m13486a(str);
    }

    /* renamed from: Px */
    public void m3753Px() {
        this.aQk = false;
        this.aQj.m13572gJ();
        setSecondTitle(C3953zi.m1311pr().getString(R.string.gamebox_title_optimizing));
    }

    /* renamed from: gC */
    public void m3750gC(int i) {
        setSecondTitle(String.format(C3953zi.m1311pr().getString(R.string.gamebox_title_optimize_degree), Integer.valueOf(i)));
        this.aQh.setVisibility(0);
        this.aQj.m13569gM();
    }

    public void setOkState(int i) {
        this.aQk = false;
        setSecondTitle(String.format(C3953zi.m1311pr().getString(R.string.gamebox_title_optimize_degree), Integer.valueOf(i)));
        this.aQh.setVisibility(0);
        this.aQj.m13570gL();
    }

    /* renamed from: Py */
    public void m3752Py() {
        this.aQk = true;
        setSecondTitle(C3953zi.m1311pr().getString(R.string.gamebox_title_best_state));
        this.aQh.setVisibility(4);
        this.aQj.m13570gL();
    }

    public void setArrowState(boolean z) {
        float f;
        float f2 = 0.0f;
        if (z) {
            f = 0.0f;
            f2 = 90.0f;
        } else {
            f = 90.0f;
        }
        RotateAnimation rotateAnimation = new RotateAnimation(f, f2, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setFillAfter(true);
        rotateAnimation.setDuration(400L);
        this.aQh.startAnimation(rotateAnimation);
    }

    /* renamed from: Pz */
    public boolean m3751Pz() {
        return this.aQk;
    }
}
