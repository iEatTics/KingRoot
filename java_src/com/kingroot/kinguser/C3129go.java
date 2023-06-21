package com.kingroot.kinguser;

import andhook.lib.xposed.callbacks.XCallback;
import android.text.TextUtils;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
/* renamed from: com.kingroot.kinguser.go */
/* loaded from: classes.dex */
public class C3129go {
    /* renamed from: al */
    public static String m3668al(String str) {
        return m3669a(str, new Integer(0));
    }

    /* renamed from: a */
    private static String m3669a(String str, Integer num) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = null;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.startsWith("market://")) {
            return str;
        }
        Integer valueOf = Integer.valueOf(num.intValue() + 1);
        if (valueOf.intValue() > 8) {
            return str;
        }
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Linux; <Android Version>; <Build Tag etc.>) AppleWebKit/<WebKit Rev> (KHTML, like Gecko) Chrome/<Chrome Rev> Mobile Safari/<WebKit Rev>");
                httpURLConnection.setConnectTimeout(XCallback.PRIORITY_HIGHEST);
                httpURLConnection.setReadTimeout(XCallback.PRIORITY_HIGHEST);
                httpURLConnection.setInstanceFollowRedirects(false);
                if (!m3670a(httpURLConnection.getResponseCode())) {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                        return str;
                    }
                    return str;
                }
                String headerField = httpURLConnection.getHeaderField("Location");
                if (headerField == null) {
                    headerField = httpURLConnection.getHeaderField("location");
                }
                if (TextUtils.isEmpty(headerField)) {
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                        return str;
                    }
                    return str;
                }
                if (!headerField.startsWith("http://") && !headerField.startsWith("https://") && !headerField.startsWith("market://")) {
                    URL url = new URL(str);
                    headerField = url.getProtocol() + "://" + url.getHost() + headerField;
                }
                String m3669a = m3669a(headerField, valueOf);
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    return m3669a;
                }
                return m3669a;
            } catch (MalformedURLException e) {
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    return null;
                }
                return null;
            } catch (IOException e2) {
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    return null;
                }
                return null;
            } catch (Exception e3) {
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                    return null;
                }
                return null;
            } catch (Throwable th) {
                httpURLConnection2 = httpURLConnection;
                th = th;
                if (httpURLConnection2 != null) {
                    httpURLConnection2.disconnect();
                }
                throw th;
            }
        } catch (MalformedURLException e4) {
            httpURLConnection = null;
        } catch (IOException e5) {
            httpURLConnection = null;
        } catch (Exception e6) {
            httpURLConnection = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: a */
    private static boolean m3670a(int i) {
        return i == 301 || i == 302 || i == 303 || i == 307;
    }
}
