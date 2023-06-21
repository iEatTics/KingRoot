package com.kingroot.kinguser;

import android.support.annotation.WorkerThread;
import com.kingroot.kinguser.advance.model.DefaultSettingInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class agl extends avj {
    private static final cce<agl> sInstance = new cce<agl>() { // from class: com.kingroot.kinguser.agl.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: vQ */
        public agl create() {
            return new agl();
        }
    };
    private final List<DefaultSettingInfo> amS;
    private final AtomicBoolean amT;

    private agl() {
        super(40532);
        this.amS = new ArrayList();
        this.amT = new AtomicBoolean(true);
        refresh();
    }

    /* renamed from: vO */
    public static agl m11943vO() {
        return sInstance.get();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        synchronized (this.amT) {
            this.amT.set(true);
        }
        refresh();
    }

    private void refresh() {
        synchronized (this.amT) {
            if (this.amT.get()) {
                C2585br Rw = m8833Rw();
                if (Rw != null && Rw.f2063kU != null) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<C2565bq> it = Rw.f2063kU.iterator();
                    while (it.hasNext()) {
                        C2565bq next = it.next();
                        try {
                            DefaultSettingInfo defaultSettingInfo = new DefaultSettingInfo();
                            defaultSettingInfo.type = Integer.parseInt(next.f2002kM);
                            defaultSettingInfo.pkgName = next.f2003kN;
                            defaultSettingInfo.appName = next.f2004kO;
                            defaultSettingInfo.apw = !"2".equals(next.f2005kP);
                            defaultSettingInfo.apx = "1".equals(next.f2006kQ);
                            arrayList.add(defaultSettingInfo);
                        } catch (Exception e) {
                        }
                    }
                    synchronized (this.amS) {
                        this.amS.clear();
                        this.amS.addAll(arrayList);
                    }
                    this.amT.set(false);
                }
            }
        }
    }

    @WorkerThread
    /* renamed from: vP */
    public List<DefaultSettingInfo> m11942vP() {
        refresh();
        ArrayList arrayList = new ArrayList();
        synchronized (this.amS) {
            arrayList.addAll(this.amS);
        }
        return arrayList;
    }
}
