package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.king.uranus.AbstractC0404cS;
import com.king.uranus.C0378N;
import com.king.uranus.C0412g;
import com.king.uranus.C0415j;
import com.king.uranus.C0416k;
import com.king.uranus.C0420o;
import com.kingroot.kinguser.C3199ix;
import com.swift.sandhook.utils.FileUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* renamed from: com.kingroot.kinguser.id */
/* loaded from: classes.dex */
public class C3178id implements InterfaceC3187il {

    /* renamed from: cF */
    protected int f2776cF;

    /* renamed from: rk */
    protected String f2777rk;

    /* renamed from: rl */
    private C0412g f2778rl;

    public C3178id(int i, String str, C0412g c0412g) {
        this.f2778rl = null;
        this.f2776cF = i;
        this.f2777rk = str;
        this.f2778rl = c0412g;
    }

    @Override // com.kingroot.kinguser.InterfaceC3187il
    /* renamed from: a */
    public int mo3493a(AbstractC0404cS abstractC0404cS) {
        if (abstractC0404cS == null || !(abstractC0404cS instanceof C0420o)) {
            return 2;
        }
        C0420o c0420o = (C0420o) abstractC0404cS;
        return m3570a(C3183ih.getContext(), c0420o, m3573N(c0420o.f394be));
    }

    /* renamed from: N */
    private String m3573N(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        String str = "exeFile_" + currentTimeMillis;
        if (i == 1) {
            return "jarFile_" + currentTimeMillis + ".dex";
        }
        return str;
    }

    /* renamed from: a */
    private int m3570a(Context context, C0420o c0420o, String str) {
        m3567a(c0420o.url, str, new HandlerC3243kg(context, C3183ih.m3497bW().m3552bG(), new C3179ie(this, c0420o.f394be, c0420o.f396bg)));
        return 1;
    }

    /* renamed from: a */
    public static void m3567a(String str, String str2, HandlerC3243kg handlerC3243kg) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C3185ij(str2, str));
        handlerC3243kg.m3297n(arrayList);
    }

    /* renamed from: f */
    public static String m3561f(String str, String str2) {
        return String.format(Locale.US, "export CLASSPATH=%s && /system/bin/app_process /system/bin %s", str, str2);
    }

    /* renamed from: h */
    public static String m3560h(String str, String str2) {
        return TextUtils.isEmpty(str2) ? str : String.format("%s %s", str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m3572a(int i, int i2) {
        if (this.f2778rl != null && !TextUtils.isEmpty(this.f2777rk)) {
            ArrayList<C0415j> arrayList = new ArrayList<>();
            arrayList.add(C3165hu.m3606a(this.f2777rk, this.f2778rl.f353av, 0, i, 0, i2));
            if (arrayList.size() > 0) {
                C0416k c0416k = new C0416k();
                c0416k.f372aL = arrayList;
                C0378N.m13696a(c0416k);
            }
        }
    }

    /* renamed from: a */
    private String m3571a(int i, String str, String str2) {
        if (i == 2) {
            return m3560h(str, str2);
        }
        if (i != 1) {
            return "";
        }
        return m3561f(str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3564b(int i, String str, String str2) {
        new C3186ik(this, i, str, str2).m3081ez();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public int m3562c(int i, String str, String str2) {
        InterfaceC3195it interfaceC3195it = (InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class);
        if (interfaceC3195it.mo3126h(true) && m3565aw(str)) {
            String m3571a = m3571a(i, str, str2);
            if (TextUtils.isEmpty(m3571a)) {
                return 2;
            }
            int i2 = interfaceC3195it.mo3131aC(m3571a).m3447co() ? 1 : 0;
            if (i == 1) {
                Iterator<String> it = m3566av(str).iterator();
                while (it.hasNext()) {
                    interfaceC3195it.mo3131aC("rm " + it.next());
                }
            }
            return i2;
        }
        return 2;
    }

    /* renamed from: av */
    private static List<String> m3566av(String str) {
        ArrayList arrayList = new ArrayList();
        if (!TextUtils.isEmpty(str) && str.length() >= 1) {
            String replace = str.substring(1, str.length()).replace('/', '@');
            arrayList.add("/data/dalvik-cache/" + replace);
            arrayList.add("/data/dalvik-cache/arm/" + replace);
            arrayList.add("/data/dalvik-cache/arm64/" + replace);
        }
        return arrayList;
    }

    /* renamed from: aw */
    public static boolean m3565aw(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(String.format("chown %d.%d %s", 0, 0, str));
        arrayList.add(String.format("chmod 0%o %s", Integer.valueOf((int) FileUtils.FileMode.MODE_755), str));
        List<C3199ix.C3201b> mo3125l = ((InterfaceC3195it) C3183ih.m3501a(InterfaceC3195it.class)).mo3125l(arrayList);
        if (mo3125l != null && mo3125l.size() == arrayList.size()) {
            for (int i = 0; i < mo3125l.size(); i++) {
                if (!mo3125l.get(i).m3447co()) {
                    return false;
                }
            }
        }
        return true;
    }
}
