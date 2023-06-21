package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.kingroot.kinguser.activitys.AppDownloadManagerActivity;
import com.kingroot.kinguser.activitys.AppSearchActivity;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class ano extends ada {
    private ImageView aCC;
    private FrameLayout aCD;
    private ImageView aCE;
    private anx aCF;

    public ano(Context context, String str) {
        super(context, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ada, com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oI */
    public void mo1375oI() {
        super.mo1375oI();
        this.abE = getWholeView().findViewById(R.id.title_bar_wrapper);
        this.abE.setClickable(true);
        this.aCC = (ImageView) mo10167sg().findViewById(R.id.title_right_igv_1);
        this.aCD = (FrameLayout) mo10167sg().findViewById(R.id.title_right_container);
        this.aCF = new anx(getContext());
        this.aCD.addView(this.aCF.getWholeView());
        this.aCE = this.aCF.m10024Jm();
        this.aCF.m10028JO();
        this.aCC.setVisibility(0);
        this.aCE.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ano.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ano.this.aCF.m10025JR().getVisibility() == 0) {
                    akl.m11257AS().m11215aB(System.currentTimeMillis());
                }
                AppDownloadManagerActivity.m12643aK(ano.this.getContext());
            }
        });
        this.aCC.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ano.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AppSearchActivity.m12640aK(ano.this.getContext());
            }
        });
        getWholeView().findViewById(R.id.title_bar).setBackgroundColor(C3953zi.m1311pr().getColor(R.color.global_background_color2));
        getContainer().setBackgroundColor(C3953zi.m1311pr().getColor(R.color.global_background_color));
    }

    @Override // com.kingroot.kinguser.acw, com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oY */
    protected View mo1368oY() {
        return getLayoutInflater().inflate(R.layout.template_shadow_title_bar, (ViewGroup) null);
    }

    /* renamed from: Jm */
    public ImageView m10171Jm() {
        return this.aCE;
    }

    /* renamed from: Jn */
    public FrameLayout m10170Jn() {
        return this.aCD;
    }

    @Override // com.kingroot.kinguser.acw
    /* renamed from: sg */
    public View mo10167sg() {
        return this.abE;
    }

    /* renamed from: Jo */
    public anx m10169Jo() {
        return this.aCF;
    }
}
