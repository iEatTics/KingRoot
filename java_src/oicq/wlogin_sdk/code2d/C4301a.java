package oicq.wlogin_sdk.code2d;

import android.content.Context;
import com.kingroot.kinguser.C3298m;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;
import oicq.wlogin_sdk.p027b.C4232b;
import oicq.wlogin_sdk.request.C4362d;
import oicq.wlogin_sdk.request.C4379u;
import oicq.wlogin_sdk.request.WloginAllSigInfo;
import oicq.wlogin_sdk.request.oicq_request;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.code2d.a */
/* loaded from: classes.dex */
public class C4301a extends C4302b {

    /* renamed from: a */
    protected static byte[] f5092a = null;

    public C4301a() {
        this._cmd = 20;
    }

    /* renamed from: a */
    public int m238a(byte[] bArr, long j, Context context) {
        WloginAllSigInfo wloginAllSigInfo;
        byte[] bArr2;
        byte[] bArr3;
        byte[] bArr4;
        byte[] bArr5 = get_response(bArr, 0);
        if (bArr5 == null || bArr5.length < 11) {
            return C4393util.E_PK_LEN;
        }
        _status.f5097a = C4393util.buf_to_int64(bArr5, 2);
        _status.f5098b = C4393util.buf_to_int8(bArr5, 10) & 255;
        if (_status.f5098b != 0) {
            int buf_to_int16 = C4393util.buf_to_int16(bArr5, 11);
            _status.f5102f = new byte[buf_to_int16];
            System.arraycopy(bArr5, 13, _status.f5102f, 0, buf_to_int16);
            int i = buf_to_int16 + 13;
            return _status.f5098b;
        }
        _status.f5099c = C4393util.buf_to_int32(bArr5, 11) & 4294967295L;
        int buf_to_int162 = C4393util.buf_to_int16(bArr5, 15);
        _status.f5100d = new byte[buf_to_int162];
        System.arraycopy(bArr5, 17, _status.f5100d, 0, buf_to_int162);
        int i2 = buf_to_int162 + 17;
        if (i2 + 2 + 2 + 1 >= bArr5.length) {
            return _status.f5098b;
        }
        int buf_to_int163 = C4393util.buf_to_int16(bArr5, i2);
        int i3 = i2 + 2;
        if (buf_to_int163 == 0) {
            return _status.f5098b;
        }
        byte[] decrypt = cryptor.decrypt(bArr5, i3, buf_to_int163, f5092a);
        if (decrypt == null || decrypt.length == 0) {
            return C4393util.E_A1_DECRYPT;
        }
        int buf_to_int164 = C4393util.buf_to_int16(decrypt, 0);
        byte[] bArr6 = null;
        byte[] bArr7 = null;
        byte[] bArr8 = null;
        int i4 = 2;
        int i5 = 0;
        while (i5 < buf_to_int164) {
            int buf_to_int165 = C4393util.buf_to_int16(decrypt, i4);
            int i6 = i4 + 2;
            int buf_to_int166 = C4393util.buf_to_int16(decrypt, i6);
            int i7 = i6 + 2;
            switch (buf_to_int165) {
                case 24:
                    byte[] bArr9 = new byte[buf_to_int166];
                    System.arraycopy(decrypt, i7, bArr9, 0, buf_to_int166);
                    byte[] bArr10 = bArr8;
                    bArr4 = bArr7;
                    bArr2 = bArr9;
                    bArr3 = bArr10;
                    break;
                case 25:
                    bArr3 = new byte[buf_to_int166];
                    System.arraycopy(decrypt, i7, bArr3, 0, buf_to_int166);
                    bArr4 = bArr7;
                    bArr2 = bArr6;
                    break;
                case 30:
                    byte[] bArr11 = new byte[buf_to_int166];
                    System.arraycopy(decrypt, i7, bArr11, 0, buf_to_int166);
                    bArr2 = bArr6;
                    bArr3 = bArr8;
                    bArr4 = bArr11;
                    break;
                default:
                    bArr3 = bArr8;
                    bArr4 = bArr7;
                    bArr2 = bArr6;
                    break;
            }
            i5++;
            byte[] bArr12 = bArr3;
            i4 = i7 + buf_to_int166;
            bArr6 = bArr2;
            bArr7 = bArr4;
            bArr8 = bArr12;
        }
        if (C4303c.f5096s) {
            if (bArr8 == null || bArr6 == null || bArr7 == null) {
                return C4393util.E_PK_LEN;
            }
            TreeMap m202a = C4362d.m202a(context, "tk_file");
            if (m202a == null || (wloginAllSigInfo = (WloginAllSigInfo) m202a.get(Long.valueOf(_status.f5097a))) == null) {
                return C4393util.E_NO_KEY;
            }
            byte[][] bArr13 = (byte[][]) Array.newInstance(Byte.TYPE, 5, 0);
            for (int i8 = 0; i8 < 5; i8++) {
                bArr13[i8] = new byte[0];
            }
            bArr13[0] = oicq_request.m120b(bArr6, bArr7);
            bArr13[1] = bArr8;
            wloginAllSigInfo.put_siginfo(j, bArr13, C4379u.m72f());
            m202a.put(Long.valueOf(_status.f5097a), wloginAllSigInfo.get_clone());
            C4379u.f5279aj.m195a(m202a, "tk_file");
        }
        return _status.f5098b;
    }

