package com.kingroot.kinguser;

import android.support.annotation.NonNull;
/* loaded from: classes.dex */
public class akw extends akm {
    private static cce<akw> sInstance = new cce<akw>() { // from class: com.kingroot.kinguser.akw.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: GE */
        public akw create() {
            return new akw();
        }
    };

    /* renamed from: Gx */
    public static akw m10690Gx() {
        return sInstance.get();
    }

    private akw() {
        super("QQPimSettingDao");
    }

    /* JADX WARN: Finally extract failed */
    @NonNull
    /* renamed from: Gy */
    public int[] m10689Gy() {
        String[] split = this.avA.getString("VER:5.0.4_20170221_11:16:02.042", "").split(",");
        int[] iArr = new int[split.length];
        int length = split.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            try {
                iArr[i2] = Integer.parseInt(split[i]);
            } finally {
                try {
                    i++;
                    i2++;
                } catch (Throwable th) {
                }
            }
            i++;
            i2++;
        }
        return iArr;
    }

    /* renamed from: h */
    public void m10685h(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        if (iArr != null) {
            for (int i : iArr) {
                sb.append(i).append(",");
            }
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
        }
        this.avB.putString("VER:5.0.4_20170221_11:16:02.042", sb.toString()).apply();
    }

    /* JADX WARN: Finally extract failed */
    @NonNull
    /* renamed from: Gz */
    public int[] m10688Gz() {
        String[] split = this.avA.getString("VER:5.0.4_20170221_11:19:05.195", "").split(",");
        int[] iArr = new int[split.length];
        int length = split.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            try {
                iArr[i2] = Integer.parseInt(split[i]);
            } finally {
                try {
                    i++;
                    i2++;
                } catch (Throwable th) {
                }
            }
            i++;
            i2++;
        }
        return iArr;
    }

    /* renamed from: i */
    public void m10684i(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        if (iArr != null) {
            for (int i : iArr) {
                sb.append(i).append(",");
            }
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
        }
        if (sb.length() > 0) {
            sb.deleteCharAt(sb.length() - 1);
        }
        this.avB.putString("VER:5.0.4_20170221_11:19:05.195", sb.toString()).apply();
    }

    /* renamed from: GA */
    public int m10694GA() {
        return this.avA.getInt("VER:5.0.4_20170316_11:46:44.911", 0);
    }

    /* renamed from: eT */
    public void m10686eT(int i) {
        this.avB.putInt("VER:5.0.4_20170316_11:46:44.911", i).apply();
    }

    /* renamed from: GB */
    public boolean m10693GB() {
        return true;
    }

    /* renamed from: GC */
    public void m10692GC() {
        this.avB.putBoolean("VER:5.0.4_20170316_11:55:07.004", true).apply();
    }

    /* renamed from: GD */
    public long m10691GD() {
        return this.avA.getLong("VER:5.0.4_20170321_10:31:09.048", 0L);
    }

    /* renamed from: bO */
    public void m10687bO(long j) {
        this.avB.putLong("VER:5.0.4_20170321_10:31:09.048", j).apply();
    }
}
