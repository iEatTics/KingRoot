package oicq.wlogin_sdk.p026a;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import oicq.wlogin_sdk.tools.C4392c;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.MD5;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.a.c */
/* loaded from: classes.dex */
public class C4197c {

    /* renamed from: a */
    public int f4965a = 11;

    /* renamed from: b */
    public int f4966b = 0;

    /* renamed from: c */
    public int f4967c = 5;

    /* renamed from: d */
    public int f4968d = 0;

    /* renamed from: e */
    protected int f4969e = 1;

    /* renamed from: a */
    public static int m383a(byte[] bArr, C4204j c4204j) {
        int[] m381b = m381b(bArr);
        int i = m381b[0];
        int i2 = m381b[1];
        if (i == -1009) {
            return i;
        }
        if (i2 + 1 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        c4204j.f4978d = C4393util.buf_to_int8(bArr, i2) & 255;
        int i3 = i2 + 1;
        if (i3 + 2 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        int buf_to_int16 = C4393util.buf_to_int16(bArr, i3);
        int i4 = i3 + 2;
        if (i4 + buf_to_int16 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        byte[] bArr2 = new byte[buf_to_int16];
        System.arraycopy(bArr, i4, bArr2, 0, buf_to_int16);
        int i5 = i4 + buf_to_int16;
        if (i5 + 1 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        int buf_to_int8 = C4393util.buf_to_int8(bArr, i5);
        int i6 = i5 + 1;
        if (i6 + buf_to_int8 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        c4204j.f4979e = new byte[buf_to_int8];
        System.arraycopy(bArr, i6, c4204j.f4979e, 0, buf_to_int8);
        int i7 = i6 + buf_to_int8;
        if (i7 + 2 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        int buf_to_int162 = C4393util.buf_to_int16(bArr, i7);
        int i8 = i7 + 2;
        if (i8 + buf_to_int162 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        c4204j.f4980f = new byte[buf_to_int162];
        System.arraycopy(bArr, i8, c4204j.f4980f, 0, buf_to_int162);
        int i9 = i8 + buf_to_int162;
        if (bArr2.length > 0) {
            switch (c4204j.f4978d) {
                case 0:
                    if (4 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    c4204j.f4987m = C4393util.buf_to_int32(bArr2, 0);
                    if (5 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    int buf_to_int82 = C4393util.buf_to_int8(bArr2, 4);
                    if (buf_to_int82 + 5 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    c4204j.f4988n = new byte[buf_to_int82];
                    System.arraycopy(bArr2, 5, c4204j.f4988n, 0, buf_to_int82);
                    int i10 = buf_to_int82 + 5;
                    return i;
                case 2:
                    if (1 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    int buf_to_int83 = C4393util.buf_to_int8(bArr2, 0);
                    if (buf_to_int83 + 1 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    c4204j.f4989o = new byte[buf_to_int83];
                    System.arraycopy(bArr2, 1, c4204j.f4989o, 0, buf_to_int83);
                    int i11 = buf_to_int83 + 1;
                    int i12 = i11 + 1;
                    int buf_to_int84 = C4393util.buf_to_int8(bArr2, i11);
                    if (i12 + buf_to_int84 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    c4204j.f4990p = new byte[buf_to_int84];
                    System.arraycopy(bArr2, i12, c4204j.f4990p, 0, buf_to_int84);
                    int i13 = buf_to_int84 + i12;
                    int buf_to_int163 = C4393util.buf_to_int16(bArr2, i13);
                    int i14 = i13 + 2;
                    if (i14 + buf_to_int163 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    c4204j.f4991q = new byte[buf_to_int163];
                    System.arraycopy(bArr2, i14, c4204j.f4991q, 0, buf_to_int163);
                    int i15 = i14 + buf_to_int163;
                    return i;
                case 3:
                case 6:
                case 44:
                    if (2 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    int buf_to_int164 = C4393util.buf_to_int16(bArr2, 0);
                    if (buf_to_int164 + 2 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    c4204j.f4992r = new byte[buf_to_int164];
                    System.arraycopy(bArr2, 2, c4204j.f4992r, 0, buf_to_int164);
                    int i16 = buf_to_int164 + 2;
                    return i;
                case 4:
                    if (2 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    c4204j.f4993s = C4393util.buf_to_int16(bArr2, 0);
                    if (4 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    c4204j.f4994t = C4393util.buf_to_int16(bArr2, 2);
                    return i;
                case 5:
                    if (2 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    c4204j.f4993s = C4393util.buf_to_int16(bArr2, 0);
                    if (4 > bArr2.length) {
                        return C4393util.E_PK_LEN;
                    }
                    c4204j.f4994t = C4393util.buf_to_int16(bArr2, 2);
                    return i;
                case 31:
                    c4204j.f4993s = 0;
                    c4204j.f4994t = 0;
                    return i;
                default:
                    C4393util.LOGW("unhandle return code int parse_checkvalid_rsp", "", "");
                    return i;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static int m380b(byte[] bArr, C4204j c4204j) {
        int[] m381b = m381b(bArr);
        int i = m381b[0];
        int i2 = m381b[1];
        if (i == -1009) {
            return i;
        }
        if (i2 + 1 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        c4204j.f4978d = C4393util.buf_to_int8(bArr, i2);
        int i3 = i2 + 1;
        if (i3 + 1 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        int buf_to_int8 = C4393util.buf_to_int8(bArr, i3);
        int i4 = i3 + 1;
        if (i4 + buf_to_int8 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        c4204j.f4979e = new byte[buf_to_int8];
        System.arraycopy(bArr, i4, c4204j.f4979e, 0, buf_to_int8);
        int i5 = i4 + buf_to_int8;
        if (i5 + 2 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        int buf_to_int16 = C4393util.buf_to_int16(bArr, i5);
        int i6 = i5 + 2;
        if (i6 + buf_to_int16 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        c4204j.f4980f = new byte[buf_to_int16];
        System.arraycopy(bArr, i6, c4204j.f4980f, 0, buf_to_int16);
        int i7 = i6 + buf_to_int16;
        int buf_to_int82 = C4393util.buf_to_int8(bArr, i7);
        int i8 = i7 + 1;
        int m25a = C4392c.m25a(buf_to_int82, bArr, i8, bArr.length - i8, c4204j.f4975B);
        if (m25a != 0) {
            C4393util.LOGI("parser tlv failed " + m25a, "");
            return C4393util.E_PK_LEN;
        }
        return m25a;
    }

    /* renamed from: b */
    private static int[] m381b(byte[] bArr) {
        if (1 > bArr.length) {
            return new int[]{C4393util.E_PK_LEN, 0};
        }
        if (3 > bArr.length) {
            return new int[]{C4393util.E_PK_LEN, 1};
        }
        if (C4393util.buf_to_int16(bArr, 1) == bArr.length && 7 <= bArr.length) {
            if (8 > bArr.length) {
                return new int[]{C4393util.E_PK_LEN, 7};
            }
            int buf_to_int8 = C4393util.buf_to_int8(bArr, 7);
            return buf_to_int8 + 8 > bArr.length ? new int[]{C4393util.E_PK_LEN, 8} : new int[]{0, buf_to_int8 + 8};
        }
        return new int[]{C4393util.E_PK_LEN, 3};
    }

    /* renamed from: c */
    public static int m379c(byte[] bArr, C4204j c4204j) {
        int[] m381b = m381b(bArr);
        int i = m381b[0];
        int i2 = m381b[1];
        if (i == -1009) {
            return i;
        }
        if (i2 + 1 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        c4204j.f4978d = C4393util.buf_to_int8(bArr, i2);
        int i3 = i2 + 1;
        if (i3 + 1 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        int buf_to_int8 = C4393util.buf_to_int8(bArr, i3);
        int i4 = i3 + 1;
        if (i4 + buf_to_int8 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        byte[] bArr2 = new byte[buf_to_int8];
        System.arraycopy(bArr, i4, bArr2, 0, buf_to_int8);
        int i5 = i4 + buf_to_int8;
        if (c4204j.f4978d == 0) {
            byte[] decrypt = cryptor.decrypt(bArr2, 0, bArr2.length, (c4204j.f4984j == null || c4204j.f4984j.length <= 0) ? C4204j.f4970a.getBytes() : MD5.toMD5Byte(c4204j.f4984j));
            if (decrypt != null && 1 <= decrypt.length) {
                int buf_to_int82 = C4393util.buf_to_int8(decrypt, 0);
                if (buf_to_int82 + 1 > decrypt.length) {
                    return C4393util.E_PK_LEN;
                }
                int i6 = buf_to_int82 + 1;
                if (i6 + 8 > decrypt.length) {
                    return C4393util.E_PK_LEN;
                }
                c4204j.f4995u = C4393util.buf_to_int64(decrypt, i6);
                int i7 = i6 + 8;
                if (i7 + 2 > decrypt.length) {
                    return C4393util.E_PK_LEN;
                }
                int buf_to_int16 = C4393util.buf_to_int16(decrypt, i7);
                int i8 = i7 + 2;
                if (i8 + buf_to_int16 > decrypt.length) {
                    return C4393util.E_PK_LEN;
                }
                c4204j.f4996v = new byte[buf_to_int16];
                System.arraycopy(decrypt, i8, c4204j.f4996v, 0, buf_to_int16);
                int i9 = i8 + buf_to_int16;
                if (i9 + 1 > decrypt.length) {
                    return C4393util.E_PK_LEN;
                }
                int buf_to_int83 = C4393util.buf_to_int8(decrypt, i9);
                int i10 = i9 + 1;
                for (int i11 = 0; i11 < buf_to_int83; i11++) {
                    if (i10 + 2 > decrypt.length) {
                        return C4393util.E_PK_LEN;
                    }
                    int buf_to_int84 = C4393util.buf_to_int8(decrypt, i10);
                    int i12 = i10 + 1;
                    int buf_to_int85 = C4393util.buf_to_int8(decrypt, i12);
                    int i13 = i12 + 1;
                    if (i13 + buf_to_int85 > decrypt.length) {
                        return C4393util.E_PK_LEN;
                    }
                    switch (buf_to_int84) {
                        case 7:
                            c4204j.f4997w = new byte[buf_to_int85];
                            System.arraycopy(decrypt, i13, c4204j.f4997w, 0, buf_to_int85);
                            break;
                        case 12:
                            byte[] bArr3 = new byte[buf_to_int85];
                            System.arraycopy(decrypt, i13, bArr3, 0, buf_to_int85);
                            C4204j.f4972y = C4393util.buf_to_int64(bArr3, 0);
                            break;
                    }
                    i10 = i13 + buf_to_int85;
                }
            }
            return C4393util.E_PK_LEN;
        }
        if (i5 + 1 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        int buf_to_int86 = C4393util.buf_to_int8(bArr, i5);
        int i14 = i5 + 1;
        if (i14 + buf_to_int86 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        c4204j.f4979e = new byte[buf_to_int86];
        System.arraycopy(bArr, i14, c4204j.f4979e, 0, buf_to_int86);
        int i15 = buf_to_int86 + i14;
        if (i15 + 2 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        int buf_to_int162 = C4393util.buf_to_int16(bArr, i15);
        int i16 = i15 + 2;
        if (i16 + buf_to_int162 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        c4204j.f4980f = new byte[buf_to_int162];
        System.arraycopy(bArr, i16, c4204j.f4980f, 0, buf_to_int162);
        int i17 = i16 + buf_to_int162;
        return i;
    }

    /* renamed from: d */
    public static int m378d(byte[] bArr, C4204j c4204j) {
        int[] m381b = m381b(bArr);
        int i = m381b[0];
        int i2 = m381b[1];
        if (i == -1009) {
            return i;
        }
        if (i2 + 1 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        c4204j.f4978d = C4393util.buf_to_int8(bArr, i2);
        int i3 = i2 + 1;
        if (i3 + 2 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        int buf_to_int16 = C4393util.buf_to_int16(bArr, i3);
        int i4 = i3 + 2;
        if (i4 + buf_to_int16 > bArr.length) {
            return C4393util.E_PK_LEN;
        }
        c4204j.f4980f = new byte[buf_to_int16];
        System.arraycopy(bArr, i4, c4204j.f4980f, 0, buf_to_int16);
        int i5 = i4 + buf_to_int16;
        if (i5 + 2 <= bArr.length) {
            int buf_to_int162 = C4393util.buf_to_int16(bArr, i5);
            int i6 = i5 + 2;
            if (i6 + buf_to_int162 > bArr.length) {
                return C4393util.E_PK_LEN;
            }
            if (buf_to_int162 > 0) {
                byte[] bArr2 = new byte[buf_to_int162 + 2];
                System.arraycopy(bArr, i6, bArr2, 1, buf_to_int162);
                int i7 = i6 + buf_to_int162;
                bArr2[0] = 40;
                bArr2[buf_to_int162 + 1] = 41;
                c4204j.f4980f = new String(c4204j.f4980f).replace("。", new String(bArr2) + "。").getBytes();
                return i;
            }
            return i;
        }
        return i;
    }

    /* renamed from: e */
    public static int m377e(byte[] bArr, C4204j c4204j) {
        int[] m381b = m381b(bArr);
        int i = m381b[0];
        int i2 = m381b[1];
        if (i == -1009) {
            return i;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i2, bArr.length - i2);
        DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
        try {
            dataInputStream.readByte();
            c4204j.f4978d = dataInputStream.readShort();
            int readShort = dataInputStream.readShort();
            if (readShort != 0) {
                byte[] bArr2 = new byte[readShort];
                dataInputStream.read(bArr2);
                byte[] decrypt = cryptor.decrypt(bArr2, 0, bArr2.length, c4204j.f4986l);
                if (decrypt == null) {
                    C4393util.LOGI("no tlv in rsp", "");
                    return -1;
                }
                int m25a = C4392c.m25a(C4393util.buf_to_int8(decrypt, 0), decrypt, 1, decrypt.length - 1, c4204j.f4975B);
                if (m25a != 0) {
                    C4393util.LOGI("parser tlv failed " + m25a, "");
                    return C4393util.E_PK_LEN;
                }
            }
            c4204j.f4979e = new byte[dataInputStream.readByte()];
            dataInputStream.read(c4204j.f4979e);
            int readShort2 = dataInputStream.readShort();
            if (readShort2 != 0) {
                c4204j.f4980f = new byte[readShort2];
                if (dataInputStream.read(c4204j.f4980f) != readShort2) {
                    throw new Exception("msg len " + readShort2 + " error");
                }
            }
            dataInputStream.close();
            byteArrayInputStream.close();
            return 0;
        } catch (Exception e) {
            C4393util.LOGI("parse0x10Rsp failed " + e.getMessage(), "");
            return C4393util.E_PK_LEN;
        }
    }

    /* renamed from: f */
    public static int m376f(byte[] bArr, C4204j c4204j) {
        int[] m381b = m381b(bArr);
        int i = m381b[0];
        int i2 = m381b[1];
        if (i == -1009) {
            return i;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i2, bArr.length - i2);
        DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
        try {
            dataInputStream.readByte();
            c4204j.f4978d = dataInputStream.readShort();
            int readShort = dataInputStream.readShort();
            if (readShort != 0) {
                byte[] bArr2 = new byte[readShort];
                dataInputStream.read(bArr2);
                byte[] decrypt = cryptor.decrypt(bArr2, 0, bArr2.length, c4204j.f4986l);
                if (decrypt == null) {
                    C4393util.LOGI("no tlv in rsp", "");
                    return -1;
                }
                int m25a = C4392c.m25a(C4393util.buf_to_int8(decrypt, 0), decrypt, 1, decrypt.length - 1, c4204j.f4975B);
                if (m25a != 0) {
                    C4393util.LOGI("parser tlv failed " + m25a, "");
                    return C4393util.E_PK_LEN;
                }
            }
            c4204j.f4979e = new byte[dataInputStream.readByte()];
            dataInputStream.read(c4204j.f4979e);
            int readShort2 = dataInputStream.readShort();
            if (readShort2 != 0) {
                c4204j.f4980f = new byte[readShort2];
                if (dataInputStream.read(c4204j.f4980f) != readShort2) {
                    throw new Exception("msg len " + readShort2 + " error");
                }
            }
            dataInputStream.close();
            byteArrayInputStream.close();
            return 0;
        } catch (Exception e) {
            C4393util.LOGI("parse0x11Rsp failed " + e.getMessage(), "");
            return C4393util.E_PK_LEN;
        }
    }

    /* renamed from: a */
    public int m385a() {
        return this.f4966b;
    }

    /* renamed from: a */
    public byte[] m384a(byte[] bArr) {
        byte[] bArr2 = new byte[this.f4965a + 2 + bArr.length];
        C4393util.int8_to_buf(bArr2, 0, 2);
        C4393util.int16_to_buf(bArr2, 1, this.f4965a + bArr.length + 2);
        C4393util.int16_to_buf(bArr2, 3, this.f4969e);
        C4393util.int16_to_buf(bArr2, 5, this.f4966b);
        C4393util.int8_to_buf(bArr2, 7, 4);
        C4393util.int32_to_buf(bArr2, 8, 0);
        System.arraycopy(bArr, 0, bArr2, 12, bArr.length);
        int length = bArr.length + 12;
        C4393util.int8_to_buf(bArr2, length, 3);
        int i = length + 1;
        return bArr2;
    }

    /* renamed from: a */
    public byte[] m382a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + 1];
        C4393util.int8_to_buf(bArr3, 0, bArr.length);
        System.arraycopy(bArr, 0, bArr3, 1, bArr.length);
        return cryptor.encrypt(bArr3, 0, bArr3.length, MD5.toMD5Byte(bArr2));
    }
}
