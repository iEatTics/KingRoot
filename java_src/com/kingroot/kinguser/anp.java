package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.p004v4.view.PagerAdapter;
import android.support.p004v4.view.ViewPager;
import android.support.p007v7.widget.GridLayoutManager;
import android.support.p007v7.widget.RecyclerView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.WrapContentHeightViewPager;
import com.kingroot.kinguser.all;
import com.kingroot.kinguser.aug;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
/* loaded from: classes.dex */
public class anp extends ans implements all.InterfaceC1147b {
    private static final String TAG = aiq.arY + "_AppMarketWellChosenAppsPage";
    private aug.InterfaceC1607a aCM;
    private WrapContentHeightViewPager aCN;
    private Button aCO;
    private Button aCP;
    private Button aCQ;
    private LinearLayout aCR;
    private List<AppDownLoadModel> aCS;
    private boolean aCT;
    private TextView aCU;
    private C1299a aCV;
    private List<RecyclerView> aCW;
    private TextView aCX;
    private float aCY;
    private int ajh;

    public anp(Context context) {
        super(context);
        this.aCS = new ArrayList();
        this.aCT = false;
        this.aCW = new ArrayList();
        this.ajh = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans
    /* renamed from: ah */
    public void mo8482ah(List<String> list) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.aCT = false;
        Intent intent = getIntent();
        if (intent != null) {
            this.ajh = intent.getIntExtra("bundle_key_show_type", 0);
            this.aCM.mo9049gK(this.ajh);
        }
        this.aCM.mo9054PU();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.app_market_well_chosen_apps_layout, (ViewGroup) null);
        this.aCN = (WrapContentHeightViewPager) inflate.findViewById(R.id.view_pager);
        this.aCN.setOffscreenPageLimit(3);
        this.aCV = new C1299a(this.aCW);
        this.aCN.setAdapter(this.aCV);
        this.aCO = (Button) inflate.findViewById(R.id.btn_download);
        this.aCU = (TextView) inflate.findViewById(R.id.name);
        this.aCX = (TextView) inflate.findViewById(R.id.selected);
        this.aCP = (Button) inflate.findViewById(R.id.btn_ignore);
        this.aCQ = (Button) inflate.findViewById(R.id.wifi_download);
        this.aCR = (LinearLayout) inflate.findViewById(R.id.pointer_container);
        this.aCN.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.kingroot.kinguser.anp.1
            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                anp.this.m10153bS(i);
                anp.this.m10148fJ(i);
                ady.m12308tK().mo1746bi(100652);
            }

            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }
        });
        this.aCQ.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.anp.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C3748vb.m1918R(KApplication.m13453ge())) {
                    anp.this.aCM.mo9050bl(anp.this.aCS);
                    anp.this.m10165Jv();
                } else {
                    anp.this.m10166Ju();
                }
                ady.m12308tK().mo1746bi(100653);
            }
        });
        this.aCO.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.anp.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                akl.m11257AS().m11192dZ(anp.this.ajh);
                for (AppDownLoadModel appDownLoadModel : anp.this.aCS) {
                    ana.m10352IO().mo10337H(appDownLoadModel.categoryId, appDownLoadModel.pkgName);
                }
                ady.m12308tK().mo1746bi(100601);
                byte m1921O = C3748vb.m1921O(KApplication.m13453ge());
                if (m1921O == -1 || m1921O == 2 || m1921O == 1) {
                    C3953zi m1311pr = C3953zi.m1311pr();
                    if (m1921O == -1) {
                        anp.this.aCT = true;
                        anp.this.aCM.mo9051bk(anp.this.aCS);
                        final bid bidVar = new bid(anp.this.getActivity());
                        bidVar.show();
                        bidVar.setTitleText(m1311pr.getString(R.string.apps_market_well_chosen_no_net_notify_title));
                        bidVar.m6933d(C3953zi.m1311pr().getString(R.string.apps_market_well_chosen_no_net_notify_content));
                        bidVar.m6931iX(8);
                        bidVar.m6930lL(m1311pr.getString(R.string.dialog_btn_ok));
                        bidVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.anp.3.1
                            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                            /* renamed from: n */
                            public void mo1843n(View view2) {
                                bidVar.dismiss();
                                anp.this.m10165Jv();
                                ady.m12308tK().mo1746bi(100604);
                            }
                        });
                        ady.m12308tK().mo1746bi(100603);
                    } else if (m1921O == 2 || m1921O == 1) {
                        final bid bidVar2 = new bid(anp.this.getActivity());
                        bidVar2.show();
                        bidVar2.setTitleText(m1311pr.getString(R.string.apps_market_well_chosen_no_wifi_notify_title));
                        bidVar2.m6933d(String.format(C3953zi.m1311pr().getString(R.string.apps_market_well_chosen_no_wifi_notify_content), new Object[0]));
                        bidVar2.mo6682lK(m1311pr.getString(R.string.apps_market_well_chosen_download_later));
                        bidVar2.m6930lL(m1311pr.getString(R.string.apps_market_well_chosen_continue_download));
                        bidVar2.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.anp.3.2
                            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                            /* renamed from: n */
                            public void mo1843n(View view2) {
                                bidVar2.dismiss();
                                anp.this.m10166Ju();
                                ady.m12308tK().mo1746bi(100607);
                            }
                        });
                        bidVar2.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.anp.3.3
                            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                            /* renamed from: n */
                            public void mo1843n(View view2) {
                                anp.this.aCM.mo9050bl(anp.this.aCS);
                                bidVar2.dismiss();
                                anp.this.m10165Jv();
                                ady.m12308tK().mo1746bi(100606);
                            }
                        });
                        ady.m12308tK().mo1746bi(100605);
                    }
                } else if (m1921O == 0) {
                    anp.this.aCM.mo9050bl(anp.this.aCS);
                    anp.this.m10165Jv();
                }
            }
        });
        this.aCP.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.anp.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100602);
                anp.this.m10165Jv();
            }
        });
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: fJ */
    public void m10148fJ(int i) {
        RecyclerView recyclerView;
        if (i <= this.aCW.size() - 1 && i >= 0 && (recyclerView = this.aCW.get(i)) != null) {
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            if (adapter instanceof all) {
                for (all.C1148c c1148c : C3942yy.m1350e(((all) adapter).m10567oX())) {
                    if (c1148c != null) {
                        ana.m10352IO().mo10330a(getActivity().getClass().getName(), getActivity().hashCode(), c1148c.axT.reportInfo);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ju */
    public void m10166Ju() {
        m10165Jv();
        this.aCM.mo9051bk(this.aCS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Jv */
    public void m10165Jv() {
        getActivity().finish();
        this.aCM.mo9048k(getActivity());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new C3937yt(getContext(), "");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
    }

    /* renamed from: a */
    public void m10159a(aug.InterfaceC1607a interfaceC1607a) {
        this.aCM = interfaceC1607a;
    }

    /* renamed from: aH */
    public void m10157aH(final List<AppBaseModel> list) {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.anp.5
            @Override // java.lang.Runnable
            public void run() {
                List<AppDownLoadModel> m4176az = AppDownLoadModel.m4176az(list);
                ArrayList arrayList = new ArrayList();
                for (AppDownLoadModel appDownLoadModel : m4176az) {
                    arrayList.add(new all.C1148c(appDownLoadModel, false));
                }
                anp.this.m10156aI(arrayList);
                anp.this.m10148fJ(0);
                if (anp.this.ajh == 2) {
                    anp.this.aCU.setText(String.format(String.valueOf(C3953zi.m1311pr().getText(R.string.apps_market_well_chosen_new_phone_title)), Integer.valueOf(m4176az.size())));
                } else if (anp.this.ajh == 1) {
                    anp.this.aCU.setText(String.format(String.valueOf(C3953zi.m1311pr().getText(R.string.apps_market_well_chosen_title)), Integer.valueOf(m4176az.size())));
                }
                ady.m12308tK().mo1746bi(100600);
                anp.this.m10164Jw();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: aI */
    public void m10156aI(List<all.C1148c> list) {
        this.aCW.clear();
        this.aCS.clear();
        this.aCR.removeAllViews();
        long m9747LN = apu.m9747LN();
        int size = list.size();
        int size2 = list.size();
        int i = 0;
        int i2 = size;
        int i3 = 0;
        while (i2 > 0) {
            int i4 = i + 9;
            List<all.C1148c> subList = list.subList(i3, Math.min(i4, size2));
            if (i3 == 0) {
                for (all.C1148c c1148c : subList) {
                    if (((float) c1148c.axT.fileSize) + this.aCY < ((float) m9747LN)) {
                        c1148c.akL = true;
                        this.aCS.add(c1148c.axT);
                        this.aCY = ((float) c1148c.axT.fileSize) + this.aCY;
                    }
                }
                if (list.size() > 9) {
                    List<all.C1148c> subList2 = list.subList(9, list.size());
                    Random random = new Random();
                    HashSet<Integer> hashSet = new HashSet();
                    while (hashSet.size() != Math.min(subList2.size(), 2)) {
                        hashSet.add(Integer.valueOf(random.nextInt(subList2.size())));
                    }
                    for (Integer num : hashSet) {
                        all.C1148c c1148c2 = subList2.get(num.intValue());
                        if (((float) c1148c2.axT.fileSize) + this.aCY < ((float) m9747LN)) {
                            c1148c2.akL = true;
                            this.aCS.add(c1148c2.axT);
                            this.aCY = ((float) c1148c2.axT.fileSize) + this.aCY;
                        }
                    }
                }
            }
            RecyclerView recyclerView = new RecyclerView(getActivity());
            recyclerView.setLayoutParams(new RecyclerView.LayoutParams(-2, -2));
            int m12835r = abg.m12835r((int) (getResources().getDimension(R.dimen.apps_market_well_chosen_page_left_right_padding) / getResources().getDisplayMetrics().density));
            recyclerView.setPadding(m12835r, 0, m12835r, 0);
            recyclerView.setOverScrollMode(2);
            int dimensionPixelOffset = C3953zi.m1311pr().getDimensionPixelOffset(R.dimen.apps_market_well_chosen_item_vertical_padding);
            recyclerView.addItemDecoration(C3900xu.m1439e(dimensionPixelOffset, dimensionPixelOffset, 3));
            recyclerView.setLayoutManager(new GridLayoutManager((Context) getActivity(), 3, 1, false));
            all allVar = new all(subList);
            allVar.m10572a(this);
            recyclerView.setAdapter(allVar);
            this.aCW.add(recyclerView);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(abg.m12835r(5.0f), 0, abg.m12835r(5.0f), 0);
            ImageView imageView = new ImageView(getActivity());
            imageView.setLayoutParams(layoutParams);
            imageView.setImageResource(R.drawable.well_chosen_view_pager_indicator);
            this.aCR.addView(imageView);
            i3 = i4;
            i2 -= subList.size();
            i = i4;
        }
        m10153bS(0);
        this.aCV.notifyDataSetChanged();
    }

    @Override // com.kingroot.kinguser.all.InterfaceC1147b
    /* renamed from: a */
    public void mo10158a(boolean z, all.C1148c c1148c) {
        if (z) {
            if (!this.aCS.contains(c1148c.axT)) {
                this.aCS.add(c1148c.axT);
                this.aCY += (float) c1148c.axT.fileSize;
            }
        } else if (this.aCS.contains(c1148c.axT)) {
            this.aCS.remove(c1148c.axT);
            this.aCY -= (float) c1148c.axT.fileSize;
        }
        m10164Jw();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Jw */
    public void m10164Jw() {
        if (this.aCS.size() > 0) {
            this.aCO.setText(R.string.apps_market_well_chosen_apps_btn_download);
            this.aCQ.setVisibility(0);
            this.aCO.setBackgroundResource(R.drawable.selector_common_button_green);
            this.aCO.setClickable(true);
        } else {
            this.aCO.setText(R.string.apps_market_well_chosen_apps_btn_download_no_choice);
            this.aCO.setBackgroundResource(R.color.blue_2);
            this.aCO.setClickable(false);
            this.aCQ.setVisibility(4);
        }
        this.aCX.setText(String.format(C3953zi.m1311pr().getString(R.string.apps_market_well_chosen_page_selected), Integer.valueOf(this.aCS.size())));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public boolean onBackPressed() {
        if (this.aCT) {
            m10165Jv();
            return true;
        }
        return super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bS */
    public void m10153bS(int i) {
        if (i < this.aCR.getChildCount()) {
            int i2 = 0;
            while (i2 < this.aCR.getChildCount()) {
                this.aCR.getChildAt(i2).setEnabled(i == i2);
                i2++;
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.anp$a */
    /* loaded from: classes.dex */
    public static class C1299a extends PagerAdapter {
        private List<RecyclerView> aDb;

        public C1299a(List<RecyclerView> list) {
            this.aDb = list;
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public int getCount() {
            if (this.aDb == null) {
                return 0;
            }
            return this.aDb.size();
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            viewGroup.addView(this.aDb.get(i));
            return this.aDb.get(i);
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
            viewGroup.removeView(this.aDb.get(i));
        }
    }
}
