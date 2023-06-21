package com.kingroot.kinguser;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bcd {
    private Resources bgc;
    private Context mContext;

    public bcd(Context context) {
        this.mContext = context;
        this.bgc = this.mContext.getResources();
    }

    /* renamed from: a */
    public void m7719a(View view, long j) {
        ((TextView) view.findViewById(R.id.ranking_adapted_person)).setText(String.format(this.bgc.getString(R.string.kr4_ranking_adapted_person), Long.valueOf(j)));
    }

    /* renamed from: a */
    public void m7718a(View view, String str) {
        ((TextView) view.findViewById(R.id.ranking_brand_model)).setText(str);
    }

    /* renamed from: b */
    public void m7714b(View view, String str) {
        ((ImageView) view.findViewById(R.id.ranking_device_icon)).setImageDrawable(bce.m7708kv(str));
    }

    /* renamed from: c */
    public void m7713c(View view, String str) {
        ((TextView) view.findViewById(R.id.ranking_brand_model)).setText(str);
    }

    /* renamed from: b */
    public void m7715b(View view, long j) {
        ((TextView) view.findViewById(R.id.ranking_adapted_person)).setText(String.format(this.bgc.getString(R.string.kr4_ranking_adapted_person), Long.valueOf(j)));
    }

    /* renamed from: G */
    public void m7722G(View view) {
        TextView textView = (TextView) view.findViewById(R.id.ranking_adapt_status);
        textView.setText(this.bgc.getString(R.string.kr4_ranking_queuing));
        textView.setTextColor(this.bgc.getColor(R.color.main_title_text));
    }

    /* renamed from: H */
    public void m7721H(View view) {
        TextView textView = (TextView) view.findViewById(R.id.ranking_adapt_status);
        textView.setText(this.bgc.getString(R.string.kr4_ranking_adapting));
        textView.setTextColor(this.bgc.getColor(R.color.green_1));
    }

    /* renamed from: I */
    public void m7720I(View view) {
        TextView textView = (TextView) view.findViewById(R.id.ranking_adapt_status);
        ((TextView) view.findViewById(R.id.ranking_adapted_person)).setTextColor(this.bgc.getColor(R.color.root_adapt_brand));
        ((ImageView) view.findViewById(R.id.ranking_device_icon)).setImageDrawable(bce.m7709bn(this.mContext));
        textView.setText(this.bgc.getString(R.string.kr4_ranking_adapting));
        textView.setTextColor(this.bgc.getColor(R.color.green_1));
    }

    /* renamed from: a */
    public void m7717a(TextView textView, TextView textView2) {
        if (textView != null) {
            textView.setText(this.bgc.getString(R.string.kr4_ranking_enter_adapted_list));
        }
        if (textView2 != null) {
            textView2.setText(this.bgc.getString(R.string.kr4_ranking_five_more));
        }
    }

    /* renamed from: a */
    public void m7716a(TextView textView, TextView textView2, long j) {
        if (textView != null) {
            textView.setText(String.format(this.bgc.getString(R.string.kr4_ranking_no_enter_adapted_list), Long.valueOf(j)));
        }
        if (textView2 != null) {
            textView2.setText(this.bgc.getString(R.string.kr4_ranking_three_more));
        }
    }
}
