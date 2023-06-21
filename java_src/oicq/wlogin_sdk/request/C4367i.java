package oicq.wlogin_sdk.request;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.ByteBuffer;
import java.security.KeyFactory;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import javax.crypto.Cipher;
import oicq.wlogin_sdk.p027b.C4275cp;
import oicq.wlogin_sdk.p027b.C4277cr;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.ErrMsg;
import oicq.wlogin_sdk.tools.MD5;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.request.i */
/* loaded from: classes.dex */
public class C4367i {

    /* renamed from: a */
    private C4379u f5198a;

    /* renamed from: b */
    private int f5199b;

    /* renamed from: c */
    private int f5200c;

    /* renamed from: d */
    private ErrMsg f5201d;

    public C4367i(C4379u c4379u, int i, int i2, ErrMsg errMsg) {
        this.f5198a = c4379u;
        this.f5199b = i;
        this.f5200c = i2;
        this.f5201d = errMsg;
    }

    /* renamed from: a */
    int m176a(byte[] bArr) {
        byte[] bArr2;
        byte[] doFinal;
        byte[] bArr3 = null;
        C4393util.LOGI("notice len " + bArr.length, this.f5198a.f5301f + "");
        byte[] string_to_buf = C4393util.string_to_buf("30820122300d06092a864886f70d01010105000382010f003082010a0282010100bb65a9189e42aabf8c4c97b8bb7e35f6239df71152c0108d5c9b98d86ed7b14fa4b6e2ca5749eda03b5746e97b10c1772eab364fcedbfc4b3bb4d839ed97f657daa54622b54dfb29fe66f37f3e26e779675fec2337d0f8cbdf550b04f936be0927bbbecc851b6d966a3ba51c9747a8c588979ec248d5c8a66d1dd4fed0bcd3eb78725fd04b25cdceeac17d0068f07b3a2a360105cc1f4a0fd361d8d3ff0a9e5598b4196304635482be7ceda63a80479aa396a341fb206c81d7c476f860ac6d90734d523d1015eb73f390104c2bb85d0c05db4d11feae941ff5c92be9a1c123283dc2e0dc1368420d6f71cc50e343534e7c0ff16345680859e14c35f1f021cdfb0203010001");
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        try {
            byte[] bArr4 = new byte[wrap.getShort()];
            wrap.get(bArr4);
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(2, (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(string_to_buf)));
            doFinal = cipher.doFinal(bArr4);
        } catch (Exception e) {
            e = e;
            bArr2 = null;
        }
        if (doFinal == null || doFinal.length == 0) {
            return -1000;
        }
        ByteBuffer wrap2 = ByteBuffer.wrap(doFinal);
        bArr2 = new byte[wrap2.getShort()];
        try {
            wrap2.get(bArr2);
            bArr3 = new byte[wrap2.getShort()];
            wrap2.get(bArr3);
            wrap2.getInt();
        } catch (Exception e2) {
            e = e2;
            C4393util.printException(e);
            if (bArr2 != null) {
            }
            return -1000;
        }
        if (bArr2 != null || bArr3 == null) {
            return -1000;
        }
        byte[] bArr5 = new byte[wrap.limit() - wrap.position()];
        wrap.get(bArr5);
        byte[] decrypt = cryptor.decrypt(bArr5, 0, bArr5.length, bArr2);
        if (decrypt == null || decrypt.length == 0) {
            return -1000;
        }
        if (Arrays.equals(bArr3, MD5.toMD5Byte(decrypt))) {
            ByteBuffer wrap3 = ByteBuffer.wrap(decrypt);
            wrap3.getShort();
            short s = wrap3.getShort();
            if (s == 0) {
                return -1000;
            }
            for (int i = 0; i < s; i++) {
                short s2 = wrap3.getShort();
                byte[] bArr6 = new byte[wrap3.getShort()];
                wrap3.get(bArr6);
                switch (s2) {
                    case 1281:
                        ByteBuffer wrap4 = ByteBuffer.wrap(bArr6);
                        int i2 = wrap4.getInt();
                        C4393util.LOGI("what " + i2, "");
                        if (i2 == 0) {
                            byte[] bArr7 = new byte[wrap4.getShort()];
                            C4393util.LOGI("msg len " + bArr7.length, "");
                            if (bArr7.length != 0) {
                                wrap4.get(bArr7);
                                this.f5201d.setMessage(new String(bArr7));
                                this.f5201d.setType(257);
                                break;
                            } else {
                                return -1000;
                            }
                        } else {
                            return -1000;
                        }
                    case 1282:
                        this.f5201d.setTitle(new String(bArr6));
                        break;
                }
            }
            return this.f5201d.getType();
        }
        return -1000;
    }