    /* renamed from: a */
    public byte[] m239a(long j, long j2, long j3, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, List<byte[]> list, byte[] bArr4, byte[] bArr5, long j4, long j5) {
        int i2;
        if (list == null) {
            list = new ArrayList<>();
        }
        int[] iArr = {22, 24, 25, 29, 104};
        int[] iArr2 = new int[0];
        byte[] bArr6 = null;
        if (!C4303c.f5096s || bArr4.length <= 16) {
            iArr = iArr2;
        } else {
            bArr6 = new byte[bArr4.length - 16];
            byte[] bArr7 = new byte[16];
            System.arraycopy(bArr4, 0, bArr6, 0, bArr6.length);
            System.arraycopy(bArr4, bArr6.length, bArr7, 0, bArr7.length);
            f5092a = bArr7;
        }
        C4232b c4232b = new C4232b();
        c4232b.m321b(104);
        c4232b.m317c(C4379u.f5245A, C4379u.f5245A.length);
        c4232b.m313e();
        list.add(c4232b.m322b());
        for (int i3 = 0; i3 < iArr.length; i3++) {
            byte[] bArr8 = null;
            C4232b c4232b2 = new C4232b();
            c4232b2.m321b(iArr[i3]);
            switch (iArr[i3]) {
                case 22:
                    bArr8 = getAppInfo(j2, j3);
                    break;
                case 24:
                    bArr8 = bArr6;
                    break;
                case 25:
                    bArr8 = bArr5;
                    break;
                case C3298m.f3094fi /* 29 */:
                    bArr8 = new byte[10];
                    C4393util.int8_to_buf(bArr8, 0, 0);
                    C4393util.int64_to_buf32(bArr8, 1, j4);
                    C4393util.int64_to_buf32(bArr8, 5, j5);
                    C4393util.int8_to_buf(bArr8, 9, 0);
                    break;
            }
            if (bArr8 != null) {
                c4232b2.m317c(bArr8, bArr8.length);
                c4232b2.m313e();
                list.add(c4232b2.m322b());
            }
        }
        int size = list.size();
        int length = bArr.length + 16 + 2 + bArr2.length + 1 + 2;
        int i4 = 0;
        while (i4 < size) {
            int length2 = list.get(i4) != null ? list.get(i4).length + length : length;
            i4++;
            length = length2;
        }
        byte[] bArr9 = new byte[length];
        C4393util.int64_to_buf32(bArr9, 2, j2);
        C4393util.int64_to_buf(bArr9, 6, j);
        C4393util.int16_to_buf(bArr9, 14, bArr.length);
        System.arraycopy(bArr, 0, bArr9, 16, bArr.length);
        int length3 = bArr.length + 16;
        C4393util.int16_to_buf(bArr9, length3, bArr2.length);
        int i5 = length3 + 2;
        System.arraycopy(bArr2, 0, bArr9, i5, bArr2.length);
        int length4 = i5 + bArr2.length;
        C4393util.int8_to_buf(bArr9, length4, 3);
        int i6 = length4 + 1;
        C4393util.int16_to_buf(bArr9, i6, size);
        int i7 = i6 + 2;
        int i8 = 0;
        while (i8 < size) {
            byte[] bArr10 = list.get(i8);
            if (bArr10 != null) {
                System.arraycopy(bArr10, 0, bArr9, i7, bArr10.length);
                i2 = bArr10.length + i7;
            } else {
                i2 = i7;
            }
            i8++;
            i7 = i2;
        }
        return get_request(j, true, bArr9);
    }
}
