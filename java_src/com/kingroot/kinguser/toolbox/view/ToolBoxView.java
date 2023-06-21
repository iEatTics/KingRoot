package com.kingroot.kinguser.toolbox.view;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.UiThread;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.kingroot.common.uilib.SlidingUpPanelLayout;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.ais;
import com.kingroot.kinguser.akl;
import com.kingroot.kinguser.als;
import com.kingroot.kinguser.alu;
import com.kingroot.kinguser.ana;
import com.kingroot.kinguser.anf;
import com.kingroot.kinguser.aps;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bfc;
import com.kingroot.kinguser.bhk;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class ToolBoxView extends LinearLayout {
    private ImageView aEC;
    private SlidingUpPanelLayout aou;
    private bfc blM;
    private boolean blW;
    private int bmA;
    private int bmB;
    private AppBaseModel bmC;
    private final List<C3655a> bmD;
    private ToolBoxListView bmt;
    private final List<C3655a> bmu;
    private ImageView bmv;
    private EnumC3656b bmw;
    private int bmx;
    private AtomicBoolean bmy;
    private List<String> bmz;
    private Context mContext;
    private Handler mHandler;
    private View mHeaderView;

    /* renamed from: com.kingroot.kinguser.toolbox.view.ToolBoxView$a */
    /* loaded from: classes.dex */
    public static class C3655a<T> {
        public int bmI = 3;
        public int aQX = 0;
        public boolean bmJ = false;
        public String mainTitle = "";
        public String softTitle = "";
        public String iconUrl = "";
        public String pkgName = "";
        public AppBaseModel bmK = null;
        public int jumpType = 0;
        public T bmL = null;
    }

    /* renamed from: com.kingroot.kinguser.toolbox.view.ToolBoxView$b */
    /* loaded from: classes.dex */
    public enum EnumC3656b {
        EXPANDED,
        COLLAPSED
    }

    public void setHeaderHeight(int i) {
        ViewGroup.LayoutParams layoutParams;
        if (i > 0) {
            this.bmA = i;
            if (this.mHeaderView != null && (layoutParams = this.mHeaderView.getLayoutParams()) != null) {
                layoutParams.height = i;
                this.mHeaderView.setLayoutParams(layoutParams);
            }
        }
    }

    public void onResume() {
        this.blM.onResume();
        m2154ZF();
    }

    public void onDestroy() {
        this.blM.onDestroy();
    }

    public void setSlidingUpPanelLayout(SlidingUpPanelLayout slidingUpPanelLayout) {
        this.aou = slidingUpPanelLayout;
        if (this.blM != null && this.aou != null) {
            this.blM.m7341j(slidingUpPanelLayout);
        }
    }

    public void setWellChosenCount(int i) {
        if (i != this.bmB) {
            this.bmB = i;
            m2153ZM();
        }
    }

    public ToolBoxView(Context context) {
        super(context);
        this.bmu = Collections.synchronizedList(new ArrayList());
        this.bmw = EnumC3656b.COLLAPSED;
        this.bmy = new AtomicBoolean(true);
        this.bmz = new ArrayList();
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.toolbox.view.ToolBoxView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        ToolBoxView.this.m2154ZF();
                        return;
                    default:
                        return;
                }
            }
        };
        this.blW = false;
        this.bmB = 0;
        this.bmD = new ArrayList();
        this.mContext = context;
        init();
    }

    public ToolBoxView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bmu = Collections.synchronizedList(new ArrayList());
        this.bmw = EnumC3656b.COLLAPSED;
        this.bmy = new AtomicBoolean(true);
        this.bmz = new ArrayList();
        this.mHandler = new Handler(Looper.getMainLooper()) { // from class: com.kingroot.kinguser.toolbox.view.ToolBoxView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        ToolBoxView.this.m2154ZF();
                        return;
                    default:
                        return;
                }
            }
        };
        this.blW = false;
        this.bmB = 0;
        this.bmD = new ArrayList();
        this.mContext = context;
        init();
    }

    private void init() {
        setOrientation(1);
        View inflate = LayoutInflater.from(this.mContext).inflate(R.layout.tool_box_title, this);
        this.bmv = (ImageView) inflate.findViewById(R.id.arrow);
        this.aEC = (ImageView) inflate.findViewById(R.id.new_dot);
        this.mHeaderView = inflate.findViewById(R.id.header);
        ViewGroup.LayoutParams layoutParams = this.mHeaderView.getLayoutParams();
        if (layoutParams != null && this.bmA != 0) {
            layoutParams.height = this.bmA;
            this.mHeaderView.setLayoutParams(layoutParams);
        }
        this.bmt = (ToolBoxListView) inflate.findViewById(R.id.tool_box_list_view);
        this.blM = new bfc(this.mContext, this.bmu);
        if (this.aou != null) {
            this.blM.m7341j(this.aou);
        }
        this.blM.setHandler(this.mHandler);
        this.bmt.setAdapter((ListAdapter) this.blM);
        m2146ZT();
    }

    /* renamed from: ZM */
    private void m2153ZM() {
        C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.toolbox.view.ToolBoxView.2
            @Override // java.lang.Runnable
            public void run() {
                ToolBoxView.this.m2151ZO();
                ToolBoxView.this.blM.setWellChosenMode(ToolBoxView.this.blW);
            }
        });
    }

    /* renamed from: ZN */
    protected void m2152ZN() {
        m2150ZP();
        if (ais.m11574yp()) {
            m2149ZQ();
        }
        if (anf.m10297IU()) {
            m2147ZS();
        }
        m2148ZR();
    }

    /* renamed from: ZO */
    protected void m2151ZO() {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.toolbox.view.ToolBoxView.3
            /* JADX WARN: Type inference failed for: r0v16, types: [T, com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo] */
            /* JADX WARN: Type inference failed for: r1v29, types: [com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel, T] */
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                boolean z = ToolBoxView.this.bmy.getAndSet(false);
                List<ExamRecommendAppInfo> mo9843JY = aps.m9754LI().mo9843JY();
                AppBaseModel mo10418Hl = als.m10538Hi().mo10418Hl();
                final C3655a c3655a = null;
                if (mo10418Hl != null) {
                    c3655a = new C3655a();
                    c3655a.bmI = 1;
                    c3655a.mainTitle = mo10418Hl.appName;
                    c3655a.softTitle = mo10418Hl.describe;
                    c3655a.pkgName = mo10418Hl.pkgName;
                    c3655a.iconUrl = mo10418Hl.iconUrl;
                    c3655a.jumpType = mo10418Hl.jumptype;
                    c3655a.bmK = mo10418Hl;
                    if (C3952zh.m1312pq().m1314du(mo10418Hl.pkgName)) {
                        c3655a.aQX = 4;
                    } else {
                        c3655a.aQX = 5;
                    }
                    if (!akl.m11257AS().m11177gU(c3655a.pkgName)) {
                        c3655a.bmJ = true;
                    }
                }
                synchronized (ToolBoxView.this.bmD) {
                    ToolBoxView.this.bmD.clear();
                    for (?? r0 : C3942yy.m1350e(mo9843JY)) {
                        if (r0 != 0 && (c3655a == null || !TextUtils.equals(r0.pkgName, c3655a.pkgName))) {
                            if (r0.m4104Kn()) {
                                C3655a c3655a2 = new C3655a();
                                c3655a2.mainTitle = r0.mainTitle;
                                c3655a2.softTitle = r0.softTitle;
                                c3655a2.iconUrl = r0.iconUrl;
                                c3655a2.pkgName = r0.pkgName;
                                c3655a2.bmL = r0;
                                if (r0.m4102yf()) {
                                    if (ToolBoxView.this.bmz.contains(r0.pkgName)) {
                                        c3655a2.bmI = 4;
                                        ToolBoxView.this.bmD.add(c3655a2);
                                    }
                                } else {
                                    c3655a2.bmI = 3;
                                    if (z) {
                                        ToolBoxView.this.bmz.add(r0.pkgName);
                                    }
                                    ToolBoxView.this.bmD.add(c3655a2);
                                }
                            }
                        }
                    }
                    final String string = ToolBoxView.this.getResources().getString(R.string.tool_box_item_title_unopen);
                    if (C3942yy.m1351d(ToolBoxView.this.bmD) && anf.m10297IU()) {
                        if (ToolBoxView.this.bmC == null) {
                            ToolBoxView.this.bmC = alu.m10529Ho().m10531Hl();
                        }
                        if (c3655a != null && !TextUtils.equals(ToolBoxView.this.bmC.pkgName, c3655a.pkgName) && ToolBoxView.this.bmC != null) {
                            C3655a c3655a3 = new C3655a();
                            c3655a3.iconUrl = ToolBoxView.this.bmC.iconUrl;
                            c3655a3.mainTitle = ToolBoxView.this.bmC.appName;
                            c3655a3.softTitle = ToolBoxView.this.bmC.describe;
                            c3655a3.pkgName = ToolBoxView.this.bmC.pkgName;
                            c3655a3.bmL = ToolBoxView.this.bmC;
                            c3655a3.bmK = ToolBoxView.this.bmC;
                            c3655a3.bmI = 5;
                            ToolBoxView.this.bmD.add(c3655a3);
                            string = ToolBoxView.this.getResources().getString(R.string.main_tool_box_market_recommend_title);
                        }
                    }
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.toolbox.view.ToolBoxView.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            synchronized (ToolBoxView.this.bmu) {
                                ToolBoxView.this.bmu.clear();
                                ToolBoxView.this.m2152ZN();
                                if (c3655a != null) {
                                    ToolBoxView.this.bmu.add(c3655a);
                                }
                                synchronized (ToolBoxView.this.bmD) {
                                    ToolBoxView.this.bmx = ToolBoxView.this.bmD.size();
                                    if (ToolBoxView.this.bmx > 0) {
                                        ToolBoxView.this.m2134lb(string);
                                        ToolBoxView.this.bmu.addAll(ToolBoxView.this.bmD);
                                    }
                                }
                            }
                            ToolBoxView.this.m2146ZT();
                            ToolBoxView.this.blM.notifyDataSetChanged();
                        }
                    });
                }
            }
        }));
    }

    /* renamed from: lb */
    protected void m2134lb(String str) {
        C3655a c3655a = new C3655a();
        c3655a.bmI = 0;
        c3655a.mainTitle = str;
        this.bmu.add(c3655a);
    }

    /* renamed from: ZP */
    protected void m2150ZP() {
        C3655a c3655a = new C3655a();
        c3655a.bmI = 1;
        c3655a.aQX = 1;
        c3655a.mainTitle = this.mContext.getString(R.string.king_tool_title_software_uninstall);
        c3655a.softTitle = this.mContext.getString(R.string.tool_box_software_uninstall_description);
        this.bmu.add(c3655a);
    }

    /* renamed from: ZQ */
    protected void m2149ZQ() {
        C3655a c3655a = new C3655a();
        c3655a.bmI = 2;
        c3655a.mainTitle = this.mContext.getString(R.string.king_tool_title_kingmaster);
        c3655a.softTitle = this.mContext.getString(R.string.tool_box_kingmaster_description);
        this.bmu.add(c3655a);
    }

    /* renamed from: ZR */
    protected void m2148ZR() {
        C3655a c3655a = new C3655a();
        c3655a.bmI = 1;
        c3655a.mainTitle = this.mContext.getString(R.string.gamebox_title_view);
        c3655a.softTitle = this.mContext.getString(R.string.tool_box_gamebox_description);
        c3655a.aQX = 2;
        this.bmu.add(c3655a);
    }

    /* renamed from: ZS */
    protected void m2147ZS() {
        C3655a c3655a = new C3655a();
        c3655a.bmI = 1;
        c3655a.mainTitle = this.mContext.getString(R.string.app_market_name);
        if (this.blW) {
            c3655a.softTitle = String.format(String.valueOf(C3953zi.m1311pr().getText(R.string.apps_market_well_chosen_title)), Integer.valueOf(this.bmB));
        } else {
            c3655a.softTitle = this.mContext.getString(R.string.app_market_tool_box_desc);
        }
        c3655a.aQX = 3;
        if (!akl.m11257AS().m11252AX()) {
            c3655a.bmJ = true;
        }
        this.bmu.add(c3655a);
    }

    protected ListView getListView() {
        return this.bmt;
    }

    protected BaseAdapter getAdapter() {
        return this.blM;
    }

    @UiThread
    public void setToolBoxState(EnumC3656b enumC3656b) {
        if (enumC3656b != this.bmw) {
            if (enumC3656b == EnumC3656b.EXPANDED) {
                bhk.m6994b(this.bmv, 0.0f, 180.0f, 250L);
                synchronized (this.bmD) {
                    Iterator<C3655a> it = this.bmD.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().bmI == 3) {
                                ady.m12308tK().mo1746bi(100512);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    Iterator<C3655a> it2 = this.bmD.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (it2.next().bmI == 5) {
                                ady.m12308tK().mo1746bi(100703);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                synchronized (this.bmu) {
                    for (C3655a c3655a : this.bmu) {
                        if (c3655a.aQX == 3 && !this.blW) {
                            ady.m12308tK().mo1746bi(100585);
                        }
                        if (c3655a.aQX == 4 || c3655a.aQX == 5) {
                            als.m10538Hi().mo10419C(c3655a.pkgName, 1);
                            if (c3655a.bmK != null) {
                                ana.m10352IO().mo10330a(this.mContext.getClass().getName(), this.mContext.hashCode(), c3655a.bmK.reportInfo);
                            }
                        }
                        if (c3655a.bmI == 5 && c3655a.bmK != null) {
                            ana.m10352IO().mo10330a(this.mContext.getClass().getName(), this.mContext.hashCode(), c3655a.bmK.reportInfo);
                        }
                    }
                }
            } else if (enumC3656b == EnumC3656b.COLLAPSED) {
                bhk.m6994b(this.bmv, 180.0f, 0.0f, 250L);
            }
            this.bmw = enumC3656b;
        }
    }

    /* renamed from: ZF */
    public void m2154ZF() {
        m2151ZO();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ZT */
    public void m2146ZT() {
        synchronized (this.bmu) {
            for (int i = 0; i < this.bmu.size(); i++) {
                if (this.bmu.get(i).bmJ) {
                    this.aEC.setVisibility(0);
                    return;
                }
            }
            this.aEC.setVisibility(8);
        }
    }

    public void setWellChosenMode(boolean z) {
        if (this.blW != z) {
            this.blW = z;
            m2153ZM();
        }
    }
}
