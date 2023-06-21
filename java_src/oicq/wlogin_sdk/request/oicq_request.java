package oicq.wlogin_sdk.request;

import android.content.Context;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URL;
import java.util.Random;
import oicq.wlogin_sdk.p027b.C4206aa;
import oicq.wlogin_sdk.p027b.C4207ab;
import oicq.wlogin_sdk.p027b.C4209ad;
import oicq.wlogin_sdk.p027b.C4210ae;
import oicq.wlogin_sdk.p027b.C4213ah;
import oicq.wlogin_sdk.p027b.C4214ai;
import oicq.wlogin_sdk.p027b.C4215aj;
import oicq.wlogin_sdk.p027b.C4216ak;
import oicq.wlogin_sdk.p027b.C4219an;
import oicq.wlogin_sdk.p027b.C4221ap;
import oicq.wlogin_sdk.p027b.C4222aq;
import oicq.wlogin_sdk.p027b.C4225at;
import oicq.wlogin_sdk.p027b.C4226au;
import oicq.wlogin_sdk.p027b.C4229ax;
import oicq.wlogin_sdk.p027b.C4230ay;
import oicq.wlogin_sdk.p027b.C4231az;
import oicq.wlogin_sdk.p027b.C4232b;
import oicq.wlogin_sdk.p027b.C4234bb;
import oicq.wlogin_sdk.p027b.C4235bc;
import oicq.wlogin_sdk.p027b.C4236bd;
import oicq.wlogin_sdk.p027b.C4237be;
import oicq.wlogin_sdk.p027b.C4239bg;
import oicq.wlogin_sdk.p027b.C4240bh;
import oicq.wlogin_sdk.p027b.C4241bi;
import oicq.wlogin_sdk.p027b.C4242bj;
import oicq.wlogin_sdk.p027b.C4244bl;
import oicq.wlogin_sdk.p027b.C4245bm;
import oicq.wlogin_sdk.p027b.C4249bq;
import oicq.wlogin_sdk.p027b.C4250br;
import oicq.wlogin_sdk.p027b.C4252bt;
import oicq.wlogin_sdk.p027b.C4253bu;
import oicq.wlogin_sdk.p027b.C4256bx;
import oicq.wlogin_sdk.p027b.C4261cb;
import oicq.wlogin_sdk.p027b.C4264ce;
import oicq.wlogin_sdk.p027b.C4265cf;
import oicq.wlogin_sdk.p027b.C4267ch;
import oicq.wlogin_sdk.p027b.C4270ck;
import oicq.wlogin_sdk.p027b.C4273cn;
import oicq.wlogin_sdk.p027b.C4274co;
import oicq.wlogin_sdk.p027b.C4275cp;
import oicq.wlogin_sdk.p027b.C4279e;
import oicq.wlogin_sdk.p027b.C4280f;
import oicq.wlogin_sdk.p027b.C4281g;
import oicq.wlogin_sdk.p027b.C4282h;
import oicq.wlogin_sdk.p027b.C4283i;
import oicq.wlogin_sdk.p027b.C4285k;
import oicq.wlogin_sdk.p027b.C4287m;
import oicq.wlogin_sdk.p027b.C4288n;
import oicq.wlogin_sdk.p027b.C4289o;
import oicq.wlogin_sdk.p027b.C4290p;
import oicq.wlogin_sdk.p027b.C4291q;
import oicq.wlogin_sdk.p027b.C4293s;
import oicq.wlogin_sdk.p027b.C4294t;
import oicq.wlogin_sdk.p027b.C4296v;
import oicq.wlogin_sdk.p027b.C4297w;
import oicq.wlogin_sdk.p027b.C4298x;
import oicq.wlogin_sdk.p027b.C4299y;
import oicq.wlogin_sdk.p027b.C4300z;
import oicq.wlogin_sdk.report.report_t3;
import oicq.wlogin_sdk.sharemem.WloginSigInfo;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.EcdhCrypt;
import oicq.wlogin_sdk.tools.ErrMsg;
import oicq.wlogin_sdk.tools.InternationMsg;
import oicq.wlogin_sdk.tools.MD5;
import oicq.wlogin_sdk.tools.cryptor;
/* loaded from: classes.dex */
public class oicq_request {

    /* renamed from: C */
    static String[] f5210C = {"111.30.137.20", "123.126.122.126", "123.151.176.23", "120.198.203.150", "14.17.41.156", "163.177.71.159", "101.227.130.77", "117.135.172.187", "140.207.69.123"};

    /* renamed from: D */
    static String[] f5211D = {"180.163.15.182", "183.192.200.28", "223.167.105.36", "183.61.56.18", "183.232.119.221", "163.177.86.123", "123.151.92.19", "125.39.52.120", "123.126.121.172", "117.135.169.107"};

    /* renamed from: F */
    static int f5212F = 0;

    /* renamed from: G */
    static String f5213G = "";

    /* renamed from: H */
    static String f5214H = "";

    /* renamed from: a */
    public Context f5218a;

    /* renamed from: w */
    byte f5240w;

    /* renamed from: x */
    public C4379u f5241x;

    /* renamed from: b */
    int f5219b = 4096;

    /* renamed from: c */
    int f5220c = 0;

    /* renamed from: d */
    int f5221d = 27;

    /* renamed from: e */
    int f5222e = 0;

    /* renamed from: f */
    public int f5223f = 15;

    /* renamed from: g */
    protected int f5224g = 0;

    /* renamed from: h */
    protected byte[] f5225h = new byte[this.f5219b];

    /* renamed from: i */
    protected int f5226i = 8001;

    /* renamed from: j */
    protected int f5227j = 0;

    /* renamed from: k */
    protected int f5228k = 3;

    /* renamed from: l */
    protected int f5229l = 0;

    /* renamed from: m */
    protected int f5230m = 0;

    /* renamed from: n */
    protected int f5231n = 2;

    /* renamed from: o */
    protected int f5232o = 0;

    /* renamed from: p */
    protected int f5233p = 0;

    /* renamed from: q */
    InetSocketAddress f5234q = null;

    /* renamed from: r */
    int f5235r = 0;

    /* renamed from: s */
    byte[] f5236s = new byte[6144];

    /* renamed from: t */
    protected int f5237t = 0;

    /* renamed from: u */
    protected int f5238u = 0;

    /* renamed from: v */
    protected String f5239v = "";

    /* renamed from: y */
    protected EncryptionMethod f5242y = EncryptionMethod.EM_ECDH;

    /* renamed from: z */
    protected boolean f5243z = false;

    /* renamed from: A */
    protected byte[] f5215A = new byte[0];

    /* renamed from: B */
    protected byte[] f5216B = new byte[0];

    /* renamed from: E */
    int f5217E = 0;

    /* loaded from: classes.dex */
    public enum EncryptionMethod {
        EM_ECDH,
        EM_ST
    }

    /* renamed from: a */
    private void m155a(int i, int i2, long j, int i3, int i4, int i5, int i6) {
        m154a(i, i2, j, !this.f5243z ? 7 : 135, i3, i4, i5, i6);
    }

    /* renamed from: a */
    private void m154a(int i, int i2, long j, int i3, int i4, int i5, int i6, int i7) {
        int i8 = this.f5227j + 1;
        this.f5227j = i8;
        this.f5220c = 0;
        C4393util.int8_to_buf(this.f5225h, this.f5220c, 2);
        this.f5220c++;
        C4393util.int16_to_buf(this.f5225h, this.f5220c, this.f5221d + 2 + i7);
        this.f5220c += 2;
        C4393util.int16_to_buf(this.f5225h, this.f5220c, i);
        this.f5220c += 2;
        C4393util.int16_to_buf(this.f5225h, this.f5220c, i2);
        this.f5220c += 2;
        C4393util.int16_to_buf(this.f5225h, this.f5220c, i8);
        this.f5220c += 2;
        C4393util.int32_to_buf(this.f5225h, this.f5220c, (int) j);
        this.f5220c += 4;
        C4393util.int8_to_buf(this.f5225h, this.f5220c, 3);
        this.f5220c++;
        C4393util.int8_to_buf(this.f5225h, this.f5220c, i3);
        this.f5220c++;
        C4393util.int8_to_buf(this.f5225h, this.f5220c, i4);
        this.f5220c++;
        C4393util.int32_to_buf(this.f5225h, this.f5220c, 2);
        this.f5220c += 4;
        C4393util.int32_to_buf(this.f5225h, this.f5220c, i5);
        this.f5220c += 4;
        C4393util.int32_to_buf(this.f5225h, this.f5220c, i6);
        this.f5220c += 4;
    }

    /* renamed from: a */
    private void m153a(int i, int i2, long j, int i3, int i4, int i5, byte[] bArr) {
        m155a(i, i2, j, i3, i4, i5, bArr.length);
        m136a(bArr, bArr.length);
        m160a();
    }

    /* renamed from: a */
    private void m152a(int i, long j, int i2, int i3, boolean z, boolean z2) {
        report_t3 report_t3Var = new report_t3();
        report_t3Var._cmd = this.f5237t;
        report_t3Var._sub = this.f5238u;
        report_t3Var._rst2 = i;
        report_t3Var._used = (int) (System.currentTimeMillis() - j);
        report_t3Var._try = i3;
        report_t3Var._host = f5214H;
        if (report_t3Var._host == null) {
            report_t3Var._host = "";
        }
        if (this.f5234q == null) {
            report_t3Var._ip = "";
        } else {
            report_t3Var._ip = this.f5234q.getAddress().getHostAddress();
        }
        report_t3Var._port = mo117c(z);
        report_t3Var._conn = i2;
        report_t3Var._net = C4379u.f5248D;
        report_t3Var._str = "";
        report_t3Var._slen = 0;
        report_t3Var._rlen = 0;
        if (!z) {
            report_t3Var._wap = 0;
        } else if (z2) {
            report_t3Var._wap = 2;
        } else {
            report_t3Var._wap = 1;
        }
        C4379u.f5281al.add_t3(report_t3Var);
    }

