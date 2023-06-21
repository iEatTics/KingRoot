package com.kingroot.kinguser;

import java.io.InputStream;
/* loaded from: classes.dex */
public abstract class cfv {

    /* renamed from: com.kingroot.kinguser.cfv$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2796a {
        /* renamed from: a */
        void m4380a(boolean z, int i, int i2);
    }

    /* renamed from: com.kingroot.kinguser.cfv$b */
    /* loaded from: classes.dex */
    public static class C2797b {
        private int cdH;
        private int cdI;
        private String cdJ;

        protected Object clone() {
            return new C2797b(this.cdJ, this.cdI, this.cdH);
        }

        public C2797b() {
        }

        public C2797b(String str, int i) {
            this.cdJ = str;
            this.cdI = i;
        }

        public C2797b(String str, int i, int i2) {
            this.cdH = i2;
            this.cdJ = str;
            this.cdI = i;
        }

        public int getPort() {
            return this.cdI;
        }

        public String amE() {
            return this.cdJ;
        }

        public String toString() {
            return this.cdI >= 0 ? this.cdJ + ":" + this.cdI : this.cdJ;
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            C2797b c2797b = (C2797b) obj;
            return c2797b.cdJ.equals(this.cdJ) && c2797b.cdI == this.cdI;
        }

        public int hashCode() {
            return super.hashCode();
        }
    }

    /* renamed from: a */
    public static byte[] m4381a(InputStream inputStream, int i, int i2, InterfaceC2796a interfaceC2796a) {
        byte[] bArr = new byte[i2];
        int i3 = i2;
        int i4 = 0;
        while (true) {
            if (i4 >= i2 || i3 <= 0) {
                break;
            }
            int read = inputStream.read(bArr, i, i3);
            if (read <= 0) {
                if (interfaceC2796a != null) {
                    interfaceC2796a.m4380a(true, i4, i2);
                }
            } else {
                i4 += read;
                i += read;
                i3 -= read;
                if (interfaceC2796a != null) {
                    interfaceC2796a.m4380a(false, i4, i2);
                }
            }
        }
        if (i4 != i2) {
            return null;
        }
        return bArr;
    }
}
