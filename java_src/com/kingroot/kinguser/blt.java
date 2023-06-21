package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.kingx.cloudsdk.C4014aa;
import com.kingx.cloudsdk.C4015aj;
import com.kingx.cloudsdk.C4028cd;
import com.kingx.cloudsdk.C4029cf;
import com.kingx.cloudsdk.C4031ch;
import com.kingx.cloudsdk.C4050v;
import com.kingx.cloudsdk.C4051w;
import com.kingx.cloudsdk.C4053y;
import com.kingx.cloudsdk.C4054z;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.GZIPInputStream;
/* loaded from: classes.dex */
public final class blt {
    private static C2506a[] bAm = {new C2506a(0, "info|getUpdatesV2"), new C2506a(1, "conf|getConfigV2"), new C2506a(2, "kinguser|getSoftStatus"), new C2506a(3, "kinguser|reportSoftStatus"), new C2506a(4, "info|reportSoftList"), new C2506a(5, "kinguser|reportMsg"), new C2506a(6, "tipsmain|getMainTips"), new C2506a(7, "softupdate|getSoftUpdateTips"), new C2506a(8, "conf|getConfigTips"), new C2506a(9, "cmdactivity|getActivityTips"), new C2506a(10, "info|reportTipsRes"), new C2506a(11, "info|reportChannelInfo"), new C2506a(12, "report|reportSoftUsageInfo"), new C2506a(13, "info|getGuid"), new C2506a(14, "kinguserreport|reportKUStatus"), new C2506a(15, "kingrootsolution|getSolutions"), new C2506a(16, "kingrootreport|reportKingRootResult"), new C2506a(17, "KingUserIssue|getKingUserUrl"), new C2506a(18, "checkCanTmpRoot|checkCanTmpRoot"), new C2506a(19, "rootCheck|reqRootRes"), new C2506a(20, "sharkconfig|getConfigTips"), new C2506a(21, "androidguid|RequestGUID"), new C2506a(22, "profile|reportProfileV1")};

    /* renamed from: com.kingroot.kinguser.blt$a */
    /* loaded from: classes.dex */
    public static class C2506a {
        public String bAn;
        public String bAo;

