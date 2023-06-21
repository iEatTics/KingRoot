package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class awp {
    private static final String TAG = aiq.arV + "_ExtenalCloudSwitcherImpl";
    private static final cce<awp> sInstance = new cce<awp>() { // from class: com.kingroot.kinguser.awp.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Tr */
        public awp create() {
            return new awp();
        }
    };

    /* renamed from: Tq */
    public static awp m8616Tq() {
        return sInstance.get();
    }

    private awp() {
    }

    /* renamed from: a */
    public int m8615a(C2996dk c2996dk) {
        int i = 1;
        if (c2996dk == null) {
            return 3;
        }
        boolean z = c2996dk.f2460no == 1;
        switch (c2996dk.f2459gH) {
            case 1:
                akr.m11154BL().m11149aW(z);
                break;
            case 2:
                akr.m11154BL().m11148aX(z);
                break;
            case 3:
                akr.m11154BL().m11146aZ(z);
                if (z) {
                    aks.m11143BP().m10752eo(0);
                    aks.m11143BP().m10898aX(0L);
                    break;
                }
                break;
            case 4:
                akr.m11154BL().m11147aY(z);
                break;
            case 5:
                akr.m11154BL().m11145ba(z);
                break;
            case 6:
                aks.m11143BP().m10818bs(z);
                break;
            case 7:
                aks.m11143BP().m10816bt(z);
                break;
            case 8:
                aks.m11143BP().m10808bx(z);
                break;
            case 9:
                aks.m11143BP().m10890bA(z);
                if (z) {
                    aks.m11143BP().m10888bB(z);
                    break;
                }
                break;
            case 10:
                aks.m11143BP().m10886bC(z);
                break;
            case 11:
                aks.m11143BP().m10812bv(z);
                break;
            case 12:
                aks.m11143BP().m10814bu(z);
                break;
            default:
                i = 3;
                break;
        }
        return i;
    }
}
