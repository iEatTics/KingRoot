package com.kingroot.kinguser;

import java.lang.reflect.Array;
/* renamed from: com.kingroot.kinguser.yv */
/* loaded from: classes.dex */
public class C3939yv {

    /* renamed from: VN */
    public static final Object[] f4044VN = new Object[0];

    /* renamed from: VO */
    public static final Class<?>[] f4045VO = new Class[0];

    /* renamed from: VP */
    public static final String[] f4046VP = new String[0];

    /* renamed from: VQ */
    public static final long[] f4047VQ = new long[0];

    /* renamed from: VR */
    public static final Long[] f4048VR = new Long[0];

    /* renamed from: VS */
    public static final int[] f4049VS = new int[0];

    /* renamed from: VT */
    public static final Integer[] f4050VT = new Integer[0];

    /* renamed from: VU */
    public static final short[] f4051VU = new short[0];

    /* renamed from: VV */
    public static final Short[] f4052VV = new Short[0];

    /* renamed from: VW */
    public static final byte[] f4053VW = new byte[0];

    /* renamed from: VX */
    public static final Byte[] f4054VX = new Byte[0];

    /* renamed from: VY */
    public static final double[] f4055VY = new double[0];

    /* renamed from: VZ */
    public static final Double[] f4056VZ = new Double[0];

    /* renamed from: Wa */
    public static final float[] f4057Wa = new float[0];

    /* renamed from: Wb */
    public static final Float[] f4058Wb = new Float[0];

    /* renamed from: Wc */
    public static final boolean[] f4059Wc = new boolean[0];

    /* renamed from: Wd */
    public static final Boolean[] f4060Wd = new Boolean[0];

    /* renamed from: We */
    public static final char[] f4061We = new char[0];

    /* renamed from: Wf */
    public static final Character[] f4062Wf = new Character[0];

    /* renamed from: d */
    public static <T> T[] m1361d(T[] tArr) {
        if (tArr == null) {
            return null;
        }
        return (T[]) ((Object[]) tArr.clone());
    }

    /* renamed from: f */
    public static int[] m1359f(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        return (int[]) iArr.clone();
    }

    /* renamed from: f */
    public static String[] m1358f(String[] strArr) {
        if (m1360e(strArr)) {
            return f4046VP;
        }
        return strArr;
    }

    public static int getLength(Object obj) {
        if (obj == null) {
            return 0;
        }
        return Array.getLength(obj);
    }

    /* renamed from: a */
    public static byte[] m1364a(Byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        if (bArr.length == 0) {
            return f4053VW;
        }
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[i].byteValue();
        }
        return bArr2;
    }

    /* renamed from: e */
    public static boolean m1360e(Object[] objArr) {
        return getLength(objArr) == 0;
    }

    /* renamed from: a */
    public static <T> T[] m1363a(T[] tArr, T... tArr2) {
        if (tArr == null) {
            return (T[]) m1361d(tArr2);
        }
        if (tArr2 == null) {
            return (T[]) m1361d(tArr);
        }
        Class<?> componentType = tArr.getClass().getComponentType();
        T[] tArr3 = (T[]) ((Object[]) Array.newInstance(componentType, tArr.length + tArr2.length));
        System.arraycopy(tArr, 0, tArr3, 0, tArr.length);
        try {
            System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
            return tArr3;
        } catch (ArrayStoreException e) {
            Class<?> componentType2 = tArr2.getClass().getComponentType();
            if (!componentType.isAssignableFrom(componentType2)) {
                throw new IllegalArgumentException("Cannot store " + componentType2.getName() + " in an array of " + componentType.getName(), e);
            }
            throw e;
        }
    }

    /* renamed from: c */
    public static int[] m1362c(int[] iArr, int... iArr2) {
        if (iArr == null) {
            return m1359f(iArr2);
        }
        if (iArr2 == null) {
            return m1359f(iArr);
        }
        int[] iArr3 = new int[iArr.length + iArr2.length];
        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
        System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
        return iArr3;
    }
}
