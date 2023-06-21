package com.kingroot.kinguser;

import java.io.File;
import java.util.Arrays;
/* loaded from: classes.dex */
public class ajh {
    private static final byte[] atI = {100, 101, 120};

    /* renamed from: D */
    public static int m11471D(File file) {
        byte[] m2349h;
        if (file == null || !file.exists() || (m2349h = C3563rs.m2349h(file.getAbsolutePath(), 3)) == null) {
            return 4;
        }
        try {
            return Arrays.equals(m2349h, atI) ? 1 : 4;
        } catch (Exception e) {
            return 4;
        }
    }

    /* renamed from: E */
    public static boolean m11470E(File file) {
        return m11471D(file) == 1;
    }
}
