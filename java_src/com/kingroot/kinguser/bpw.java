package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.os.Environment;
import android.os.StatFs;
import android.p003os.Environmenu;
import java.io.File;
import java.text.SimpleDateFormat;
/* loaded from: classes.dex */
public class bpw {

    /* renamed from: com.kingroot.kinguser.bpw$a */
    /* loaded from: classes.dex */
    public static final class C2561a {
        /* renamed from: a */
        public static final boolean m5858a(int i, int i2) {
            return i2 == (i & i2);
        }
    }

    /* renamed from: com.kingroot.kinguser.bpw$d */
    /* loaded from: classes.dex */
    public static final class C2564d {
        @SuppressLint({"SimpleDateFormat"})
        /* renamed from: mP */
        public static SimpleDateFormat m5850mP(String str) {
            return new SimpleDateFormat(str);
        }
    }

    /* renamed from: com.kingroot.kinguser.bpw$b */
    /* loaded from: classes.dex */
    public static final class C2562b {
        /* renamed from: a */
        public static boolean m5857a() {
            String externalStorageState = Environment.getExternalStorageState();
            return Environmenu.MEDIA_MOUNTED.equals(externalStorageState) || Environmenu.MEDIA_MOUNTED_READ_ONLY.equals(externalStorageState);
        }

        public static C2563c ahh() {
            if (m5857a()) {
                return C2563c.m5856K(Environment.getExternalStorageDirectory());
            }
            return null;
        }
    }

    /* renamed from: com.kingroot.kinguser.bpw$c */
    /* loaded from: classes.dex */
    public static class C2563c {

        /* renamed from: b */
        private long f1999b;
        private File bIb;

        /* renamed from: c */
        private long f2000c;

        public File aeL() {
            return this.bIb;
        }

        /* renamed from: a */
        public void m5854a(File file) {
            this.bIb = file;
        }

        /* renamed from: b */
        public long m5853b() {
            return this.f1999b;
        }

        /* renamed from: a */
        public void m5855a(long j) {
            this.f1999b = j;
        }

        /* renamed from: c */
        public long m5851c() {
            return this.f2000c;
        }

        /* renamed from: b */
        public void m5852b(long j) {
            this.f2000c = j;
        }

        /* renamed from: K */
        public static C2563c m5856K(File file) {
            StatFs statFs;
            C2563c c2563c = new C2563c();
            c2563c.m5854a(file);
            long blockSize = new StatFs(file.getAbsolutePath()).getBlockSize();
            c2563c.m5855a(statFs.getBlockCount() * blockSize);
            c2563c.m5852b(blockSize * statFs.getAvailableBlocks());
            return c2563c;
        }

        public String toString() {
            return String.format("[%s : %d / %d]", aeL().getAbsolutePath(), Long.valueOf(m5851c()), Long.valueOf(m5853b()));
        }
    }
}
