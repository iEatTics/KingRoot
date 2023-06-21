package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.kingroot.kinguser.aqr;
import com.kingroot.kinguser.aqs;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.distribution.examination.entity.ExamRecommendAppInfo;
import com.kingroot.kinguser.net.clcmd.CloudGuideEntity;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class apx {
    private WeakReference<InterfaceC1449a> aJY;
    private final List<aqs> aJV = Collections.synchronizedList(new ArrayList());
    private final List<aqh> aJW = Collections.synchronizedList(new ArrayList());
    private final List<aqj> aJX = Collections.synchronizedList(new ArrayList());
    private AtomicBoolean aJZ = new AtomicBoolean(false);
    private AtomicBoolean aKa = new AtomicBoolean(false);
    private int aKb = 0;
    private int aKc = 0;
    private final List<aqh> aKd = Collections.synchronizedList(new ArrayList());
    private final aqs.InterfaceC1466a aKe = new aqs.InterfaceC1466a() { // from class: com.kingroot.kinguser.apx.1
        private long aKh = 0;

        @Override // com.kingroot.kinguser.aqs.InterfaceC1466a
        /* renamed from: c */
        public void mo9559c(aqs aqsVar) {
            this.aKh = System.currentTimeMillis();
            InterfaceC1449a m9694LX = apx.this.m9694LX();
            if (m9694LX != null) {
                m9694LX.mo8271ih(aqsVar.mo9555MS());
                m9694LX.mo8283g(aqsVar);
            }
        }

        @Override // com.kingroot.kinguser.aqs.InterfaceC1466a
        /* renamed from: a */
        public void mo9561a(aqy<? extends arl> aqyVar, int i) {
            InterfaceC1449a m9694LX = apx.this.m9694LX();
            if (m9694LX != null) {
                m9694LX.mo8278gk(i);
            }
        }

        @Override // com.kingroot.kinguser.aqs.InterfaceC1466a
        /* renamed from: d */
        public void mo9558d(aqs aqsVar) {
            long currentTimeMillis = System.currentTimeMillis() - this.aKh;
            if (currentTimeMillis >= 0 && currentTimeMillis < 500) {
                try {
                    Thread.sleep(500 - currentTimeMillis);
                } catch (InterruptedException e) {
                }
            }
            InterfaceC1449a m9694LX = apx.this.m9694LX();
            if (m9694LX != null) {
                m9694LX.mo8276h(aqsVar);
            }
        }

        @Override // com.kingroot.kinguser.aqs.InterfaceC1466a
        /* renamed from: a */
        public void mo9562a(aqs aqsVar, aqy<? extends arl> aqyVar) {
            if (aqyVar.isVisible()) {
                apx.this.m9686a(3, aqyVar, aqsVar);
            }
        }

        @Override // com.kingroot.kinguser.aqs.InterfaceC1466a
        /* renamed from: b */
        public void mo9560b(aqs aqsVar, aqy<? extends arl> aqyVar) {
            if (aqyVar.isVisible()) {
                apx.this.m9686a(4, aqyVar, aqsVar);
            }
        }
    };
    private bed aKf = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.apx.2
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            arq.m9523gK();
            apx.this.aJW.clear();
            apx.this.aJV.clear();
            apx.this.aKb = 0;
            aqj m9692LZ = apx.this.m9692LZ();
            if (m9692LZ != null) {
                apx.this.aJX.add(m9692LZ);
            }
            if (abc.m12845qK().isRootPermition()) {
                apx.this.aJW.add(new aqq());
            }
            if (ais.m11574yp()) {
                apx.this.aJW.add(new aqp());
            }
            if (anf.m10297IU()) {
                Integer mo10407HD = alx.m10508HB().mo10407HD();
                if (mo10407HD.intValue() != 0) {
                    apx.this.aJW.add(new aqg(alx.m10508HB().mo10402fk(mo10407HD.intValue())));
                }
                apx.this.aJW.add(new aqm());
            }
            apx.this.aJW.add(new aqn());
            apx.this.aJW.add(new aqi());
            try {
                List<ExamRecommendAppInfo> mo9843JY = aop.m9905Kq().mo9843JY();
                ArrayList arrayList = new ArrayList();
                for (ExamRecommendAppInfo examRecommendAppInfo : C3942yy.m1350e(mo9843JY)) {
                    if (examRecommendAppInfo != null && examRecommendAppInfo.m4105Km()) {
                        arrayList.add(examRecommendAppInfo);
                    }
                }
                for (Integer num : apx.this.m9670gj(arrayList.size())) {
                    ExamRecommendAppInfo examRecommendAppInfo2 = (ExamRecommendAppInfo) arrayList.get(num.intValue());
                    ArrayList arrayList2 = new ArrayList(examRecommendAppInfo2.picUrls);
                    arrayList2.add(examRecommendAppInfo2.iconUrl);
                    apx.this.aJW.add(new aqk(examRecommendAppInfo2, apv.m9735LO().m9726aY(arrayList2)));
                }
            } catch (Throwable th) {
            }
            try {
                Collections.sort(apx.this.aJW, new aqo());
                are areVar = new are();
                areVar.m9537l(apx.this.aJW);
                aqv aqvVar = new aqv(areVar);
                aqu aquVar = new aqu();
                aqt aqtVar = new aqt();
                new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(aqvVar);
                arrayList3.add(aquVar);
                arrayList3.add(aqtVar);
                apx.this.aJV.add(new aqr(arrayList3, new aqr.InterfaceC1465a() { // from class: com.kingroot.kinguser.apx.2.1
                    @Override // com.kingroot.kinguser.aqr.InterfaceC1465a
                    /* renamed from: e */
                    public void mo9573e(aqs aqsVar) {
                        apx.this.m9686a(6, aqsVar, null);
                    }

                    @Override // com.kingroot.kinguser.aqr.InterfaceC1465a
                    /* renamed from: f */
                    public void mo9572f(aqs aqsVar) {
                        apx.this.m9686a(7, aqsVar, null);
                    }
                }));
                for (aqs aqsVar : apx.this.aJV) {
                    aqsVar.mo9564a(apx.this.aKe);
                }
            } catch (Throwable th2) {
            }
            if (interfaceC2117a.mo7445nF().size() > 0) {
                Object obj = interfaceC2117a.mo7445nF().get(0);
                if (obj instanceof Long) {
                    try {
                        Thread.sleep(((Long) obj).longValue());
                    } catch (InterruptedException e) {
                    }
                }
            }
            InterfaceC1449a m9694LX = apx.this.m9694LX();
            if (m9694LX != null) {
                try {
                    m9694LX.mo8322Mf();
                } catch (Throwable th3) {
                }
            }
            long currentTimeMillis = System.currentTimeMillis();
            try {
                for (aqs aqsVar2 : apx.this.aJV) {
                    aqsVar2.mo9529My();
                }
            } catch (Throwable th4) {
            }
            apx.this.m9680b(m9694LX);
            String str = "";
            try {
                str = apx.this.m9688Md();
            } catch (Throwable th5) {
            }
            long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
            if (currentTimeMillis2 >= 0 && currentTimeMillis2 < 500) {
                try {
                    Thread.sleep(500 - currentTimeMillis2);
                } catch (InterruptedException e2) {
                }
            }
            if (m9694LX != null) {
                m9694LX.mo8270ii(str);
            }
            if (m9694LX != null) {
                try {
                    m9694LX.mo8321Mg();
                } catch (Throwable th6) {
                }
            }
        }
    });
    private final bed aKg = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.apx.4
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            if (!apx.this.aKa.getAndSet(true)) {
                if (interfaceC2117a.mo7445nF().size() > 0) {
                    Object obj = interfaceC2117a.mo7445nF().get(0);
                    if (obj instanceof Long) {
                        try {
                            Thread.sleep(((Long) obj).longValue());
                        } catch (InterruptedException e) {
                        }
                    }
                }
                aqd.reset();
                InterfaceC1449a m9694LX = apx.this.m9694LX();
                if (m9694LX != null) {
                    m9694LX.mo8320Mh();
                }
                if (KUApplication.aeW() && aks.m11143BP().m10983Et() == 2) {
                    KUApplication.aeV();
                }
                for (aqj aqjVar : apx.this.aJX) {
                    apx.this.m9686a(8, aqjVar, null);
                }
                for (aqs aqsVar : apx.this.aJV) {
                    apx.this.m9686a(1, aqsVar, null);
                    aqsVar.mo9570MJ();
                    apx.this.m9686a(2, aqsVar, null);
                }
                for (aqh aqhVar : apx.this.aJW) {
                    if (!aqhVar.m9595MI()) {
                        apx.this.m9686a(5, aqhVar, null);
                    }
                }
                apx.this.m9686a(0, null, null);
                if (m9694LX != null) {
                    m9694LX.mo8319Mi();
                }
            }
        }
    });

    /* renamed from: com.kingroot.kinguser.apx$a */
    /* loaded from: classes.dex */
    public interface InterfaceC1449a {
        /* renamed from: Mf */
        void mo8322Mf();

        /* renamed from: Mg */
        void mo8321Mg();

        /* renamed from: Mh */
        void mo8320Mh();

        /* renamed from: Mi */
        void mo8319Mi();

        /* renamed from: a */
        void mo8304a(aqh aqhVar, boolean z);

        /* renamed from: b */
        void mo8298b(int i, aqb aqbVar, aqb aqbVar2);

        /* renamed from: g */
        void mo8283g(aqs aqsVar);

        /* renamed from: gk */
        void mo8278gk(int i);

        /* renamed from: h */
        void mo8276h(aqs aqsVar);

        /* renamed from: ih */
        void mo8271ih(String str);

        /* renamed from: ii */
        void mo8270ii(String str);
    }

    /* renamed from: LV */
    public int m9696LV() {
        return this.aKb;
    }

    /* renamed from: LW */
    public int m9695LW() {
        if (this.aKa.get()) {
            return 0;
        }
        int i = 0;
        for (aqs aqsVar : this.aJV) {
            if (aqsVar instanceof aqr) {
                for (aqs aqsVar2 : ((aqr) aqsVar).m9574MR()) {
                    for (aqy<? extends arl> aqyVar : aqsVar2.mo9569MV()) {
                        if (!(aqyVar instanceof are) && aqyVar.isVisible() && !aqyVar.m9545Ng()) {
                            i++;
                        }
                    }
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: LX */
    public InterfaceC1449a m9694LX() {
        if (this.aJY != null) {
            return this.aJY.get();
        }
        return null;
    }

    /* renamed from: a */
    public void m9685a(InterfaceC1449a interfaceC1449a) {
        this.aJY = new WeakReference<>(interfaceC1449a);
    }

    /* renamed from: LY */
    public void m9693LY() {
        if (this.aKf.isRunning()) {
            for (aqs aqsVar : this.aJV) {
                aqsVar.mo9571LY();
            }
        }
    }

    /* renamed from: bT */
    public void m9677bT(long j) {
        if (!this.aJZ.getAndSet(true)) {
            beg.m7461Zj().m7454a(this.aKf, Long.valueOf(j));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    /* renamed from: LZ */
    public aqj m9692LZ() {
        Comparator<CloudGuideEntity> comparator = new Comparator<CloudGuideEntity>() { // from class: com.kingroot.kinguser.apx.3
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(CloudGuideEntity cloudGuideEntity, CloudGuideEntity cloudGuideEntity2) {
                long j = cloudGuideEntity.showPriority;
                long j2 = cloudGuideEntity2.showPriority;
                if (j < j2) {
                    return -1;
                }
                if (j > j2) {
                    return 1;
                }
                return 0;
            }
        };
        List<CloudGuideEntity> mo8851Rk = avd.m8853Rq().mo8851Rk();
        if (mo8851Rk.isEmpty()) {
            return null;
        }
        Collections.sort(mo8851Rk, comparator);
        int i = Integer.MIN_VALUE;
        int i2 = -1;
        for (int i3 = 0; i3 < mo8851Rk.size(); i3++) {
            if (mo8851Rk.get(i3).showPriority < i || i == Integer.MIN_VALUE) {
                i = mo8851Rk.get(i3).showPriority;
            } else if (mo8851Rk.get(i3).showPriority != i) {
                break;
            }
            i2 = i3;
        }
        if (i2 == -1 || i == Integer.MIN_VALUE) {
            return null;
        }
        return aqj.m9585a(mo8851Rk.subList(0, i2 + 1).get(new Random().nextInt(i2 + 1)));
    }

    /* renamed from: Ma */
    public void m9691Ma() {
        for (aqh aqhVar : this.aJW) {
            aqhVar.mo9529My();
        }
        m9680b((InterfaceC1449a) null);
    }

    /* renamed from: Mb */
    public List<aqh> m9690Mb() {
        return new ArrayList(this.aKd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m9680b(InterfaceC1449a interfaceC1449a) {
        int i = 0;
        try {
            this.aKb = 0;
            if (interfaceC1449a != null) {
                interfaceC1449a.mo8271ih(C3953zi.m1311pr().getString(R.string.examination_manual_entry_examining));
            }
            synchronized (this.aKd) {
                this.aKd.clear();
                for (aqh aqhVar : this.aJW) {
                    if (!aqhVar.m9595MI()) {
                        this.aKb++;
                        i += aqhVar.mo9576MK();
                        this.aKd.add(aqhVar);
                    }
                    if (interfaceC1449a != null) {
                        interfaceC1449a.mo8304a(aqhVar, aqhVar.m9595MI());
                    }
                }
            }
            if (interfaceC1449a != null) {
                interfaceC1449a.mo8278gk(i);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: bU */
    public void m9676bU(long j) {
        beg.m7461Zj().m7454a(this.aKg, Long.valueOf(j));
    }

    /* renamed from: Mc */
    public boolean m9689Mc() {
        return this.aKa.get();
    }

    /* renamed from: Md */
    public String m9688Md() {
        int i;
        aqt aqtVar = null;
        C3953zi m1311pr = C3953zi.m1311pr();
        aqu aquVar = null;
        aqv aqvVar = null;
        for (aqs aqsVar : this.aJV) {
            if (aqsVar instanceof aqr) {
                for (aqs aqsVar2 : ((aqr) aqsVar).m9574MR()) {
                    if (aqsVar2 instanceof aqv) {
                        aqvVar = (aqv) aqsVar2;
                    } else if (aqsVar2 instanceof aqu) {
                        aquVar = (aqu) aqsVar2;
                    } else {
                        aqtVar = aqsVar2 instanceof aqt ? (aqt) aqsVar2 : aqtVar;
                    }
                }
            }
        }
        ArrayList<aqy> arrayList = new ArrayList();
        if (aqvVar != null) {
            arrayList.addAll(aqvVar.mo9569MV());
        }
        if (aquVar != null) {
            arrayList.addAll(aquVar.mo9569MV());
        }
        this.aKc = 0;
        for (aqy aqyVar : arrayList) {
            if (aqyVar.isVisible() && !aqyVar.m9545Ng() && aqyVar.mo9546Ne() && !aqyVar.m9544Nh()) {
                this.aKc++;
            }
        }
        Iterator<aqh> it = this.aJW.iterator();
        int i2 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            aqh next = it.next();
            if (next.m9595MI()) {
                i = i2;
            } else if (next instanceof aqi) {
                this.aKc++;
                break;
            } else {
                i = i2 + 1;
            }
            i2 = i;
        }
        if (this.aKc != 0) {
            return m1311pr.getString(R.string.examination_status_find_risks);
        }
        aqb m9524a = arq.m9524a(aro.class, false);
        if (m9524a != null && (m9524a instanceof aro) && !m9524a.mo9529My()) {
            return m1311pr.getString(R.string.examination_status_system_running_slow);
        }
        if (i2 != 0) {
            return m1311pr.getQuantityString(R.plurals.examination_status_manually_manage, i2, Integer.valueOf(i2));
        }
        aqb m9524a2 = arq.m9524a(arn.class, false);
        if (m9524a2 != null && (m9524a2 instanceof arn)) {
            arn arnVar = (arn) m9524a2;
            if (arnVar.m9527Nn() >= 3) {
                return String.format(m1311pr.getString(R.string.examination_status_unchecked_days), Integer.valueOf(arnVar.m9527Nn()));
            }
        }
        if (aqtVar != null) {
            int i3 = 0;
            for (aqy<? extends arl> aqyVar2 : aqtVar.mo9569MV()) {
                if (aqyVar2.isVisible() && !aqyVar2.m9545Ng()) {
                    i3++;
                }
                i3 = i3;
            }
            if (i3 > 0) {
                return String.format(m1311pr.getString(R.string.examination_status_auto_optimize_project), Integer.valueOf(i3));
            }
        }
        return m1311pr.getString(R.string.examination_status_normal);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9686a(int i, aqb aqbVar, aqb aqbVar2) {
        InterfaceC1449a m9694LX = m9694LX();
        if (m9694LX != null) {
            m9694LX.mo8298b(i, aqbVar, aqbVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: gj */
    public Set<Integer> m9670gj(int i) {
        HashSet hashSet = new HashSet();
        int min = Math.min(i, 2);
        Random random = new Random();
        while (hashSet.size() < min) {
            hashSet.add(Integer.valueOf(random.nextInt(i)));
        }
        return hashSet;
    }

    /* renamed from: Me */
    public int m9687Me() {
        return this.aKc;
    }
}