    /* renamed from: a */
    public static void m151a(int i, String str) {
        f5212F = i;
        f5213G = str;
    }

    /* renamed from: b */
    private void m128b(int i, int i2, long j, int i3, int i4, int i5, int i6) {
        m154a(i, i2, j, 69, i3, i4, i5, i6);
    }

    /* renamed from: b */
    private void m127b(int i, int i2, long j, int i3, int i4, int i5, byte[] bArr) {
        m128b(i, i2, j, i3, i4, i5, bArr.length);
        m136a(bArr, bArr.length);
        m160a();
    }

    /* renamed from: b */
    public static byte[] m120b(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    /* renamed from: a */
    public int m159a(int i) {
        C4379u.m85b(this.f5241x.f5303h)._last_flowid = i;
        return i;
    }

    /* renamed from: a */
    public int m146a(String str, boolean z, WUserSigInfo wUserSigInfo) {
        int m125b = this.f5241x.m74e() ? m125b(str, z, wUserSigInfo) : m111e();
        if (m125b == -1000) {
            ErrMsg errMsg = new ErrMsg();
            errMsg.setMessage(InternationMsg.m49a(InternationMsg.MSG_TYPE.MSG_4));
            m139a(errMsg);
        }
        return m125b;
    }

    /* renamed from: a */
    public int m143a(C4229ax c4229ax) {
        C4241bi c4241bi = new C4241bi();
        C4240bh c4240bh = new C4240bh();
        byte[] c = c4229ax.m318c();
        int length = c.length;
        if (c4241bi.m316c(c, 2, length) > 0) {
            m141a(c4241bi);
        }
        if (c4240bh.m316c(c, 2, length) > 0) {
            this.f5241x.f5308m = 1;
            this.f5241x.f5313r = c4240bh.m318c();
            C4393util.LOGI("get rollback sig", "");
            return 0;
        }
        return 0;
    }

    /* renamed from: a */
    public int m141a(C4241bi c4241bi) {
        byte[] c = c4241bi.m318c();
        if (c != null && c.length > 2) {
            int buf_to_int8 = C4393util.buf_to_int8(c, 1);
            int i = 2;
            for (int i2 = 0; i2 < buf_to_int8 && c.length >= i + 1; i2++) {
                int buf_to_int82 = C4393util.buf_to_int8(c, i);
                int i3 = i + 1;
                if (c.length < i3 + 2) {
                    break;
                }
                int buf_to_int16 = C4393util.buf_to_int16(c, i3);
                int i4 = i3 + 2;
                if (c.length < i4 + buf_to_int16) {
                    break;
                }
                byte[] bArr = new byte[buf_to_int16];
                System.arraycopy(c, i4, bArr, 0, buf_to_int16);
                int i5 = i4 + buf_to_int16;
                if (c.length < i5 + 2) {
                    break;
                }
                int buf_to_int162 = C4393util.buf_to_int16(c, i5);
                i = i5 + 2;
                m149a(buf_to_int82, bArr, buf_to_int162);
            }
        }
        return 0;
    }

    /* renamed from: a */
    public int m134a(byte[] bArr, int i, int i2, byte[] bArr2) {
        byte[] decrypt = cryptor.decrypt(bArr, i, i2, bArr2);
        if (decrypt == null) {
            return C4393util.E_DECRYPT;
        }
        this.f5224g = decrypt.length;
        if (decrypt.length + this.f5223f + 2 > this.f5219b) {
            this.f5219b = decrypt.length + this.f5223f + 2;
            byte[] bArr3 = new byte[this.f5219b];
            System.arraycopy(this.f5225h, 0, bArr3, 0, this.f5220c);
            this.f5225h = bArr3;
        }
        this.f5220c = 0;
        System.arraycopy(decrypt, 0, this.f5225h, i, decrypt.length);
        this.f5220c = decrypt.length + this.f5223f + 2 + this.f5220c;
        return 0;
    }

    /* renamed from: a */
    public String m150a(int i, boolean z) {
        String str = "";
        int i2 = i / 2;
        if (f5212F != 0 && f5213G != null && f5213G.length() > 0) {
            str = f5213G;
        } else if (i2 < 1) {
            if (z) {
                if (C4379u.f5248D == 1) {
                    str = new String(C4393util.get_wap_server_host1(C4379u.f5288t));
                } else if (C4379u.f5248D == 2) {
                    str = new String(C4393util.get_wap_server_host2(C4379u.f5288t));
                }
            } else if (C4379u.f5248D == 1) {
                str = new String(C4393util.get_server_host1(C4379u.f5288t));
            } else if (C4379u.f5248D == 2) {
                str = new String(C4393util.get_server_host2(C4379u.f5288t));
            }
            if (str.length() <= 0) {
                str = m124b(z);
            }
        } else {
            str = i2 < 2 ? m124b(z) : m138a(z);
        }
        f5214H = str;
        return str;
    }

    /* renamed from: a */
    public String m138a(boolean z) {
        return !z ? f5210C[((int) (Math.random() * 2.147483647E9d)) % f5210C.length] : f5211D[((int) (Math.random() * 2.147483647E9d)) % f5211D.length];
    }

    /* renamed from: a */
    public void m160a() {
        C4393util.int8_to_buf(this.f5225h, this.f5220c, 3);
        this.f5220c++;
    }

    /* renamed from: a */
    public void m158a(int i, int i2, int i3, long j, int i4, int i5, int i6, int i7, int i8) {
        int i9 = this.f5227j + 1;
        this.f5227j = i9;
        this.f5220c = 0;
        C4393util.int8_to_buf(this.f5225h, this.f5220c, 2);
        this.f5220c++;
        C4393util.int16_to_buf(this.f5225h, this.f5220c, this.f5221d + 2 + i8);
        this.f5220c += 2;
        C4393util.int16_to_buf(this.f5225h, this.f5220c, i);
        this.f5220c += 2;
        C4393util.int16_to_buf(this.f5225h, this.f5220c, i2);
        this.f5220c += 2;
        C4393util.int16_to_buf(this.f5225h, this.f5220c, i9);
        this.f5220c += 2;
        C4393util.int32_to_buf(this.f5225h, this.f5220c, (int) j);
        this.f5220c += 4;
        C4393util.int8_to_buf(this.f5225h, this.f5220c, 3);
        this.f5220c++;
        C4393util.int8_to_buf(this.f5225h, this.f5220c, 7);
        this.f5220c++;
        C4393util.int8_to_buf(this.f5225h, this.f5220c, i4);
        this.f5220c++;
        C4393util.int32_to_buf(this.f5225h, this.f5220c, i5);
        this.f5220c += 4;
        C4393util.int32_to_buf(this.f5225h, this.f5220c, i6);
        this.f5220c += 4;
        C4393util.int32_to_buf(this.f5225h, this.f5220c, i7);
        this.f5220c += 4;
    }

    /* renamed from: a */
    public void m157a(int i, int i2, int i3, long j, int i4, int i5, int i6, int i7, byte[] bArr) {
        m156a(i, i2, i3, j, i4, i5, i6, i7, bArr, bArr.length);
    }

    /* renamed from: a */
    public void m156a(int i, int i2, int i3, long j, int i4, int i5, int i6, int i7, byte[] bArr, int i8) {
        m158a(i, i2, i3, j, i4, i5, i6, i7, i8);
        m136a(bArr, i8);
        m160a();
    }

    /* renamed from: a */
    void m149a(int i, byte[] bArr, int i2) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (i == 1) {
            if (C4379u.f5248D == 1) {
                C4393util.set_server_host1(C4379u.f5288t, bArr);
            } else if (C4379u.f5248D == 2) {
                C4393util.set_server_host2(C4379u.f5288t, bArr);
            }
        } else if (i == 2) {
            if (C4379u.f5248D == 1) {
                C4393util.set_wap_server_host1(C4379u.f5288t, bArr);
            } else if (C4379u.f5248D == 2) {
                C4393util.set_wap_server_host2(C4379u.f5288t, bArr);
            }
        }
        C4393util.LOGI("net type:" + C4379u.f5248D + " type:" + i + " host:" + new String(bArr) + " port:" + i2, "" + this.f5241x.f5301f);
    }

    /* renamed from: a */
    public void m148a(long j, byte[] bArr) {
        m153a(this.f5226i, this.f5237t, j, this.f5230m, C4379u.f5291w, this.f5233p, bArr);
    }

    /* renamed from: a */
    public void m147a(long j, byte[] bArr, EncryptionMethod encryptionMethod) {
        if (encryptionMethod == EncryptionMethod.EM_ST) {
            m126b(j, bArr);
        } else if (encryptionMethod == EncryptionMethod.EM_ECDH) {
            m148a(j, bArr);
        } else {
            C4393util.LOGI("getRequestEncrptedPackage unknown encryption method " + encryptionMethod, "" + j);
        }
    }

    /* renamed from: a */
    public void mo145a(Socket socket) {
        this.f5241x.f5295ah = socket;
    }

