package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.p004v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kinguser.distribution.appsmarket.view.NoScrollViewPager;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class anm extends AbstractC3930yo {
    private ArrayList<View> aBS;
    private ArrayList<TextView> aBT;
    private ann aBU;
    private aoj aBV;
    private boolean aBW;
    private boolean aBX;
    private ano aBg;
    private final ViewPager.OnPageChangeListener mOnPageChangeListener;

    public anm(Context context) {
        super(context);
        this.mOnPageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.kingroot.kinguser.anm.2
            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                anm.this.f4035Vz = anm.this.f4032VA;
                anm.this.f4032VA = i;
                anm.this.mo1376a(i, (AbstractC3922ym) anm.this.f4010Vc.get(i));
            }

            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3930yo, com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null) {
            m10201i(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3930yo, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    public View mo1371oG() {
        super.mo1371oG();
        this.f4033Vx = new NoScrollViewPager(getContext());
        this.f4033Vx.setAdapter(this.f4034Vy);
        this.f4033Vx.addOnPageChangeListener(this.mOnPageChangeListener);
        return this.f4033Vx;
    }

    @Override // com.kingroot.kinguser.AbstractC3920yk
    /* renamed from: L */
    protected void mo1422L(List<AbstractC3922ym> list) {
        this.aBU = new any(getContext());
        this.aBV = new aoj(getContext(), this.aBX);
        list.add(this.aBU);
        list.add(this.aBV);
    }

    @Override // com.kingroot.kinguser.AbstractC3930yo
    /* renamed from: a */
    protected void mo1376a(int i, AbstractC3922ym abstractC3922ym) {
        for (int i2 = 0; i2 < this.aBS.size(); i2++) {
            if (i2 == i) {
                this.aBS.get(i2).setVisibility(0);
                this.aBT.get(i2).setTextColor(m1415X(2131623961L));
            } else {
                this.aBS.get(i2).setVisibility(8);
                this.aBT.get(i2).setTextColor(m1415X(2131624105L));
            }
        }
        if (abstractC3922ym instanceof aoj) {
            ady.m12308tK().mo1746bi(100725);
        } else {
            ady.m12308tK().mo1746bi(100595);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.aBg = new ano(getContext(), C3953zi.m1311pr().getString(R.string.download_manaer_page_title));
        this.aBg.m10170Jn().setVisibility(8);
        this.aBU.m10192a(this.aBg);
        return this.aBg;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        LinearLayout linearLayout = (LinearLayout) getLayoutInflater().inflate(R.layout.app_download_manager_slider_header, (ViewGroup) null);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        m1407oM().addContentView(linearLayout, layoutParams);
        this.aBS = new ArrayList<>();
        this.aBS.add(linearLayout.findViewById(R.id.tab_line_first));
        this.aBS.add(linearLayout.findViewById(R.id.tab_line_second));
        this.aBT = new ArrayList<>();
        this.aBT.add((TextView) linearLayout.findViewById(R.id.tab_text_first));
        this.aBT.add((TextView) linearLayout.findViewById(R.id.tab_text_second));
        Iterator<TextView> it = this.aBT.iterator();
        while (it.hasNext()) {
            TextView next = it.next();
            next.setTextColor(m1415X(2131624105L));
            final int indexOf = this.aBT.indexOf(next);
            next.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.anm.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    anm.this.f4033Vx.setCurrentItem(indexOf);
                }
            });
        }
        ((RelativeLayout.LayoutParams) this.f4033Vx.getLayoutParams()).addRule(3, R.id.slider_header);
        this.aBT.get(0).setTextColor(m1415X(2131623961L));
        if (this.aBW) {
            this.f4033Vx.setCurrentItem(1);
        }
    }

    /* renamed from: i */
    private void m10201i(Intent intent) {
        if (intent.getBooleanExtra("key_click_content_from_app_update_notification", false) || intent.getBooleanExtra("key_click_btn_from_app_update_notification", false)) {
            this.aBW = true;
            if (intent.getBooleanExtra("key_click_btn_from_app_update_notification", false)) {
                this.aBX = true;
                if (this.aBV != null) {
                    this.aBV.m9951cF(this.aBX);
                }
                ady.m12308tK().mo1746bi(100721);
            } else {
                ady.m12308tK().mo1746bi(100720);
            }
            adm.m12480st().m12481sO();
        }
    }
}
