package com.kingroot.kinguser;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.util.Locale;
/* loaded from: classes.dex */
public class bks {
    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: h */
    public static byte[] m6535h(java.lang.String r7, int r8) {
        /*
            r0 = 0
            r2 = 0
            java.io.File r1 = new java.io.File
            r1.<init>(r7)
            boolean r3 = r1.exists()
            if (r3 != 0) goto Lf
            r0 = r2
        Le:
            return r0
        Lf:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L37
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L37
            byte[] r1 = new byte[r8]     // Catch: java.lang.Throwable -> L46
        L16:
            int r4 = r8 - r0
            int r4 = r3.read(r1, r0, r4)     // Catch: java.lang.Throwable -> L46
            r5 = -1
            if (r4 == r5) goto L4b
            int r0 = r0 + r4
            if (r0 < r8) goto L16
            r4 = r0
        L23:
            if (r4 != 0) goto L2a
            com.kingroot.kinguser.bkp.m6557c(r3)
            r0 = r2
            goto Le
        L2a:
            if (r4 >= r8) goto L49
            byte[] r0 = new byte[r4]     // Catch: java.lang.Throwable -> L46
            r5 = 0
            r6 = 0
            java.lang.System.arraycopy(r1, r5, r0, r6, r4)     // Catch: java.lang.Throwable -> L46
        L33:
            com.kingroot.kinguser.bkp.m6557c(r3)
            goto Le
        L37:
            r0 = move-exception
            r0 = r2
        L39:
            com.kingroot.kinguser.bkp.m6557c(r0)
            r0 = r2
            goto Le
        L3e:
            r0 = move-exception
            r3 = r2
        L40:
            com.kingroot.kinguser.bkp.m6557c(r3)
            throw r0
        L44:
            r0 = move-exception
            goto L40
        L46:
            r0 = move-exception
            r0 = r3
            goto L39
        L49:
            r0 = r1
            goto L33
        L4b:
            r4 = r0
            goto L23
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bks.m6535h(java.lang.String, int):byte[]");
    }

    /* renamed from: cd */
    public static String m6536cd(int i) {
        byte[] m6535h;
        try {
            String str = "";
            byte[] m6535h2 = m6535h(String.format(Locale.ENGLISH, "/proc/%d/cmdline", Integer.valueOf(i)), 100);
            if (m6535h2 != null) {
                str = new String(m6535h2, 0, m6537a(m6535h2, 0, (char) 0));
            }
            if (TextUtils.isEmpty(str) && (m6535h = m6535h(String.format(Locale.ENGLISH, "/proc/%d/status", Integer.valueOf(i)), 150)) != null) {
                int m6537a = m6537a(m6535h, 7, '\n');
                if (m6537a == 0) {
                    return "";
                }
                return new String(m6535h, 6, m6537a - 6);
            }
            return str;
        } catch (Throwable th) {
            return "";
        }
    }

    /* renamed from: a */
    private static int m6537a(byte[] bArr, int i, char c) {
        int i2 = i - 1;
        while (true) {
            int i3 = i2 + 1;
            if (i2 >= bArr.length) {
                return 0;
            }
            if (i3 == bArr.length || bArr[i3] == c) {
                return i3;
            }
            i2 = i3;
        }
    }

    @Nullable
    /* renamed from: jE */
    public static C2484a m6534jE(int i) {
        int i2;
        String str;
        String str2;
        int i3;
        int i4;
        int i5;
        try {
            String m6536cd = m6536cd(i);
            try {
                byte[] m6535h = m6535h(String.format(Locale.ENGLISH, "/proc/%d/status", Integer.valueOf(i)), 150);
                if (m6535h != null) {
                    int m6537a = m6537a(m6535h, 7, '\n');
                    if (m6537a == 0) {
                        i2 = -1;
                        str = m6536cd;
                        i5 = -1;
                    } else {
                        str = m6536cd == null ? new String(m6535h, 6, m6537a - 6) : m6536cd;
                        try {
                            int m6537a2 = m6537a(m6535h, m6537a(m6535h, m6537a(m6535h, m6537a + 1, '\n') + 1, '\n') + 1, '\n');
                            if (m6537a2 == 0) {
                                i5 = -1;
                                i2 = -1;
                            } else {
                                int i6 = m6537a2 + 7;
                                int m6537a3 = m6537a(m6535h, m6537a2 + 1, '\n');
                                if (m6537a3 == 0) {
                                    i5 = -1;
                                    i2 = -1;
                                } else {
                                    i2 = Integer.parseInt(new String(m6535h, i6, m6537a3 - i6));
                                    try {
                                        int m6537a4 = m6537a(m6535h, m6537a3 + 1, '\n');
                                        if (m6537a4 == 0) {
                                            i5 = -1;
                                        } else {
                                            int i7 = m6537a4 + 6;
                                            i5 = Integer.parseInt(new String(m6535h, i7, m6537a(m6535h, i7 + 1, '\t') - i7));
                                        }
                                    } catch (Exception e) {
                                        str2 = str;
                                        i3 = i2;
                                        i4 = -1;
                                        if (str2 != null) {
                                        }
                                        return null;
                                    }
                                }
                            }
                        } catch (Exception e2) {
                            i2 = -1;
                        }
                    }
                } else {
                    i2 = -1;
                    str = m6536cd;
                    i5 = -1;
                }
                str2 = str;
                i3 = i2;
                i4 = i5;
            } catch (Exception e3) {
                i2 = -1;
                str = m6536cd;
            }
        } catch (Exception e4) {
            i2 = -1;
            str = null;
        }
        if (str2 != null || i3 == -1 || i4 == -1) {
            return null;
        }
        return new C2484a(i, i3, str2, i4);
    }

    /* renamed from: com.kingroot.kinguser.bks$a */
    /* loaded from: classes.dex */
    public static class C2484a {
        public String name;
        public int pid;
        public int ppid;
        public int uid;
        public String user = "";

        public C2484a(int i, int i2, String str, int i3) {
            this.name = "";
            this.pid = i;
            this.ppid = i2;
            this.name = str;
            this.uid = i3;
        }

        public String toString() {
            return "USER=" + this.user + " PID=" + this.pid + " PPID=" + this.ppid + " NAME=" + this.name + " UID=" + this.uid;
        }
    }
}
