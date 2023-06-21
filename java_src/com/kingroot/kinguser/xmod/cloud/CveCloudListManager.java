package com.kingroot.kinguser.xmod.cloud;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.kinguser.C2565bq;
import com.kingroot.kinguser.C2585br;
import com.kingroot.kinguser.avj;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bix;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class CveCloudListManager extends avj {
    private static volatile CveCloudListManager bum;
    private AtomicBoolean amT;
    private bed aoL;
    private HashMap<String, List<CveInfo>> bun;
    private bed buo;
    private Comparator<CveInfo> bup;
    private final Object mLock;

    private CveCloudListManager() {
        super(40491);
        this.bun = new HashMap<>();
        this.mLock = new Object();
        this.amT = new AtomicBoolean(true);
        this.buo = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.xmod.cloud.CveCloudListManager.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                CveCloudListManager.this.refresh();
            }
        });
        this.bup = new Comparator<CveInfo>() { // from class: com.kingroot.kinguser.xmod.cloud.CveCloudListManager.2
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(CveInfo cveInfo, CveInfo cveInfo2) {
                return cveInfo.buv - cveInfo2.buv;
            }
        };
        this.aoL = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.xmod.cloud.CveCloudListManager.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                C2585br Rw = CveCloudListManager.this.m8833Rw();
                if (Rw != null && Rw.f2063kU != null) {
                    bix.C2365a adp = bix.ado().adp();
                    HashMap hashMap = new HashMap();
                    Iterator<C2565bq> it = Rw.f2063kU.iterator();
                    while (it.hasNext()) {
                        C2565bq next = it.next();
                        if (adp == null || adp.m6811lT(next.f2006kQ)) {
                            CveInfo cveInfo = new CveInfo();
                            cveInfo.m1470c(next);
                            List list = (List) hashMap.get(cveInfo.lang);
                            if (list == null) {
                                list = new ArrayList();
                                hashMap.put(cveInfo.lang, list);
                            }
                            list.add(cveInfo);
                            Collections.sort(list, CveCloudListManager.this.bup);
                        }
                    }
                    synchronized (CveCloudListManager.this.mLock) {
                        CveCloudListManager.this.bun.clear();
                        CveCloudListManager.this.bun.putAll(hashMap);
                    }
                    CveCloudListManager.this.amT.set(false);
                }
            }
        });
        beg.m7461Zj().m7450c(this.buo);
    }

    public static CveCloudListManager adg() {
        if (bum == null) {
            synchronized (CveCloudListManager.class) {
                if (bum == null) {
                    bum = new CveCloudListManager();
                }
            }
        }
        return bum;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.avj
    /* renamed from: uy */
    public void mo1472uy() {
        this.amT.set(true);
        refresh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refresh() {
        if (this.amT.get()) {
            beg.m7461Zj().m7450c(this.aoL);
        }
    }

    public List<CveInfo> adh() {
        refresh();
        ArrayList arrayList = new ArrayList();
        synchronized (this.mLock) {
            List<CveInfo> list = this.bun.get(adi());
            if (list != null) {
                arrayList.addAll(list);
            }
        }
        return arrayList;
    }

    private String adi() {
        Locale locale = Locale.getDefault();
        if (locale.equals(Locale.SIMPLIFIED_CHINESE)) {
            return "zh";
        }
        if (locale.equals(Locale.TRADITIONAL_CHINESE) || locale.equals(new Locale("zh", "HK"))) {
            return "zn";
        }
        return "en";
    }

    /* loaded from: classes.dex */
    public static class CveInfo implements Parcelable {
        public String bur;
        public String bus;
        public String but;
        public String buu;
        public int buv;
        public String desc;
        public String lang;
        public int level;
        public String name;
        public int state;
        private static final int[] buw = {0, R.string.security_protect_risk_terrible, R.string.security_protect_risk_high, R.string.security_protect_risk_middle, R.string.security_protect_risk_low};
        public static final Parcelable.Creator<CveInfo> CREATOR = new Parcelable.Creator<CveInfo>() { // from class: com.kingroot.kinguser.xmod.cloud.CveCloudListManager.CveInfo.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: aQ */
            public CveInfo createFromParcel(Parcel parcel) {
                return new CveInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: jg */
            public CveInfo[] newArray(int i) {
                return new CveInfo[i];
            }
        };

        public CveInfo() {
        }

        protected CveInfo(Parcel parcel) {
            this.bur = parcel.readString();
            this.name = parcel.readString();
            this.level = parcel.readInt();
            this.desc = parcel.readString();
            this.bus = parcel.readString();
            this.but = parcel.readString();
            this.buu = parcel.readString();
            this.lang = parcel.readString();
            this.buv = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.bur);
            parcel.writeString(this.name);
            parcel.writeInt(this.level);
            parcel.writeString(this.desc);
            parcel.writeString(this.bus);
            parcel.writeString(this.but);
            parcel.writeString(this.buu);
            parcel.writeString(this.lang);
            parcel.writeInt(this.buv);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* renamed from: c */
        public void m1470c(C2565bq c2565bq) {
            this.bur = c2565bq.f2002kM;
            this.name = c2565bq.f2003kN;
            m1469lR(c2565bq.f2004kO);
            this.desc = c2565bq.f2005kP;
            this.bus = c2565bq.f2006kQ;
            this.but = c2565bq.f2007kR;
            this.buu = c2565bq.f2008kS;
            this.lang = c2565bq.f2009kT;
        }

        /* renamed from: lR */
        private void m1469lR(String str) {
            this.buv = 0;
            this.level = buw[0];
            try {
                int parseInt = Integer.parseInt(str);
                if (parseInt < buw.length && parseInt > 0) {
                    this.buv = parseInt;
                    this.level = buw[parseInt];
                }
            } catch (Exception e) {
            }
        }
    }
}
