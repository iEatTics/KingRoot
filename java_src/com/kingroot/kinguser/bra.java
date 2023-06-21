package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.util.SparseArray;
/* loaded from: classes.dex */
public class bra {
    private static bra bIU = null;
    private boolean bIV = true;
    private String bIW = "TULog";
    private boolean bIX = false;
    private boolean bIY = false;
    private boolean bIZ = false;
    private boolean bJa = true;
    private boolean bJb = true;
    private boolean bJc = false;
    private boolean bJd = false;
    private boolean bJe = false;
    private String bJf = "xxx.pService";
    private String bJg = "_xxx";
    private SparseArray<Integer> bJh = null;
    private boolean bJi = false;
    private boolean bJj = false;
    private boolean bJk = false;
    private Intent bJl = null;
    private boolean bJm = false;
    private boolean bJn = false;
    private Context mContext;

    public static synchronized bra ahv() {
        bra braVar;
        synchronized (bra.class) {
            if (bIU == null) {
                bIU = new bra();
            }
            braVar = bIU;
        }
        return braVar;
    }

    private bra() {
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    /* renamed from: d */
    public void m5723d(boolean z, String str) {
        this.bIV = z;
        this.bIW = str;
    }

    /* renamed from: er */
    public void m5719er(boolean z) {
        this.bIX = z;
    }

    /* renamed from: es */
    public void m5718es(boolean z) {
        this.bIY = z;
    }

    /* renamed from: et */
    public void m5717et(boolean z) {
        this.bIZ = z;
    }

    /* renamed from: eu */
    public void m5716eu(boolean z) {
        this.bJa = z;
    }

    /* renamed from: ev */
    public void m5715ev(boolean z) {
        this.bJb = z;
    }

    /* renamed from: ew */
    public void m5714ew(boolean z) {
        this.bJc = z;
    }

    /* renamed from: ex */
    public void m5713ex(boolean z) {
        this.bJd = z;
    }

    /* renamed from: ey */
    public void m5712ey(boolean z) {
        this.bJe = z;
    }

    /* renamed from: mW */
    public void m5709mW(String str) {
        this.bJf = str;
    }

    /* renamed from: mX */
    public void m5708mX(String str) {
        this.bJg = str;
    }

    /* renamed from: j */
    public void m5710j(int... iArr) {
        if (iArr != null) {
            if (this.bJh == null) {
                this.bJh = new SparseArray<>();
            }
            for (int i : iArr) {
                this.bJh.put(i, 0);
            }
        }
    }

    /* renamed from: ez */
    public void m5711ez(boolean z) {
        this.bJi = z;
    }

    /* renamed from: eA */
    public void m5722eA(boolean z) {
        this.bJj = z;
    }

    /* renamed from: eB */
    public void m5721eB(boolean z) {
        this.bJk = z;
    }

    /* renamed from: p */
    public void m5707p(Intent intent) {
        this.bJl = intent;
    }

    /* renamed from: eC */
    public void m5720eC(boolean z) {
        this.bJm = z;
    }
}
