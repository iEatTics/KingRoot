package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.network.download.UpdateInfo;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class avv extends ael {
    private static final cce<avv> sInstance = new cce<avv>() { // from class: com.kingroot.kinguser.avv.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Sl */
        public avv create() {
            return new avv();
        }
    };

    private avv() {
        super(KUApplication.m13453ge());
    }

    /* renamed from: Sj */
    public static avv m8742Sj() {
        return sInstance.get();
    }

    @Override // com.kingroot.kinguser.ael
    /* renamed from: uv */
    public void mo8731uv() {
        if (adk.m12539b(aks.m11143BP().m11081Cz(), System.currentTimeMillis(), 86400000L)) {
            super.mo8731uv();
        }
    }

    /* renamed from: di */
    public void m8736di(boolean z) {
        if (z) {
            super.mo8731uv();
        } else {
            mo8731uv();
        }
    }

    @Override // com.kingroot.kinguser.ael
    /* renamed from: uw */
    protected List<UpdateInfo> mo8730uw() {
        return m8732t(m8741Sk());
    }

    @Override // com.kingroot.kinguser.ael
    /* renamed from: c */
    protected void mo8738c(C3754vf c3754vf) {
        if (m8735e(c3754vf) && m8733jB(c3754vf.mName)) {
            try {
                m12188cN(Integer.parseInt(c3754vf.mName.substring(0, c3754vf.mName.indexOf(".dat"))));
            } catch (Throwable th) {
            }
        }
    }

    @Override // com.kingroot.kinguser.ael
    /* renamed from: d */
    protected void mo8737d(C3754vf c3754vf) {
        if (c3754vf != null) {
        }
    }

    /* renamed from: t */
    private List<UpdateInfo> m8732t(ArrayList<C3048f> arrayList) {
        if (C3942yy.m1352c(arrayList)) {
            return Collections.emptyList();
        }
        final Object obj = new Object();
        final ArrayList arrayList2 = new ArrayList();
        cbo.akB().m5002a(arrayList, new cbn() { // from class: com.kingroot.kinguser.avv.2
            @Override // com.kingroot.kinguser.cbn
            /* renamed from: a */
            public void mo5003a(boolean z, C3075g c3075g) {
                if (z) {
                    try {
                        aks.m11143BP().m10904aR(System.currentTimeMillis());
                        arrayList2.addAll(avv.this.m8739a(c3075g));
                    } catch (Throwable th) {
                        synchronized (obj) {
                            obj.notifyAll();
                            throw th;
                        }
                    }
                }
                synchronized (obj) {
                    obj.notifyAll();
                }
            }
        });
        synchronized (obj) {
            try {
                obj.wait(30000L);
            } catch (InterruptedException e) {
            }
        }
        return arrayList2;
    }

    /* renamed from: Sk */
    private ArrayList<C3048f> m8741Sk() {
        ArrayList<C3048f> arrayList = new ArrayList<>();
        arrayList.add(m8734hk(40351));
        arrayList.add(m8734hk(40372));
        if (aks.m11143BP().m11109CX()) {
            arrayList.add(m8734hk(40251));
        }
        arrayList.add(m8734hk(40296));
        arrayList.add(m8734hk(40305));
        arrayList.add(m8734hk(40299));
        arrayList.add(m8734hk(40313));
        arrayList.add(m8734hk(40312));
        arrayList.add(m8734hk(40364));
        arrayList.add(m8734hk(40366));
        arrayList.add(m8734hk(40386));
        arrayList.add(m8734hk(40294));
        arrayList.add(m8734hk(40436));
        arrayList.add(m8734hk(40491));
        arrayList.add(m8734hk(40532));
        arrayList.add(m8734hk(40576));
        arrayList.add(m8734hk(40583));
        return arrayList;
    }

    /* renamed from: hk */
    private C3048f m8734hk(int i) {
        aen m12178y;
        C3048f c3048f = new C3048f();
        c3048f.fileId = i;
        c3048f.f2647dX = "".getBytes();
        c3048f.timestamp = 0;
        String str = String.valueOf(i) + ".dat";
        File file = new File(m12187uu() + File.separator + str);
        if (!file.exists()) {
            try {
                C3563rs.m2352e(str, file);
            } catch (Throwable th) {
            }
        }
        if (file.exists() && (m12178y = aen.m12178y(file)) != null) {
            c3048f.f2647dX = m12178y.afn;
            c3048f.timestamp = m12178y.afm;
            c3048f.version = m12178y.mVersion;
        }
        return c3048f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public List<UpdateInfo> m8739a(C3075g c3075g) {
        ArrayList arrayList = new ArrayList();
        if (c3075g != null && c3075g.f2696ef != null) {
            Iterator<C3144h> it = c3075g.f2696ef.iterator();
            while (it.hasNext()) {
                C3144h next = it.next();
                if (next != null) {
                    UpdateInfo updateInfo = new UpdateInfo();
                    updateInfo.fileName = String.valueOf(next.m3640Y()) + ".dat.new";
                    updateInfo.localName = updateInfo.fileName;
                    updateInfo.timestamp = next.timestamp;
                    updateInfo.url = next.url;
                    if (next.f2739dX == null) {
                        next.f2739dX = new byte[0];
                    }
                    updateInfo.checksum = new String(next.f2739dX);
                    updateInfo.size = next.fileSize;
                    arrayList.add(updateInfo);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: e */
    private boolean m8735e(C3754vf c3754vf) {
        if (c3754vf == null || TextUtils.isEmpty(c3754vf.mName)) {
            return false;
        }
        String str = c3754vf.f3765KW;
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        File file = new File(m12187uu() + File.separator + c3754vf.mName);
        aen m12178y = aen.m12178y(file);
        if (m12178y == null) {
            if (file.exists()) {
                file.delete();
            }
            return false;
        }
        String m12179uB = m12178y.m12179uB();
        long length = file.length();
        long j = c3754vf.mSize;
        if (!TextUtils.isEmpty(str) && str.equalsIgnoreCase(m12179uB) && length == j) {
            return true;
        }
        file.delete();
        return false;
    }

    /* renamed from: jB */
    private boolean m8733jB(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        File file = new File(m12187uu() + File.separator + str);
        try {
            File file2 = new File(m12187uu() + File.separator + str.substring(0, str.indexOf(".dat")) + ".dat");
            if (file2.exists()) {
                file2.delete();
            }
            file.renameTo(file2);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }
}