        /* renamed from: mg */
        public static byte[] m6451mg(String str) {
            FileInputStream fileInputStream;
            Throwable th;
            ByteArrayOutputStream byteArrayOutputStream;
            if (!new File(str).exists()) {
                return null;
            }
            try {
                fileInputStream = new FileInputStream(str);
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream(fileInputStream.available());
                } catch (Throwable th2) {
                    byteArrayOutputStream = null;
                    th = th2;
                }
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = fileInputStream.read(bArr);
                        if (read < 0) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    fileInputStream.close();
                    bmu.m6336a(fileInputStream);
                    bmu.m6336a(byteArrayOutputStream);
                    return byteArray == null ? "".getBytes() : byteArray;
                } catch (Throwable th3) {
                    th = th3;
                    bmu.m6336a(fileInputStream);
                    bmu.m6336a(byteArrayOutputStream);
                    throw th;
                }
            } catch (Throwable th4) {
                fileInputStream = null;
                th = th4;
                byteArrayOutputStream = null;
            }
        }

        /* renamed from: H */
        public static byte[] m6455H(String str, boolean z) {
            GZIPInputStream gZIPInputStream;
            FileInputStream fileInputStream;
            int m6454b;
            GZIPInputStream gZIPInputStream2;
            ByteArrayOutputStream byteArrayOutputStream = null;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    byte[] bArr = new byte[16];
                    fileInputStream2.read(bArr);
                    if (m6454b(bArr) == -1) {
                        throw new IOException();
                    }
                    fileInputStream2.skip(m6454b << 2);
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(fileInputStream2.available());
                    try {
                        gZIPInputStream2 = new GZIPInputStream(fileInputStream2);
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        byteArrayOutputStream = byteArrayOutputStream2;
                        gZIPInputStream = null;
                    }
                    try {
                        byte[] bArr2 = new byte[1024];
                        while (true) {
                            int read = gZIPInputStream2.read(bArr2);
                            if (read < 0) {
                                break;
                            }
                            byteArrayOutputStream2.write(bArr2, 0, read);
                        }
                        byte[] byteArray = byteArrayOutputStream2.toByteArray();
                        gZIPInputStream2.close();
                        fileInputStream2.close();
                        byteArrayOutputStream2.close();
                        bmu.m6336a(gZIPInputStream2);
                        bmu.m6336a(fileInputStream2);
                        bmu.m6336a(byteArrayOutputStream2);
                        return byteArray != null ? byteArray : "".getBytes();
                    } catch (Throwable th2) {
                        th = th2;
                        byteArrayOutputStream = byteArrayOutputStream2;
                        gZIPInputStream = gZIPInputStream2;
                        fileInputStream = fileInputStream2;
                        bmu.m6336a(gZIPInputStream);
                        bmu.m6336a(fileInputStream);
                        bmu.m6336a(byteArrayOutputStream);
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    gZIPInputStream = null;
                    fileInputStream = fileInputStream2;
                }
            } catch (Throwable th4) {
                th = th4;
                gZIPInputStream = null;
                fileInputStream = null;
            }
        }

        public C2506a(int i, String str) {
            int indexOf = str.indexOf("|");
            this.bAn = str.substring(0, indexOf);
            this.bAo = str.substring(indexOf + 1, str.length());
        }

        /* renamed from: D */
        public static byte[] m6456D(Context context, String str) {
            ByteArrayOutputStream byteArrayOutputStream;
            InputStream inputStream = null;
            try {
                InputStream open = context.getResources().getAssets().open(str, 1);
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream(open.available());
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = open.read(bArr);
                            if (read < 0) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, read);
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        open.close();
                        bmu.m6336a(open);
                        bmu.m6336a(byteArrayOutputStream);
                        return byteArray != null ? byteArray : "".getBytes();
                    } catch (Throwable th) {
                        th = th;
                        inputStream = open;
                        bmu.m6336a(inputStream);
                        bmu.m6336a(byteArrayOutputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    byteArrayOutputStream = null;
                    inputStream = open;
                }
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
            }
        }

        /* renamed from: b */
        public static int m6454b(byte[] bArr) {
            if (bArr.length < 16) {
                return -1;
            }
            int[] iArr = new int[4];
            for (int i = 0; i < 16; i++) {
                int i2 = i >>> 2;
                iArr[i2] = iArr[i2] | ((bArr[i] & 255) << ((i & 3) << 3));
            }
            if (iArr[0] == 268573306 && iArr[1] == 175 && iArr[3] >= 0) {
                return iArr[3];
            }
            return -1;
        }

        /* renamed from: c */
        public static String m6453c(File file) {
            FileInputStream fileInputStream;
            String str = "";
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int read = fileInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            }
                            messageDigest.update(bArr, 0, read);
                        }
                        str = m6452c(messageDigest.digest());
                        bmu.m6336a(fileInputStream);
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        bmu.m6336a(fileInputStream);
                        return str;
                    }
                } catch (Throwable th) {
                    th = th;
                    bmu.m6336a(fileInputStream);
                    throw th;
                }
            } catch (Exception e2) {
                e = e2;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = null;
                bmu.m6336a(fileInputStream);
                throw th;
            }
            return str;
        }

        /* renamed from: c */
        public static String m6452c(byte[] bArr) {
            if (bArr == null) {
                return "";
            }
            StringBuilder sb = new StringBuilder(bArr.length * 2);
            for (byte b : bArr) {
                sb.append("0123456789abcdef".charAt((b >> 4) & 15)).append("0123456789abcdef".charAt(b & 15));
            }
            return sb.toString();
        }
    }

    /* renamed from: a */
    private static void m6460a(int i, bmz bmzVar, bmz bmzVar2) {
        bmzVar.mo6294mr("UTF-8");
        bmzVar.m6293Z(i);
        bmzVar.m6292aG(bAm[i].bAn);
        bmzVar.m6291ms(bAm[i].bAo);
        bmzVar2.mo6294mr("UTF-8");
    }

    /* renamed from: b */
    public static int m6458b(Context context, AtomicReference<C4053y> atomicReference) {
        bmz bmzVar = new bmz(true);
        bmz bmzVar2 = new bmz(true);
        m6460a(21, bmzVar, bmzVar2);
        C4050v afv = blr.afv();
        C4014aa m6467eo = blr.m6467eo(false);
        bmzVar.put("phonetype", afx());
        bmzVar.put("userinfo", blu.m6449a(context, false, false));
        bmzVar.put("fin", m6467eo);
        bmzVar.put("req", afv);
        int m6450a = blu.m6450a(context, bmzVar, bmzVar2, false);
        if (m6450a == 0) {
            Object e = bmzVar2.m6296e("resp", new C4053y());
            if (e != null && atomicReference != null) {
                atomicReference.set((C4053y) e);
            }
            return 0;
        }
        return m6450a;
    }

    private static C4015aj afx() {
        C4015aj c4015aj = new C4015aj();
        c4015aj.f4137ei = 2;
        c4015aj.f4136cy = bnf.bCT.value();
        return c4015aj;
    }

    /* renamed from: c */
    public static int m6457c(Context context, AtomicReference<C4029cf> atomicReference) {
        bmz bmzVar = new bmz(true);
        bmz bmzVar2 = new bmz(true);
        m6460a(13, bmzVar, bmzVar2);
        C4028cd c4028cd = new C4028cd();
        c4028cd.m1200mv(bmu.m6309mo(bmn.afQ()));
        c4028cd.m1199mw(bmu.m6309mo(bmn.m6365h(context)));
        c4028cd.m1198mx(bmn.m6363i(context));
        c4028cd.m1197my(bmu.m6309mo(bmn.m6374bE(context)));
        c4028cd.m1196mz(bmu.m6309mo(bmn.m6379B(context)));
        c4028cd.m1204jS(bmp.m6361V());
        c4028cd.m1203mA(bmu.m6309mo(bmn.afM()));
        c4028cd.m1205be(bmu.m6309mo(bmn.getProductName()));
        c4028cd.m1202mB(bmu.m6309mo(bmk.m6385f(context)));
        c4028cd.m1201mC(bmu.m6309mo(bmn.m6367g()));
        bmzVar.put("phonetype", afx());
        bmzVar.put("userinfo", blu.m6449a(context, false, false));
        bmzVar.put("deviceinfo", c4028cd);
        int m6450a = blu.m6450a(context, bmzVar, bmzVar2, false);
        if (m6450a == 0) {
            Object e = bmzVar2.m6296e("guidinfo", new C4029cf());
            if (e != null) {
                atomicReference.set((C4029cf) e);
            }
            return 0;
        }
        return m6450a;
    }

    /* renamed from: a */
    public static int m6459a(Context context, String str, AtomicReference<C4054z> atomicReference) {
        C4051w afw = blr.afw();
        C4031ch m6449a = blu.m6449a(context, true, false);
        if (!TextUtils.isEmpty(str)) {
            m6449a.m1182mv(str);
        }
        bmz bmzVar = new bmz(true);
        bmz bmzVar2 = new bmz(true);
        m6460a(22, bmzVar, bmzVar2);
        C4014aa m6467eo = blr.m6467eo(true);
        bmzVar.put("phonetype", afx());
        bmzVar.put("userinfo", m6449a);
        bmzVar.put("fin", m6467eo);
        bmzVar.put("req", afw);
        int m6450a = blu.m6450a(context, bmzVar, bmzVar2, false);
        if (m6450a != 0) {
            return m6450a;
        }
        Object e = bmzVar2.m6296e("resp", new C4054z());
        if (e != null && atomicReference != null) {
            atomicReference.set((C4054z) e);
        }
        return 0;
    }
}
