package com.kingroot.kinguser;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
/* renamed from: com.kingroot.kinguser.lz */
/* loaded from: classes.dex */
public final class C3297lz {

    /* renamed from: vB */
    private static boolean f3046vB = false;

    /* renamed from: eq */
    public static synchronized int m3112eq() {
        int i;
        int i2 = 16777216;
        synchronized (C3297lz.class) {
            if (!f3046vB) {
                try {
                    i = m3111er();
                } catch (Throwable th) {
                    i = 16777228;
                }
                f3046vB = i == 16777216;
                i2 = i;
            }
        }
        return i2;
    }

    /* renamed from: er */
    private static int m3111er() {
        C3180if m3497bW = C3183ih.m3497bW();
        String m3534bw = m3497bW.m3534bw();
        String str = m3497bW.m3552bG() + File.separator + m3534bw;
        if (!C3250kl.m3272o(m3534bw, str)) {
            return 16777219;
        }
        m3113a(str, m3497bW.m3535bv());
        int m3110es = m3110es();
        if (m3110es == 16777216) {
            return 16777216;
        }
        return m3110es;
    }

    /* renamed from: a */
    static boolean m3113a(String str, Map<String, C3257ks> map) {
        C3257ks c3257ks;
        FileOutputStream fileOutputStream;
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(str)));
            while (true) {
                try {
                    ZipEntry nextEntry = zipInputStream.getNextEntry();
                    if (nextEntry == null) {
                        break;
                    } else if (!nextEntry.isDirectory()) {
                        String name = nextEntry.getName();
                        if (!name.contains("../") && (c3257ks = map.get(name)) != null) {
                            String str2 = c3257ks.f2969un;
                            if (!c3257ks.f2970uo || !new File(str2).exists()) {
                                if (nextEntry.getCrc() != C3353nk.m2855m(new File(str2))) {
                                    FileOutputStream fileOutputStream2 = null;
                                    try {
                                        fileOutputStream = new FileOutputStream(str2);
                                    } catch (IOException e) {
                                        fileOutputStream = null;
                                    } catch (Throwable th) {
                                        th = th;
                                    }
                                    try {
                                        C3356nn.m2837b(zipInputStream, fileOutputStream);
                                        C3356nn.m2841a(fileOutputStream);
                                    } catch (IOException e2) {
                                        C3356nn.m2841a(fileOutputStream);
                                        zipInputStream.closeEntry();
                                    } catch (Throwable th2) {
                                        fileOutputStream2 = fileOutputStream;
                                        th = th2;
                                        C3356nn.m2841a(fileOutputStream2);
                                        throw th;
                                    }
                                    zipInputStream.closeEntry();
                                }
                            }
                        }
                    }
                } catch (IOException e3) {
                } finally {
                    C3356nn.m2841a(zipInputStream);
                }
            }
            return true;
        } catch (FileNotFoundException e4) {
            return false;
        }
    }

    /* renamed from: es */
    private static int m3110es() {
        C3180if m3497bW = C3183ih.m3497bW();
        if (!C3353nk.m2858bn(m3497bW.m3533bx())) {
            return 16777220;
        }
        if (!C3353nk.m2858bn(m3497bW.m3557bB())) {
            return 16777222;
        }
        if (!C3353nk.m2858bn(m3497bW.m3531bz())) {
            return 16777221;
        }
        if (!C3353nk.m2858bn(m3497bW.m3555bD())) {
            return 16777223;
        }
        return 16777216;
    }
}