    /* renamed from: a */
    public void m144a(C4225at c4225at) {
        try {
            ErrMsg errMsg = new ErrMsg();
            if (c4225at != null) {
                errMsg.setType(c4225at.m334a());
                errMsg.setTitle(new String(c4225at.m333g()));
                errMsg.setMessage(new String(c4225at.m332h()));
                errMsg.setOtherinfo(new String(c4225at.m331i()));
                new C4363e(C4379u.f5288t, errMsg).start();
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public void m140a(WloginSigInfo wloginSigInfo) {
        if (true == wloginSigInfo.isWtSessionTicketExpired() || wloginSigInfo.wtSessionTicket == null || wloginSigInfo.wtSessionTicketKey == null) {
            return;
        }
        this.f5215A = (byte[]) wloginSigInfo.wtSessionTicket.clone();
        this.f5216B = (byte[]) wloginSigInfo.wtSessionTicketKey.clone();
    }

    /* renamed from: a */
    public void m139a(ErrMsg errMsg) {
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        m85b._last_err_msg = new ErrMsg(0, "", "", "");
        if (errMsg != null) {
            try {
                m85b._last_err_msg = (ErrMsg) errMsg.clone();
            } catch (CloneNotSupportedException e) {
                m85b._last_err_msg = new ErrMsg(0, "", "", "");
            }
        }
    }

    /* renamed from: a */
    public void m136a(byte[] bArr, int i) {
        if (this.f5220c + i + 1 > this.f5219b) {
            this.f5219b = this.f5220c + i + 1 + 128;
            byte[] bArr2 = new byte[this.f5219b];
            System.arraycopy(this.f5225h, 0, bArr2, 0, this.f5220c);
            this.f5225h = bArr2;
        }
        System.arraycopy(bArr, 0, this.f5225h, this.f5220c, i);
        this.f5220c += i;
    }

    /* renamed from: a */
    public byte[] m142a(C4235bc c4235bc) {
        C4283i c4283i = new C4283i();
        C4289o c4289o = new C4289o();
        C4236bd c4236bd = new C4236bd();
        C4221ap c4221ap = new C4221ap();
        byte[] c = c4235bc.m318c();
        int length = c.length;
        if (c4283i.m316c(c, 2, length) >= 0 && c4289o.m316c(c, 2, length) >= 0 && c4236bd.m316c(c, 2, length) >= 0) {
            byte[] b = c4283i.m322b();
            byte[] b2 = c4289o.m322b();
            byte[] b3 = c4236bd.m322b();
            byte[] m341a = c4221ap.m341a(C4379u.f5245A);
            byte[] bArr = new byte[b.length + 3 + b2.length + b3.length + m341a.length];
            bArr[0] = 64;
            C4393util.int16_to_buf(bArr, 1, 4);
            System.arraycopy(b, 0, bArr, 3, b.length);
            int length2 = b.length + 3;
            System.arraycopy(b2, 0, bArr, length2, b2.length);
            int length3 = length2 + b2.length;
            System.arraycopy(b3, 0, bArr, length3, b3.length);
            int length4 = length3 + b3.length;
            System.arraycopy(m341a, 0, bArr, length4, m341a.length);
            int length5 = length4 + m341a.length;
            return bArr;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public byte[] m137a(byte[] bArr) {
        return this.f5241x.f5308m == 0 ? m130a(bArr, this.f5241x.f5299c, this.f5241x.f5309n, this.f5241x.f5311p) : m132a(bArr, this.f5241x.f5299c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public byte[] m135a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[bArr.length + 4];
        C4393util.int16_to_buf(bArr2, 0, i);
        C4393util.int16_to_buf(bArr2, 2, i2);
        System.arraycopy(bArr, 0, bArr2, 4, bArr.length);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public byte[] m133a(byte[] bArr, EncryptionMethod encryptionMethod, byte[] bArr2, byte[] bArr3) {
        if (EncryptionMethod.EM_ST == encryptionMethod) {
            return m119b(bArr, bArr2, bArr3);
        }
        if (EncryptionMethod.EM_ECDH == encryptionMethod) {
            return m137a(bArr);
        }
        C4393util.LOGI("encryptBody unknown encryption method " + encryptionMethod, "");
        return null;
    }

    /* renamed from: a */
    byte[] m132a(byte[] bArr, byte[] bArr2) {
        if (bArr == null || bArr2 == null) {
            return new byte[0];
        }
        int i = this.f5241x.f5308m == 2 ? 3 : 2;
        byte[] encrypt = cryptor.encrypt(bArr, 0, bArr.length, bArr2);
        byte[] bArr3 = new byte[bArr2.length + 2 + 2 + 2 + encrypt.length];
        C4393util.int8_to_buf(bArr3, 0, 1);
        C4393util.int8_to_buf(bArr3, 1, i);
        System.arraycopy(bArr2, 0, bArr3, 2, bArr2.length);
        int length = bArr2.length + 2;
        C4393util.int16_to_buf(bArr3, length, 258);
        int i2 = length + 2;
        C4393util.int16_to_buf(bArr3, i2, 0);
        int i3 = i2 + 2;
        System.arraycopy(encrypt, 0, bArr3, i3, encrypt.length);
        int length2 = i3 + encrypt.length;
        return bArr3;
    }

    /* renamed from: a */
    byte[] m131a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        byte[] encrypt = cryptor.encrypt(bArr, 0, bArr.length, bArr3);
        byte[] bArr4 = new byte[bArr2.length + 2 + encrypt.length];
        C4393util.int16_to_buf(bArr4, 0, bArr2.length);
        System.arraycopy(bArr2, 0, bArr4, 2, bArr2.length);
        int length = bArr2.length + 2;
        System.arraycopy(encrypt, 0, bArr4, length, encrypt.length);
        int length2 = encrypt.length + length;
        return bArr4;
    }

    /* renamed from: a */
    byte[] m130a(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        if (bArr == null || bArr2 == null || bArr3 == null || bArr4 == null) {
            return new byte[0];
        }
        byte[] encrypt = cryptor.encrypt(bArr, 0, bArr.length, bArr4);
        byte[] bArr5 = new byte[bArr2.length + 2 + 2 + 2 + bArr3.length + encrypt.length];
        C4393util.int8_to_buf(bArr5, 0, 1);
        C4393util.int8_to_buf(bArr5, 1, 1);
        System.arraycopy(bArr2, 0, bArr5, 2, bArr2.length);
        int length = bArr2.length + 2;
        C4393util.int16_to_buf(bArr5, length, 258);
        int i = length + 2;
        C4393util.int16_to_buf(bArr5, i, bArr3.length);
        int i2 = i + 2;
        System.arraycopy(bArr3, 0, bArr5, i2, bArr3.length);
        int length2 = i2 + bArr3.length;
        System.arraycopy(encrypt, 0, bArr5, length2, encrypt.length);
        int length3 = encrypt.length + length2;
        return bArr5;
    }

    /* renamed from: b */
    public int m129b() {
        int i;
        int i2;
        if (this.f5220c <= this.f5223f + 2) {
            return C4393util.E_PK_LEN;
        }
        this.f5224g = (i - this.f5223f) - 2;
        int buf_to_int16 = C4393util.buf_to_int16(this.f5225h, 13);
        C4393util.LOGI("enrypt method " + this.f5242y + " rsp flag " + buf_to_int16, "");
        if (this.f5242y == EncryptionMethod.EM_ECDH && buf_to_int16 == 0) {
            if (this.f5241x.f5308m == 0) {
                i2 = m134a(this.f5225h, this.f5223f + 1, this.f5224g, this.f5241x.f5311p);
                if (i2 < 0) {
                    C4393util.LOGI("use ecdh decrypt_body failed", "");
                    i2 = m134a(this.f5225h, this.f5223f + 1, this.f5224g, this.f5241x.f5299c);
                    if (i2 < 0) {
                        C4393util.LOGI("use kc decrypt_body failed", "");
                    }
                }
            } else {
                i2 = m134a(this.f5225h, this.f5223f + 1, this.f5224g, this.f5241x.f5299c);
                if (i2 < 0) {
                    C4393util.LOGI("use kc decrypt_body failed", "");
                }
            }
        } else if (this.f5242y == EncryptionMethod.EM_ST && 3 == buf_to_int16) {
            i2 = m134a(this.f5225h, this.f5223f + 1, this.f5224g, this.f5216B);
            if (i2 < 0) {
                C4393util.LOGI("use session key decrypt_body failed", "");
            }
        } else if (this.f5242y == EncryptionMethod.EM_ECDH && true == this.f5243z && 4 == buf_to_int16) {
            byte[] decrypt = cryptor.decrypt(this.f5225h, this.f5223f + 1, this.f5224g, this.f5241x.f5311p);
            if (decrypt == null) {
                C4393util.LOGI("decrypted outer body failed", "" + this.f5241x.f5301f);
                return C4393util.E_DECRYPT;
            }
            int buf_to_int162 = C4393util.buf_to_int16(decrypt, 0);
            if (buf_to_int162 > decrypt.length - 2) {
                C4393util.LOGI("peer public key len wrong " + buf_to_int162, "" + this.f5241x.f5301f);
                return C4393util.E_PK_LEN;
            }
            byte[] bArr = new byte[buf_to_int162];
            System.arraycopy(decrypt, 2, bArr, 0, buf_to_int162);
            byte[] calShareKeyMd5ByPeerPublicKey = new EcdhCrypt(this.f5218a).calShareKeyMd5ByPeerPublicKey(bArr);
            if (calShareKeyMd5ByPeerPublicKey == null || calShareKeyMd5ByPeerPublicKey.length == 0) {
                return C4393util.E_DECRYPT;
            }
            byte[] decrypt2 = cryptor.decrypt(decrypt, buf_to_int162 + 2, (decrypt.length - 2) - buf_to_int162, calShareKeyMd5ByPeerPublicKey);
            if (decrypt2 == null) {
                C4379u.f5281al.attr_api(2461266);
                C4393util.LOGI("use share key md5 decrypt failed", "" + this.f5241x.f5301f);
                return C4393util.E_DECRYPT;
            }
            if (this.f5225h.length < this.f5223f + 2 + decrypt2.length) {
                this.f5219b = this.f5223f + 2 + decrypt2.length;
                byte[] bArr2 = new byte[this.f5219b];
                System.arraycopy(this.f5225h, 0, bArr2, 0, this.f5223f + 1);
                this.f5225h = bArr2;
            }
            System.arraycopy(decrypt2, 0, this.f5225h, this.f5223f + 1, decrypt2.length);
            this.f5220c = decrypt2.length + this.f5223f + 2 + this.f5220c;
            i2 = 0;
        } else {
            C4393util.LOGI("unknown encryption method " + this.f5242y, "");
            i2 = C4393util.E_ENCRYPTION_METHOD;
        }
        return i2 >= 0 ? mo100d(this.f5225h, this.f5223f + 1, this.f5224g) : i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00e8  */
    /* JADX WARN: Type inference failed for: r1v10, types: [int] */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m125b(String str, boolean z, WUserSigInfo wUserSigInfo) {
        Exception exc;
        byte[] bArr;
        ?? r1;
        WtloginMsfListener wtloginMsfListener;
        byte[] retData;
        C4393util.LOGI(getClass().getName() + ":snd_rcv_req_msf ...", "" + this.f5241x.f5301f);
        int i = this.f5241x.f5307l;
        byte[] m118c = m118c();
        long currentTimeMillis = System.currentTimeMillis();
        try {
            C4393util.LOGI("WtloginMsfListener uin:" + str + " service_cmd:" + this.f5239v + " timeout:" + i + " flag:" + z, "" + this.f5241x.f5301f);
            wtloginMsfListener = new WtloginMsfListener(str, this.f5239v, m118c, i, z, wUserSigInfo);
            Thread thread = new Thread(wtloginMsfListener);
            thread.start();
            thread.join(i);
            retData = wtloginMsfListener.getRetData();
        } catch (Exception e) {
            exc = e;
            bArr = null;
        }
        try {
            if (retData == null) {
                C4393util.LOGI("recv data from server failed, ret=" + wtloginMsfListener.getRet(), "" + this.f5241x.f5301f);
                r1 = -1000;
                bArr = retData;
            } else {
                m122b(retData, retData.length);
                r1 = 0;
                bArr = retData;
            }
        } catch (Exception e2) {
            bArr = r1;
            exc = e2;
            C4393util.printException(exc, "" + this.f5241x.f5301f);
            r1 = -1000;
            if (this.f5237t != 2066) {
            }
            C4393util.LOGI(getClass().getName() + ":snd_rcv_req_msf ret=" + ((int) r1), "" + this.f5241x.f5301f);
            return r1;
        }
        if (this.f5237t != 2066) {
            report_t3 report_t3Var = new report_t3();
            report_t3Var._cmd = this.f5237t;
            report_t3Var._sub = this.f5238u;
            report_t3Var._rst2 = r1;
            report_t3Var._used = (int) (System.currentTimeMillis() - currentTimeMillis);
            report_t3Var._try = 0;
            report_t3Var._host = "";
            report_t3Var._ip = "";
            report_t3Var._port = 0;
            report_t3Var._conn = 0;
            report_t3Var._net = 0;
            report_t3Var._str = "";
            if (r1 == 0) {
                report_t3Var._slen = m118c.length;
                report_t3Var._rlen = bArr.length;
            } else {
                report_t3Var._slen = 0;
                report_t3Var._rlen = 0;
            }
            report_t3Var._wap = 3;
            C4379u.f5281al.add_t3(report_t3Var);
        }
        C4393util.LOGI(getClass().getName() + ":snd_rcv_req_msf ret=" + ((int) r1), "" + this.f5241x.f5301f);
        return r1;
    }

    /* renamed from: b */
    public int m123b(byte[] bArr) {
        return C4393util.buf_to_int16(bArr, 1);
    }

    /* renamed from: b */
    public String m124b(boolean z) {
        String[] strArr = new String[2];
        if (z) {
            strArr[0] = "wlogin.qq.com";
            strArr[1] = "wlogin1.qq.com";
        } else {
            strArr[0] = "wtlogin.qq.com";
            strArr[1] = "wtlogin1.qq.com";
        }
        return strArr[Math.abs(new Random().nextInt() % strArr.length)];
    }

    /* renamed from: b */
    public void m126b(long j, byte[] bArr) {
        m127b(this.f5226i, this.f5237t, j, this.f5230m, C4379u.f5291w, this.f5233p, bArr);
    }

    /* renamed from: b */
    public void m122b(byte[] bArr, int i) {
        if (i > this.f5219b) {
            this.f5219b = i + 128;
            this.f5225h = new byte[this.f5219b];
        }
        this.f5220c = i;
        System.arraycopy(bArr, 0, this.f5225h, 0, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public byte[] m121b(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[bArr.length + 4];
        C4393util.int16_to_buf(bArr2, 0, i);
        C4393util.int16_to_buf(bArr2, 2, i2);
        System.arraycopy(bArr, 0, bArr2, 4, bArr.length);
        return this.f5241x.f5308m == 0 ? m130a(bArr2, this.f5241x.f5299c, this.f5241x.f5309n, this.f5241x.f5311p) : m132a(bArr2, this.f5241x.f5299c);
    }

    /* renamed from: b */
    protected byte[] m119b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return m131a(bArr, bArr2, bArr3);
    }

    /* renamed from: c */
    public int mo117c(boolean z) {
        if (z) {
        }
        return 443;
    }

    /* renamed from: c */
    public int m115c(byte[] bArr, int i) {
        this.f5240w = bArr[i];
        return bArr[i] & 255;
    }

    /* renamed from: c */
    public void m114c(byte[] bArr, int i, int i2) {
        C4222aq c4222aq = new C4222aq();
        int c = c4222aq.m316c(bArr, i, i2);
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        if (c >= 0) {
            m85b._last_err_msg.setTitle(new String(c4222aq.m340a()));
            m85b._last_err_msg.setMessage(new String(c4222aq.m339g()));
            m85b._last_err_msg.setType(c4222aq.m338h());
            m85b._last_err_msg.setOtherinfo(new String(c4222aq.m337i()));
        }
    }

    /* renamed from: c */
    public byte[] m118c() {
        byte[] bArr = new byte[this.f5220c];
        System.arraycopy(this.f5225h, 0, bArr, 0, this.f5220c);
        return bArr;
    }

    /* renamed from: c */
    public byte[] m116c(byte[] bArr) {
        byte[] decrypt;
        if (C4379u.f5246B == null || C4379u.f5246B.length <= 0) {
            decrypt = cryptor.decrypt(bArr, 0, bArr.length, "%4;7t>;28<fc.5*6".getBytes());
        } else {
            byte[] bArr2 = new byte[16];
            if (C4379u.f5246B.length > bArr2.length) {
                System.arraycopy(C4379u.f5246B, 0, bArr2, 0, bArr2.length);
            } else {
                System.arraycopy(C4379u.f5246B, 0, bArr2, 0, C4379u.f5246B.length);
                for (int length = C4379u.f5246B.length; length < bArr2.length; length++) {
                    bArr2[length] = (byte) (length + 1);
                }
            }
            decrypt = cryptor.decrypt(bArr, 0, bArr.length, bArr2);
            if (decrypt == null || decrypt.length <= 0) {
                decrypt = cryptor.decrypt(bArr, 0, bArr.length, "%4;7t>;28<fc.5*6".getBytes());
            }
        }
        byte[] bArr3 = decrypt == null ? (byte[]) bArr.clone() : decrypt;
        if (bArr3 == null || bArr3.length < 16) {
            return null;
        }
        int length2 = bArr3.length - 16;
        byte[] bArr4 = new byte[length2];
        System.arraycopy(bArr3, 0, bArr4, 0, length2);
        byte[] bArr5 = new byte[16];
        System.arraycopy(bArr3, length2, bArr5, 0, 16);
        C4379u.m85b(this.f5241x.f5303h)._tgtgt_key = bArr5;
        return bArr4;
    }

    /* renamed from: c */
    public byte[] m113c(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (bArr == null || bArr2 == null || bArr3 == null) {
            return new byte[16];
        }
        byte[] bArr4 = new byte[bArr.length + bArr2.length + bArr3.length];
        System.arraycopy(bArr, 0, bArr4, 0, bArr.length);
        int length = bArr.length + 0;
        System.arraycopy(bArr2, 0, bArr4, length, bArr2.length);
        int length2 = length + bArr2.length;
        System.arraycopy(bArr3, 0, bArr4, length2, bArr3.length);
        int length3 = length2 + bArr3.length;
        return MD5.toMD5Byte(bArr4);
    }

    /* renamed from: d */
    public int mo100d(byte[] bArr, int i, int i2) {
        int i3;
        int c;
        byte[] bArr2;
        if (i2 < 5) {
            return C4393util.E_PK_LEN;
        }
        long j = 2160000;
        C4281g c4281g = new C4281g();
        C4282h c4282h = new C4282h();
        C4293s c4293s = new C4293s();
        C4296v c4296v = new C4296v();
        C4290p c4290p = new C4290p();
        C4291q c4291q = new C4291q();
        C4287m c4287m = new C4287m();
        C4294t c4294t = new C4294t();
        C4280f c4280f = new C4280f();
        C4297w c4297w = new C4297w();
        C4279e c4279e = new C4279e();
        C4288n c4288n = new C4288n();
        C4298x c4298x = new C4298x();
        C4299y c4299y = new C4299y();
        C4206aa c4206aa = new C4206aa();
        C4207ab c4207ab = new C4207ab();
        C4213ah c4213ah = new C4213ah();
        C4285k c4285k = new C4285k();
        C4283i c4283i = new C4283i();
        C4289o c4289o = new C4289o();
        C4209ad c4209ad = new C4209ad();
        C4300z c4300z = new C4300z();
        C4216ak c4216ak = new C4216ak();
        C4214ai c4214ai = new C4214ai();
        C4225at c4225at = new C4225at();
        C4226au c4226au = new C4226au();
        C4219an c4219an = new C4219an();
        C4270ck c4270ck = new C4270ck();
        C4230ay c4230ay = new C4230ay();
        C4231az c4231az = new C4231az();
        C4234bb c4234bb = new C4234bb();
        C4236bd c4236bd = new C4236bd();
        C4235bc c4235bc = new C4235bc();
        C4229ax c4229ax = new C4229ax();
        C4239bg c4239bg = new C4239bg();
        C4232b c4232b = new C4232b(1298);
        C4237be c4237be = new C4237be();
        C4242bj c4242bj = new C4242bj();
        C4244bl c4244bl = new C4244bl();
        C4245bm c4245bm = new C4245bm();
        C4249bq c4249bq = new C4249bq();
        C4250br c4250br = new C4250br();
        C4210ae c4210ae = new C4210ae();
        C4252bt c4252bt = new C4252bt();
        C4253bu c4253bu = new C4253bu();
        C4256bx c4256bx = new C4256bx();
        C4273cn c4273cn = new C4273cn();
        C4274co c4274co = new C4274co();
        byte[] bArr3 = null;
        byte[] bArr4 = null;
        C4215aj c4215aj = new C4215aj();
        async_context m85b = C4379u.m85b(this.f5241x.f5303h);
        long j2 = m85b._sappid;
        long j3 = m85b._appid;
        if (this.f5237t == 2064) {
            switch (this.f5238u) {
                case 2:
                    i3 = 2;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 12:
                case 14:
                case 16:
                case 21:
                default:
                    return C4393util.E_SYSTEM;
                case 4:
                    i3 = 3;
                    break;
                case 7:
                    i3 = 6;
                    break;
                case 9:
                    i3 = 0;
                    break;
                case 10:
                case 11:
                    i3 = 1;
                    break;
                case 13:
                    i3 = 4;
                    break;
                case 15:
                    i3 = 5;
                    break;
                case 17:
                case 19:
                    i3 = 0;
                    break;
                case 18:
                    i3 = 7;
                    break;
                case 20:
                    i3 = 0;
                    break;
                case 22:
                    i3 = 0;
                    break;
            }
        } else {
            i3 = 0;
        }
        int m115c = m115c(bArr, i + 2);
        int i4 = i + 5;
        this.f5241x.f5300d = null;
        switch (m115c) {
            case 0:
                if (i3 == 1) {
                    if (this.f5241x.f5298b == null) {
                        return C4393util.E_NO_TGTKEY;
                    }
                    if (c4226au.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                        this.f5241x.f5300d = c4226au;
                    }
                    if (c4229ax.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                        m143a(c4229ax);
                    }
                    c = c4296v.m324a(bArr, i4, (this.f5220c - i4) - 1, this.f5241x.f5298b);
                } else if (i3 == 2) {
                    if (c4253bu.m316c(bArr, i4, this.f5220c - i4) >= 0) {
                        m85b._msalt = c4253bu.m286a();
                    }
                    if (m110f() == 3) {
                        if (c4293s.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                            this.f5241x.f5301f = c4293s.m250a();
                            this.f5241x.m89a(this.f5241x.f5302g, Long.valueOf(this.f5241x.f5301f));
                        }
                        if (c4281g.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                            m85b._t104 = c4281g;
                        }
                        c = 0;
                        break;
                    } else {
                        if (c4226au.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                            this.f5241x.f5300d = c4226au;
                        }
                        if (c4229ax.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                            m143a(c4229ax);
                        }
                        c = c4296v.m324a(bArr, i4, (this.f5220c - i4) - 1, m85b._tgtgt_key);
                    }
                } else if (i3 == 3 || i3 == 7) {
                    if (c4253bu.m316c(bArr, i4, this.f5220c - i4) >= 0) {
                        m85b._msalt = c4253bu.m286a();
                    }
                    if (c4293s.m316c(bArr, i4, this.f5220c - i4) >= 0) {
                        this.f5241x.f5301f = c4293s.m250a();
                        this.f5241x.m89a(this.f5241x.f5302g, Long.valueOf(this.f5241x.f5301f));
                    }
                    c = c4281g.m316c(bArr, i4, this.f5220c - i4);
                    if (c >= 0) {
                        m85b._t104 = c4281g;
                        c = 0;
                        break;
                    }
                } else if (22 == this.f5238u) {
                    c = c4281g.m316c(bArr, i4, this.f5220c - i4);
                    if (c >= 0) {
                        m85b._t104 = c4281g;
                        c = 0;
                        break;
                    }
                } else {
                    if (c4226au.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                        this.f5241x.f5300d = c4226au;
                    }
                    if (c4229ax.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                        m143a(c4229ax);
                    }
                    c = c4296v.m324a(bArr, i4, (this.f5220c - i4) - 1, m85b._tgtgt_key);
                    C4377s.f5244I = 0;
                }
                if (c >= 0) {
                    byte[] c2 = c4296v.m318c();
                    int i5 = 2;
                    int length = c2.length;
                    if (c4225at.m316c(c2, 2, length) > 0) {
                        m144a(c4225at);
                    }
                    if (c4213ah.m316c(c2, 2, length) > 0) {
                        this.f5241x.m87a(c4213ah.m358a(), c4213ah.m357g());
                    }
                    if (c4293s.m316c(c2, 2, length) >= 0) {
                        this.f5241x.f5301f = c4293s.m250a();
                        this.f5241x.m89a(this.f5241x.f5302g, Long.valueOf(this.f5241x.f5301f));
                    }
                    c4290p.m316c(c2, 2, length);
                    c4291q.m316c(c2, 2, length);
                    c4287m.m316c(c2, 2, length);
                    c4294t.m316c(c2, 2, length);
                    c = c4297w.m316c(c2, 2, length);
                    if (c >= 0) {
                        byte[] c3 = c4280f.m316c(c2, 2, length) >= 0 ? c4280f.m318c() : null;
                        if (c4285k.m316c(c2, 2, length) >= 0) {
                            C4393util.set_ksid(C4379u.f5288t, c4285k.m318c());
                        }
                        byte[] c4 = c4279e.m316c(c2, 2, length) >= 0 ? c4279e.m318c() : null;
                        byte[] c5 = c4288n.m316c(c2, 2, length) >= 0 ? c4288n.m318c() : null;
                        byte[] c6 = c4298x.m316c(c2, 2, length) >= 0 ? c4298x.m318c() : null;
                        byte[] c7 = c4206aa.m316c(c2, 2, length) >= 0 ? c4206aa.m318c() : null;
                        byte[] c8 = c4207ab.m316c(c2, 2, length) >= 0 ? c4207ab.m318c() : null;
                        if (c4209ad.m316c(c2, 2, length) >= 0) {
                            byte[] m363a = c4209ad.m363a();
                            bArr4 = c4209ad.m362g();
                            bArr3 = m363a;
                        }
                        if (c4256bx.m316c(c2, 2, length) >= 0) {
                            String str = this.f5241x.f5302g;
                            if (C4393util.check_uin_account(str).booleanValue()) {
                                str = this.f5241x.m73e(this.f5241x.f5301f);
                                if (str != null && str.length() > 0) {
                                    this.f5241x.m88a(str, Long.valueOf(this.f5241x.f5301f), c4256bx.m282a());
                                }
                            } else {
                                this.f5241x.m88a(str, Long.valueOf(this.f5241x.f5301f), c4256bx.m282a());
                            }
                            C4393util.LOGI("put t186: name: " + str + " uin: " + this.f5241x.f5301f + " pwd=" + c4256bx.m282a(), "");
                        }
                        C4393util.LOGI("tgt len:" + C4393util.buf_len(c4287m.m318c()) + " tgt_key len:" + C4393util.buf_len(c4290p.m318c()) + " st len:" + C4393util.buf_len(c4294t.m318c()) + " st_key len:" + C4393util.buf_len(c4291q.m318c()) + " stwx_web len:" + C4393util.buf_len(c3) + " lskey len:" + C4393util.buf_len(c6) + " skey len:" + C4393util.buf_len(c7) + " sig64 len:" + C4393util.buf_len(c8) + " openid len:" + C4393util.buf_len(bArr3) + " openkey len:" + C4393util.buf_len(bArr4) + " pwdflag: " + c4256bx.m315d() + " " + c4256bx.m282a(), "" + this.f5241x.f5301f);
                        if (c4235bc.m316c(c2, 2, length) >= 0) {
                            byte[] m142a = m142a(c4235bc);
                            if (m142a == null || m142a.length <= 0) {
                                this.f5241x.f5305j = new WFastLoginInfo();
                            } else {
                                this.f5241x.f5305j = new WFastLoginInfo(m142a);
                            }
                        }
                        byte[][] bArr5 = (byte[][]) Array.newInstance(Byte.TYPE, 3, 0);
                        if (c4234bb.m316c(c2, 2, length) >= 0) {
                            bArr5[0] = c4234bb.m311a();
                            bArr5[1] = c4234bb.m310g();
                            bArr5[2] = c4234bb.m309h();
                        }
                        byte[][] bArr6 = (byte[][]) Array.newInstance(Byte.TYPE, 5, 0);
                        for (int i6 = 0; i6 < 5; i6++) {
                            bArr6[i6] = new byte[0];
                        }
                        int c9 = c4289o.m316c(c2, 2, length);
                        if (c4283i.m316c(c2, 2, length) >= 0 && c9 >= 0) {
                            bArr6[0] = (byte[]) m120b(c4283i.m318c(), c4289o.m318c()).clone();
                        }
                        if (c4236bd.m316c(c2, 2, length) >= 0) {
                            bArr6[1] = c4236bd.m318c();
                        }
                        if (c4274co.m316c(c2, 2, length) >= 0) {
                            bArr6[4] = c4274co.m318c();
                        }
                        if (m85b._sec_guid_flag) {
                            bArr6[2] = m85b.f5179_G;
                            bArr6[3] = m85b._dpwd;
                            bArr6[4] = m85b._t403.m318c();
                            m85b._sec_guid_flag = false;
                        }
                        byte[][] bArr7 = (byte[][]) Array.newInstance(Byte.TYPE, 15, 0);
                        for (int i7 = 0; i7 < 15; i7++) {
                            bArr7[i7] = new byte[0];
                        }
                        if (c4215aj.m316c(c2, 2, length) >= 0) {
                            bArr7[0] = c4215aj.m318c();
                        }
                        if (c4214ai.m316c(c2, 2, length) >= 0) {
                            bArr7[1] = c4214ai.m356a();
                            bArr3 = c4214ai.m355g();
                        }
                        if (c4219an.m316c(c2, 2, length) >= 0) {
                            bArr7[2] = c4219an.m318c();
                        }
                        if (c4270ck.m316c(c2, 2, length) >= 0) {
                            bArr7[3] = c4270ck.m318c();
                        }
                        if (c4230ay.m316c(c2, 2, length) >= 0) {
                            bArr7[4] = c4230ay.m318c();
                        }
                        if (c4239bg.m316c(c2, 2, length) >= 0) {
                            bArr7[5] = c4239bg.m318c();
                        }
                        if (c4232b.m316c(c2, 2, length) >= 0) {
                            bArr7[6] = c4232b.m318c();
                        }
                        if (c4237be.m316c(c2, 2, length) >= 0) {
                            bArr7[7] = c4237be.m318c();
                        }
                        C4265cf c4265cf = new C4265cf();
                        if (c4265cf.m316c(c2, 2, length) >= 0) {
                            bArr7[8] = c4265cf.m270g();
                            bArr2 = c4265cf.m271a();
                        } else {
                            bArr2 = bArr3;
                        }
                        C4267ch c4267ch = new C4267ch();
                        if (c4267ch.m316c(c2, 2, length) >= 0) {
                            bArr7[9] = c4267ch.m268a();
                            bArr7[10] = c4267ch.m267g();
                        }
                        C4232b c4232b2 = new C4232b(515);
                        if (c4232b2.m316c(c2, 2, length) >= 0) {
                            bArr7[11] = c4232b2.m318c();
                            C4393util.LOGI("get DA2 in rsp", "");
                        } else {
                            C4393util.LOGI("no DA2 in rsp", "");
                        }
                        C4232b c4232b3 = new C4232b(791);
                        if (c4232b3.m316c(c2, 2, length) >= 0) {
                            WloginSigInfo._QRPUSHSig = c4232b3.m318c();
                        } else {
                            WloginSigInfo._QRPUSHSig = new byte[0];
                        }
                        C4232b c4232b4 = new C4232b(307);
                        if (c4232b4.m316c(c2, 2, length) >= 0) {
                            bArr7[13] = c4232b4.m318c();
                        } else {
                            C4393util.LOGW("get t133 failed", "" + this.f5241x.f5301f);
                        }
                        C4232b c4232b5 = new C4232b(308);
                        if (c4232b5.m316c(c2, 2, length) >= 0) {
                            bArr7[14] = c4232b5.m318c();
                        } else {
                            C4393util.LOGW("get t134 failed", "" + this.f5241x.f5301f);
                        }
                        C4393util.LOGI("encrypt_a1 len:" + C4393util.buf_len(bArr6[0]) + " no_pic_sig len:" + C4393util.buf_len(bArr6[1]) + " G len:" + C4393util.buf_len(bArr6[2]) + " dpwd len:" + C4393util.buf_len(bArr6[3]) + " randseed len:" + C4393util.buf_len(bArr6[4]) + " vkey len:" + C4393util.buf_len(bArr7[0]) + " openid len:" + C4393util.buf_len(bArr2) + " access_token len:" + C4393util.buf_len(bArr7[1]) + " d2 len:" + C4393util.buf_len(bArr7[2]) + " d2_key len:" + C4393util.buf_len(bArr7[3]) + " sid len:" + C4393util.buf_len(bArr7[4]) + " aq_sig len:" + C4393util.buf_len(bArr7[5]) + " pskey len:" + C4393util.buf_len(bArr7[6]) + " super_key len:" + C4393util.buf_len(bArr7[7]) + " paytoken len:" + C4393util.buf_len(bArr7[8]) + " pf len:" + C4393util.buf_len(bArr7[9]) + " pfkey len:" + C4393util.buf_len(bArr7[10]) + " da2 len:" + C4393util.buf_len(bArr7[11]) + " wt session ticket:" + C4393util.buf_len(bArr7[13]) + " wt session ticket key:" + C4393util.buf_len(bArr7[14]), "" + this.f5241x.f5301f);
                        long m241a = c4300z.m316c(c2, 2, length) >= 0 ? 4294967295L & c4300z.m241a() : 4294967295L;
                        long[] jArr = new long[7];
                        int i8 = 2;
                        while (true) {
                            long j4 = j;
                            i8 = c4216ak.m316c(c2, i8, length);
                            if (i8 < 0) {
                                C4393util.LOGI("sappid:" + j2 + " appid:" + j3 + " app_pri:" + m241a + " login_bitmap:" + m85b._login_bitmap + " tk_valid:0 a2_valid:" + j4 + " lskey_valid:" + jArr[0] + " skey_valid:" + jArr[1] + " vkey_valid:" + jArr[2] + " a8_valid:" + jArr[3] + " stweb_valid:" + jArr[4] + " d2_valid:" + jArr[5] + " sid_valid:" + jArr[6], "" + this.f5241x.f5301f);
                                this.f5241x.f5297ao = m85b._main_sigmap;
                                c = this.f5241x.m92a(this.f5241x.f5301f, j2, bArr6, j3, m241a, C4379u.m72f(), C4379u.m72f() + 0, j4 + C4379u.m72f(), c4297w.m248a(), c4297w.m247g(), c4297w.m246h(), c4297w.m245i(), bArr5, c4287m.m318c(), c4290p.m318c(), c4294t.m318c(), c4291q.m318c(), c3, c5, c4, c6, c7, c8, bArr2, bArr4, bArr7, jArr, m85b._login_bitmap);
                                if (c != 0) {
                                    ErrMsg errMsg = new ErrMsg();
                                    errMsg.setMessage(InternationMsg.m49a(InternationMsg.MSG_TYPE.MSG_2));
                                    m139a(errMsg);
                                    C4393util.LOGI("put_siginfo fail,ret=" + c, "" + this.f5241x.f5301f);
                                    break;
                                } else {
                                    while (true) {
                                        i5 = c4299y.m316c(c2, i5, length);
                                        if (i5 < 0) {
                                            c = 0;
                                            break;
                                        } else {
                                            this.f5241x.m94a(this.f5241x.f5301f, c4299y.m244a(), C4379u.m72f(), C4379u.m72f() + 0, c4299y.m242h(), c4299y.m243g());
                                        }
                                    }
                                }
                            } else {
                                j = c4216ak.m354a() != 0 ? c4216ak.m354a() : j4;
                                if (c4216ak.m353g() != 0) {
                                    jArr[0] = c4216ak.m353g();
                                } else {
                                    jArr[0] = 1641600;
                                }
                                if (c4216ak.m352h() != 0) {
                                    jArr[1] = c4216ak.m352h();
                                } else {
                                    jArr[1] = 86400;
                                }
                                if (c4216ak.m351i() != 0) {
                                    jArr[2] = c4216ak.m351i();
                                } else {
                                    jArr[2] = 1728000;
                                }
                                if (c4216ak.m350j() != 0) {
                                    jArr[3] = c4216ak.m350j();
                                } else {
                                    jArr[3] = 72000;
                                }
                                if (c4216ak.m349k() != 0) {
                                    jArr[4] = c4216ak.m349k();
                                } else {
                                    jArr[4] = 6000;
                                }
                                if (c4216ak.m348l() != 0) {
                                    jArr[5] = c4216ak.m348l();
                                } else {
                                    jArr[5] = 1728000;
                                }
                                if (c4216ak.m347m() != 0) {
                                    jArr[6] = c4216ak.m347m();
                                } else {
                                    jArr[6] = 1728000;
                                }
                            }
                        }
                    }
                }
                break;
            case 1:
            case 15:
                C4393util.LOGI("cmd " + Integer.toHexString(this.f5237t) + " subcmd " + Integer.toHexString(this.f5238u) + " result " + m115c + " will clean sig for uin " + this.f5241x.f5301f + " appid " + j2);
                this.f5241x.m76d(this.f5241x.f5301f, j2);
                m114c(bArr, i4, (this.f5220c - i4) - 1);
                c = m115c;
                break;
            case 2:
                c = c4281g.m316c(bArr, i4, (this.f5220c - i4) - 1);
                if (c >= 0) {
                    m85b._t104 = c4281g;
                    C4261cb c4261cb = new C4261cb();
                    if (c4261cb.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                        m139a(new ErrMsg(m115c, "", "", c4261cb.m277a()));
                    } else {
                        c = c4282h.m316c(bArr, i4, (this.f5220c - i4) - 1);
                        if (c >= 0) {
                            m85b._t105 = c4282h;
                            if (c4231az.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                                m85b._t165 = c4231az;
                            } else {
                                m85b._t165 = new C4231az();
                            }
                            m139a((ErrMsg) null);
                        }
                    }
                    c = m115c;
                    break;
                }
                break;
            case 16:
                this.f5241x.m76d(this.f5241x.f5301f, j2);
                c = c4213ah.m316c(bArr, i4, (this.f5220c - i4) - 1);
                if (c >= 0) {
                    this.f5241x.m87a(c4213ah.m358a(), c4213ah.m357g());
                    m114c(bArr, i4, (this.f5220c - i4) - 1);
                    c = m115c;
                    break;
                }
                break;
            case 41:
            case C4393util.S_BABYLH_EXPIRED /* 116 */:
                C4232b c4232b6 = new C4232b(405);
                c = c4232b6.m316c(bArr, i4, (this.f5220c - i4) - 1);
                if (c >= 0) {
                    WloginSigInfo._LHSig = c4232b6.m318c();
                    m114c(bArr, i4, (this.f5220c - i4) - 1);
                    c = m115c;
                    break;
                }
                break;
            case C4393util.S_GET_SMS /* 160 */:
                if (c4293s.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                    this.f5241x.f5301f = c4293s.m250a();
                    this.f5241x.m89a(this.f5241x.f5302g, Long.valueOf(this.f5241x.f5301f));
                }
                c = c4281g.m316c(bArr, i4, (this.f5220c - i4) - 1);
                if (c >= 0) {
                    m85b._t104 = c4281g;
                    c = c4242bj.m316c(bArr, i4, (this.f5220c - i4) - 1);
                    if (c >= 0) {
                        m85b._t174 = c4242bj;
                        if (c4244bl.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                            m85b._devlock_info.CountryCode = new String(c4244bl.m303a());
                            m85b._devlock_info.Mobile = new String(c4244bl.m302g());
                            m85b._devlock_info.MbItemSmsCodeStatus = c4244bl.m301h();
                            m85b._devlock_info.AvailableMsgCount = c4244bl.m300i();
                            m85b._devlock_info.TimeLimit = c4244bl.m299j();
                        }
                        C4264ce c4264ce = new C4264ce();
                        if (c4264ce.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                            m85b._devlock_info.BakCountryCode = c4264ce.m273g();
                            m85b._devlock_info.BakMobile = c4264ce.m272h();
                            m85b._devlock_info.BakMobileState = c4264ce.m274a();
                        }
                        if (c4245bm.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                            m85b._devlock_info.UnionVerifyUrl = new String(c4245bm.m298a());
                        }
                        if (c4249bq.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                            m85b._devlock_info.MbGuideType = c4249bq.m293a();
                            m85b._devlock_info.MbGuideMsg = new String(c4249bq.m292g());
                            m85b._devlock_info.MbGuideInfoType = c4249bq.m291h();
                            m85b._devlock_info.MbGuideInfo = new String(c4249bq.m290i());
                        }
                        if (c4250br.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                            m85b._devlock_info.VerifyReason = new String(c4250br.m318c());
                        }
                        if (c4273cn.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                            m85b._t402 = c4273cn;
                        } else {
                            m85b._t402 = new C4273cn();
                        }
                        if (c4274co.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                            m85b._t403 = c4274co;
                        } else {
                            m85b._t403 = new C4274co();
                        }
                        m114c(bArr, i4, (this.f5220c - i4) - 1);
                        c = m115c;
                        break;
                    }
                }
                break;
            case 176:
                m114c(bArr, i4, (this.f5220c - i4) - 1);
                this.f5241x.m90a(this.f5241x.f5302g);
                c = m115c;
                break;
            case C4393util.S_ROLL_BACK /* 180 */:
                c = c4229ax.m316c(bArr, i4, (this.f5220c - i4) - 1);
                if (c >= 0) {
                    m143a(c4229ax);
                    m114c(bArr, i4, (this.f5220c - i4) - 1);
                    c = m115c;
                    break;
                }
                break;
            case C4393util.S_SEC_GUID /* 204 */:
                if (c4293s.m316c(bArr, i4, (this.f5220c - i4) - 1) >= 0) {
                    this.f5241x.f5301f = c4293s.m250a();
                    this.f5241x.m89a(this.f5241x.f5302g, Long.valueOf(this.f5241x.f5301f));
                }
                c = c4281g.m316c(bArr, i4, (this.f5220c - i4) - 1);
                if (c >= 0) {
                    m85b._t104 = c4281g;
                    c = c4273cn.m316c(bArr, i4, (this.f5220c - i4) - 1);
                    if (c >= 0) {
                        m85b._t402 = c4273cn;
                        c = c4274co.m316c(bArr, i4, (this.f5220c - i4) - 1);
                        if (c >= 0) {
                            m85b._t403 = c4274co;
                            m114c(bArr, i4, (this.f5220c - i4) - 1);
                            c = m115c;
                            break;
                        }
                    }
                }
                break;
            case 208:
                c = c4281g.m316c(bArr, i4, (this.f5220c - i4) - 1);
                if (c >= 0) {
                    m85b._t104 = c4281g;
                    c = c4210ae.m316c(bArr, i4, (this.f5220c - i4) - 1);
                    if (c >= 0) {
                        m85b._t126 = c4210ae;
                        c = c4252bt.m316c(bArr, i4, (this.f5220c - i4) - 1);
                        if (c >= 0) {
                            m85b._smslogin_msgcnt = c4252bt.m288a();
                            m85b._smslogin_timelimit = c4252bt.m287g();
                            c = c4253bu.m316c(bArr, i4, (this.f5220c - i4) - 1);
                            if (c >= 0) {
                                m85b._msalt = c4253bu.m286a();
                                c = 0;
                                break;
                            }
                        }
                    }
                }
                break;
            default:
                m114c(bArr, i4, (this.f5220c - i4) - 1);
                c = m115c;
                break;
        }
        C4393util.LOGI("type:" + m115c + " ret:" + (c > 0 ? "0x" + Integer.toHexString(c) : Integer.valueOf(c)), "" + this.f5241x.f5301f);
        if (c == 0) {
            m139a((ErrMsg) null);
        } else {
            new C4275cp().m316c(bArr, i4, (this.f5220c - i4) - 1);
            if (C4275cp.f5069a) {
                ErrMsg errMsg2 = new ErrMsg();
                int m175b = new C4367i(this.f5241x, this.f5237t, this.f5238u, errMsg2).m175b(c);
                if (m175b != -1000) {
                    m139a(errMsg2);
                    c = m175b;
                }
            }
        }
        if (c == 10 || c == 161 || c == 162 || c == 164 || c == 165 || c == 166 || c == 154 || (c >= 128 && c <= 143)) {
            c = -1000;
        }
        if (i3 == 2 || i3 == 6 || i3 == 7) {
            return c;
        }
        m159a(i3);
        return c;
    }

    /* renamed from: d */
    public Socket mo112d() {
        return this.f5241x.f5295ah;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:(1:5)|6|(1:10)|11|(13:158|159|160|161|(3:163|(1:216)|169)(1:217)|(2:171|172)(5:198|199|(2:201|(4:210|211|212|214)(3:203|204|205))(1:215)|206|207)|173|174|176|(1:178)|179|(4:190|191|192|193)(3:181|182|(3:187|188|189)(3:184|185|186))|33)(7:13|14|(5:16|(3:18|19|20)|23|(2:35|(4:40|(1:42)(1:45)|43|44)(2:46|47))(5:27|28|(1:30)|31|32)|33)(2:156|157)|(2:152|153)(1:49)|50|55|56)|57|58|(2:63|59)|(5:142|143|(1:145)|146|147)(6:66|67|68|69|71|(5:124|125|(1:127)|128|129)(3:73|74|(5:118|119|(1:121)|122|123)(6:76|77|(2:79|(1:82)(1:81))|117|83|(4:85|(1:87)|88|89)(1:90))))|33) */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x06d5, code lost:
        r3 = r11;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m111e() {
        int i;
        String str;
        String str2;
        int i2;
        String str3;
        String str4;
        URL url;
        String str5;
        InputStream inputStream;
        Socket socket;
        String str6;
        String str7;
        int i3;
        C4393util.LOGI(getClass().getName() + ":snd_rcv_req_tcp ...", "" + this.f5241x.f5301f);
        byte[] m118c = m118c();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        long j = 0;
        boolean z = false;
        boolean z2 = false;
        int i7 = 0;
        String str8 = "";
        String str9 = "";
        Socket mo112d = mo112d();
        while (true) {
            if (i6 >= 6) {
                i = i4;
                break;
            }
            if (i6 != 0) {
                C4393util.chg_retry_type(C4379u.f5288t);
            }
            z = C4393util.is_wap_retry(C4379u.f5288t);
            this.f5234q = null;
            if (i6 != 0 && this.f5237t != 2066) {
                m152a(i5, j, i7, i6, z, z2);
            }
            j = System.currentTimeMillis();
            if (z) {
                C4393util.LOGI("try http connect " + i6 + " ...", "" + this.f5241x.f5301f);
                String m150a = m150a(i6, z);
                try {
                    z2 = C4393util.is_wap_proxy_retry(C4379u.f5288t);
                    if (z2) {
                        String str10 = C4393util.get_proxy_ip();
                        int i8 = C4393util.get_proxy_port();
                        if (str10 == null || str10.length() <= 0 || i8 == -1) {
                            z2 = false;
                            C4393util.LOGI("proxy_ip=" + str10 + ",proxy_port=" + i8 + ",set is_wap_proxy_retry=false", "" + this.f5241x.f5301f);
                        }
                        str2 = str10;
                        i2 = i8;
                    } else {
                        str2 = null;
                        i2 = -1;
                    }
                    if (z2) {
                        url = new URL("http://" + str2 + ":" + i2 + "/cgi-bin/wlogin_proxy_login");
                        str4 = str9;
                    } else {
                        this.f5234q = RunnableC4358a.m220a(m150a, 0, this.f5241x.f5307l);
                        if (this.f5234q != null) {
                            str = this.f5234q.getAddress().getHostAddress();
                            if (str9.equals(str)) {
                                throw new Exception("repeated failed http ip " + str9);
                                break;
                            }
                            try {
                                this.f5234q = null;
                                str3 = str;
                            } catch (Exception e) {
                                i5 = -1000;
                                i6++;
                                str9 = str;
                            }
                        } else {
                            str = str9;
                            str3 = m150a;
                        }
                        str4 = str;
                        url = new URL("http://" + str3 + "/cgi-bin/wlogin_proxy_login");
                    }
                } catch (Exception e2) {
                    str = str9;
                }
                try {
                    C4393util.LOGI("try http proxy=" + z2 + " connect to " + url + " host " + m150a, "" + this.f5241x.f5301f);
                    HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                    httpURLConnection.setRequestMethod("POST");
                    if (z2) {
                        httpURLConnection.setRequestProperty("X-Online-Host", m150a);
                    }
                    httpURLConnection.setRequestProperty("Content-Type", "application/octet-stream");
                    httpURLConnection.setRequestProperty("Content-Disposition", "attachment; filename=micromsgresp.dat");
                    httpURLConnection.setRequestProperty("Content-Length", String.valueOf(m118c.length));
                    httpURLConnection.setConnectTimeout(this.f5241x.f5307l);
                    httpURLConnection.setReadTimeout(this.f5241x.f5307l);
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setDoInput(true);
                    C4393util.LOGI("http request connect ...", "" + this.f5241x.f5301f);
                    if (RunnableC4368j.m173a(httpURLConnection, this.f5241x.f5307l)) {
                        C4393util.LOGI("http request write ...", "" + this.f5241x.f5301f);
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        outputStream.write(m118c, 0, m118c.length);
                        outputStream.flush();
                        int responseCode = httpURLConnection.getResponseCode();
                        C4393util.LOGI("http request response code=" + responseCode, "" + this.f5241x.f5301f);
                        if (200 != responseCode) {
                            i6++;
                            str9 = str4;
                            i5 = -1000;
                        } else {
                            str5 = str8;
                            inputStream = httpURLConnection.getInputStream();
                            socket = mo112d;
                            str6 = str4;
                        }
                    } else {
                        C4393util.LOGI("http request connect failed", "" + this.f5241x.f5301f);
                        i6++;
                        str9 = str4;
                        i5 = -1000;
                    }
                } catch (Exception e3) {
                    str = str4;
                    i5 = -1000;
                    i6++;
                    str9 = str;
                }
            } else {
                C4393util.LOGI("try bin connect " + i6 + " ...", "" + this.f5241x.f5301f);
                if (mo112d == null) {
                    String str11 = "";
                    i7 = 1;
                    if (this.f5234q == null) {
                        str11 = m150a(i6, z);
                        C4393util.LOGI("DNS for " + str11 + " request ...", "" + this.f5241x.f5301f);
                        try {
                            this.f5235r = mo117c(z);
                            this.f5234q = RunnableC4358a.m220a(str11, this.f5235r, this.f5241x.f5307l);
                        } catch (Exception e4) {
                        }
                    }
                    if (this.f5234q != null && this.f5234q.getAddress() == null) {
                        if (this.f5234q.getAddress() == null) {
                            C4393util.LOGI("_server_ip get address failed", "" + this.f5241x.f5301f);
                        }
                        i5 = C4393util.E_RESOLVE_ADDR;
                        i6++;
                        this.f5234q = null;
                        mo145a((Socket) null);
                        mo112d = null;
                    } else if (this.f5234q == null || str8.equals(this.f5234q.getAddress().getHostAddress())) {
                        if (this.f5234q == null) {
                            C4393util.LOGI("DNS for " + str11 + " request failed", "" + this.f5241x.f5301f);
                            i3 = C4393util.E_RESOLVE_ADDR;
                        } else {
                            C4393util.LOGI("repeated failed bin ip " + str8, "" + this.f5241x.f5301f);
                            i3 = -1000;
                        }
                        i6++;
                        this.f5234q = null;
                        mo112d = null;
                        mo145a((Socket) null);
                        i5 = i3;
                    } else {
                        str7 = this.f5234q.getAddress().getHostAddress();
                        C4393util.LOGI("DNS for " + str11 + "(" + this.f5234q.toString() + ") request OK", "" + this.f5241x.f5301f);
                    }
                } else {
                    str7 = str8;
                }
                if (mo112d == null) {
                    try {
                        C4393util.LOGI("tcp connect to " + this.f5234q + " request ...", "" + this.f5241x.f5301f);
                        socket = new Socket();
                        mo145a(socket);
                        socket.connect(this.f5234q, this.f5241x.f5307l);
                        socket.setSoTimeout(this.f5241x.f5307l);
                        socket.setReceiveBufferSize(this.f5236s.length);
                        C4393util.LOGI("tcp connect to " + this.f5234q + " OK", "" + this.f5241x.f5301f);
                    } catch (Throwable th) {
                        i6++;
                        this.f5234q = null;
                        mo145a((Socket) null);
                        str8 = str7;
                        i5 = -1000;
                        mo112d = null;
                    }
                } else {
                    socket = mo112d;
                }
                C4393util.LOGI("tcp request write ...", "" + this.f5241x.f5301f);
                OutputStream outputStream2 = socket.getOutputStream();
                outputStream2.write(m118c, 0, m118c.length);
                outputStream2.flush();
                str6 = str9;
                str5 = str7;
                inputStream = socket.getInputStream();
            }
            C4393util.LOGI("recv data from server ...", "" + this.f5241x.f5301f);
            int i9 = 0;
            int i10 = 0;
            while (i10 < this.f5223f + 1 && (i9 = inputStream.read(this.f5236s, i10, (this.f5223f + 1) - i10)) >= 0) {
                i10 += i9;
            }
            if (i9 < 0) {
                i5 = -1000;
                i6++;
                if (!z) {
                    socket.close();
                    this.f5234q = null;
                    socket = null;
                    mo145a((Socket) null);
                }
                str9 = str6;
                mo112d = socket;
                str8 = str5;
            } else {
                i = m123b(this.f5236s);
                try {
                    if (i > this.f5223f + 1) {
                        if (i < this.f5236s.length) {
                            int i11 = this.f5223f + 1;
                            int i12 = i - i11;
                            while (i12 > 0) {
                                i9 = inputStream.read(this.f5236s, i11, i12);
                                if (i9 == -1) {
                                    break;
                                }
                                i11 += i9;
                                i12 -= i9;
                            }
                            if (i9 != -1) {
                                break;
                            }
                            i6++;
                            if (!z) {
                                socket.close();
                                this.f5234q = null;
                                socket = null;
                                mo145a((Socket) null);
                            }
                            mo112d = socket;
                            i4 = i;
                            i5 = -1000;
                            str9 = str6;
                            str8 = str5;
                        } else {
                            i6++;
                            if (!z) {
                                socket.close();
                                this.f5234q = null;
                                socket = null;
                                mo145a((Socket) null);
                            }
                            mo112d = socket;
                            i4 = i;
                            i5 = -1000;
                            str9 = str6;
                            str8 = str5;
                        }
                    } else {
                        i6++;
                        if (!z) {
                            socket.close();
                            this.f5234q = null;
                            socket = null;
                            mo145a((Socket) null);
                        }
                        mo112d = socket;
                        i4 = i;
                        i5 = -1000;
                        str9 = str6;
                        str8 = str5;
                    }
                } catch (Throwable th2) {
                    i6++;
                    if (!z) {
                        try {
                            if (socket.isConnected()) {
                                socket.close();
                            }
                        } catch (Exception e5) {
                        }
                        this.f5234q = null;
                        socket = null;
                        mo145a((Socket) null);
                    }
                    mo112d = socket;
                    i4 = i;
                    i5 = -1000;
                    str9 = str6;
                    str8 = str5;
                }
            }
        }
        int i13 = i6 >= 6 ? -1000 : 0;
        if (i13 == 0) {
            m122b(this.f5236s, i);
        }
        if (i13 == 0 && this.f5237t != 2066) {
            report_t3 report_t3Var = new report_t3();
            report_t3Var._cmd = this.f5237t;
            report_t3Var._sub = this.f5238u;
            report_t3Var._rst2 = i13;
            report_t3Var._used = (int) (System.currentTimeMillis() - j);
            report_t3Var._try = i6;
            report_t3Var._host = f5214H;
            if (report_t3Var._host == null) {
                report_t3Var._host = "";
            }
            if (this.f5234q == null) {
                report_t3Var._ip = "";
            } else {
                report_t3Var._ip = this.f5234q.getAddress().getHostAddress();
            }
            report_t3Var._port = this.f5235r;
            report_t3Var._conn = i7;
            report_t3Var._net = C4379u.f5248D;
            report_t3Var._str = "";
            report_t3Var._slen = m118c.length;
            report_t3Var._rlen = i;
            if (!z) {
                report_t3Var._wap = 0;
            } else if (z2) {
                report_t3Var._wap = 2;
            } else {
                report_t3Var._wap = 1;
            }
            C4379u.f5281al.add_t3(report_t3Var);
        }
        C4393util.LOGI(getClass().getName() + ":snd_rcv_req_tcp ret=" + i13, "" + this.f5241x.f5301f);
        return i13;
    }

    /* renamed from: f */
    public int m110f() {
        return C4379u.m85b(this.f5241x.f5303h)._last_flowid;
    }

    /* renamed from: g */
    public void m109g() {
        this.f5243z = true;
    }
}
