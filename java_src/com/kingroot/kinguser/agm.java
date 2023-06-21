package com.kingroot.kinguser;

import android.text.TextUtils;
import android.util.SparseArray;
/* loaded from: classes.dex */
public class agm {
    private static cce<agm> sInstance = new cce<agm>() { // from class: com.kingroot.kinguser.agm.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: vU */
        public agm create() {
            return new agm();
        }
    };
    private SparseArray<String> amU = new SparseArray<>();

    /* renamed from: vR */
    public static agm m11931vR() {
        return sInstance.get();
    }

    /* renamed from: fs */
    public synchronized void m11937fs(String str) {
        this.amU.put(1, str);
    }

    /* renamed from: ft */
    public synchronized void m11936ft(String str) {
        this.amU.put(2, str);
    }

    /* renamed from: fu */
    public synchronized void m11935fu(String str) {
        this.amU.put(3, str);
    }

    /* renamed from: aE */
    public synchronized void m11939aE(boolean z) {
        this.amU.put(4, z ? "1" : "0");
    }

    /* renamed from: dd */
    public synchronized void m11938dd(int i) {
        this.amU.put(5, String.valueOf(i));
    }

    /* renamed from: vS */
    public synchronized int m11930vS() {
        String str;
        str = this.amU.get(5);
        return Integer.parseInt((TextUtils.isEmpty(str) || !TextUtils.isDigitsOnly(str)) ? "0" : "0");
    }

    /* renamed from: fv */
    public synchronized void m11934fv(String str) {
        this.amU.put(7, str);
    }

    public synchronized void setChannel(String str) {
        this.amU.put(8, str);
    }

    /* renamed from: J */
    public synchronized void m11940J(String str) {
        this.amU.put(9, str);
    }

    /* renamed from: fw */
    public synchronized void m11933fw(String str) {
        this.amU.put(10, str);
    }

    /* renamed from: fx */
    public synchronized void m11932fx(String str) {
        this.amU.put(11, str);
    }

    /* renamed from: vT */
    public synchronized String m11929vT() {
        StringBuilder sb;
        sb = new StringBuilder();
        for (int i = 0; i < this.amU.size(); i++) {
            int keyAt = this.amU.keyAt(i);
            if (keyAt >= 0) {
                String str = this.amU.get(keyAt);
                if (!TextUtils.isEmpty(str)) {
                    sb.append(keyAt);
                    sb.append("=");
                    sb.append(str);
                    sb.append(";");
                }
            }
        }
        return sb.toString();
    }

    public String toString() {
        return m11929vT();
    }
}
