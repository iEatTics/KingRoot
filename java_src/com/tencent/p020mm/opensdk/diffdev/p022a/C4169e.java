package com.tencent.p020mm.opensdk.diffdev.p022a;

import com.tencent.p020mm.opensdk.utils.Log;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.util.EntityUtils;
/* renamed from: com.tencent.mm.opensdk.diffdev.a.e */
/* loaded from: classes.dex */
public final class C4169e {
    /* renamed from: a */
    public static byte[] m503a(String str) {
        byte[] bArr = null;
        if (str == null || str.length() == 0) {
            Log.m495e("MicroMsg.SDK.NetUtil", "httpGet, url is null");
        } else {
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
            HttpGet httpGet = new HttpGet(str);
            try {
                HttpConnectionParams.setSoTimeout(defaultHttpClient.getParams(), 60000);
                HttpResponse execute = defaultHttpClient.execute(httpGet);
                if (execute.getStatusLine().getStatusCode() != 200) {
                    Log.m495e("MicroMsg.SDK.NetUtil", "httpGet fail, status code = " + execute.getStatusLine().getStatusCode());
                } else {
                    bArr = EntityUtils.toByteArray(execute.getEntity());
                }
            } catch (Exception e) {
                Log.m495e("MicroMsg.SDK.NetUtil", "httpGet, Exception ex = " + e.getMessage());
            } catch (IncompatibleClassChangeError e2) {
                Log.m495e("MicroMsg.SDK.NetUtil", "httpGet, IncompatibleClassChangeError ex = " + e2.getMessage());
            } catch (Throwable th) {
                Log.m495e("MicroMsg.SDK.NetUtil", "httpGet, Throwable ex = " + th.getMessage());
            }
        }
        return bArr;
    }
}
