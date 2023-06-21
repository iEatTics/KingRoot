package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class cfb {
    private static cet bZx;
    private static cet bZy;
    private static C2726b bZz;

    public static cet aly() {
        if (bZx == null) {
            synchronized (cfb.class) {
                if (bZx == null) {
                    bZx = new C2725a();
                }
            }
        }
        return bZx;
    }

    public static cet alz() {
        if (bZy == null) {
            synchronized (cfb.class) {
                if (bZy == null) {
                    bZy = new C2725a();
                }
            }
        }
        return bZy;
    }

    public static C2726b alA() {
        if (bZz == null) {
            synchronized (cfb.class) {
                if (bZz == null) {
                    bZz = new C2726b();
                }
            }
        }
        return bZz;
    }

    /* renamed from: com.kingroot.kinguser.cfb$a */
    /* loaded from: classes.dex */
    public static class C2725a implements cet {
        private Object mLock = new Object();
        private int bZA = 1;

        @Override // com.kingroot.kinguser.cet
        public int alo() {
            int i;
            synchronized (this.mLock) {
                i = this.bZA;
                this.bZA++;
            }
            return i;
        }
    }

    /* renamed from: com.kingroot.kinguser.cfb$b */
    /* loaded from: classes.dex */
    public static class C2726b {
        private final Object mLock = new Object();
        private byte bZB = 0;

        public byte alB() {
            byte b;
            synchronized (this.mLock) {
                if (this.bZB + 1 == 127) {
                    this.bZB = (byte) 0;
                }
                b = (byte) (this.bZB + 1);
                this.bZB = b;
            }
            return b;
        }
    }
}
