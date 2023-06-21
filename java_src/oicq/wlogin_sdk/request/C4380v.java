package oicq.wlogin_sdk.request;

import android.os.Build;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import oicq.wlogin_sdk.report.report_t;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.request.v */
/* loaded from: classes.dex */
public class C4380v extends C4369k {

    /* renamed from: b */
    public final int f5315b = 1737040709;

    /* renamed from: c */
    public final int f5316c = 33;

    /* renamed from: d */
    public final String f5317d = "x'Z8mSi,V(Wu~.v:";

    public C4380v(C4379u c4379u) {
        this.f5204a = c4379u;
    }

    /* renamed from: a */
    public int m63a(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, long j2, int i) {
        if (i == 0) {
            return m61b(j, bArr, bArr2, bArr3, j2);
        }
        if (i == 1) {
            return m60c(j, bArr, bArr2, bArr3, j2);
        }
        return 0;
    }

    /* renamed from: a */
    public byte[] m64a(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, long j2) {
        if (bArr2 == null || bArr2.length == 0) {
            byte[] encrypt = cryptor.encrypt(bArr, 0, bArr.length, "x'Z8mSi,V(Wu~.v:".getBytes());
            byte[] bArr4 = new byte[encrypt.length + 10];
            C4393util.int32_to_buf(bArr4, 0, (int) j);
            C4393util.int32_to_buf(bArr4, 4, (int) j2);
            C4393util.int16_to_buf(bArr4, 8, 0);
            System.arraycopy(encrypt, 0, bArr4, 10, encrypt.length);
            int length = encrypt.length + 10;
            return bArr4;
        }
        byte[] encrypt2 = cryptor.encrypt(bArr, 0, bArr.length, bArr3);
        byte[] bArr5 = new byte[bArr2.length + 10 + encrypt2.length];
        C4393util.int32_to_buf(bArr5, 0, (int) j);
        C4393util.int32_to_buf(bArr5, 4, (int) j2);
        C4393util.int16_to_buf(bArr5, 8, bArr2.length);
        System.arraycopy(bArr2, 0, bArr5, 10, bArr2.length);
        int length2 = bArr2.length + 10;
        System.arraycopy(encrypt2, 0, bArr5, length2, encrypt2.length);
        int length3 = encrypt2.length + length2;
        return bArr5;
    }

    /* renamed from: a */
    public byte[] m62a(byte[] bArr, long j, long j2, long j3, int i) {
        byte[] bArr2 = new byte[bArr.length + 33];
        C4393util.int32_to_buf(bArr2, 0, 1737040709);
        C4393util.int32_to_buf(bArr2, 4, 0);
        C4393util.int32_to_buf(bArr2, 8, bArr2.length);
        C4393util.int64_to_buf32(bArr2, 12, j);
        C4393util.int64_to_buf32(bArr2, 16, j2);
        C4393util.int64_to_buf32(bArr2, 20, j3 / 1000);
        C4393util.int8_to_buf(bArr2, 24, i);
        System.arraycopy(bArr, 0, bArr2, 33, bArr.length);
        int length = bArr.length + 33;
        return bArr2;
    }

    /* renamed from: b */
    public int m61b(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, long j2) {
        byte[] bArr4;
        long currentTimeMillis = System.currentTimeMillis();
        C4379u.f5281al.commit(Build.VERSION.RELEASE, new String(C4379u.f5251G), "", C4393util.buf_to_string(C4393util.get_ksid(C4379u.f5288t)), new String(C4379u.f5249E), new String(C4379u.f5261Q), new String(C4379u.f5253I), new String(C4379u.f5252H), C4393util.get_release_time(), C4393util.SDK_VERSION);
        try {
            bArr4 = C4379u.f5281al.toJasonObj().toString().getBytes();
        } catch (Throwable th) {
            bArr4 = new byte[0];
        }
        if (bArr4 == null || bArr4.length == 0) {
            return 0;
        }
        byte[] compress = C4393util.compress(bArr4);
        if (compress == null || compress.length == 0) {
            return 0;
        }
        byte[] bArr5 = new byte[compress.length + 4];
        C4393util.int8_to_buf(bArr5, 0, 0);
        C4393util.int8_to_buf(bArr5, 1, 1);
        C4393util.int16_to_buf(bArr5, 2, compress.length);
        System.arraycopy(compress, 0, bArr5, 4, compress.length);
        byte[] m62a = m62a(bArr5, j, j2, currentTimeMillis, 0);
        report_t.delete_file(C4379u.f5288t);
        int b = m170b(m171a(m64a(j, m62a, bArr2, bArr3, j2)));
        C4393util.LOGI("request_report_error(0) rsp: ret=" + b);
        if (b != 0) {
            report_t.write_tofile(C4379u.f5281al, C4379u.f5288t);
            return b;
        }
        C4379u.f5281al.clear_t2();
        return b;
    }

    /* renamed from: c */
    public int m60c(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, long j2) {
        if (this.f5204a.f5300d != null && !C4379u.f5287e.booleanValue()) {
            C4379u.f5287e = true;
            long currentTimeMillis = System.currentTimeMillis();
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd");
            Calendar calendar = Calendar.getInstance();
            int m330a = this.f5204a.f5300d.m330a();
            byte m329g = this.f5204a.f5300d.m329g();
            C4393util.LOGI("bitmap:" + m330a + " network:" + ((int) m329g) + " local network:" + C4393util.get_network_type(C4379u.f5288t));
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= 32) {
                    break;
                }
                if (((1 << i2) & m330a) != 0 && (m329g == 0 || (m329g == 1 && C4393util.get_network_type(C4379u.f5288t) == 2))) {
                    long j3 = currentTimeMillis - (86400000 * i2);
                    calendar.setTimeInMillis(j3);
                    String format = simpleDateFormat.format(calendar.getTime());
                    long logModifyTime = C4393util.getLogModifyTime(C4379u.f5288t, format);
                    if (logModifyTime != 0) {
                        j3 = logModifyTime;
                    }
                    byte[] readLog = C4393util.readLog(C4379u.f5288t, format);
                    byte[] m62a = readLog == null ? new byte[0] : m62a(readLog, j, j2, j3, 1);
                    if (m62a != null && m62a.length > 0) {
                        C4393util.LOGI("request_report_error(1) rsp: ret=" + m170b(m171a(m64a(j, m62a, bArr2, bArr3, j2))) + "(" + format + ")");
                    }
                }
                i = i2 + 1;
            }
        }
        this.f5204a.f5300d = null;
        C4379u.f5287e = false;
        return 0;
    }
}
