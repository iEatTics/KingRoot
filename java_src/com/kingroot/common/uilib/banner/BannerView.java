package com.kingroot.common.uilib.banner;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.DrawableRes;
import android.support.p004v4.view.PagerAdapter;
import android.support.p004v4.view.ViewCompat;
import android.support.p004v4.view.ViewPager;
import android.support.p007v7.internal.widget.ActivityChooserView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.common.uilib.banner.BannerViewPager;
import com.kingroot.kinguser.AbstractC3880xi;
import com.kingroot.kinguser.AbstractView$OnClickListenerC3872xa;
import com.kingroot.kinguser.C3870wz;
import com.kingroot.kinguser.EnumC3884xl;
import com.kingroot.kinguser.afs;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class BannerView extends RelativeLayout implements ViewPager.OnPageChangeListener, BannerViewPager.InterfaceC0574a {

    /* renamed from: TD */
    private static final ImageView.ScaleType[] f1134TD = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* renamed from: SO */
    private BannerViewPager f1135SO;

    /* renamed from: SQ */
    private List<View> f1136SQ;

    /* renamed from: SR */
    private List<View> f1137SR;

    /* renamed from: SS */
    private List<String> f1138SS;

    /* renamed from: ST */
    private LinearLayout f1139ST;

    /* renamed from: SU */
    private TextView f1140SU;

    /* renamed from: SV */
    private boolean f1141SV;

    /* renamed from: SW */
    private int f1142SW;

    /* renamed from: SX */
    private int f1143SX;

    /* renamed from: SY */
    private int f1144SY;

    /* renamed from: SZ */
    private int f1145SZ;

    /* renamed from: TA */
    private InterfaceC0571d f1146TA;

    /* renamed from: TB */
    private int f1147TB;

    /* renamed from: TC */
    private boolean f1148TC;

    /* renamed from: TE */
    private AbstractView$OnClickListenerC3872xa f1149TE;

    /* renamed from: TF */
    private boolean f1150TF;

    /* renamed from: Ta */
    private int f1151Ta;

    /* renamed from: Tb */
    private int f1152Tb;

    /* renamed from: Tc */
    private int f1153Tc;

    /* renamed from: Td */
    private int f1154Td;

    /* renamed from: Te */
    private int f1155Te;

    /* renamed from: Tf */
    private Drawable f1156Tf;

    /* renamed from: Tg */
    private RunnableC0569b f1157Tg;

    /* renamed from: Th */
    private int f1158Th;

    /* renamed from: Ti */
    private float f1159Ti;

    /* renamed from: Tj */
    private EnumC3884xl f1160Tj;

    /* renamed from: Tk */
    private ImageView f1161Tk;

    /* renamed from: Tl */
    private ImageView.ScaleType f1162Tl;

    /* renamed from: Tm */
    private int f1163Tm;

    /* renamed from: Tn */
    private List<? extends Object> f1164Tn;

    /* renamed from: To */
    private InterfaceC0570c f1165To;

    /* renamed from: Tp */
    private InterfaceC0568a f1166Tp;

    /* renamed from: Tq */
    private int f1167Tq;

    /* renamed from: Tr */
    private boolean f1168Tr;

    /* renamed from: Ts */
    private TextView f1169Ts;

    /* renamed from: Tt */
    private int f1170Tt;

    /* renamed from: Tu */
    private int f1171Tu;

    /* renamed from: Tv */
    private Drawable f1172Tv;

    /* renamed from: Tw */
    private boolean f1173Tw;

    /* renamed from: Tx */
    private boolean f1174Tx;

    /* renamed from: Ty */
    private View f1175Ty;

    /* renamed from: Tz */
    private View f1176Tz;
    private ViewPager.OnPageChangeListener mOnPageChangeListener;

    /* renamed from: com.kingroot.common.uilib.banner.BannerView$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0568a<V extends View, M> {
        /* renamed from: a */
        void mo10587a(BannerView bannerView, V v, M m, int i);
    }

    /* renamed from: com.kingroot.common.uilib.banner.BannerView$c */
    /* loaded from: classes.dex */
    public interface InterfaceC0570c<V extends View, M> {
        /* renamed from: b */
        void mo10588b(BannerView bannerView, V v, M m, int i);
    }

    /* renamed from: com.kingroot.common.uilib.banner.BannerView$d */
    /* loaded from: classes.dex */
    public interface InterfaceC0571d {
        /* renamed from: ov */
        void m13162ov();
    }

    public BannerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BannerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1141SV = true;
        this.f1142SW = 3000;
        this.f1143SX = 800;
        this.f1144SY = 81;
        this.f1154Td = -1;
        this.f1155Te = R.drawable.bga_banner_selector_point_solid;
        this.f1162Tl = ImageView.ScaleType.CENTER_CROP;
        this.f1163Tm = -1;
        this.f1167Tq = 2;
        this.f1168Tr = false;
        this.f1170Tt = -1;
        this.f1174Tx = true;
        this.f1148TC = true;
        this.f1149TE = new AbstractView$OnClickListenerC3872xa() { // from class: com.kingroot.common.uilib.banner.BannerView.1
            @Override // com.kingroot.kinguser.AbstractView$OnClickListenerC3872xa
            /* renamed from: j */
            public void mo1481j(View view) {
                if (BannerView.this.f1146TA != null) {
                    BannerView.this.f1146TA.m13162ov();
                }
            }
        };
        this.f1150TF = false;
        m13185Y(context);
        m13176f(context, attributeSet);
        m13186G(context);
    }

    /* renamed from: Y */
    private void m13185Y(Context context) {
        this.f1157Tg = new RunnableC0569b();
        this.f1145SZ = C3870wz.m1485a(context, 3.0f);
        this.f1151Ta = C3870wz.m1485a(context, 6.0f);
        this.f1152Tb = C3870wz.m1485a(context, 10.0f);
        this.f1153Tc = C3870wz.m1483b(context, 10.0f);
        this.f1156Tf = new ColorDrawable(Color.parseColor("#44aaaaaa"));
        this.f1160Tj = EnumC3884xl.Default;
        this.f1171Tu = C3870wz.m1483b(context, 10.0f);
        this.f1147TB = 0;
    }

    /* renamed from: f */
    private void m13176f(Context context, AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, afs.C0826a.BannerView);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            m13184a(obtainStyledAttributes.getIndex(i), obtainStyledAttributes);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private void m13184a(int i, TypedArray typedArray) {
        int i2;
        if (i == 2) {
            this.f1155Te = typedArray.getResourceId(i, R.drawable.bga_banner_selector_point_solid);
        } else if (i == 1) {
            this.f1156Tf = typedArray.getDrawable(i);
        } else if (i == 5) {
            this.f1145SZ = typedArray.getDimensionPixelSize(i, this.f1145SZ);
        } else if (i == 3) {
            this.f1152Tb = typedArray.getDimensionPixelSize(i, this.f1152Tb);
        } else if (i == 4) {
            this.f1151Ta = typedArray.getDimensionPixelSize(i, this.f1151Ta);
        } else if (i == 6) {
            this.f1144SY = typedArray.getInt(i, this.f1144SY);
        } else if (i == 7) {
            this.f1141SV = typedArray.getBoolean(i, this.f1141SV);
        } else if (i == 8) {
            this.f1142SW = typedArray.getInteger(i, this.f1142SW);
        } else if (i == 9) {
            this.f1143SX = typedArray.getInteger(i, this.f1143SX);
        } else if (i == 10) {
            this.f1160Tj = EnumC3884xl.values()[typedArray.getInt(i, EnumC3884xl.Accordion.ordinal())];
        } else if (i == 11) {
            this.f1154Td = typedArray.getColor(i, this.f1154Td);
        } else if (i == 12) {
            this.f1153Tc = typedArray.getDimensionPixelSize(i, this.f1153Tc);
        } else if (i == 13) {
            this.f1163Tm = typedArray.getResourceId(i, this.f1163Tm);
        } else if (i == 14) {
            this.f1168Tr = typedArray.getBoolean(i, this.f1168Tr);
        } else if (i == 15) {
            this.f1170Tt = typedArray.getColor(i, this.f1170Tt);
        } else if (i == 16) {
            this.f1171Tu = typedArray.getDimensionPixelSize(i, this.f1171Tu);
        } else if (i == 17) {
            this.f1172Tv = typedArray.getDrawable(i);
        } else if (i == 18) {
            this.f1173Tw = typedArray.getBoolean(i, this.f1173Tw);
        } else if (i == 19) {
            this.f1147TB = typedArray.getDimensionPixelSize(i, this.f1147TB);
        } else if (i == 0 && (i2 = typedArray.getInt(i, -1)) >= 0 && i2 < f1134TD.length) {
            this.f1162Tl = f1134TD[i2];
        }
    }

    /* renamed from: G */
    private void m13186G(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        if (Build.VERSION.SDK_INT >= 16) {
            relativeLayout.setBackground(this.f1156Tf);
        } else {
            relativeLayout.setBackgroundDrawable(this.f1156Tf);
        }
        relativeLayout.setPadding(this.f1152Tb, this.f1151Ta, this.f1152Tb, this.f1151Ta);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        if ((this.f1144SY & 112) == 48) {
            layoutParams.addRule(10);
        } else {
            layoutParams.addRule(12);
        }
        addView(relativeLayout, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(15);
        if (this.f1168Tr) {
            this.f1169Ts = new TextView(context);
            this.f1169Ts.setId(R.id.banner_indicatorId);
            this.f1169Ts.setGravity(16);
            this.f1169Ts.setSingleLine(true);
            this.f1169Ts.setEllipsize(TextUtils.TruncateAt.END);
            this.f1169Ts.setTextColor(this.f1170Tt);
            this.f1169Ts.setTextSize(0, this.f1171Tu);
            this.f1169Ts.setVisibility(4);
            if (this.f1172Tv != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    this.f1169Ts.setBackground(this.f1172Tv);
                } else {
                    this.f1169Ts.setBackgroundDrawable(this.f1172Tv);
                }
            }
            relativeLayout.addView(this.f1169Ts, layoutParams2);
        } else {
            this.f1139ST = new LinearLayout(context);
            this.f1139ST.setId(R.id.banner_indicatorId);
            this.f1139ST.setOrientation(0);
            this.f1139ST.setGravity(16);
            relativeLayout.addView(this.f1139ST, layoutParams2);
        }
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams3.addRule(15);
        this.f1140SU = new TextView(context);
        this.f1140SU.setGravity(16);
        this.f1140SU.setSingleLine(true);
        this.f1140SU.setEllipsize(TextUtils.TruncateAt.END);
        this.f1140SU.setTextColor(this.f1154Td);
        this.f1140SU.setTextSize(0, this.f1153Tc);
        relativeLayout.addView(this.f1140SU, layoutParams3);
        int i = this.f1144SY & 7;
        if (i == 3) {
            layoutParams2.addRule(9);
            layoutParams3.addRule(1, R.id.banner_indicatorId);
            this.f1140SU.setGravity(21);
        } else if (i == 5) {
            layoutParams2.addRule(11);
            layoutParams3.addRule(0, R.id.banner_indicatorId);
        } else {
            layoutParams2.addRule(14);
            layoutParams3.addRule(0, R.id.banner_indicatorId);
        }
        m13169oo();
    }

    /* renamed from: oo */
    public void m13169oo() {
        if (this.f1161Tk == null && this.f1163Tm != -1) {
            this.f1161Tk = C3870wz.m1482c(getContext(), this.f1163Tm);
            this.f1161Tk.setScaleType(this.f1162Tl);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.setMargins(0, 0, 0, this.f1147TB);
            addView(this.f1161Tk, layoutParams);
        }
    }

    public void setPageChangeDuration(int i) {
        if (i >= 0 && i <= 2000) {
            this.f1143SX = i;
            if (this.f1135SO != null) {
                this.f1135SO.setPageChangeDuration(i);
            }
        }
    }

    public void setAutoPlayAble(boolean z) {
        this.f1141SV = z;
        m13164ot();
        if (this.f1135SO != null && this.f1135SO.getAdapter() != null) {
            this.f1135SO.getAdapter().notifyDataSetChanged();
        }
    }

    public void setAutoPlayInterval(int i) {
        this.f1142SW = i;
    }

    /* renamed from: a */
    public void m13182a(List<View> list, List<? extends Object> list2, List<String> list3) {
        if (list == null || list.size() < 1) {
            this.f1141SV = false;
            list = new ArrayList<>();
            list2 = new ArrayList<>();
            list3 = new ArrayList<>();
        }
        if (this.f1141SV && list.size() < 3 && this.f1136SQ == null) {
            this.f1141SV = false;
        }
        this.f1164Tn = list2;
        this.f1137SR = list;
        this.f1138SS = list3;
        m13168op();
        initViewPager();
        m13167oq();
    }

    public void setData(List<View> list) {
        m13182a(list, null, null);
    }

    public void setData(@DrawableRes int... iArr) {
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            arrayList.add(C3870wz.m1482c(getContext(), i));
        }
        setData(arrayList);
    }

    public void setAllowUserScrollable(boolean z) {
        this.f1174Tx = z;
        if (this.f1135SO != null) {
            this.f1135SO.setAllowUserScrollable(this.f1174Tx);
        }
    }

    public void setOnPageChangeListener(ViewPager.OnPageChangeListener onPageChangeListener) {
        this.mOnPageChangeListener = onPageChangeListener;
    }

    public int getCurrentItem() {
        if (this.f1135SO == null || this.f1137SR == null) {
            return 0;
        }
        return this.f1135SO.getCurrentItem() % this.f1137SR.size();
    }

    public int getItemCount() {
        if (this.f1137SR == null) {
            return 0;
        }
        return this.f1137SR.size();
    }

    public List<? extends View> getViews() {
        return this.f1137SR;
    }

    public List<String> getTips() {
        return this.f1138SS;
    }

    public BannerViewPager getViewPager() {
        return this.f1135SO;
    }

    @Override // android.view.View
    public void setOverScrollMode(int i) {
        this.f1167Tq = i;
        if (this.f1135SO != null) {
            this.f1135SO.setOverScrollMode(this.f1167Tq);
        }
    }

    /* renamed from: op */
    private void m13168op() {
        if (this.f1139ST != null) {
            this.f1139ST.removeAllViews();
            if (this.f1173Tw || (!this.f1173Tw && this.f1137SR.size() > 1)) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.setMargins(this.f1145SZ, this.f1151Ta, this.f1145SZ, this.f1151Ta);
                int i = this.f1150TF ? 2 : 1;
                for (int i2 = 0; i2 < this.f1137SR.size() / i; i2++) {
                    ImageView imageView = new ImageView(getContext());
                    imageView.setLayoutParams(layoutParams);
                    imageView.setImageResource(this.f1155Te);
                    this.f1139ST.addView(imageView);
                }
            }
        }
        if (this.f1169Ts != null) {
            if (this.f1173Tw || (!this.f1173Tw && this.f1137SR.size() > 1)) {
                this.f1169Ts.setVisibility(0);
            } else {
                this.f1169Ts.setVisibility(4);
            }
        }
    }

    private void initViewPager() {
        if (this.f1135SO != null && equals(this.f1135SO.getParent())) {
            removeView(this.f1135SO);
            this.f1135SO = null;
        }
        this.f1135SO = new BannerViewPager(getContext());
        this.f1135SO.setOffscreenPageLimit(1);
        this.f1135SO.setAdapter(new C0572e());
        this.f1135SO.addOnPageChangeListener(this);
        this.f1135SO.setOverScrollMode(this.f1167Tq);
        this.f1135SO.setAllowUserScrollable(this.f1174Tx);
        this.f1135SO.setPageTransformer(true, AbstractC3880xi.m1480a(this.f1160Tj));
        setPageChangeDuration(this.f1143SX);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.setMargins(0, 0, 0, this.f1147TB);
        addView(this.f1135SO, 0, layoutParams);
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.kingroot.common.uilib.banner.BannerView.2
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                BannerView.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                if (BannerView.this.f1135SO != null) {
                    ViewGroup.LayoutParams layoutParams2 = BannerView.this.f1135SO.getLayoutParams();
                    layoutParams2.height = BannerView.this.getHeight();
                    BannerView.this.f1135SO.setLayoutParams(layoutParams2);
                }
            }
        });
        if (this.f1176Tz != null || this.f1175Ty != null) {
            this.f1135SO.addOnPageChangeListener(new ViewPager.SimpleOnPageChangeListener() { // from class: com.kingroot.common.uilib.banner.BannerView.3
                @Override // android.support.p004v4.view.ViewPager.SimpleOnPageChangeListener, android.support.p004v4.view.ViewPager.OnPageChangeListener
                public void onPageScrolled(int i, float f, int i2) {
                    if (i == BannerView.this.getItemCount() - 2) {
                        if (BannerView.this.f1176Tz != null) {
                            ViewCompat.setAlpha(BannerView.this.f1176Tz, f);
                        }
                        if (BannerView.this.f1175Ty != null) {
                            ViewCompat.setAlpha(BannerView.this.f1175Ty, 1.0f - f);
                        }
                        if (f > 0.5f) {
                            if (BannerView.this.f1176Tz != null) {
                                BannerView.this.f1176Tz.setVisibility(0);
                            }
                            if (BannerView.this.f1175Ty != null) {
                                BannerView.this.f1175Ty.setVisibility(8);
                                return;
                            }
                            return;
                        }
                        if (BannerView.this.f1176Tz != null) {
                            BannerView.this.f1176Tz.setVisibility(8);
                        }
                        if (BannerView.this.f1175Ty != null) {
                            BannerView.this.f1175Ty.setVisibility(0);
                        }
                    } else if (i == BannerView.this.getItemCount() - 1) {
                        if (BannerView.this.f1175Ty != null) {
                            BannerView.this.f1175Ty.setVisibility(8);
                        }
                        if (BannerView.this.f1176Tz != null) {
                            BannerView.this.f1176Tz.setVisibility(0);
                            ViewCompat.setAlpha(BannerView.this.f1176Tz, 1.0f);
                        }
                    } else {
                        if (BannerView.this.f1175Ty != null) {
                            BannerView.this.f1175Ty.setVisibility(0);
                            ViewCompat.setAlpha(BannerView.this.f1175Ty, 1.0f);
                        }
                        if (BannerView.this.f1176Tz != null) {
                            BannerView.this.f1176Tz.setVisibility(8);
                        }
                    }
                }
            });
        }
        if (this.f1141SV) {
            this.f1135SO.setAutoPlayDelegate(this);
            this.f1135SO.setCurrentItem(1073741823 - (1073741823 % this.f1137SR.size()));
            m13165os();
            return;
        }
        m13180bS(0);
    }

    /* renamed from: oq */
    public void m13167oq() {
        if (this.f1161Tk != null && equals(this.f1161Tk.getParent())) {
            removeView(this.f1161Tk);
            this.f1161Tk = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f1141SV) {
            switch (motionEvent.getAction()) {
                case 0:
                    m13164ot();
                    break;
                case 1:
                case 3:
                    m13165os();
                    break;
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public void setIsNeedShowIndicatorOnOnlyOnePage(boolean z) {
        this.f1173Tw = z;
    }

    public void setCurrentItem(int i) {
        if (this.f1135SO != null && this.f1137SR != null && i <= getItemCount() - 1) {
            if (this.f1141SV) {
                int currentItem = this.f1135SO.getCurrentItem();
                int size = i - (currentItem % this.f1137SR.size());
                if (size < 0) {
                    for (int i2 = -1; i2 >= size; i2--) {
                        this.f1135SO.setCurrentItem(currentItem + i2, false);
                    }
                } else if (size > 0) {
                    for (int i3 = 1; i3 <= size; i3++) {
                        this.f1135SO.setCurrentItem(currentItem + i3, false);
                    }
                }
                m13165os();
                return;
            }
            this.f1135SO.setCurrentItem(i, false);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            m13165os();
        } else if (i == 4 || i == 8) {
            m13166or();
        }
    }

    @Override // android.view.View
    public void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        if (i == 1) {
            m13165os();
        } else {
            m13166or();
        }
    }

    /* renamed from: or */
    private void m13166or() {
        m13164ot();
        this.f1148TC = false;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m13166or();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m13165os();
    }

    /* renamed from: os */
    public void m13165os() {
        m13164ot();
        if (this.f1141SV) {
            postDelayed(this.f1157Tg, this.f1142SW);
        }
    }

    /* renamed from: ot */
    public void m13164ot() {
        if (this.f1157Tg != null) {
            removeCallbacks(this.f1157Tg);
        }
    }

    /* renamed from: bS */
    private void m13180bS(int i) {
        if (this.f1150TF) {
            i %= 2;
        }
        if (this.f1140SU != null) {
            if (this.f1138SS == null || this.f1138SS.size() < 1 || i >= this.f1138SS.size()) {
                this.f1140SU.setVisibility(8);
            } else {
                this.f1140SU.setVisibility(0);
                this.f1140SU.setText(this.f1138SS.get(i));
            }
        }
        int size = this.f1137SR.size();
        if (this.f1150TF) {
            size /= 2;
        }
        if (this.f1139ST != null) {
            if (this.f1137SR != null && size > 0 && i < size && (this.f1173Tw || (!this.f1173Tw && size > 1))) {
                this.f1139ST.setVisibility(0);
                int i2 = 0;
                while (i2 < this.f1139ST.getChildCount()) {
                    this.f1139ST.getChildAt(i2).setEnabled(i2 == i);
                    this.f1139ST.getChildAt(i2).requestLayout();
                    i2++;
                }
            } else {
                this.f1139ST.setVisibility(8);
            }
        }
        if (this.f1169Ts != null) {
            if (this.f1137SR != null && size > 0 && i < size && (this.f1173Tw || (!this.f1173Tw && size > 1))) {
                this.f1169Ts.setVisibility(0);
                this.f1169Ts.setText((i + 1) + "/" + size);
                return;
            }
            this.f1169Ts.setVisibility(8);
        }
    }

    public void setTransitionEffect(EnumC3884xl enumC3884xl) {
        this.f1160Tj = enumC3884xl;
        if (this.f1135SO != null) {
            initViewPager();
            if (this.f1136SQ == null) {
                C3870wz.m1486K(this.f1137SR);
            } else {
                C3870wz.m1486K(this.f1136SQ);
            }
        }
    }

    public void setPageTransformer(ViewPager.PageTransformer pageTransformer) {
        if (pageTransformer != null && this.f1135SO != null) {
            this.f1135SO.setPageTransformer(true, pageTransformer);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ou */
    public void m13163ou() {
        if (this.f1135SO != null) {
            this.f1135SO.setCurrentItem(this.f1135SO.getCurrentItem() + 1);
        }
    }

    @Override // com.kingroot.common.uilib.banner.BannerViewPager.InterfaceC0574a
    /* renamed from: o */
    public void mo13160o(float f) {
        if (this.f1135SO != null) {
            if (this.f1158Th < this.f1135SO.getCurrentItem()) {
                if (f > 400.0f || (this.f1159Ti < 0.7f && f > -400.0f)) {
                    this.f1135SO.m13161m(this.f1158Th, true);
                } else {
                    this.f1135SO.m13161m(this.f1158Th + 1, true);
                }
            } else if (f < -400.0f || (this.f1159Ti > 0.3f && f < 400.0f)) {
                this.f1135SO.m13161m(this.f1158Th + 1, true);
            } else {
                this.f1135SO.m13161m(this.f1158Th, true);
            }
        }
    }

    @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
    public void onPageSelected(int i) {
        int size = i % this.f1137SR.size();
        m13180bS(size);
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageSelected(size);
        }
    }

    @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
    public void onPageScrolled(int i, float f, int i2) {
        this.f1158Th = i;
        this.f1159Ti = f;
        if (this.f1140SU != null) {
            if (this.f1138SS != null && this.f1138SS.size() > 0) {
                this.f1140SU.setVisibility(0);
                int size = i % this.f1138SS.size();
                int size2 = (i + 1) % this.f1138SS.size();
                if (size2 < this.f1138SS.size() && size < this.f1138SS.size()) {
                    if (f > 0.5d) {
                        this.f1140SU.setText(this.f1138SS.get(size2));
                        ViewCompat.setAlpha(this.f1140SU, f);
                    } else {
                        ViewCompat.setAlpha(this.f1140SU, 1.0f - f);
                        this.f1140SU.setText(this.f1138SS.get(size));
                    }
                }
            } else {
                this.f1140SU.setVisibility(8);
            }
        }
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrolled(i % this.f1137SR.size(), f, i2);
        }
    }

    @Override // android.support.p004v4.view.ViewPager.OnPageChangeListener
    public void onPageScrollStateChanged(int i) {
        if (this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.onPageScrollStateChanged(i);
        }
    }

    public void setDelegate(InterfaceC0570c interfaceC0570c) {
        this.f1165To = interfaceC0570c;
    }

    public void setAdapter(InterfaceC0568a interfaceC0568a) {
        this.f1166Tp = interfaceC0568a;
    }

    public void setDoubleMode(boolean z) {
        this.f1150TF = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.common.uilib.banner.BannerView$e */
    /* loaded from: classes.dex */
    public class C0572e extends PagerAdapter {
        private C0572e() {
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public int getCount() {
            if (BannerView.this.f1137SR == null) {
                return 0;
            }
            return BannerView.this.f1141SV ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : BannerView.this.f1137SR.size();
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public Object instantiateItem(ViewGroup viewGroup, int i) {
            int size = i % BannerView.this.f1137SR.size();
            View view = BannerView.this.f1136SQ == null ? (View) BannerView.this.f1137SR.get(size) : (View) BannerView.this.f1136SQ.get(i % BannerView.this.f1136SQ.size());
            if (BannerView.this.f1165To != null) {
                view.setOnClickListener(new AbstractView$OnClickListenerC3872xa() { // from class: com.kingroot.common.uilib.banner.BannerView.e.1
                    @Override // com.kingroot.kinguser.AbstractView$OnClickListenerC3872xa
                    /* renamed from: j */
                    public void mo1481j(View view2) {
                        int currentItem = BannerView.this.f1135SO.getCurrentItem() % BannerView.this.f1137SR.size();
                        BannerView.this.f1165To.mo10588b(BannerView.this, view2, BannerView.this.f1164Tn == null ? null : BannerView.this.f1164Tn.get(currentItem), currentItem);
                    }
                });
            }
            if (BannerView.this.f1166Tp != null) {
                BannerView.this.f1166Tp.mo10587a(BannerView.this, view, BannerView.this.f1164Tn == null ? null : BannerView.this.f1164Tn.get(size), size);
            }
            ViewParent parent = view.getParent();
            if (parent != null) {
                ((ViewGroup) parent).removeView(view);
            }
            viewGroup.addView(view);
            return view;
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public boolean isViewFromObject(View view, Object obj) {
            return view == obj;
        }

        @Override // android.support.p004v4.view.PagerAdapter
        public int getItemPosition(Object obj) {
            return -2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.common.uilib.banner.BannerView$b */
    /* loaded from: classes.dex */
    public static class RunnableC0569b implements Runnable {

        /* renamed from: TH */
        private final WeakReference<BannerView> f1180TH;

        private RunnableC0569b(BannerView bannerView) {
            this.f1180TH = new WeakReference<>(bannerView);
        }

        @Override // java.lang.Runnable
        public void run() {
            BannerView bannerView = this.f1180TH.get();
            if (bannerView != null) {
                bannerView.m13163ou();
                bannerView.m13165os();
            }
        }
    }
}
