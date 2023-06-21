package com.kingroot.kinguser;

import android.content.p002pm.IPackageDataObserver;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageStats;
import android.os.RemoteException;
import android.text.TextUtils;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class asg {
    private static volatile asg aMH;
    private final AtomicBoolean aMI = new AtomicBoolean(false);
    private final AtomicBoolean aMJ = new AtomicBoolean(false);
    private AtomicBoolean aMK = new AtomicBoolean(false);

    /* renamed from: com.kingroot.kinguser.asg$a */
    /* loaded from: classes.dex */
    public static class C1477a {
        public long aML;
        public String adZ;
    }

    /* renamed from: com.kingroot.kinguser.asg$b */
    /* loaded from: classes.dex */
    public interface InterfaceC1478b {
        /* renamed from: Nl */
        void mo9469Nl();

        /* renamed from: a */
        void mo9468a(C1477a c1477a);

        /* renamed from: go */
        void mo9467go(int i);
    }

    /* renamed from: NO */
    public static asg m9475NO() {
        if (aMH == null) {
            synchronized (asg.class) {
                if (aMH == null) {
                    aMH = new asg();
                }
            }
        }
        return aMH;
    }

    /* renamed from: NP */
    private ArrayList<String> m9474NP() {
        List<ApplicationInfo> installedApplications = C3952zh.m1312pq().getInstalledApplications(0);
        ArrayList<String> arrayList = new ArrayList<>();
        for (ApplicationInfo applicationInfo : installedApplications) {
            arrayList.add(applicationInfo.packageName);
        }
        return arrayList;
    }

    /* renamed from: NQ */
    public final void m9473NQ() {
        this.aMK.set(false);
    }

    /* renamed from: a */
    public void m9471a(InterfaceC1478b interfaceC1478b) {
        if (interfaceC1478b != null) {
            synchronized (this.aMJ) {
                if (!this.aMJ.get()) {
                    this.aMJ.set(true);
                    this.aMK.set(true);
                    ArrayList<String> m9474NP = m9474NP();
                    interfaceC1478b.mo9467go(m9474NP.size());
                    for (String str : m9474NP) {
                        if (!this.aMK.get()) {
                            break;
                        } else if (!m9470ip(str)) {
                            PackageStats m9464iq = asi.m9464iq(str);
                            C1477a c1477a = new C1477a();
                            if (m9464iq != null) {
                                c1477a.aML = m9464iq.cacheSize;
                            }
                            c1477a.adZ = str;
                            interfaceC1478b.mo9468a(c1477a);
                        }
                    }
                    interfaceC1478b.mo9469Nl();
                    synchronized (this.aMJ) {
                        this.aMJ.set(false);
                        this.aMK.set(false);
                    }
                }
            }
        }
    }

    /* renamed from: ip */
    private final boolean m9470ip(String str) {
        return !TextUtils.isEmpty(str) && KUApplication.m13453ge().getPackageName().contentEquals(str);
    }

    /* renamed from: a */
    public void m9472a(IPackageDataObserver iPackageDataObserver) {
        synchronized (this.aMI) {
            if (!this.aMI.get()) {
                this.aMI.set(true);
                m9473NQ();
                boolean m9465NS = asi.m9465NS();
                if (iPackageDataObserver != null) {
                    try {
                        iPackageDataObserver.onRemoveCompleted(null, m9465NS);
                    } catch (RemoteException e) {
                    }
                }
                synchronized (this.aMI) {
                    this.aMI.set(false);
                }
            }
        }
    }
}
