package com.kingroot.kinguser;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public final class bcl extends AbstractC3446py {
    private TextView bgA;
    private ImageView bgB;
    private ImageView bgC;
    private ImageView bgD;
    private ImageView bgE;
    private ImageView bgF;
    private ImageView bgG;
    private LinearLayout bgH;
    private Animation bgI;
    private TextView bgy;
    private TextView bgz;

    public bcl(Context context) {
        super(context);
        this.bgI = AnimationUtils.loadAnimation(context, R.anim.progress_rotation_anim);
    }

    @Override // com.kingroot.kinguser.AbstractC3449qa
    /* renamed from: gy */
    protected View mo2612gy() {
        ViewGroup viewGroup = (ViewGroup) LayoutInflater.from(getContext()).inflate(R.layout.kr4_bottom_rooting, (ViewGroup) null);
        this.bgB = (ImageView) viewGroup.findViewById(R.id.rooting_flow_unpack_check);
        this.bgC = (ImageView) viewGroup.findViewById(R.id.rooting_flow_unpack_tick);
        this.bgD = (ImageView) viewGroup.findViewById(R.id.rooting_flow_cloud_check);
        this.bgE = (ImageView) viewGroup.findViewById(R.id.rooting_flow_cloud_tick);
        this.bgF = (ImageView) viewGroup.findViewById(R.id.rooting_flow_case_check);
        this.bgG = (ImageView) viewGroup.findViewById(R.id.rooting_flow_case_tick);
        this.bgy = (TextView) viewGroup.findViewById(R.id.rooting_flow_unpack_text);
        this.bgz = (TextView) viewGroup.findViewById(R.id.rooting_flow_cloud_text);
        this.bgA = (TextView) viewGroup.findViewById(R.id.rooting_flow_case_text);
        this.bgH = (LinearLayout) viewGroup.findViewById(R.id.rooting_flow);
        return viewGroup;
    }

    /* renamed from: ia */
    public void m7668ia(int i) {
        if (i == 0) {
            this.bgC.setVisibility(4);
            this.bgB.setVisibility(0);
            this.bgB.startAnimation(this.bgI);
        }
        if (i == 1) {
            this.bgE.setVisibility(4);
            this.bgD.setVisibility(0);
            this.bgD.startAnimation(this.bgI);
        }
        if (i == 2) {
            this.bgG.setVisibility(4);
            this.bgF.setVisibility(0);
            this.bgF.startAnimation(this.bgI);
        }
    }

    /* renamed from: ib */
    public void m7667ib(int i) {
        if (i == 0) {
            this.bgC.setVisibility(0);
            this.bgB.setVisibility(4);
            this.bgB.clearAnimation();
        }
        if (i == 1) {
            this.bgE.setVisibility(0);
            this.bgD.setVisibility(4);
            this.bgD.clearAnimation();
        }
        if (i == 2) {
            this.bgG.setVisibility(0);
            this.bgF.setVisibility(4);
            this.bgF.clearAnimation();
        }
    }

    /* renamed from: ae */
    public void m7669ae(int i, int i2) {
        if (i > 0 && i2 > 0 && i >= i2) {
            this.bgA.setText(C3953zi.m1311pr().getString(R.string.rooting_case, Integer.valueOf(i2), Integer.valueOf(i)));
        } else {
            this.bgA.setText(C3953zi.m1311pr().getString(R.string.rooting_prepare_case));
        }
    }

    /* renamed from: kx */
    public void m7666kx(String str) {
        this.bgy.setText(str);
    }

    /* renamed from: ky */
    public void m7665ky(String str) {
        this.bgz.setText(str);
    }

    /* renamed from: kz */
    public void m7664kz(String str) {
        this.bgA.setText(str);
    }

    /* renamed from: Xs */
    public void m7670Xs() {
        this.bgH.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.root_enter_scale));
    }
}
