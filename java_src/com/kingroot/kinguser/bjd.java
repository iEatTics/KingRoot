package com.kingroot.kinguser;

import andhook.lib.xposed.callbacks.XCallback;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.UiThread;
import android.support.p004v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.AdapterView;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.common.uilib.KBaseListView;
import com.kingroot.common.uilib.PagerSlidingTabStrip;
import com.kingroot.kinguser.ade;
import com.kingroot.kinguser.bjb;
import com.kingroot.kinguser.bjf;
import com.kingroot.kinguser.ztool.autostartmgr.AutoStartAppItemInfo;
import com.kingroot.kinguses.R;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class bjd extends add implements DialogInterface.OnClickListener, AdapterView.OnItemClickListener, CompoundButton.OnCheckedChangeListener, bjb.InterfaceC2371b, bjf.InterfaceC2396a {
    protected FrameLayout bvJ;
    protected FrameLayout bvK;
    private HashMap<Long, Integer> bvL;
    private View bvM;
    private bib bvN;
    protected PagerSlidingTabStrip bvO;
    private KBaseListView bvP;
    private KBaseListView bvQ;
    private bjc bvR;
    private bjc bvS;
    private final List<bji<AutoStartAppItemInfo>> bvT;
    private final List<bji<AutoStartAppItemInfo>> bvU;
    private volatile AtomicBoolean bvV;
    private InterfaceC2393b bvW;
    private bjb bvX;
    private bjf bvY;
    private final Comparator<bji<AutoStartAppItemInfo>> bvZ;
    private final ViewPager.OnPageChangeListener mOnPageChangeListener;

    /* renamed from: com.kingroot.kinguser.bjd$b */
    /* loaded from: classes.dex */
    interface InterfaceC2393b {
        /* renamed from: e */
        void mo6751e(bji<AutoStartAppItemInfo> bjiVar);
    }

    public bjd(Context context) {
        super(context);
        this.bvL = new HashMap<>();
        this.bvT = new ArrayList();
        this.bvU = new ArrayList();
        this.bvV = new AtomicBoolean(false);
        this.mOnPageChangeListener = new ViewPager.OnPageChangeListener() { // from class: com.kingroot.kinguser.bjd.1
            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageSelected(int i) {
                if (i == 0) {
                    bjd.this.bvY.m6739jn(0);
                } else if (i == 1) {
                    bjd.this.bvY.m6739jn(1);
                    ady.m12308tK().mo1746bi(100236);
                }
            }

            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageScrolled(int i, float f, int i2) {
            }

            @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int i) {
            }
        };
        this.bvZ = new Comparator<bji<AutoStartAppItemInfo>>() { // from class: com.kingroot.kinguser.bjd.7
            private Collator ahV = Collator.getInstance(Locale.getDefault());

            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(bji<AutoStartAppItemInfo> bjiVar, bji<AutoStartAppItemInfo> bjiVar2) {
                int i;
                if (bjiVar == null || bjiVar2 == null) {
                    return bjiVar == null ? bjiVar2 == null ? 0 : 1 : -1;
                } else if (bjiVar.isChecked() != bjiVar2.isChecked()) {
                    return bjiVar.isChecked() ? -1 : 1;
                } else if (bjiVar.getData().m13025vk() != bjiVar2.getData().m13025vk()) {
                    i = bjiVar.isChecked() ? 1 : -1;
                    return !bjiVar.getData().m13025vk() ? -i : i;
                } else if (bjiVar.getData().m13024vl() != bjiVar2.getData().m13024vl()) {
                    i = bjiVar.isChecked() ? 1 : -1;
                    return bjiVar.getData().m13024vl() ? -i : i;
                } else if (bjiVar.getData().isSystem() != bjiVar2.getData().isSystem()) {
                    return !bjiVar.getData().isSystem() ? -1 : 1;
                } else {
                    return this.ahV.compare(bjiVar.getData().getDisplayName(), bjiVar2.getData().getDisplayName());
                }
            }
        };
        this.bvX = bjb.adD();
        this.bvW = new InterfaceC2393b() { // from class: com.kingroot.kinguser.bjd.5
            @Override // com.kingroot.kinguser.bjd.InterfaceC2393b
            /* renamed from: e */
            public void mo6751e(bji<AutoStartAppItemInfo> bjiVar) {
                bjd.this.m6766a(bjiVar, bjiVar.isChecked());
                bjd.this.adH();
                bjd.this.bvV.set(false);
            }
        };
    }

    /* renamed from: vd */
    public void m6754vd() {
        if (this.bvN != null && this.bvN.isShowing()) {
            this.bvN.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        m6754vd();
        super.onDestroy();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.auto_start_main, m1407oM().getContainer(), false);
        this.f1393Vx = (ViewPager) inflate.findViewById(R.id.view_pager);
        this.bvO = (PagerSlidingTabStrip) inflate.findViewById(R.id.autostart_tabs);
        this.bvM = inflate.findViewById(R.id.view_cover);
        adH();
        View inflate2 = this.mInflater.inflate(R.layout.setting_viewpager_item_view, (ViewGroup) null);
        this.bvP = (KBaseListView) inflate2.findViewById(R.id.list_view);
        View inflate3 = ((ViewStub) inflate2.findViewById(R.id.list_empty)).inflate();
        inflate3.setBackgroundResource(R.color.card_background);
        ((TextView) inflate3.findViewById(R.id.nc_list_empty_desc)).setText(m1417V(2131165320L));
        this.bvP.setEmptyView(inflate3);
        this.bvR = new bjc(this, false);
        this.bvP.setAdapter((ListAdapter) this.bvR);
        this.bvP.setOnItemClickListener(this);
        this.bvP.setBackgroundResource(R.color.card_background);
        this.bvP.m13334b(getImageFetcher());
        this.bvJ = (FrameLayout) inflate2.findViewById(R.id.loading_layout);
        View inflate4 = this.mInflater.inflate(R.layout.setting_viewpager_item_view, (ViewGroup) null);
        this.bvQ = (KBaseListView) inflate4.findViewById(R.id.list_view);
        View inflate5 = ((ViewStub) inflate4.findViewById(R.id.list_empty)).inflate();
        inflate5.setBackgroundResource(R.color.card_background);
        ((TextView) inflate5.findViewById(R.id.nc_list_empty_desc)).setText(m1417V(2131165316L));
        this.bvQ.setEmptyView(inflate5);
        this.bvS = new bjc(this, false);
        this.bvQ.setAdapter((ListAdapter) this.bvS);
        this.bvQ.setOnItemClickListener(this);
        this.bvQ.setBackgroundResource(R.color.card_background);
        this.bvQ.m13334b(getImageFetcher());
        this.bvK = (FrameLayout) inflate4.findViewById(R.id.loading_layout);
        this.acc.add(inflate2);
        this.acc.add(inflate4);
        this.acd.m12552a(this.acc);
        this.f1393Vx.setAdapter(this.acd);
        this.bvO.setViewPager(this.f1393Vx);
        this.bvO.setOnPageChangeListener(this.mOnPageChangeListener);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        this.bvX.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onPause() {
        this.bvX.onPause();
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStart() {
        super.onStart();
        this.bvT.clear();
        this.bvU.clear();
        this.bvY.m12566ar(false);
        this.bvX.m6795a((bjb.InterfaceC2371b) this, false);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        this.bvY = new bjf(getActivity(), m1417V(2131165328L), this);
        return this.bvY;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.add, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        TextView textView = new TextView(getContext());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        textView.setGravity(17);
        m1407oM().addContentView(textView, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case -10001:
                adE();
                this.f1393Vx.setCurrentItem(this.bvT.size() == 0 ? 1 : 0, true);
                this.bvY.m12566ar(true);
                return;
            case XCallback.PRIORITY_LOWEST /* -10000 */:
                try {
                    if (this.bvJ.getVisibility() != 8) {
                        this.bvJ.setVisibility(8);
                    }
                    if (this.bvK.getVisibility() != 8) {
                        this.bvK.setVisibility(8);
                    }
                } catch (Throwable th) {
                }
                m6761c((bji) message.obj);
                return;
            default:
                return;
        }
    }

    @UiThread
    /* renamed from: c */
    private void m6761c(bji<AutoStartAppItemInfo> bjiVar) {
        if (bjiVar.isChecked()) {
            this.bvT.add(bjiVar);
        } else {
            this.bvU.add(bjiVar);
        }
        adF();
    }

    @UiThread
    private void adE() {
        Collections.sort(this.bvT, this.bvZ);
        Collections.sort(this.bvU, this.bvZ);
        adF();
    }

    @UiThread
    private void adF() {
        this.bvR.m6780bX(this.bvT);
        this.bvR.notifyDataSetChanged();
        this.bvS.m6780bX(this.bvU);
        this.bvS.notifyDataSetChanged();
        if (this.bvO != null) {
            this.bvO.notifyDataSetChanged();
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        ady.m12308tK().mo1746bi(100237);
        if (this.bvN == null) {
            this.bvN = new bib(getContext());
            this.bvN.m6949a(null, this);
        }
        this.bvN.m6950a((bji) adapterView.getItemAtPosition(i));
        this.bvN.show();
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        if (this.bvV.compareAndSet(false, true)) {
            try {
                adG();
                ady.m12308tK().mo1746bi(z ? 100062 : 100063);
                bji<AutoStartAppItemInfo> bjiVar = (bji) compoundButton.getTag();
                if (bjiVar.getData().m13024vl() && z) {
                    if (this.bvN == null) {
                        this.bvN = new bib(getContext());
                        this.bvN.m6949a(null, this);
                    }
                    this.bvN.m6950a(bjiVar);
                    this.bvN.show();
                    this.bvS.notifyDataSetChanged();
                    adH();
                    this.bvV.set(false);
                    return;
                }
                bjiVar.setChecked(z);
                m6758d(bjiVar);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: d */
    private void m6758d(bji<AutoStartAppItemInfo> bjiVar) {
        int currentItem = this.f1393Vx.getCurrentItem();
        bjc bjcVar = currentItem == 0 ? this.bvR : this.bvS;
        View adU = bjiVar.adU();
        m6772a(currentItem == 0 ? this.bvP : this.bvQ, bjcVar, adU, currentItem == 0 ? adU.getWidth() : -adU.getWidth(), 500L);
    }

    @Override // com.kingroot.kinguser.add
    /* renamed from: co */
    protected CharSequence mo6760co(int i) {
        int color;
        ade.C0711a c0711a;
        ade.C0711a c0711a2;
        ade.C0711a c0711a3;
        if (i == this.bvO.getmCurrentTab()) {
            color = C3953zi.m1311pr().getColor(R.color.auto_start_tab_text_selected);
        } else {
            color = C3953zi.m1311pr().getColor(R.color.auto_start_tab_text);
        }
        switch (i) {
            case 0:
                c0711a = new ade.C0711a(this.bvR.getCount() + "", 24, color);
                c0711a2 = new ade.C0711a(m1417V(2131165329L), 13, color);
                c0711a3 = new ade.C0711a("\n" + m1417V(2131165321L), 13, color);
                break;
            case 1:
                c0711a = new ade.C0711a(this.bvS.getCount() + "", 24, color);
                c0711a2 = new ade.C0711a(m1417V(2131165329L), 13, color);
                c0711a3 = new ade.C0711a("\n" + m1417V(2131165317L), 13, color);
                break;
            default:
                return "";
        }
        return ade.m12551a(c0711a, c0711a2, c0711a3);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (this.bvV.compareAndSet(false, true)) {
            try {
                adG();
                bji<AutoStartAppItemInfo> acT = ((bib) dialogInterface).acT();
                if (acT != null && i == -1) {
                    ady.m12308tK().mo1746bi(!acT.isChecked() ? 100062 : 100063);
                    acT.setChecked(acT.isChecked() ? false : true);
                    m6758d(acT);
                }
            } catch (Exception e) {
            }
        }
    }

    private void adG() {
        if (this.bvM != null) {
            this.bvM.setClickable(true);
            this.bvM.setFocusable(true);
            this.bvY.m12565as(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adH() {
        if (this.bvM != null) {
            this.bvM.setClickable(false);
            this.bvM.setFocusable(false);
            this.bvY.m12565as(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    /* renamed from: a */
    public void m6766a(bji<AutoStartAppItemInfo> bjiVar, boolean z) {
        final AutoStartAppItemInfo data = bjiVar.getData();
        if (bjiVar.isChecked()) {
            this.bvT.add(bjiVar);
            this.bvU.remove(bjiVar);
        } else {
            this.bvU.add(bjiVar);
            this.bvT.remove(bjiVar);
        }
        data.m1255jj(z ? 0 : 1);
        ahe.m11803wL().m11802x(data.getPackageName(), z);
        adE();
        if (!z) {
            beg.m7461Zj().m7451b(new bek() { // from class: com.kingroot.kinguser.bjd.6
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(data.getPackageName());
                    bja.m6804bW(arrayList);
                }
            });
        }
    }

    @Override // com.kingroot.kinguser.bjb.InterfaceC2371b
    /* renamed from: a */
    public void mo6777a(int i, Object obj, int i2, int i3) {
        switch (i) {
            case 1:
                if (obj != null) {
                    bji bjiVar = new bji((AutoStartAppItemInfo) obj);
                    bjiVar.setChecked(((AutoStartAppItemInfo) bjiVar.getData()).adB() == 0 || ((AutoStartAppItemInfo) bjiVar.getData()).adB() == 3);
                    getHandler().obtainMessage(XCallback.PRIORITY_LOWEST, bjiVar).sendToTarget();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.kingroot.kinguser.bjb.InterfaceC2371b
    /* renamed from: b */
    public void mo6764b(int i, Object obj, int i2, int i3) {
        switch (i) {
            case 1:
                getHandler().sendEmptyMessage(-10001);
                return;
            default:
                return;
        }
    }

    /* renamed from: a */
    private void m6772a(final KBaseListView kBaseListView, final bjc bjcVar, final View view, float f, long j) {
        if (view != null) {
            if (j <= 0) {
                j = 100;
            }
            kBaseListView.setEnabled(false);
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, f, 0.0f, 0.0f);
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
            AnimationSet animationSet = new AnimationSet(true);
            DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
            animationSet.addAnimation(translateAnimation);
            animationSet.addAnimation(alphaAnimation);
            animationSet.setInterpolator(decelerateInterpolator);
            animationSet.setDuration(j);
            m6775a(animationSet, new Runnable() { // from class: com.kingroot.kinguser.bjd.8
                @Override // java.lang.Runnable
                public void run() {
                    bjd.this.m6773a(kBaseListView, bjcVar, view);
                }
            });
            view.startAnimation(animationSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6773a(final KBaseListView kBaseListView, final bjc bjcVar, View view) {
        int i;
        int firstVisiblePosition = kBaseListView.getFirstVisiblePosition();
        for (int i2 = 0; i2 < kBaseListView.getChildCount(); i2++) {
            View childAt = kBaseListView.getChildAt(i2);
            int i3 = firstVisiblePosition + i2;
            if (i3 == -1) {
                this.bvL.clear();
                break;
            }
            long itemId = bjcVar.getItemId(i3);
            if (childAt != view) {
                this.bvL.put(Long.valueOf(itemId), Integer.valueOf(childAt.getTop()));
            }
        }
        try {
            i = kBaseListView.getPositionForView(view);
        } catch (Exception e) {
            i = -1;
        }
        if (i == -1) {
            bjcVar.notifyDataSetChanged();
            return;
        }
        final bji<AutoStartAppItemInfo> item = bjcVar.getItem(i);
        bjcVar.m6781b(item);
        final ViewTreeObserver viewTreeObserver = kBaseListView.getViewTreeObserver();
        viewTreeObserver.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.bjd.9
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                boolean z;
                Runnable runnable;
                Runnable runnable2;
                viewTreeObserver.removeOnPreDrawListener(this);
                int firstVisiblePosition2 = kBaseListView.getFirstVisiblePosition();
                int i4 = 0;
                boolean z2 = false;
                while (i4 < kBaseListView.getChildCount()) {
                    View childAt2 = kBaseListView.getChildAt(i4);
                    Integer num = (Integer) bjd.this.bvL.get(Long.valueOf(bjcVar.getItemId(firstVisiblePosition2 + i4)));
                    int top = childAt2.getTop();
                    if (num == null) {
                        int height = childAt2.getHeight() + kBaseListView.getDividerHeight();
                        if (i4 <= 0) {
                            height = -height;
                        }
                        num = Integer.valueOf(height + top);
                    }
                    int intValue = num.intValue() - top;
                    if (intValue != 0) {
                        int i5 = i4 + 1;
                        if (i5 < kBaseListView.getChildCount()) {
                            View childAt3 = kBaseListView.getChildAt(i5);
                            Integer num2 = (Integer) bjd.this.bvL.get(Long.valueOf(bjcVar.getItemId(i5 + firstVisiblePosition2)));
                            int top2 = childAt3.getTop();
                            if (num2 == null) {
                                num2 = Integer.valueOf(childAt3.getHeight() + kBaseListView.getDividerHeight() + top2);
                            }
                            if (num2.intValue() - top2 != 0) {
                                runnable2 = null;
                            } else {
                                runnable2 = new Runnable() { // from class: com.kingroot.kinguser.bjd.9.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        kBaseListView.setEnabled(true);
                                        if (bjd.this.bvW != null) {
                                            bjd.this.bvW.mo6751e(item);
                                        }
                                    }
                                };
                            }
                            runnable = runnable2;
                        } else {
                            runnable = new Runnable() { // from class: com.kingroot.kinguser.bjd.9.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    kBaseListView.setEnabled(true);
                                    if (bjd.this.bvW != null) {
                                        bjd.this.bvW.mo6751e(item);
                                    }
                                }
                            };
                        }
                        bjd.this.m6776a(childAt2, 0.0f, 0.0f, intValue, 0.0f, runnable);
                        z = true;
                    } else {
                        z = z2;
                    }
                    i4++;
                    z2 = z;
                }
                if (kBaseListView.getChildCount() == 0) {
                    kBaseListView.setEnabled(true);
                    bjcVar.notifyDataSetChanged();
                    if (bjd.this.bvW != null) {
                        bjd.this.bvW.mo6751e(item);
                    }
                } else if (!z2) {
                    kBaseListView.setEnabled(true);
                    bjcVar.notifyDataSetChanged();
                    if (bjd.this.bvW != null) {
                        bjd.this.bvW.mo6751e(item);
                    }
                }
                bjd.this.bvL.clear();
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6776a(View view, float f, float f2, float f3, float f4, final Runnable runnable) {
        TranslateAnimation translateAnimation = new TranslateAnimation(f, f2, f3, f4);
        translateAnimation.setDuration(300L);
        translateAnimation.setInterpolator(new DecelerateInterpolator());
        view.startAnimation(translateAnimation);
        if (runnable != null) {
            view.getAnimation().setAnimationListener(new animationAnimation$AnimationListenerC3445px() { // from class: com.kingroot.kinguser.bjd.10
                @Override // com.kingroot.kinguser.animationAnimation$AnimationListenerC3445px, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    runnable.run();
                }
            });
        }
    }

    /* renamed from: a */
    private void m6775a(Animation animation, final Runnable runnable) {
        if (runnable != null) {
            animation.setAnimationListener(new animationAnimation$AnimationListenerC3445px() { // from class: com.kingroot.kinguser.bjd.11
                @Override // com.kingroot.kinguser.animationAnimation$AnimationListenerC3445px, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation2) {
                    runnable.run();
                }
            });
        }
    }

    /* renamed from: a */
    private boolean m6774a(@NonNull final KBaseListView kBaseListView, float f, long j, @NonNull bjc bjcVar, boolean z, final AbstractC2392a abstractC2392a) {
        int bottom;
        AnimationSet animationSet;
        bji<AutoStartAppItemInfo> item;
        AutoStartAppItemInfo data;
        int firstVisiblePosition = kBaseListView.getFirstVisiblePosition();
        int lastVisiblePosition = kBaseListView.getLastVisiblePosition();
        if (firstVisiblePosition == -1 || lastVisiblePosition == -1 || lastVisiblePosition < firstVisiblePosition) {
            return false;
        }
        if (j <= 0) {
            j = 100;
        }
        long j2 = j + (50 * (lastVisiblePosition - firstVisiblePosition));
        kBaseListView.setEnabled(false);
        DecelerateInterpolator decelerateInterpolator = new DecelerateInterpolator();
        long j3 = 0;
        AnimationSet animationSet2 = null;
        final int i = 0;
        int i2 = firstVisiblePosition;
        while (i2 <= lastVisiblePosition && (!z || (item = bjcVar.getItem(i2)) == null || (data = item.getData()) == null || !data.m13025vk())) {
            View childAt = kBaseListView.getChildAt(i2);
            if (childAt == null) {
                bottom = i;
                animationSet = animationSet2;
            } else {
                bottom = childAt.getBottom();
                animationSet = new AnimationSet(true);
                animationSet.addAnimation(new TranslateAnimation(0.0f, f, 0.0f, 0.0f));
                animationSet.addAnimation(new AlphaAnimation(1.0f, 0.0f));
                animationSet.setInterpolator(decelerateInterpolator);
                animationSet.setDuration(j2 - j3);
                animationSet.setStartOffset(j3);
                childAt.startAnimation(animationSet);
            }
            j3 += 50;
            i2++;
            animationSet2 = animationSet;
            i = bottom;
        }
        if (animationSet2 != null) {
            animationSet2.setAnimationListener(new animationAnimation$AnimationListenerC3445px() { // from class: com.kingroot.kinguser.bjd.12
                @Override // com.kingroot.kinguser.animationAnimation$AnimationListenerC3445px, android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation animation) {
                    super.onAnimationStart(animation);
                    if (abstractC2392a != null) {
                        abstractC2392a.onAnimationStart(animation);
                    }
                }

                @Override // com.kingroot.kinguser.animationAnimation$AnimationListenerC3445px, android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation animation) {
                    super.onAnimationRepeat(animation);
                    if (abstractC2392a != null) {
                        abstractC2392a.onAnimationRepeat(animation);
                    }
                }

                @Override // com.kingroot.kinguser.animationAnimation$AnimationListenerC3445px, android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation animation) {
                    if (abstractC2392a != null) {
                        abstractC2392a.mo6752a(animation, i);
                    }
                    kBaseListView.setEnabled(true);
                    super.onAnimationEnd(animation);
                }
            });
            return true;
        }
        kBaseListView.setEnabled(true);
        return false;
    }

    @Override // com.kingroot.kinguser.bjf.InterfaceC2396a
    @UiThread
    /* renamed from: K */
    public void mo6737K(View view) {
        if (this.f1393Vx.getCurrentItem() == 0) {
            ady.m12308tK().mo1746bi(100373);
            ArrayList arrayList = new ArrayList();
            for (bji<AutoStartAppItemInfo> bjiVar : this.bvT) {
                AutoStartAppItemInfo data = bjiVar.getData();
                if (data != null && !data.m13025vk()) {
                    arrayList.add(bjiVar);
                }
            }
            if (arrayList.size() == 0) {
                C3954zj.show(R.string.auto_start_batch_no_enabled_items);
                return;
            }
            adG();
            if (!m6774a(this.bvP, this.bvP.getWidth(), 500L, this.bvR, true, new C23782(arrayList))) {
                adH();
                m6765a((Collection<bji<AutoStartAppItemInfo>>) arrayList, false);
                return;
            }
            return;
        }
        ady.m12308tK().mo1746bi(100374);
        ArrayList arrayList2 = new ArrayList();
        for (bji<AutoStartAppItemInfo> bjiVar2 : this.bvU) {
            AutoStartAppItemInfo data2 = bjiVar2.getData();
            if (data2 != null && !data2.m13024vl()) {
                arrayList2.add(bjiVar2);
            }
        }
        if (arrayList2.size() == 0) {
            C3954zj.show(R.string.auto_start_batch_no_disabled_items);
            return;
        }
        adG();
        if (!m6774a(this.bvQ, -this.bvQ.getWidth(), 500L, this.bvS, false, new C23813(arrayList2))) {
            adH();
            m6765a((Collection<bji<AutoStartAppItemInfo>>) arrayList2, true);
        }
    }

    /* renamed from: com.kingroot.kinguser.bjd$2 */
    /* loaded from: classes.dex */
    class C23782 extends AbstractC2392a {
        final /* synthetic */ ArrayList bwb;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C23782(ArrayList arrayList) {
            super();
            this.bwb = arrayList;
        }

        @Override // com.kingroot.kinguser.bjd.AbstractC2392a
        /* renamed from: a */
        public void mo6752a(Animation animation, final int i) {
            bjd.this.m6765a((Collection<bji<AutoStartAppItemInfo>>) this.bwb, false);
            final ViewTreeObserver viewTreeObserver = bjd.this.bvP.getViewTreeObserver();
            viewTreeObserver.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.bjd.2.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    viewTreeObserver.removeOnPreDrawListener(this);
                    int childCount = bjd.this.bvP.getChildCount();
                    if (childCount == 0) {
                        bjd.this.adH();
                        return false;
                    }
                    int i2 = childCount - 1;
                    Runnable runnable = new Runnable() { // from class: com.kingroot.kinguser.bjd.2.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            bjd.this.adH();
                        }
                    };
                    int i3 = 0;
                    while (true) {
                        int i4 = i3;
                        if (i4 < childCount) {
                            View childAt = bjd.this.bvP.getChildAt(i4);
                            if (i4 == i2) {
                                bjd.this.m6776a(childAt, 0.0f, 0.0f, i, 0.0f, runnable);
                            } else {
                                bjd.this.m6776a(childAt, 0.0f, 0.0f, i, 0.0f, (Runnable) null);
                            }
                            i3 = i4 + 1;
                        } else {
                            return true;
                        }
                    }
                }
            });
        }
    }

    /* renamed from: com.kingroot.kinguser.bjd$3 */
    /* loaded from: classes.dex */
    class C23813 extends AbstractC2392a {
        final /* synthetic */ ArrayList bwg;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C23813(ArrayList arrayList) {
            super();
            this.bwg = arrayList;
        }

        @Override // com.kingroot.kinguser.bjd.AbstractC2392a
        /* renamed from: a */
        public void mo6752a(Animation animation, final int i) {
            bjd.this.m6765a((Collection<bji<AutoStartAppItemInfo>>) this.bwg, true);
            final ViewTreeObserver viewTreeObserver = bjd.this.bvQ.getViewTreeObserver();
            viewTreeObserver.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.kingroot.kinguser.bjd.3.1
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    viewTreeObserver.removeOnPreDrawListener(this);
                    int childCount = bjd.this.bvQ.getChildCount();
                    if (childCount == 0) {
                        bjd.this.adH();
                        return false;
                    }
                    int i2 = childCount - 1;
                    Runnable runnable = new Runnable() { // from class: com.kingroot.kinguser.bjd.3.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            bjd.this.adH();
                        }
                    };
                    int i3 = 0;
                    while (true) {
                        int i4 = i3;
                        if (i4 < childCount) {
                            View childAt = bjd.this.bvQ.getChildAt(i4);
                            if (i4 == i2) {
                                bjd.this.m6776a(childAt, 0.0f, 0.0f, i, 0.0f, runnable);
                            } else {
                                bjd.this.m6776a(childAt, 0.0f, 0.0f, i, 0.0f, (Runnable) null);
                            }
                            i3 = i4 + 1;
                        } else {
                            return true;
                        }
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @UiThread
    /* renamed from: a */
    public void m6765a(Collection<bji<AutoStartAppItemInfo>> collection, boolean z) {
        int i = z ? 0 : 1;
        final ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (bji<AutoStartAppItemInfo> bjiVar : collection) {
            bjiVar.setChecked(z);
            AutoStartAppItemInfo data = bjiVar.getData();
            if (data != null) {
                arrayList.add(data.getPackageName());
                data.m1255jj(i);
                hashMap.put(data.getPackageName(), Boolean.valueOf(z));
            }
        }
        ahe.m11803wL().m11807h(hashMap);
        if (z) {
            this.bvT.addAll(collection);
            this.bvU.removeAll(collection);
        } else {
            this.bvU.addAll(collection);
            this.bvT.removeAll(collection);
        }
        adE();
        if (!z) {
            beg.m7461Zj().m7451b(new bek() { // from class: com.kingroot.kinguser.bjd.4
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    if (!C3942yy.m1351d(arrayList)) {
                        bja.m6804bW(arrayList);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bjd$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC2392a extends animationAnimation$AnimationListenerC3445px {
        /* renamed from: a */
        public abstract void mo6752a(Animation animation, int i);

        private AbstractC2392a() {
        }
    }
}
