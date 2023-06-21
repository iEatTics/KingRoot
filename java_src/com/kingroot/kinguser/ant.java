package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.UiThread;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.ant;
import com.kingroot.kinguser.distribution.appsmarket.entity.CategoryEntity;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadCategoryListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class ant extends AbstractC3930yo {
    private static final String TAG = aiq.arY + "_AppsMarketCategoryPage";
    private ArrayList<View> aBS;
    private ArrayList<TextView> aBT;
    private int aDA;
    private boolean aDB;
    private List<CategoryEntity> aDy;
    private List<CategoryEntity> aDz;

    /* renamed from: b */
    public static /* synthetic */ int m10097b(ant antVar) {
        int i = antVar.aDA - 1;
        antVar.aDA = i;
        return i;
    }

    public ant(Context context) {
        super(context);
        this.aDA = 0;
        this.aDB = true;
    }

    @Override // com.kingroot.kinguser.AbstractC3920yk
    /* renamed from: L */
    protected void mo1422L(List<AbstractC3922ym> list) {
        this.aDy = new ArrayList();
        this.aDz = new ArrayList();
        list.add(new anv(getContext(), this, this.aDy, 1));
        list.add(new anv(getContext(), this, this.aDz, 2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3930yo, com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100671);
    }

    /* renamed from: sb */
    public void m10093sb() {
        m10099JD();
        this.aDA = 2;
        alq.m10547GY().mo10431a(1, new ILoadCategoryListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketCategoryPage$1
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadCategoryListener
            public void onReceive(int i, final List<CategoryEntity> list) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketCategoryPage$1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        List list2;
                        List list3;
                        list2 = ant.this.aDz;
                        list2.clear();
                        if (!C3942yy.m1351d(list)) {
                            list3 = ant.this.aDz;
                            list3.addAll(list);
                        }
                        if (ant.m10097b(ant.this) == 0) {
                            ant.this.m10100JC();
                        }
                    }
                });
            }
        });
        alq.m10547GY().mo10431a(0, new ILoadCategoryListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketCategoryPage$2
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.ILoadCategoryListener
            public void onReceive(int i, final List<CategoryEntity> list) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.AppsMarketCategoryPage$2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        List list2;
                        List list3;
                        list2 = ant.this.aDy;
                        list2.clear();
                        if (!C3942yy.m1351d(list)) {
                            list3 = ant.this.aDy;
                            list3.addAll(list);
                        }
                        if (ant.m10097b(ant.this) == 0) {
                            ant.this.m10100JC();
                        }
                    }
                });
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    /* renamed from: JC */
    public void m10100JC() {
        for (AbstractC3922ym abstractC3922ym : this.f4010Vc) {
            if (abstractC3922ym instanceof anv) {
                ((anv) abstractC3922ym).m10041JC();
            }
        }
    }

    @UiThread
    /* renamed from: JD */
    private void m10099JD() {
        for (AbstractC3922ym abstractC3922ym : this.f4010Vc) {
            if (abstractC3922ym instanceof anv) {
                ((anv) abstractC3922ym).m10040JD();
            }
        }
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
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ano(getContext(), C3953zi.m1311pr().getString(R.string.app_market_category_page_title));
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
        TextView textView = (TextView) linearLayout.findViewById(R.id.tab_text_first);
        TextView textView2 = (TextView) linearLayout.findViewById(R.id.tab_text_second);
        textView.setText(R.string.app_market_category_page_tab_soft);
        textView2.setText(R.string.app_market_category_page_tab_game);
        this.aBT.add(textView);
        this.aBT.add(textView2);
        Iterator<TextView> it = this.aBT.iterator();
        while (it.hasNext()) {
            TextView next = it.next();
            next.setTextColor(m1415X(2131624105L));
            final int indexOf = this.aBT.indexOf(next);
            next.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.ant.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ant.this.f4033Vx.setCurrentItem(indexOf);
                }
            });
        }
        ((RelativeLayout.LayoutParams) this.f4033Vx.getLayoutParams()).addRule(3, R.id.slider_header);
        this.aBT.get(0).setTextColor(m1415X(2131624118L));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3930yo, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        if (this.aDB) {
            this.aDB = false;
            m10093sb();
        }
    }
}
