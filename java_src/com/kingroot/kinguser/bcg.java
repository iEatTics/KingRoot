package com.kingroot.kinguser;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.RelativeSizeSpan;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import cloudsdk.ext.p008kr.RootConst;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public abstract class bcg extends AbstractC3446py {

    /* renamed from: CX */
    private ImageView f1657CX;

    /* renamed from: CY */
    private ImageView f1658CY;

    /* renamed from: CZ */
    private ImageView f1659CZ;
    private View baP;
    private TextView bgi;
    private TextView bgj;
    protected Button bgk;
    protected Button bgl;
    protected TextView bgm;
    protected TextView bgn;

    public bcg(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.AbstractC3449qa
    /* renamed from: gy */
    protected View mo2612gy() {
        this.baP = m2613aA(R.layout.kr4_detail_show_data);
        this.bgi = (TextView) this.baP.findViewById(R.id.time_cost);
        this.bgj = (TextView) this.baP.findViewById(R.id.success_count);
        this.bgk = (Button) this.baP.findViewById(R.id.first_btn);
        this.bgl = (Button) this.baP.findViewById(R.id.second_btn);
        this.bgm = (TextView) this.baP.findViewById(R.id.first_btn_description);
        this.f1657CX = (ImageView) this.baP.findViewById(R.id.star0);
        this.f1658CY = (ImageView) this.baP.findViewById(R.id.star1);
        this.f1659CZ = (ImageView) this.baP.findViewById(R.id.star2);
        return this.baP;
    }

    /* renamed from: i */
    public void m7703i(int i, int i2, int i3) {
        SpannableStringBuilder m7706ad = m7706ad(i / 60, i % 60);
        if (i3 > 0) {
            this.bgi.setText(m7706ad);
            this.bgj.setText(m7705hY(i3));
            m7704hZ(i2);
            return;
        }
        this.baP.findViewById(R.id.left_part).setVisibility(4);
        this.baP.findViewById(R.id.right_part).setVisibility(4);
        this.baP.findViewById(R.id.center_part).setVisibility(4);
        this.baP.findViewById(R.id.center_part_time).setVisibility(0);
        ((TextView) this.baP.findViewById(R.id.time_cost_c)).setText(m7706ad);
    }

    /* renamed from: ad */
    private SpannableStringBuilder m7706ad(int i, int i2) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) ("" + i));
        spannableStringBuilder.append((CharSequence) m7702kw(getString(R.string.kr4_minute)));
        spannableStringBuilder.append((CharSequence) ("" + i2));
        spannableStringBuilder.append((CharSequence) m7702kw(getString(R.string.kr4_second)));
        return spannableStringBuilder;
    }

    /* renamed from: hY */
    private SpannableStringBuilder m7705hY(int i) {
        String str;
        if (i > 9999) {
            str = "" + RootConst.ALLOW_FAIL_TIMES;
        } else {
            str = "" + i;
        }
        String string = i > 9999 ? "+" : getString(R.string.kr4_person);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.append((CharSequence) m7702kw(string));
        return spannableStringBuilder;
    }

    /* renamed from: kw */
    private SpannableString m7702kw(String str) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new RelativeSizeSpan(0.47f), 0, spannableString.length(), 33);
        return spannableString;
    }

    /* renamed from: hZ */
    public void m7704hZ(int i) {
        int i2 = R.drawable.root_star_10;
        int i3 = R.drawable.root_star_05;
        int i4 = R.drawable.root_star_00;
        switch (i) {
            case 1:
                i2 = R.drawable.root_star_05;
                i3 = R.drawable.root_star_00;
                break;
            case 2:
                i3 = R.drawable.root_star_00;
                break;
            case 3:
                break;
            case 4:
                i3 = R.drawable.root_star_10;
                break;
            default:
                i4 = R.drawable.root_star_05;
                i3 = R.drawable.root_star_10;
                break;
        }
        this.f1657CX.setImageResource(i2);
        this.f1658CY.setImageResource(i3);
        this.f1659CZ.setImageResource(i4);
    }
}
