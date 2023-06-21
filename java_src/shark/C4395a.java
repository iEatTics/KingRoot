package shark;

import java.io.Serializable;
/* renamed from: shark.a */
/* loaded from: classes.dex */
public final class C4395a implements Serializable {
    private static C4395a[] bXb;
    public static final C4395a bXc;
    public static final C4395a bXd;
    public static final C4395a bXe;
    public static final C4395a bXf;

    /* renamed from: f */
    private String f5345f;

    static {
        C4395a.class.desiredAssertionStatus();
        bXb = new C4395a[6];
        bXc = new C4395a(0, 0, "CT_NONE");
        new C4395a(1, 1, "CT_GPRS");
        bXd = new C4395a(2, 2, "CT_WIFI");
        bXe = new C4395a(3, 3, "CT_GPRS_WAP");
        bXf = new C4395a(4, 4, "CT_GPRS_NET");
        new C4395a(5, 5, "CT_3G_NET");
    }

    public final String toString() {
        return this.f5345f;
    }

    private C4395a(int i, int i2, String str) {
        this.f5345f = new String();
        this.f5345f = str;
        bXb[i] = this;
    }
}
