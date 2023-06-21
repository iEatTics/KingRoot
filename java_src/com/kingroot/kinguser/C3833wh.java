package com.kingroot.kinguser;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.kingroot.kinguser.wh */
/* loaded from: classes.dex */
public class C3833wh {
    /* renamed from: dn */
    public static JSONObject m1563dn(String str) {
        C3831wg.m1564np();
        JSONObject jSONObject = null;
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        HttpConnectionParams.setConnectionTimeout(basicHttpParams, 30000);
        HttpConnectionParams.setSoTimeout(basicHttpParams, 30000);
        HttpConnectionParams.setTcpNoDelay(basicHttpParams, true);
        SchemeRegistry schemeRegistry = new SchemeRegistry();
        schemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
        schemeRegistry.register(new Scheme("https", C3834wi.m1561nq(), 443));
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new DefaultHttpClient(new ThreadSafeClientConnManager(basicHttpParams, schemeRegistry), basicHttpParams).execute(new HttpGet(str)).getEntity().getContent()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                sb.append(readLine);
                try {
                    jSONObject = new JSONObject(readLine);
                } catch (JSONException e) {
                }
            } else {
                return jSONObject;
            }
        }
    }
}
