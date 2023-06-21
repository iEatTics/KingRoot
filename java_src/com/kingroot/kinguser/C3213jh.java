package com.kingroot.kinguser;
/* renamed from: com.kingroot.kinguser.jh */
/* loaded from: classes.dex */
class C3213jh {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: cu */
    public static C3214a m3425cu() {
        return new C3214a();
    }

    /* renamed from: com.kingroot.kinguser.jh$a */
    /* loaded from: classes.dex */
    static class C3214a {
        private String mClassName;
        private String mPackageName;

        /* renamed from: sV */
        private String f2888sV;

        /* renamed from: sW */
        private int f2889sW;

        /* renamed from: sX */
        private String f2890sX;

        /* renamed from: sY */
        private String f2891sY;

        /* renamed from: sZ */
        private String f2892sZ;

        /* renamed from: ta */
        private String f2893ta;

        C3214a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: aH */
        public C3214a m3423aH(String str) {
            this.mPackageName = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: aI */
        public C3214a m3422aI(String str) {
            this.f2888sV = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: R */
        public C3214a m3424R(int i) {
            this.f2889sW = i;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: aJ */
        public C3214a m3421aJ(String str) {
            this.f2890sX = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: aK */
        public C3214a m3420aK(String str) {
            this.f2891sY = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: aL */
        public C3214a m3419aL(String str) {
            this.f2892sZ = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: aM */
        public C3214a m3418aM(String str) {
            this.f2893ta = str;
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            boolean z = false;
            if (this.mPackageName != null) {
                sb.append('p');
                sb.append(this.mPackageName);
                z = true;
            }
            if (this.f2888sV != null) {
                if (z) {
                    sb.append('+');
                } else {
                    z = true;
                }
                sb.append('s');
                sb.append(this.f2888sV);
            }
            if (this.f2889sW > 0) {
                if (z) {
                    sb.append('+');
                } else {
                    z = true;
                }
                sb.append('v');
                sb.append(this.f2889sW);
            }
            if (this.f2890sX != null) {
                if (z) {
                    sb.append('+');
                } else {
                    z = true;
                }
                sb.append('d');
                sb.append(this.f2890sX);
            }
            if (this.f2891sY != null) {
                if (z) {
                    sb.append('+');
                }
                sb.append('e');
                sb.append(this.f2891sY);
                if (this.mClassName != null) {
                    sb.append('+');
                    sb.append('c');
                    sb.append(this.mClassName);
                }
                if (this.f2892sZ != null) {
                    sb.append('+');
                    sb.append('m');
                    sb.append(this.f2892sZ);
                }
                if (this.f2893ta != null) {
                    sb.append('+');
                    sb.append('a');
                    sb.append(this.f2893ta);
                }
            }
            return sb.toString();
        }
    }
}