    /* renamed from: a */
    byte[] m177a(int i) {
        ByteBuffer allocate = ByteBuffer.allocate(C4393util.SDK_VERSION.length() + 24 + 2 + 2 + 1 + 4);
        async_context m85b = C4379u.m85b(this.f5198a.f5303h);
        allocate.put(C4379u.f5275ad);
        allocate.putInt((int) m85b._sappid);
        allocate.putInt((int) m85b._sub_appid);
        allocate.putShort((short) 0);
        allocate.putLong(this.f5198a.f5301f);
        allocate.putShort((short) C4393util.SDK_VERSION.length());
        allocate.put(C4393util.SDK_VERSION.getBytes());
        allocate.putShort((short) this.f5199b);
        allocate.putShort((short) this.f5200c);
        allocate.put((byte) (i == -1000 ? 1 : 0));
        allocate.putInt(i);
        byte[] m261a = new C4277cr().m261a(0, C4379u.f5289u, 0);
        ByteBuffer allocate2 = ByteBuffer.allocate(allocate.capacity() + 4 + 4 + C4275cp.f5071j.length + 4 + 8 + m261a.length);
        allocate2.putShort((short) 2);
        allocate2.putShort((short) 3);
        allocate2.putShort((short) 512);
        allocate2.putShort((short) allocate.capacity());
        allocate2.put(allocate.array());
        allocate2.putShort((short) 513);
        allocate2.putShort((short) 4);
        allocate2.putInt(2);
        allocate2.putShort((short) 2);
        allocate2.putShort((short) C4275cp.f5071j.length);
        allocate2.put(C4275cp.f5071j);
        allocate2.put(m261a);
        byte[] encrypt = cryptor.encrypt(allocate2.array(), 0, allocate2.position(), this.f5198a.f5299c);
        if (encrypt == null) {
            encrypt = new byte[0];
        }
        ByteBuffer allocate3 = ByteBuffer.allocate(this.f5198a.f5299c.length + 2 + 2 + encrypt.length);
        allocate3.putShort((short) this.f5198a.f5299c.length);
        allocate3.put(this.f5198a.f5299c);
        allocate3.putShort((short) encrypt.length);
        allocate3.put(encrypt);
        return allocate3.array();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26, types: [java.lang.String] */
    /* renamed from: b */
    public int m175b(int i) {
        byte[] m177a;
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = 0;
        HttpURLConnection httpURLConnection3 = null;
        try {
            try {
                m177a = m177a(i);
                httpURLConnection = (HttpURLConnection) new URL("http://" + (new String[]{"ts7", "ts8", "ts9"}[((int) Math.round(Math.random() * 1000.0d)) % 3] + ".qq.com:8080") + "/msg").openConnection();
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setRequestProperty("Content-Length", m177a.length + "");
            httpURLConnection.setRequestProperty("Content-Type", "application/octet-stream");
            httpURLConnection.setConnectTimeout(C4275cp.f5070i);
            httpURLConnection.setReadTimeout(C4275cp.f5070i);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            if (!RunnableC4368j.m173a(httpURLConnection, this.f5198a.f5307l)) {
                httpURLConnection2 = "notice request connect failed";
                C4393util.LOGI("notice request connect failed", "" + this.f5198a.f5301f);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return -1000;
            }
            OutputStream outputStream = httpURLConnection.getOutputStream();
            outputStream.write(m177a);
            outputStream.close();
            int responseCode = httpURLConnection.getResponseCode();
            C4393util.LOGI("notice request response code=" + responseCode, "" + this.f5198a.f5301f);
            if (200 != responseCode) {
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return -1000;
            }
            C4393util.LOGI("recv notice ...", "" + this.f5198a.f5301f);
            InputStream inputStream = httpURLConnection.getInputStream();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            ?? r2 = m176a(byteArrayOutputStream.toByteArray()) != -1000;
            byteArrayOutputStream.close();
            if (r2 == true) {
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return 257;
            }
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            return -1000;
        } catch (Exception e2) {
            httpURLConnection3 = httpURLConnection;
            e = e2;
            C4393util.printException(e);
            if (httpURLConnection3 != null) {
                httpURLConnection3.disconnect();
            }
            return -1000;
        } catch (Throwable th2) {
            httpURLConnection2 = httpURLConnection;
            th = th2;
            if (httpURLConnection2 != 0) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }
}
