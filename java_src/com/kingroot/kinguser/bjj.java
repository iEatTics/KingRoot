package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.support.annotation.UiThread;
import android.text.format.Formatter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.kingroot.common.uilib.AnimationListView;
import com.kingroot.common.uilib.template.PinnedHeaderListView;
import com.kingroot.kingmaster.toolbox.cleaner.uninstall.data.TcPkgInfo;
import com.kingroot.kinguser.AbstractC3926yn;
import com.kingroot.kinguser.aex;
import com.kingroot.kinguser.bjp;
import com.kingroot.kinguser.ztool.uninstall.SoftWareCoreActivity;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public abstract class bjj extends AbstractC3922ym implements AbsListView.OnScrollListener, CompoundButton.OnCheckedChangeListener {
    protected static afb bwR = new afb();
    protected static afa bwS = new afa();

    /* renamed from: VL */
    protected ProgressBar f1697VL;
    protected final List<aex.C0796a> bwT;
    protected InterfaceC2405d bwU;
    protected InterfaceC2406e bwV;
    protected InterfaceC2404c bwW;
    private InterfaceC2403b bwX;
    private bjp.InterfaceC2430a bwY;
    protected Button bwZ;
    private RelativeLayout bxa;
    protected PinnedHeaderListView bxb;
    private aex bxc;
    private final HashSet<aex.C0796a> bxd;

    /* renamed from: com.kingroot.kinguser.bjj$b */
    /* loaded from: classes.dex */
    public interface InterfaceC2403b {
        /* renamed from: e */
        void mo6649e(aex.C0796a c0796a);
    }

    /* renamed from: com.kingroot.kinguser.bjj$c */
    /* loaded from: classes.dex */
    public interface InterfaceC2404c {
    }

    /* renamed from: com.kingroot.kinguser.bjj$d */
    /* loaded from: classes.dex */
    public interface InterfaceC2405d {
        /* renamed from: vg */
        void mo6630vg();
    }

    /* renamed from: com.kingroot.kinguser.bjj$e */
    /* loaded from: classes.dex */
    public interface InterfaceC2406e {
        void aea();
    }

    /* renamed from: cb */
    public abstract List<AbstractC3926yn.C3929b<aex.C0796a>> mo6716cb(List<aex.C0796a> list);

    public bjj(Context context) {
        super(context);
        this.bwT = new ArrayList();
        this.bxd = new HashSet<>();
    }

    public Collection<aex.C0796a> adV() {
        HashSet hashSet;
        synchronized (this.bxd) {
            hashSet = new HashSet(this.bxd);
        }
        return hashSet;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        AbstractC3490qt animationAdapter;
        View inflate = getLayoutInflater().inflate(R.layout.software_uninstall_page_app_list, (ViewGroup) null);
        View$OnClickListenerC2407f view$OnClickListenerC2407f = new View$OnClickListenerC2407f();
        View$OnClickListenerC2408g view$OnClickListenerC2408g = new View$OnClickListenerC2408g();
        this.bwY = new C2402a();
        this.bxa = (RelativeLayout) inflate.findViewById(R.id.button_area);
        this.bwZ = (Button) inflate.findViewById(R.id.uninstall_button);
        this.bwZ.setOnClickListener(view$OnClickListenerC2408g);
        this.bxb = (PinnedHeaderListView) inflate.findViewById(R.id.list_view);
        this.bxb.m13334b(getImageFetcher());
        this.bxc = new aex(KUApplication.m13453ge(), R.id.list_title, true, view$OnClickListenerC2407f, this);
        this.bxb.setAdapter((ListAdapter) this.bxc);
        if ((this.bxb instanceof AnimationListView) && (animationAdapter = this.bxb.getAnimationAdapter()) != null) {
            animationAdapter.m2529G(true);
        }
        this.bxb.setOnScrollListener(this);
        this.bxb.setVisibility(0);
        this.f1697VL = (ProgressBar) inflate.findViewById(R.id.loading_progress);
        this.bxb.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.bjj.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                aex.C0796a c0796a;
                AbstractC3926yn.C3929b<aex.C0796a> bU = bjj.this.bxc.getItem(i);
                if (bU != null && (c0796a = bU.data) != null && c0796a.afQ) {
                    ady.m12308tK().mo1746bi(100238);
                    bjp bjpVar = new bjp(bjj.this.getContext(), c0796a);
                    bjpVar.show();
                    bjpVar.m6690a(bjj.this.bwY);
                }
            }
        });
        this.bxb.setPinnedHeaderView(getLayoutInflater().inflate(R.layout.list_view_title, (ViewGroup) this.bxb, false));
        return inflate;
    }

    public Button adW() {
        return this.bwZ;
    }

    public RelativeLayout adX() {
        return this.bxa;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        if (obj != null && (obj instanceof List)) {
            try {
                if (this.f1697VL.getVisibility() != 8) {
                    this.f1697VL.setVisibility(8);
                }
            } catch (Throwable th) {
            }
            if (this.bxc != null && (obj instanceof ArrayList)) {
                ArrayList arrayList = (ArrayList) obj;
                if (arrayList.size() > 0 && (arrayList.get(0) instanceof AbstractC3926yn.C3929b)) {
                    this.bxc.m1378k((ArrayList) obj);
                    this.bxc.notifyDataSetChanged();
                }
            }
        }
        adY();
        if (this.bwU != null) {
            this.bwU.mo6630vg();
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        aex.C0796a c0796a;
        AbstractC3926yn.C3929b<aex.C0796a> bU = this.bxc.getItem(compoundButton.getId());
        if (bU != null && (c0796a = bU.data) != null) {
            if (!c0796a.afQ) {
                compoundButton.setChecked(false);
                return;
            }
            c0796a.afR = z;
            synchronized (this.bxd) {
                if (z) {
                    this.bxd.add(c0796a);
                } else {
                    this.bxd.remove(c0796a);
                }
            }
            if (this.bwU != null) {
                this.bwU.mo6630vg();
            }
        }
    }

    /* renamed from: a */
    public void m6726a(InterfaceC2405d interfaceC2405d) {
        this.bwU = interfaceC2405d;
    }

    /* renamed from: a */
    public void m6725a(InterfaceC2406e interfaceC2406e) {
        this.bwV = interfaceC2406e;
    }

    /* renamed from: a */
    public void m6727a(InterfaceC2404c interfaceC2404c) {
        this.bwW = interfaceC2404c;
    }

    /* renamed from: a */
    public void m6728a(InterfaceC2403b interfaceC2403b) {
        this.bwX = interfaceC2403b;
    }

    /* renamed from: p */
    public void m6717p(Collection<aex.C0796a> collection) {
        if (!C3942yy.m1352c(collection)) {
            final HashSet hashSet = new HashSet(collection);
            beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.bjj.2
                @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                public void run() {
                    super.run();
                    synchronized (bjj.this.bwT) {
                        bjj.this.bwT.removeAll(hashSet);
                        bjj.this.m1411j(bjj.this.mo6716cb(new ArrayList(bjj.this.bwT)));
                    }
                }
            }));
        }
    }

    /* renamed from: d */
    public void m6718d(@NonNull final aex.C0796a c0796a) {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.bjj.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                synchronized (bjj.this.bwT) {
                    bjj.this.bwT.remove(c0796a);
                    bjj.this.m1411j(bjj.this.mo6716cb(new ArrayList(bjj.this.bwT)));
                }
            }
        }));
    }

    @UiThread
    private void adY() {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        Iterator<aex.C0796a> it = this.bxd.iterator();
        while (it.hasNext()) {
            aex.C0796a next = it.next();
            if (next.afR) {
                hashSet2.add(next.afP.packageName);
            }
        }
        synchronized (this.bwT) {
            for (aex.C0796a c0796a : this.bwT) {
                if (c0796a.afP != null) {
                    if (c0796a.afR) {
                        hashSet.add(c0796a);
                    } else if (hashSet2.contains(c0796a.afP.packageName)) {
                        c0796a.afR = true;
                        hashSet.add(c0796a);
                    }
                }
            }
        }
        synchronized (this.bxd) {
            this.bxd.clear();
            this.bxd.addAll(hashSet);
        }
        if (this.bwU != null) {
            this.bwU.mo6630vg();
        }
    }

    /* renamed from: bZ */
    public void m6721bZ(List<TcPkgInfo> list) {
        List<aex.C0796a> m6719ca;
        synchronized (this.bwT) {
            this.bwT.clear();
            m6719ca = m6719ca(list);
            this.bwT.addAll(m6719ca);
        }
        m1411j(mo6716cb(m6719ca));
    }

    public boolean adZ() {
        return false;
    }

    /* renamed from: b */
    public void m6723b(final TcPkgInfo tcPkgInfo) {
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.bjj.4
            /* JADX WARN: Removed duplicated region for block: B:10:0x001f A[Catch: all -> 0x0076, TryCatch #0 {, blocks: (B:7:0x0011, B:8:0x0019, B:10:0x001f, B:12:0x0029, B:14:0x0037, B:16:0x0041, B:19:0x0048, B:20:0x0060, B:21:0x0074), top: B:26:0x0011 }] */
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void run() {
                boolean z = false;
                super.run();
                if (tcPkgInfo.isPersonApp) {
                    synchronized (bjj.this.bwT) {
                        for (aex.C0796a c0796a : bjj.this.bwT) {
                            if (c0796a.afP == null || c0796a.afP.packageName.equals(tcPkgInfo.packageName)) {
                                c0796a.afP = tcPkgInfo;
                                c0796a.afS = (tcPkgInfo.isPersonApp && tcPkgInfo.classify == 0) ? true : true;
                                c0796a.description = Formatter.formatFileSize(bjj.this.getContext(), tcPkgInfo.pkgSize);
                                c0796a.afQ = true;
                                c0796a.afR = false;
                                bjj.this.m1411j(bjj.this.mo6716cb(new ArrayList(bjj.this.bwT)));
                            }
                            while (r4.hasNext()) {
                            }
                        }
                        bjj.this.m1411j(bjj.this.mo6716cb(new ArrayList(bjj.this.bwT)));
                    }
                }
            }
        }));
    }

    @NonNull
    /* renamed from: ca */
    protected List<aex.C0796a> m6719ca(List<TcPkgInfo> list) {
        ArrayList arrayList = new ArrayList();
        if (C3942yy.m1352c(list)) {
            return arrayList;
        }
        for (TcPkgInfo tcPkgInfo : list) {
            if (tcPkgInfo.isPersonApp || tcPkgInfo.enable == 0) {
                if (tcPkgInfo.enable != 2) {
                    aex.C0796a c0796a = new aex.C0796a();
                    c0796a.afP = tcPkgInfo;
                    c0796a.afS = (tcPkgInfo.isPersonApp && tcPkgInfo.classify == 0) ? false : true;
                    c0796a.description = Formatter.formatFileSize(getContext(), tcPkgInfo.pkgSize);
                    if (avu.m8746hj(tcPkgInfo.riskType)) {
                        c0796a.afP.description = String.format(C3953zi.m1311pr().getString(R.string.uninstall_risk_app_description_format), avu.m8747hi(tcPkgInfo.riskType));
                    }
                    aex.m12144b(c0796a);
                    if (aex.m12145a(c0796a) == 2) {
                        c0796a.afR = false;
                    }
                    arrayList.add(c0796a);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: com.kingroot.kinguser.bjj$f */
    /* loaded from: classes.dex */
    final class View$OnClickListenerC2407f implements View.OnClickListener {
        View$OnClickListenerC2407f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ady.m12308tK().mo1746bi(100056);
            Intent intent = new Intent();
            intent.setClass(bjj.this.getContext(), SoftWareCoreActivity.class);
            bjj.this.getActivity().startActivityForResult(intent, 2);
        }
    }

    /* renamed from: com.kingroot.kinguser.bjj$g */
    /* loaded from: classes.dex */
    final class View$OnClickListenerC2408g implements View.OnClickListener {
        View$OnClickListenerC2408g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            bjj.this.bwV.aea();
        }
    }

    /* renamed from: com.kingroot.kinguser.bjj$a */
    /* loaded from: classes.dex */
    final class C2402a implements bjp.InterfaceC2430a {
        C2402a() {
        }

        @Override // com.kingroot.kinguser.bjp.InterfaceC2430a
        /* renamed from: a */
        public void mo6680a(boolean z, aex.C0796a c0796a) {
            if (z && bjj.this.bwX != null) {
                bjj.this.bwX.mo6649e(c0796a);
            }
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        this.bxb.m13156bX(i);
    }
}
