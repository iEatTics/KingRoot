package com.kingroot.kinguser;

import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.alz;
import com.kingroot.kinguser.bea;
import com.kingroot.kinguser.thread.StaticEntity;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bei implements bea {
    private static final String TAG = aiq.asi + "_KJobManagerStatic";
    private static final alz<HashSet<String>> blc = new alz<HashSet<String>>() { // from class: com.kingroot.kinguser.bei.1
        @Override // com.kingroot.kinguser.alz
        /* renamed from: Ha */
        public File mo7424Ha() {
            return new File(KApplication.m13453ge().getFilesDir(), "job_manager_static_file_name.dat");
        }

        @Override // com.kingroot.kinguser.alz
        /* renamed from: HA */
        public HashSet<String> mo7423Hc() {
            return new HashSet<>();
        }
    };
    private static final cce<bei> sInstance = new cce<bei>() { // from class: com.kingroot.kinguser.bei.3
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Zt */
        public bei create() {
            return new bei();
        }
    };
    private final alz<HashMap<String, StaticEntity>> bld;
    private File mFile;
    private String mProcessName;

    @InterfaceC3726ut
    /* renamed from: Zq */
    public static bei m7437Zq() {
        return sInstance.get();
    }

    private bei() {
        this.mProcessName = KApplication.m13455aY();
        this.mFile = new File(KApplication.m13453ge().getFilesDir(), "job_manager_static_" + this.mProcessName + ".dat");
        this.bld = new alz<HashMap<String, StaticEntity>>() { // from class: com.kingroot.kinguser.bei.2
            @Override // com.kingroot.kinguser.alz
            /* renamed from: Ha */
            public File mo7424Ha() {
                return bei.this.mFile;
            }

            @Override // com.kingroot.kinguser.alz
            /* renamed from: Zs */
            public HashMap<String, StaticEntity> mo7423Hc() {
                HashMap<String, StaticEntity> hashMap = new HashMap<>();
                for (bea.EnumC2115a enumC2115a : bea.EnumC2115a.values()) {
                    hashMap.put(String.valueOf(enumC2115a.ordinal()), new StaticEntity(bei.this.mProcessName));
                }
                return hashMap;
            }
        };
        blc.m10472a(new alz.InterfaceC1215a() { // from class: com.kingroot.kinguser.bei.4
            @Override // com.kingroot.kinguser.alz.InterfaceC1215a
            /* renamed from: HU */
            public void mo7425HU() {
                HashSet hashSet = (HashSet) bei.blc.m10475HR();
                String absolutePath = bei.this.mFile.getAbsolutePath();
                if (!hashSet.contains(absolutePath)) {
                    hashSet.add(absolutePath);
                    bei.blc.m10473HT();
                }
            }
        });
        this.bld.m10476HQ();
        this.bld.m10467fn(6);
    }

    @Override // com.kingroot.kinguser.bea
    /* renamed from: a */
    public void mo7434a(bea.EnumC2115a enumC2115a, int i) {
        if (enumC2115a != null) {
            synchronized (this.bld) {
                StaticEntity m7429d = m7429d(enumC2115a);
                if (i > m7429d.mMaxQueueSize) {
                    m7429d.mMaxQueueSize = i;
                }
                long j = m7429d.mTotalDataCountForAverageQueueSize + 1;
                m7429d.mTotalDataCountForAverageQueueSize = j;
                m7429d.mAverageQueueSize = ((((float) m7429d.mTotalDataCountForAverageQueueSize) * m7429d.mAverageQueueSize) + i) / ((float) j);
                this.bld.m10473HT();
            }
        }
    }

    /* renamed from: d */
    private StaticEntity m7429d(bea.EnumC2115a enumC2115a) {
        StaticEntity staticEntity;
        synchronized (this.bld) {
            staticEntity = this.bld.m10475HR().get(String.valueOf(enumC2115a.ordinal()));
            if (staticEntity == null) {
                StaticEntity staticEntity2 = new StaticEntity(this.mProcessName);
                this.bld.m10475HR().put(String.valueOf(enumC2115a.ordinal()), staticEntity2);
                this.bld.m10473HT();
                staticEntity = staticEntity2;
            }
        }
        return staticEntity;
    }

    @Override // com.kingroot.kinguser.bea
    /* renamed from: a */
    public void mo7433a(bea.EnumC2115a enumC2115a, long j) {
        if (enumC2115a != null) {
            synchronized (this.bld) {
                StaticEntity m7429d = m7429d(enumC2115a);
                if (j > m7429d.mMaxJobWaitingTime) {
                    m7429d.mMaxJobWaitingTime = j;
                }
                double d = (m7429d.mTotalDataCountForAverageJobWaitingTime * m7429d.mAverageJobWaitingTime) + j;
                long j2 = m7429d.mTotalDataCountForAverageJobWaitingTime + 1;
                m7429d.mTotalDataCountForAverageJobWaitingTime = j2;
                m7429d.mAverageJobWaitingTime = d / j2;
                this.bld.m10473HT();
            }
        }
    }

    @Override // com.kingroot.kinguser.bea
    /* renamed from: a */
    public void mo7435a(bea.EnumC2115a enumC2115a) {
        if (enumC2115a != null) {
            synchronized (this.bld) {
                m7429d(enumC2115a).mJobFinishCount++;
                this.bld.m10473HT();
            }
        }
    }

    @Override // com.kingroot.kinguser.bea
    /* renamed from: b */
    public void mo7431b(bea.EnumC2115a enumC2115a) {
        if (enumC2115a != null) {
            synchronized (this.bld) {
                m7429d(enumC2115a).mCreateThreadCount++;
                this.bld.m10473HT();
            }
        }
    }

    @Override // com.kingroot.kinguser.bea
    /* renamed from: YZ */
    public List<C2037b> mo7439YZ() {
        ArrayList arrayList;
        bea.EnumC2115a[] values;
        synchronized (this.bld) {
            arrayList = new ArrayList();
            Iterator<String> it = blc.m10475HR().iterator();
            while (it.hasNext()) {
                final String next = it.next();
                alz<HashMap<String, StaticEntity>> alzVar = new alz<HashMap<String, StaticEntity>>() { // from class: com.kingroot.kinguser.bei.5
                    @Override // com.kingroot.kinguser.alz
                    /* renamed from: Ha */
                    public File mo7424Ha() {
                        return new File(next);
                    }

                    @Override // com.kingroot.kinguser.alz
                    /* renamed from: Zs */
                    public HashMap<String, StaticEntity> mo7423Hc() {
                        return new HashMap<>();
                    }
                };
                alzVar.m10476HQ();
                for (bea.EnumC2115a enumC2115a : bea.EnumC2115a.values()) {
                    StaticEntity staticEntity = alzVar.m10475HR().get(String.valueOf(enumC2115a.ordinal()));
                    if (staticEntity != null) {
                        C2037b c2037b = new C2037b();
                        c2037b.featureId = 100645;
                        c2037b.strValues = new ArrayList<>();
                        Collections.addAll(c2037b.strValues, C3612sw.m2225a(new String[]{String.valueOf(staticEntity.mProcessName), String.valueOf(bdz.f1661MW), String.valueOf(enumC2115a.ordinal()), String.valueOf(beg.m7461Zj().m7457a(beh.m7442c(enumC2115a))), String.valueOf(beg.m7461Zj().m7452b(beh.m7442c(enumC2115a))), String.valueOf(staticEntity.mMaxQueueSize), String.valueOf(staticEntity.mAverageQueueSize), String.valueOf(staticEntity.mMaxJobWaitingTime), String.valueOf(staticEntity.mAverageJobWaitingTime), String.valueOf(staticEntity.mJobFinishCount), String.valueOf(staticEntity.mCreateThreadCount)}).split("\\|"));
                        c2037b.count = 1;
                        c2037b.timestamp = (int) (System.currentTimeMillis() / 1000);
                        arrayList.add(c2037b);
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.bea
    /* renamed from: Za */
    public void mo7438Za() {
        synchronized (this.bld) {
            this.bld.m10475HR().clear();
            this.bld.m10473HT();
        }
    }
}
