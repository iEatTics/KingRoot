package com.kingroot.kinguser;

import java.util.List;
/* loaded from: classes.dex */
public class aeo {
    private List<C0787a> afo;

    public aeo(List<C0787a> list) {
        this.afo = list;
    }

    /* renamed from: cO */
    public int[] m12177cO(int i) {
        int[] iArr;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= this.afo.size()) {
                iArr = null;
                break;
            } else if (this.afo.get(i3).f1406id != i) {
                i2 = i3 + 1;
            } else {
                iArr = this.afo.get(i3).afp;
                break;
            }
        }
        if (iArr == null) {
            return new int[1];
        }
        return iArr;
    }

    /* renamed from: com.kingroot.kinguser.aeo$a */
    /* loaded from: classes.dex */
    public static class C0787a {

        /* renamed from: Ku */
        String f1405Ku;
        int[] afp;

        /* renamed from: id */
        int f1406id;
        String key;
        String localName;

        public C0787a(int i, String str, String str2, String str3, int[] iArr) {
            this.f1406id = i;
            this.localName = str;
            this.f1405Ku = str2;
            this.key = str3;
            this.afp = iArr;
        }
    }
}
