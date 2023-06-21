package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class aoh extends AbstractC3930yo {
    private ArrayList<View> aBS;
    private ArrayList<TextView> aBT;
    private ano aBg;
    private anl aFx;
    private anl aFy;

    public aoh(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3930yo, com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100655);
    }

    @Override // com.kingroot.kinguser.AbstractC3920yk
    /* renamed from: L */
    protected void mo1422L(List<AbstractC3922ym> list) {
        this.aFy = new aog(getContext());
        this.aFx = new aod(getContext());
        list.add(this.aFy);
        list.add(this.aFx);
    }

    @Override // com.kingroot.kinguser.AbstractC3930yo
    /* renamed from: a */
    protected void mo1376a(int i, AbstractC3922ym abstractC3922ym) {
        for (int i2 = 0; i2 < this.aBS.size(); i2++) {
            if (i2 == i) {
                this.aBS.get(i2).setVisibility(0);
                this.aBT.get(i2).setTextColor(m1415X(2131624118L));
            } else {
                this.aBS.get(i2).setVisibility(8);
                this.aBT.get(i2).setTextColor(m1415X(2131624105L));
            }
        }
        if (abstractC3922ym instanceof aod) {
            ady.m12308tK().mo1746bi(100662);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.aBg = new ano(getContext(), C3953zi.m1311pr().getString(R.string.reserve_page_title));
        this.aFy.m10218a(this.aBg);
        this.aFx.m10218a(this.aBg);
        return this.aBg;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        LinearLayout linearLayout = (LinearLayout) getLayoutInflater().inflate(R.layout.reserve_slider_header, (ViewGroup) null);
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
            next.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.aoh.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    aoh.this.f4033Vx.setCurrentItem(indexOf);
                }
            });
        }
        ((RelativeLayout.LayoutParams) this.f4033Vx.getLayoutParams()).addRule(3, R.id.slider_header);
        this.aBT.get(0).setTextColor(m1415X(2131624118L));
    }
}
