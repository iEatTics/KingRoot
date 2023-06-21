package oicq.wlogin_sdk.request;

import android.os.Build;
import java.net.Socket;
import oicq.wlogin_sdk.p027b.C4240bh;
import oicq.wlogin_sdk.report.report_t;
import oicq.wlogin_sdk.request.oicq_request;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.ErrMsg;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.request.aa */
/* loaded from: classes.dex */
public class C4359aa extends oicq_request {

    /* renamed from: I */
    public int f5177I = 0;

    /* renamed from: J */
    public int f5178J = 5;

    public C4359aa(C4379u c4379u) {
        this.f5237t = 2066;
        this.f5238u = 1;
        this.f5239v = "wtlogin.trans_emp";
        this.f5241x = c4379u;
        if (this.f5241x.f5308m != 0) {
            this.f5241x.f5308m = 1;
        }
    }

    /* renamed from: a */
    public synchronized int m217a(long j, TransReqContext transReqContext, byte[] bArr, byte[] bArr2, long j2, long j3, WUserSigInfo wUserSigInfo) {
        int i;
        int i2 = C4379u.f5291w;
        int i3 = 0;
        i = 0;
        while (true) {
            byte[] bArr3 = transReqContext._body;
            long currentTimeMillis = C4379u.f5274ac + (System.currentTimeMillis() / 1000);
            byte[] bArr4 = bArr3 == null ? new byte[0] : bArr3;
            byte[] bArr5 = new byte[bArr4.length + 4];
            C4393util.int64_to_buf32(bArr5, 0, currentTimeMillis);
            System.arraycopy(bArr4, 0, bArr5, 4, bArr4.length);
            if (bArr != null) {
                bArr5 = cryptor.encrypt(bArr5, 0, bArr5.length, bArr2);
            }
            if (bArr5 != null && bArr5.length > 0) {
                if (oicq_request.EncryptionMethod.EM_ST == transReqContext.requestEm && (transReqContext.wtSessionTicketKey == null || transReqContext.wtSessionTicketKey.length == 0 || transReqContext.wtSessionTicket == null || transReqContext.wtSessionTicket.length == 0)) {
                    transReqContext.requestEm = oicq_request.EncryptionMethod.EM_ECDH;
                    C4379u.f5281al.attr_api(2413503);
                    C4393util.LOGI("using wt st encrypt body but no st key", "" + j);
                }
                m147a(j, m212a(bArr5, bArr != null, bArr, j2, j3, transReqContext), transReqContext.requestEm);
                i = m146a(String.valueOf(j), false, wUserSigInfo);
                if (i != 0) {
                    break;
                }
                i = m214a(transReqContext);
                if (i == 0 && bArr != null) {
                    byte[] bArr6 = transReqContext.get_body();
                    transReqContext.set_body(cryptor.decrypt(bArr6, 0, bArr6.length, bArr2));
                }
                if (i != 180) {
                    break;
                }
            }
            int i4 = i3 + 1;
            if (i3 >= 1) {
                break;
            }
            i3 = i4;
        }
        C4393util.LOGI("request_transport rsp: ret=" + i);
        return i;
    }

    /* renamed from: a */
    public synchronized int m216a(long j, TransReqContext transReqContext, byte[] bArr, byte[] bArr2, byte[] bArr3, long j2, long j3, WUserSigInfo wUserSigInfo) {
        byte[] encrypt;
        int i;
        int i2 = C4379u.f5291w;
        long length = transReqContext._body.length;
        int i3 = this.f5217E;
        this.f5217E = i3 + 1;
        byte[] m218a = m218a(length, i3, String.valueOf(j).getBytes(), j2, j2, bArr3, new String("wtlogin_conn_trans").getBytes(), new byte[8], 0, 0L, C4379u.f5245A);
        byte[] bArr4 = transReqContext._body;
        long currentTimeMillis = C4379u.f5274ac + (System.currentTimeMillis() / 1000);
        if (bArr4 == null) {
            encrypt = new byte[0];
        } else if (bArr == null) {
            encrypt = new byte[m218a.length + 4 + bArr4.length];
            C4393util.int64_to_buf32(encrypt, 0, currentTimeMillis);
            System.arraycopy(m218a, 0, encrypt, 4, m218a.length);
            System.arraycopy(bArr4, 0, encrypt, m218a.length + 4, bArr4.length);
        } else {
            byte[] bArr5 = new byte[m218a.length + 4 + bArr4.length];
            C4393util.int64_to_buf32(bArr5, 0, currentTimeMillis);
            System.arraycopy(m218a, 0, bArr5, 4, m218a.length);
            System.arraycopy(bArr4, 0, bArr5, m218a.length + 4, bArr4.length);
            encrypt = cryptor.encrypt(bArr5, 0, bArr5.length, bArr2);
        }
        if (encrypt == null || encrypt.length <= 0) {
            i = 0;
        } else {
            m157a(this.f5226i, this.f5237t, this.f5227j, j, this.f5230m, this.f5231n, i2, this.f5233p, m211a(encrypt, bArr, j2, j3, 1));
            i = m146a(String.valueOf(j), true, wUserSigInfo);
            if (i == 0 && (i = m214a(transReqContext)) == 0 && bArr != null) {
                byte[] bArr6 = transReqContext.get_body();
                transReqContext.set_body(cryptor.decrypt(bArr6, 0, bArr6.length, bArr2));
            }
        }
        return i;
    }

