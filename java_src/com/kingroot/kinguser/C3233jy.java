package com.kingroot.kinguser;

import android.support.p007v7.internal.widget.ActivityChooserView;
/* renamed from: com.kingroot.kinguser.jy */
/* loaded from: classes.dex */
public final class C3233jy implements InterfaceC3145ha {

    /* renamed from: dg */
    public String f2912dg;

    /* renamed from: dh */
    public String f2913dh;

    /* renamed from: dm */
    private String f2914dm;

    /* renamed from: tr */
    public int f2915tr;

    /* renamed from: ts */
    public int f2916ts;

    /* renamed from: tt */
    private int f2917tt;

    /* renamed from: tu */
    private int f2918tu;

    /* renamed from: tv */
    private int f2919tv;

    private C3233jy() {
    }

    public C3233jy(int i, String str) {
        this.f2915tr = i;
        this.f2912dg = str;
        this.f2913dh = "";
    }

    @Override // com.kingroot.kinguser.InterfaceC3145ha
    /* renamed from: aJ */
    public int mo3339aJ() {
        return this.f2915tr;
    }

    @Override // com.kingroot.kinguser.InterfaceC3145ha
    /* renamed from: aK */
    public String mo3338aK() {
        return this.f2912dg;
    }

    @Override // com.kingroot.kinguser.InterfaceC3145ha
    /* renamed from: aL */
    public String mo3337aL() {
        return this.f2913dh;
    }

    @Override // com.kingroot.kinguser.InterfaceC3145ha
    /* renamed from: aM */
    public int mo3336aM() {
        return this.f2917tt;
    }

    @Override // com.kingroot.kinguser.InterfaceC3145ha
    /* renamed from: aN */
    public int mo3335aN() {
        return this.f2918tu;
    }

    @Override // com.kingroot.kinguser.InterfaceC3145ha
    /* renamed from: aO */
    public int mo3334aO() {
        return this.f2919tv;
    }

    @Override // com.kingroot.kinguser.InterfaceC3145ha
    /* renamed from: aP */
    public String mo3333aP() {
        return this.f2914dm;
    }

    /* renamed from: b */
    public static InterfaceC3145ha m3331b(String str, int i, String str2) {
        C3233jy c3233jy;
        if (str == null || str.length() == 0) {
            c3233jy = new C3233jy(8, null);
        } else if (str.startsWith("ipme result: ")) {
            c3233jy = m3332aR(str);
        } else {
            c3233jy = new C3233jy(9, null);
            c3233jy.f2913dh = str;
        }
        c3233jy.f2916ts = i;
        c3233jy.f2912dg = str2;
        return c3233jy;
    }

    /* renamed from: aR */
    private static C3233jy m3332aR(String str) {
        String[] split = str.substring("ipme result: ".length()).split(",");
        if (split.length < 3) {
            C3233jy c3233jy = new C3233jy(9, null);
            c3233jy.f2913dh = str;
            return c3233jy;
        }
        C3233jy c3233jy2 = new C3233jy();
        c3233jy2.f2917tt = getInt(split[0], ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        c3233jy2.f2918tu = getInt(split[1], ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        c3233jy2.f2919tv = getInt(split[2], ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
        c3233jy2.f2914dm = m3330d(split);
        c3233jy2.f2915tr = c3233jy2.f2917tt == 0 ? 0 : 3;
        c3233jy2.f2913dh = str.substring(0, str.lastIndexOf(","));
        return c3233jy2;
    }

    private static int getInt(String str, int i) {
        try {
            return Integer.valueOf(str).intValue();
        } catch (Exception e) {
            return i;
        }
    }

    /* renamed from: d */
    private static String m3330d(String[] strArr) {
        return strArr.length == 4 ? strArr[3] : "";
    }
}
