package com.kingroot.kinguser;

import com.kingroot.loader.common.KlConst;
/* renamed from: com.kingroot.kinguser.hw */
/* loaded from: classes.dex */
public final class C3167hw {

    /* renamed from: com.kingroot.kinguser.hw$a */
    /* loaded from: classes.dex */
    public static class C3168a {
        private String mClassName;
        private int mVersion;

        /* renamed from: qR */
        private String f2755qR;

        /* renamed from: qS */
        private String f2756qS;

        /* renamed from: qT */
        private String f2757qT;

        /* renamed from: qU */
        private int f2758qU;

        /* renamed from: qV */
        private boolean f2759qV;

        /* renamed from: qW */
        private String f2760qW;

        /* renamed from: qX */
        private int f2761qX;

        /* renamed from: qY */
        private String f2762qY;

        /* renamed from: qZ */
        private InterfaceC3152hh f2763qZ;

        /* renamed from: an */
        public C3168a m3600an(String str) {
            this.f2755qR = str;
            return this;
        }

        /* renamed from: b */
        public C3168a m3596b(String str, int i) {
            this.f2756qS = str;
            this.f2758qU = i;
            return this;
        }

        /* renamed from: ao */
        public C3168a m3599ao(String str) {
            this.mClassName = str;
            return this;
        }

        /* renamed from: ap */
        public C3168a m3598ap(String str) {
            this.f2760qW = str;
            return this;
        }

        /* renamed from: aq */
        public C3168a m3597aq(String str) {
            this.f2761qX = 0;
            this.f2762qY = str;
            return this;
        }

        /* renamed from: f */
        public C3168a m3594f(boolean z) {
            this.f2759qV = z;
            return this;
        }

        /* renamed from: a */
        public C3168a m3601a(InterfaceC3152hh interfaceC3152hh) {
            this.f2763qZ = interfaceC3152hh;
            return this;
        }

        /* renamed from: bg */
        public InterfaceC3153hi m3595bg() {
            if (this.f2755qR == null) {
                throw new IllegalStateException("name");
            }
            if (this.f2756qS == null) {
                throw new IllegalStateException("path");
            }
            if (!this.f2756qS.endsWith(".dex") && !this.f2756qS.endsWith(".jar") && !this.f2756qS.endsWith(KlConst.PLUGIN_FILE_NAME_SUFFIX) && !this.f2756qS.endsWith(".so")) {
                throw new IllegalStateException(this.f2756qS);
            }
            if (this.f2758qU != 2 && this.f2760qW == null) {
                throw new IllegalStateException("method");
            }
            if (this.f2763qZ == null) {
                throw new IllegalStateException("target");
            }
            if (m3602M(this.f2758qU)) {
                if (this.mClassName == null) {
                    throw new IllegalStateException("class name");
                }
                return new C3278lj(this.f2755qR, this.mVersion, this.f2758qU, this.f2756qS, this.mClassName, this.f2760qW, this.f2761qX, this.f2762qY, this.f2763qZ, this.f2759qV);
            }
            return new C3294lx(this.f2755qR, this.mVersion, this.f2756qS, this.f2757qT, this.f2760qW, this.f2762qY, this.f2763qZ, this.f2759qV);
        }

        /* renamed from: M */
        private static boolean m3602M(int i) {
            return i == 2 || i == 1 || i == 4;
        }
    }
}
