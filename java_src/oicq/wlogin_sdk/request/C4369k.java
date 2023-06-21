package oicq.wlogin_sdk.request;

import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Random;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.cryptor;
/* renamed from: oicq.wlogin_sdk.request.k */
/* loaded from: classes.dex */
public class C4369k {

    /* renamed from: a */
    protected C4379u f5204a;

    /* renamed from: a */
    public String m172a(int i) {
        String[] strArr = {"log.wtlogin.qq.com", "log1.wtlogin.qq.com"};
        return strArr[Math.abs(i % strArr.length)];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public byte[] m171a(byte[] bArr) {
        byte[] bArr2 = C4393util.get_rand_16byte(C4379u.f5271a);
        byte[] encrypt = cryptor.encrypt(bArr, 0, bArr.length, bArr2);
        byte[] bArr3 = new byte[encrypt.length + bArr2.length];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(encrypt, 0, bArr3, bArr2.length, encrypt.length);
        return bArr3;
    }

    /* renamed from: b */
    public int m170b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return 0;
        }
        C4393util.LOGI(getClass().getName() + ":snd_rcv_req_error ...", "" + this.f5204a.f5301f);
        int nextInt = new Random().nextInt();
        int i = 0;
        while (i < 2) {
            C4393util.LOGI("try http connect " + i + " ...", "" + this.f5204a.f5301f);
            try {
                URL url = new URL("http://" + m172a(nextInt) + "/cgi-bin/wlogin_proxy_log");
                C4393util.LOGI("url=" + url, "" + this.f5204a.f5301f);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod("POST");
                httpURLConnection.setRequestProperty("Content-Type", "application/octet-stream");
                httpURLConnection.setRequestProperty("Content-Disposition", "attachment; filename=micromsgresp.dat");
                httpURLConnection.setRequestProperty("Content-Length", new Integer(bArr.length).toString());
                httpURLConnection.setConnectTimeout(this.f5204a.f5307l);
                httpURLConnection.setReadTimeout(this.f5204a.f5307l);
                httpURLConnection.setDoOutput(true);
                C4393util.LOGI("http request connect ...", "" + this.f5204a.f5301f);
                if (RunnableC4368j.m173a(httpURLConnection, this.f5204a.f5307l)) {
                    C4393util.LOGI("http request write ...", "" + this.f5204a.f5301f);
                    OutputStream outputStream = httpURLConnection.getOutputStream();
                    outputStream.write(bArr, 0, bArr.length);
                    outputStream.flush();
                    int responseCode = httpURLConnection.getResponseCode();
                    C4393util.LOGI("http request response code=" + responseCode, "" + this.f5204a.f5301f);
                    if (200 == responseCode) {
                        break;
                    }
                    i++;
                    nextInt++;
                } else {
                    C4393util.LOGI("http request connect failed", "" + this.f5204a.f5301f);
                    i++;
                    nextInt++;
                }
            } catch (Exception e) {
                C4393util.printException(e, "" + this.f5204a.f5301f);
                i++;
                nextInt++;
            }
        }
        int i2 = i >= 1 ? -1000 : 0;
        C4393util.LOGI(getClass().getName() + ":snd_rcv_req_error ret=" + i2, "" + this.f5204a.f5301f);
        return i2;
    }
}
