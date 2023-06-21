package com.kingroot.kinguser;

import android.content.Context;
import android.os.Process;
import com.kingroot.kinguser.cez;
import com.kingroot.kinguser.cff;
import com.p019qq.taf.jce.JceStruct;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;
import tmsdk.common.TMSDKContext;
import tmsdk.common.tcc.TccCryptor;
/* loaded from: classes.dex */
public class ceq {
    private static C1459aq bYK;
    private static String bYL;
    private static int bYJ = 0;
    private static boolean bYM = false;

    public static byte[] encrypt(byte[] bArr, byte[] bArr2) {
        if (bArr != null && bArr.length != 0) {
            try {
                return TccCryptor.m1f(bArr, bArr2);
            } catch (Throwable th) {
                return null;
            }
        }
        return bArr;
    }

    public static byte[] decrypt(byte[] bArr, byte[] bArr2) {
        if (bArr != null && bArr.length != 0) {
            try {
                return TccCryptor.m0g(bArr, bArr2);
            } catch (Throwable th) {
                return null;
            }
        }
        return bArr;
    }

    /* renamed from: a */
    public static JceStruct m4735a(byte[] bArr, JceStruct jceStruct) {
        return cew.m4686a(bArr, jceStruct, false);
    }

    /* renamed from: a */
    public static byte[] m4736a(JceStruct jceStruct) {
        if (jceStruct == null) {
            return null;
        }
        return cew.m4683b(jceStruct);
    }

    /* renamed from: a */
    public static byte[] m4744a(Context context, JceStruct jceStruct, int i, C2036az c2036az) {
        byte[] bArr = null;
        if (jceStruct != null) {
            bArr = cew.m4683b(jceStruct);
        }
        return m4741a(context, bArr, i, c2036az);
    }

    /* renamed from: a */
    public static byte[] m4741a(Context context, byte[] bArr, int i, C2036az c2036az) {
        byte[] bArr2 = null;
        if (bArr != null) {
            try {
                if (bArr.length > 50) {
                    byte[] m4733ac = m4733ac(bArr);
                    if (c2036az != null) {
                        int i2 = c2036az.flag;
                        if (m4733ac != null && m4733ac.length < bArr.length) {
                            c2036az.flag &= -2;
                            bArr = m4733ac;
                        } else {
                            c2036az.flag |= 1;
                        }
                    } else {
                        bArr = m4733ac;
                    }
                    bArr2 = m4731b(i, bArr);
                    return bArr2;
                }
            } catch (Exception e) {
                return bArr2;
            }
        }
        if (c2036az != null) {
            int i3 = c2036az.flag;
            c2036az.flag |= 1;
        }
        bArr2 = m4731b(i, bArr);
        return bArr2;
    }

    /* renamed from: a */
    public static byte[] m4737a(cff.C2744d c2744d, boolean z, String str, ceu ceuVar) {
        if (c2744d == null) {
            return null;
        }
        return c2744d.caI ? new byte[]{c2744d.caU} : cew.m4683b(m4742a(TMSDKContext.akS(), z, c2744d, c2744d.caO, c2744d.caQ, str, ceuVar));
    }

    /* renamed from: a */
    private static C2038ba m4742a(Context context, boolean z, cff.C2744d c2744d, cez.C2723b c2723b, ArrayList<C2036az> arrayList, String str, ceu ceuVar) {
        C2038ba als = cew.als();
        als.seqNo = c2744d.caN;
        als.f1649kd = 4;
        als.f1651kf = arrayList;
        if (!z || c2744d.caG || c2744d.caH || c2744d.caJ) {
            C1459aq m4743a = m4743a(context, c2744d.caG, c2723b, str, ceuVar);
            als.f1650ke = m4743a;
            bYK = m4743a;
            bYM = false;
        } else if (!c2744d.caI) {
            C1459aq m4743a2 = m4743a(context, false, c2723b, str, ceuVar);
            if (!m4738a(m4743a2, bYK)) {
                als.f1650ke = m4743a2;
                bYK = m4743a2;
                bYM = false;
            } else if (bYM) {
                als.f1650ke = m4743a2;
                bYK = m4743a2;
                bYM = false;
            }
        }
        return als;
    }

    /* renamed from: a */
    private static boolean m4738a(C1459aq c1459aq, C1459aq c1459aq2) {
        if (c1459aq == null && c1459aq2 == null) {
            return true;
        }
        if (c1459aq == null || c1459aq2 == null) {
            return false;
        }
        return c1459aq.f1530hT == c1459aq2.f1530hT && c1459aq.f1531ii == c1459aq2.f1531ii && m4730bf(c1459aq.f1532it, c1459aq2.f1532it) && m4730bf(c1459aq.f1533iu, c1459aq2.f1533iu) && m4730bf(c1459aq.f1534iv, c1459aq2.f1534iv) && c1459aq.f1529dS == c1459aq2.f1529dS && c1459aq.f1535iw == c1459aq2.f1535iw && c1459aq.f1536ix == c1459aq2.f1536ix;
    }