    /* renamed from: a */
    public synchronized int m215a(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, long j2, WUserSigInfo wUserSigInfo) {
        int i;
        int i2 = C4379u.f5291w;
        long currentTimeMillis = (System.currentTimeMillis() / 1000) + C4379u.f5274ac;
        C4379u.f5281al.commit(Build.VERSION.RELEASE, new String(C4379u.f5251G), "", C4393util.buf_to_string(C4393util.get_ksid(C4379u.f5288t)), new String(C4379u.f5249E), new String(C4379u.f5261Q), new String(C4379u.f5253I), new String(C4379u.f5252H), C4393util.get_release_time(), C4393util.SDK_VERSION);
        byte[] bytes = C4379u.f5281al.toJasonObj().toString().getBytes();
        if (bytes == null || bytes.length == 0) {
            i = 0;
        } else {
            byte[] compress = C4393util.compress(bytes);
            if (compress == null || compress.length == 0) {
                i = 0;
            } else {
                byte[] bArr4 = new byte[compress.length + 8];
                C4393util.int64_to_buf32(bArr4, 0, currentTimeMillis);
                C4393util.int8_to_buf(bArr4, 4, 0);
                C4393util.int8_to_buf(bArr4, 5, 1);
                C4393util.int16_to_buf(bArr4, 6, compress.length);
                System.arraycopy(compress, 0, bArr4, 8, compress.length);
                byte[] encrypt = cryptor.encrypt(bArr4, 0, bArr4.length, bArr3);
                if (encrypt == null || encrypt.length == 0) {
                    i = 0;
                } else {
                    report_t.delete_file(C4379u.f5288t);
                    m157a(this.f5226i, this.f5237t, this.f5227j, j, this.f5230m, this.f5231n, i2, this.f5233p, m211a(encrypt, bArr2, j2, 85L, 0));
                    i = m146a(String.valueOf(j), true, wUserSigInfo);
                    if (i == 0) {
                        i = m129b();
                    }
                    if (i != 0) {
                        report_t.write_tofile(C4379u.f5281al, C4379u.f5288t);
                    } else {
                        C4379u.f5281al.clear_t2();
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: a */
    public int m214a(TransReqContext transReqContext) {
        int i;
        int i2 = this.f5220c;
        if (i2 <= this.f5223f + 2) {
            return C4393util.E_PK_LEN;
        }
        this.f5224g = (i2 - this.f5223f) - 2;
        if (transReqContext.requestEm == oicq_request.EncryptionMethod.EM_ECDH) {
            if (this.f5241x.f5308m == 0) {
                i = m134a(this.f5225h, this.f5223f + 1, this.f5224g, this.f5241x.f5311p);
                if (i < 0) {
                    C4393util.LOGI("use ecdh decrypt_body failed");
                    i = m134a(this.f5225h, this.f5223f + 1, this.f5224g, this.f5241x.f5299c);
                    if (i < 0) {
                        C4393util.LOGI("use kc decrypt_body failed");
                    }
                }
            } else {
                i = m134a(this.f5225h, this.f5223f + 1, this.f5224g, this.f5241x.f5299c);
                if (i < 0) {
                    C4393util.LOGI("use kc decrypt_body failed");
                }
            }
        } else if (transReqContext.requestEm == oicq_request.EncryptionMethod.EM_ST) {
            i = m134a(this.f5225h, this.f5223f + 1, this.f5224g, transReqContext.wtSessionTicketKey);
            if (i < 0) {
                C4393util.LOGI("use session key decrypt_body failed", "");
            }
        } else {
            C4393util.LOGI("unknown encryption method " + transReqContext.requestEm, "");
            i = C4393util.E_ENCRYPTION_METHOD;
        }
        return i >= 0 ? m213a(this.f5225h, this.f5223f + 1, this.f5224g, transReqContext) : i;
    }

    /* renamed from: a */
    public int m213a(byte[] bArr, int i, int i2, TransReqContext transReqContext) {
        if (i2 < this.f5178J) {
            return C4393util.E_PK_LEN;
        }
        int c = m115c(bArr, i);
        m139a((ErrMsg) null);
        C4393util.LOGD(getClass().getName(), "type=" + c);
        switch (c) {
            case 0:
                byte[] bArr2 = new byte[i2 - this.f5178J];
                System.arraycopy(bArr, this.f5178J + i, bArr2, 0, bArr2.length);
                transReqContext.set_body(bArr2);
                return c;
            case C4393util.S_ROLL_BACK /* 180 */:
                int i3 = this.f5178J + 2 + i;
                C4240bh c4240bh = new C4240bh();
                int c2 = c4240bh.m316c(bArr, i3, (this.f5220c - i3) - 1);
                if (c2 > 0) {
                    this.f5241x.f5308m = 2;
                    this.f5241x.f5313r = c4240bh.m318c();
                    C4393util.LOGI("request_transport get rollback sig");
                    c2 = c;
                }
                return c2;
            default:
                return c;
        }
    }

    @Override // oicq.wlogin_sdk.request.oicq_request
    /* renamed from: a */
    public void mo145a(Socket socket) {
        this.f5241x.f5296ai = socket;
    }

    /* renamed from: a */
    byte[] m218a(long j, long j2, byte[] bArr, long j3, long j4, byte[] bArr2, byte[] bArr3, byte[] bArr4, int i, long j5, byte[] bArr5) {
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        byte[] bArr6 = new byte[bArr.length + 16 + 4 + 16 + 4 + bArr2.length + 4 + bArr3.length + 4 + bArr4.length + 1 + 4 + 4 + bArr5.length + 4];
        C4393util.int64_to_buf32(bArr6, 0, bArr6.length + j);
        C4393util.int64_to_buf32(bArr6, 4, (bArr6.length - 4) - 4);
        C4393util.int64_to_buf32(bArr6, 8, j2);
        C4393util.int32_to_buf(bArr6, 12, bArr.length + 4);
        System.arraycopy(bArr, 0, bArr6, 16, bArr.length);
        int length = bArr.length + 16;
        C4393util.int64_to_buf32(bArr6, length, j3);
        int i2 = length + 4;
        C4393util.int64_to_buf32(bArr6, i2, j4);
        int i3 = i2 + 16;
        C4393util.int32_to_buf(bArr6, i3, bArr2.length + 4);
        int i4 = i3 + 4;
        System.arraycopy(bArr2, 0, bArr6, i4, bArr2.length);
        int length2 = i4 + bArr2.length;
        C4393util.int32_to_buf(bArr6, length2, bArr3.length + 4);
        int i5 = length2 + 4;
        System.arraycopy(bArr3, 0, bArr6, i5, bArr3.length);
        int length3 = i5 + bArr3.length;
        C4393util.int32_to_buf(bArr6, length3, bArr4.length + 4);
        int i6 = length3 + 4;
        System.arraycopy(bArr4, 0, bArr6, i6, bArr4.length);
        int length4 = i6 + bArr4.length;
        C4393util.int8_to_buf(bArr6, length4, i);
        int i7 = length4 + 1;
        C4393util.int64_to_buf32(bArr6, i7, j5);
        int i8 = i7 + 4;
        C4393util.int32_to_buf(bArr6, i8, bArr5.length + 4);
        int i9 = i8 + 4;
        System.arraycopy(bArr5, 0, bArr6, i9, bArr5.length);
        int length5 = i9 + bArr5.length;
        C4393util.int64_to_buf32(bArr6, length5, 4 + j);
        int i10 = length5 + 4;
        return bArr6;
    }

    /* renamed from: a */
    public byte[] m212a(byte[] bArr, boolean z, byte[] bArr2, long j, long j2, TransReqContext transReqContext) {
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        int i = true == z ? 1 : 0;
        byte[] bArr3 = new byte[0];
        if (this.f5241x.f5313r != null && this.f5241x.f5313r.length > 0) {
            byte[] m306a = new C4240bh().m306a(this.f5241x.f5313r);
            bArr3 = new byte[m306a.length + 2];
            C4393util.int16_to_buf(bArr3, 0, 1);
            System.arraycopy(m306a, 0, bArr3, 2, m306a.length);
        }
        this.f5177I = bArr2.length + 13 + 1 + bArr3.length;
        byte[] bArr4 = new byte[bArr.length + this.f5177I];
        C4393util.int8_to_buf(bArr4, 0, i);
        C4393util.int16_to_buf(bArr4, 1, bArr.length);
        C4393util.int64_to_buf32(bArr4, 3, j);
        C4393util.int64_to_buf32(bArr4, 7, j2);
        C4393util.int16_to_buf(bArr4, 11, bArr2.length);
        System.arraycopy(bArr2, 0, bArr4, 13, bArr2.length);
        int length = bArr2.length + 13;
        C4393util.int8_to_buf(bArr4, length, bArr3.length);
        int i2 = length + 1;
        System.arraycopy(bArr3, 0, bArr4, i2, bArr3.length);
        int length2 = i2 + bArr3.length;
        System.arraycopy(bArr, 0, bArr4, length2, bArr.length);
        int length3 = length2 + bArr.length;
        return m133a(bArr4, transReqContext.requestEm, transReqContext.wtSessionTicket, transReqContext.wtSessionTicketKey);
    }

    /* renamed from: a */
    public byte[] m211a(byte[] bArr, byte[] bArr2, long j, long j2, int i) {
        int i2;
        if (bArr2 == null) {
            bArr2 = new byte[0];
            i2 = i == 0 ? 0 : 3;
        } else {
            i2 = i == 0 ? 1 : 2;
        }
        byte[] bArr3 = new byte[0];
        if (this.f5241x.f5313r != null && this.f5241x.f5313r.length > 0) {
            byte[] m306a = new C4240bh().m306a(this.f5241x.f5313r);
            bArr3 = new byte[m306a.length + 2];
            C4393util.int16_to_buf(bArr3, 0, 1);
            System.arraycopy(m306a, 0, bArr3, 2, m306a.length);
        }
        byte[] bArr4 = bArr3;
        this.f5177I = bArr2.length + 13 + 1 + bArr4.length;
        byte[] bArr5 = new byte[bArr.length + this.f5177I];
        C4393util.int8_to_buf(bArr5, 0, i2);
        C4393util.int16_to_buf(bArr5, 1, bArr.length);
        C4393util.int64_to_buf32(bArr5, 3, j);
        C4393util.int64_to_buf32(bArr5, 7, j2);
        C4393util.int16_to_buf(bArr5, 11, bArr2.length);
        System.arraycopy(bArr2, 0, bArr5, 13, bArr2.length);
        int length = bArr2.length + 13;
        C4393util.int8_to_buf(bArr5, length, bArr4.length);
        int i3 = length + 1;
        System.arraycopy(bArr4, 0, bArr5, i3, bArr4.length);
        int length2 = i3 + bArr4.length;
        System.arraycopy(bArr, 0, bArr5, length2, bArr.length);
        int length3 = length2 + bArr.length;
        return m137a(bArr5);
    }

    @Override // oicq.wlogin_sdk.request.oicq_request
    /* renamed from: c */
    public int mo117c(boolean z) {
        if (z) {
        }
        return 8080;
    }

    @Override // oicq.wlogin_sdk.request.oicq_request
    /* renamed from: d */
    public int mo100d(byte[] bArr, int i, int i2) {
        if (i2 < this.f5178J) {
            return C4393util.E_PK_LEN;
        }
        int c = m115c(bArr, i);
        m139a((ErrMsg) null);
        C4393util.LOGD(getClass().getName(), "type=" + c);
        return c;
    }

    @Override // oicq.wlogin_sdk.request.oicq_request
    /* renamed from: d */
    public Socket mo112d() {
        if (this.f5241x.f5296ai != null) {
            C4393util.LOGD("_transport_sk", "_transport_sk" + this.f5241x.f5296ai.toString());
        } else {
            C4393util.LOGD("_transport_sk", "_transport_sk null");
        }
        return this.f5241x.f5296ai;
    }
}
