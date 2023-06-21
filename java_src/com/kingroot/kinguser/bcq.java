package com.kingroot.kinguser;

import android.content.SharedPreferences;
import android.support.annotation.WorkerThread;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.security.entity.ActionRecord;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class bcq {
    private Map<String, ActionRecord> bix = m7616XQ();

    /* renamed from: XO */
    protected abstract String mo7595XO();

    /* renamed from: dE */
    protected abstract Map<String, bdh> mo7592dE(boolean z);

    /* renamed from: i */
    protected abstract boolean mo7591i(List<String> list, int i);

    /* renamed from: dF */
    public Map<String, bdh> m7610dF(boolean z) {
        ActionRecord actionRecord;
        if (z) {
            this.bix = m7616XQ();
        }
        Map<String, bdh> mo7592dE = mo7592dE(z);
        long currentTimeMillis = System.currentTimeMillis();
        HashMap hashMap = new HashMap();
        boolean z2 = false;
        for (String str : mo7592dE.keySet()) {
            ActionRecord actionRecord2 = this.bix.get(str);
            if (actionRecord2 == null) {
                ActionRecord actionRecord3 = new ActionRecord(0, currentTimeMillis);
                this.bix.put(str, actionRecord3);
                actionRecord = actionRecord3;
            } else {
                actionRecord = actionRecord2;
            }
            switch (actionRecord.flag) {
                case 0:
                    hashMap.put(str, mo7592dE.get(str));
                    break;
                case 3:
                    if (acu.m12573b(actionRecord.when, currentTimeMillis, m7619XM())) {
                        hashMap.put(str, mo7592dE.get(str));
                        actionRecord.m2287h(0, currentTimeMillis);
                        z2 = true;
                        break;
                    } else {
                        break;
                    }
            }
            z2 = z2;
        }
        if (z2) {
            m7617XP();
        }
        return hashMap;
    }

    /* renamed from: XK */
    public List<String> m7621XK() {
        Set<String> keySet = mo7592dE(false).keySet();
        if (C3942yy.m1352c(keySet)) {
            return null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (String str : keySet) {
            ActionRecord actionRecord = this.bix.get(str);
            if (actionRecord == null) {
                this.bix.put(str, new ActionRecord(0, currentTimeMillis));
                z = true;
            }
            if (actionRecord.flag == 2) {
                arrayList.add(str);
            }
        }
        if (z) {
            m7617XP();
        }
        return arrayList;
    }

    @WorkerThread
    /* renamed from: h */
    public boolean m7609h(List<String> list, int i) {
        if (C3942yy.m1352c(list)) {
            return true;
        }
        m7611cr(System.currentTimeMillis());
        m7612bL(list);
        return mo7591i(list, i);
    }

    /* renamed from: ig */
    public void m7608ig(final int i) {
        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.bcq.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                if (adk.m12539b(bcq.this.m7614XS(), System.currentTimeMillis(), bcq.this.m7618XN())) {
                    bcq.this.m7609h(bcq.this.m7621XK(), i);
                }
            }
        }));
    }

    /* renamed from: kD */
    public void m7606kD(String str) {
        m7622N(str, 3);
        m7617XP();
    }

    /* renamed from: kE */
    public void mo7589kE(String str) {
        m7622N(str, 1);
        m7617XP();
    }

    /* renamed from: bL */
    private void m7612bL(List<String> list) {
        for (String str : list) {
            m7622N(str, 2);
        }
        m7617XP();
    }

    /* renamed from: XL */
    public List<ActionRecord> m7620XL() {
        return m7607ih(2);
    }

    /* renamed from: ih */
    private List<ActionRecord> m7607ih(int i) {
        ArrayList arrayList = new ArrayList();
        for (ActionRecord actionRecord : this.bix.values()) {
            if (actionRecord.flag == i) {
                arrayList.add(actionRecord);
            }
        }
        return arrayList;
    }

    /* renamed from: XM */
    protected long m7619XM() {
        return 259200000L;
    }

    /* renamed from: XN */
    protected long m7618XN() {
        return 14400000L;
    }

    /* renamed from: N */
    private void m7622N(String str, int i) {
        ActionRecord actionRecord = this.bix.get(str);
        if (actionRecord == null) {
            this.bix.put(str, new ActionRecord(i, System.currentTimeMillis()));
            return;
        }
        actionRecord.flag = i;
        actionRecord.when = System.currentTimeMillis();
    }

    /* renamed from: XP */
    private void m7617XP() {
        ActionRecord.m2288b(this.bix, m7615XR());
    }

    /* renamed from: XQ */
    private Map<String, ActionRecord> m7616XQ() {
        return ActionRecord.m2286kI(m7615XR());
    }

    /* renamed from: XR */
    private String m7615XR() {
        return mo7595XO() + "6000";
    }

    private SharedPreferences getSharedPreferences() {
        return KApplication.m13453ge().getSharedPreferences(mo7595XO() + "6001", 0);
    }

    /* renamed from: kF */
    private String m7605kF(String str) {
        return mo7595XO() + str;
    }

    /* renamed from: cr */
    private void m7611cr(long j) {
        getSharedPreferences().edit().putLong(m7605kF("7001"), j).commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: XS */
    public long m7614XS() {
        return getSharedPreferences().getLong(m7605kF("7001"), 0L);
    }
}
