package com.kingroot.kinguser;

import com.king.uranus.C0413h;
import com.king.uranus.C0414i;
import com.king.uranus.C0415j;
import java.util.ArrayList;
/* renamed from: com.kingroot.kinguser.hu */
/* loaded from: classes.dex */
public class C3165hu {
    /* renamed from: a */
    public static C0415j m3605a(String str, int i, int i2, int i3, ArrayList<C0413h> arrayList, int i4) {
        C0415j c0415j = new C0415j();
        c0415j.f370f = str;
        c0415j.action = i;
        c0415j.f366aH = i2;
        c0415j.f367aI = i3;
        c0415j.f368aJ = (int) (System.currentTimeMillis() / 1000);
        c0415j.f365aG = arrayList;
        c0415j.f369ax = i4;
        return c0415j;
    }

    /* renamed from: a */
    public static C0415j m3606a(String str, int i, int i2, int i3, int i4, int i5) {
        C0413h c0413h = new C0413h();
        c0413h.f354av = i;
        c0413h.f355ax = i5;
        ArrayList<C0413h> arrayList = new ArrayList<>();
        arrayList.add(c0413h);
        C0415j c0415j = new C0415j();
        c0415j.f370f = str;
        c0415j.action = i2;
        c0415j.f366aH = i3;
        c0415j.f367aI = i4;
        c0415j.f368aJ = (int) (System.currentTimeMillis() / 1000);
        c0415j.f365aG = arrayList;
        c0415j.f369ax = i5;
        return c0415j;
    }

    /* renamed from: e */
    public static boolean m3604e(C0414i c0414i) {
        int i = c0414i.f363az.f179ch;
        return i == 0 || System.currentTimeMillis() / 1000 <= ((long) i);
    }
}