    /* renamed from: bf */
    private static boolean m4730bf(String str, String str2) {
        if (str == null && str2 == null) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    public static void akZ() {
        bYM = true;
    }

    /* renamed from: a */
    private static C1459aq m4743a(Context context, boolean z, cez.C2723b c2723b, String str, ceu ceuVar) {
        if (ceuVar == null) {
            return null;
        }
        C1459aq c1459aq = new C1459aq();
        String str2 = c2723b != null ? c2723b.bZu : "";
        if (z) {
            str2 = "";
        }
        c1459aq.f1534iv = str2;
        c1459aq.f1529dS = TMSDKContext.m14nF("build");
        c1459aq.f1530hT = m4729cs(context);
        c1459aq.f1535iw = cgr.m4319cw(context);
        if (ceuVar.mo2721fR()) {
            c1459aq.f1531ii = ceuVar.mo2720fS();
        } else {
            c1459aq.f1531ii = ala();
        }
        c1459aq.f1532it = str;
        c1459aq.f1536ix = ceuVar.alp();
        c1459aq.f1537iy = ceuVar.alq();
        c1459aq.f1538iz = ceuVar.alr();
        if (bYL == null) {
            int myPid = Process.myPid();
            StringBuilder sb = new StringBuilder();
            sb.append(ceuVar.mo2730fI() ? "b" : "f");
            sb.append(myPid);
            bYL = sb.toString();
        }
        c1459aq.f1533iu = bYL;
        return c1459aq;
    }

    /* renamed from: cs */
    public static int m4729cs(Context context) {
        cef.bYc = false;
        cef.m4783cr(context);
        if (3 == cef.bYd) {
            return 1;
        }
        switch (cef.bYf) {
            case 0:
                return 2;
            case 1:
                return 3;
            case 2:
                return 4;
            case 3:
                return 5;
            case 4:
                return 6;
            case 5:
                return 7;
            case 6:
                return 8;
            case 7:
                return 9;
            case 8:
                return 10;
            default:
                return 0;
        }
    }

    private static int ala() {
        switch (cgo.amY()) {
            case 0:
            default:
                return 0;
            case 1:
                return 1;
            case 2:
                return 2;
        }
    }

    /* renamed from: a */
    public static JceStruct m4739a(Context context, byte[] bArr, byte[] bArr2, JceStruct jceStruct, boolean z, int i) {
        byte[] m4740a;
        if (bArr2 == null || bArr2.length == 0 || (m4740a = m4740a(context, bArr, bArr2, i)) == null || m4740a.length <= 0 || jceStruct == null) {
            return null;
        }
        return cew.m4686a(m4740a, jceStruct, z);
    }

    /* renamed from: a */
    public static byte[] m4740a(Context context, byte[] bArr, byte[] bArr2, int i) {
        byte[] m4734ab;
        if (bArr2 == null || bArr2.length == 0) {
            return null;
        }
        if ((i & 2) == 0) {
            try {
                bArr2 = TccCryptor.m0g(bArr2, bArr);
            } catch (Exception e) {
                bArr2 = null;
            }
        }
        if (bArr2 == null || bArr2.length < 4 || (m4734ab = m4734ab(bArr2)) == null || m4734ab.length <= 0) {
            return null;
        }
        if ((i & 1) == 0) {
            return m4732ad(m4734ab);
        }
        return m4734ab;
    }

    /* renamed from: b */
    private static byte[] m4731b(int i, byte[] bArr) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeInt(i);
            if (bArr != null && bArr.length > 0) {
                dataOutputStream.write(bArr);
            }
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: ab */
    private static byte[] m4734ab(byte[] bArr) {
        if (bArr != null && bArr.length >= 4) {
            byte[] bArr2 = new byte[bArr.length - 4];
            System.arraycopy(bArr, 4, bArr2, 0, bArr.length - 4);
            return bArr2;
        }
        return null;
    }

    /* renamed from: ac */
    private static byte[] m4733ac(byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream);
        try {
            deflaterOutputStream.write(bArr);
            deflaterOutputStream.finish();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
                deflaterOutputStream.close();
                return byteArray;
            } catch (IOException e) {
                e.printStackTrace();
                return byteArray;
            }
        } catch (Exception e2) {
            try {
                byteArrayOutputStream.close();
                deflaterOutputStream.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            return null;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
                deflaterOutputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            throw th;
        }
    }

    /* renamed from: ad */
    private static byte[] m4732ad(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        InflaterInputStream inflaterInputStream = new InflaterInputStream(byteArrayInputStream);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                int read = inflaterInputStream.read();
                if (read != -1) {
                    byteArrayOutputStream.write(read);
                } else {
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    try {
                        byteArrayInputStream.close();
                        inflaterInputStream.close();
                        byteArrayOutputStream.close();
                        return byteArray;
                    } catch (IOException e) {
                        e.printStackTrace();
                        return byteArray;
                    }
                }
            } catch (Exception e2) {
                try {
                    byteArrayInputStream.close();
                    inflaterInputStream.close();
                    byteArrayOutputStream.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
                return null;
            } catch (Throwable th) {
                try {
                    byteArrayInputStream.close();
                    inflaterInputStream.close();
                    byteArrayOutputStream.close();
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
                throw th;
            }
        }
    }
}
