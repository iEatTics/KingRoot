package oicq.wlogin_sdk.code2d;

import com.kingroot.kinguser.C3298m;
import java.util.ArrayList;
import oicq.wlogin_sdk.p027b.C4232b;
import oicq.wlogin_sdk.request.C4379u;
import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public class fetch_code extends C4302b {

    /* loaded from: classes.dex */
    public static class QRCodeCustom {
        public int Micro = 0;
        public int Version = 0;
        public int Size = 3;
        public int Margin = 4;
        public int Dpi = 72;
        public int EcLevel = 2;
        public int Hint = 2;
    }

    public fetch_code() {
        this._cmd = 49;
    }

    public byte[] get_request(long j, long j2, long j3, byte[] bArr, QRCodeCustom qRCodeCustom, long j4, long j5, byte[] bArr2) {
        int i;
        int length = bArr.length + 17 + 2;
        int[] iArr = {17, 22, 27, 29, 31, 51};
        int length2 = iArr.length;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < length2) {
            C4232b c4232b = new C4232b();
            c4232b.m321b(iArr[i2]);
            byte[] bArr3 = null;
            int i3 = 0;
            switch (iArr[i2]) {
                case 17:
                    if (bArr2 != null && bArr2.length > 0) {
                        i3 = bArr2.length;
                        C4393util.LOGI("qrpushsig of " + j2, j + "");
                        bArr3 = bArr2;
                        break;
                    }
                    break;
                case 22:
                    bArr3 = getAppInfo(j2, j3);
                    i3 = bArr3.length;
                    break;
                case 27:
                    i3 = 30;
                    bArr3 = new byte[30];
                    C4393util.int32_to_buf(bArr3, 0, qRCodeCustom.Micro);
                    C4393util.int32_to_buf(bArr3, 4, qRCodeCustom.Version);
                    C4393util.int32_to_buf(bArr3, 8, qRCodeCustom.Size);
                    C4393util.int32_to_buf(bArr3, 12, qRCodeCustom.Margin);
                    C4393util.int32_to_buf(bArr3, 16, qRCodeCustom.Dpi);
                    C4393util.int32_to_buf(bArr3, 20, qRCodeCustom.EcLevel);
                    C4393util.int32_to_buf(bArr3, 24, qRCodeCustom.Hint);
                    C4393util.int16_to_buf(bArr3, 28, 0);
                    break;
                case C3298m.f3094fi /* 29 */:
                    i3 = 14;
                    bArr3 = new byte[14];
                    C4393util.int8_to_buf(bArr3, 0, 1);
                    C4393util.int64_to_buf32(bArr3, 1, j4);
                    C4393util.int64_to_buf32(bArr3, 5, j5);
                    C4393util.int8_to_buf(bArr3, 9, 0);
                    C4393util.int64_to_buf32(bArr3, 10, 0L);
                    break;
                case 31:
                    i3 = C4379u.f5255K.length + 3 + 2 + C4379u.f5254J.length + 2 + 2 + C4379u.f5247C.length + 2 + 0 + 2 + C4379u.f5250F.length;
                    bArr3 = new byte[i3];
                    C4393util.int8_to_buf(bArr3, 0, C4379u.f5270Z);
                    int fill_staff = fill_staff(bArr3, C4379u.f5254J, fill_staff(bArr3, C4379u.f5255K, 1));
                    C4393util.int16_to_buf(bArr3, fill_staff, C4379u.f5248D);
                    fill_staff(bArr3, C4379u.f5250F, fill_staff(bArr3, new byte[0], fill_staff(bArr3, C4379u.f5247C, fill_staff + 2)));
                    break;
                case C3298m.f3079fI /* 51 */:
                    byte[] bArr4 = (byte[]) C4379u.f5245A.clone();
                    bArr3 = bArr4;
                    i3 = bArr4.length;
                    break;
            }
            if (bArr3 != null) {
                c4232b.m317c(bArr3, i3);
                c4232b.m313e();
                byte[] m322b = c4232b.m322b();
                i = m322b.length + length;
                arrayList.add(m322b);
            } else {
                i = length;
            }
            i2++;
            length = i;
        }
        byte[] bArr5 = new byte[length];
        C4393util.int64_to_buf32(bArr5, 2, j2);
        C4393util.int64_to_buf(bArr5, 6, j);
        C4393util.int8_to_buf(bArr5, 14, 8);
        int fill_staff2 = fill_staff(bArr5, bArr, 15);
        int size = arrayList.size();
        C4393util.int16_to_buf(bArr5, fill_staff2, size);
        int i4 = fill_staff2 + 2;
        for (int i5 = 0; i5 < size; i5++) {
            byte[] bArr6 = (byte[]) arrayList.get(i5);
            System.arraycopy(bArr6, 0, bArr5, i4, bArr6.length);
            i4 += bArr6.length;
        }
        return get_request(j, true, bArr5);
    }

    public int get_response(byte[] bArr) {
        byte[] bArr2 = get_response(bArr, 0);
        if (bArr2 == null || bArr2.length < 11) {
            return C4393util.E_PK_LEN;
        }
        _status.f5104h = C4393util.buf_to_int32(bArr2, 2);
        _status.f5098b = C4393util.buf_to_int8(bArr2, 6);
        if (_status.f5098b != 0) {
            int buf_to_int16 = C4393util.buf_to_int16(bArr2, 7);
            _status.f5102f = new byte[buf_to_int16];
            System.arraycopy(bArr2, 9, _status.f5102f, 0, buf_to_int16);
            int i = buf_to_int16 + 9;
            return _status.f5098b;
        }
        int buf_to_int162 = C4393util.buf_to_int16(bArr2, 7);
        C4303c.f5093i = new byte[buf_to_int162];
        System.arraycopy(bArr2, 9, C4303c.f5093i, 0, buf_to_int162);
        int i2 = buf_to_int162 + 9;
        int buf_to_int163 = C4393util.buf_to_int16(bArr2, i2);
        int i3 = i2 + 2;
        for (int i4 = 0; i4 < buf_to_int163; i4++) {
            int buf_to_int164 = C4393util.buf_to_int16(bArr2, i3);
            int i5 = i3 + 2;
            int buf_to_int165 = C4393util.buf_to_int16(bArr2, i5);
            i3 = i5 + 2;
            switch (buf_to_int164) {
                case 23:
                    _status.f5105j = new byte[buf_to_int165];
                    System.arraycopy(bArr2, i3, _status.f5105j, 0, buf_to_int165);
                    i3 += buf_to_int165;
                    break;
                case 28:
                    _status.f5106k = C4393util.buf_to_int32(bArr2, i3);
                    int i6 = i3 + 4;
                    _status.f5107l = C4393util.buf_to_int16(bArr2, i6);
                    i3 = i6 + 2;
                    break;
            }
        }
        return _status.f5098b;
    }
}
