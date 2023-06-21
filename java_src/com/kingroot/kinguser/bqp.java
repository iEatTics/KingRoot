package com.kingroot.kinguser;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class bqp {

    /* renamed from: a */
    private static Map<String, bqp> f2038a = Collections.synchronizedMap(new HashMap());

    /* renamed from: b */
    private static String f2039b = null;

    /* renamed from: c */
    private Context f2040c;

    /* renamed from: d */
    private String f2041d;
    private JSONObject bIK = null;

    /* renamed from: f */
    private long f2042f = 0;

    /* renamed from: g */
    private int f2043g = 0;

    /* renamed from: h */
    private boolean f2044h = true;

    /* renamed from: L */
    public static bqp m5779L(Context context, String str) {
        bqp bqpVar;
        synchronized (f2038a) {
            bpy.m5848a("openSDK_LOG.OpenConfig", "getInstance begin");
            if (str != null) {
                f2039b = str;
            }
            if (str == null) {
                if (f2039b != null) {
                    str = f2039b;
                } else {
                    str = "0";
                }
            }
            bqpVar = f2038a.get(str);
            if (bqpVar == null) {
                bqpVar = new bqp(context, str);
                f2038a.put(str, bqpVar);
            }
            bpy.m5848a("openSDK_LOG.OpenConfig", "getInstance end");
        }
        return bqpVar;
    }

    private bqp(Context context, String str) {
        this.f2040c = null;
        this.f2041d = null;
        this.f2040c = context.getApplicationContext();
        this.f2041d = str;
        m5778a();
        m5772b();
    }

    /* renamed from: a */
    private void m5778a() {
        try {
            this.bIK = new JSONObject(m5767mO("com.tencent.open.config.json"));
        } catch (JSONException e) {
            this.bIK = new JSONObject();
        }
    }

    /* renamed from: mO */
    private String m5767mO(String str) {
        InputStream open;
        try {
            open = this.f2040c.openFileInput(this.f2041d != null ? str + "." + this.f2041d : str);
        } catch (FileNotFoundException e) {
            try {
                open = this.f2040c.getAssets().open(str);
            } catch (IOException e2) {
                e2.printStackTrace();
                return "";
            }
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open, Charset.forName("UTF-8")));
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        stringBuffer.append(readLine);
                    } else {
                        String stringBuffer2 = stringBuffer.toString();
                        try {
                            return stringBuffer2;
                        } catch (IOException e3) {
                            return stringBuffer2;
                        }
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                    try {
                        open.close();
                        bufferedReader.close();
                        return "";
                    } catch (IOException e5) {
                        e5.printStackTrace();
                        return "";
                    }
                }
            } finally {
                try {
                    open.close();
                    bufferedReader.close();
                } catch (IOException e32) {
                    e32.printStackTrace();
                }
            }
        }
    }

    /* renamed from: a */
    private void m5773a(String str, String str2) {
        try {
            if (this.f2041d != null) {
                str = str + "." + this.f2041d;
            }
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.f2040c.openFileOutput(str, 0), Charset.forName("UTF-8"));
            outputStreamWriter.write(str2);
            outputStreamWriter.flush();
            outputStreamWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [com.kingroot.kinguser.bqp$1] */
    /* renamed from: b */
    private void m5772b() {
        if (this.f2043g != 0) {
            m5768d("update thread is running, return");
            return;
        }
        this.f2043g = 1;
        final Bundle bundle = new Bundle();
        bundle.putString("appid", this.f2041d);
        bundle.putString("appid_for_getting_config", this.f2041d);
        bundle.putString("status_os", Build.VERSION.RELEASE);
        bundle.putString("status_machine", Build.MODEL);
        bundle.putString("status_version", Build.VERSION.SDK);
        bundle.putString("sdkv", "3.2.1.lite");
        bundle.putString("sdkp", "a");
        new Thread() { // from class: com.kingroot.kinguser.bqp.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    bqp.this.m5769c(bqt.m5735mU(bqm.m5796a(bqp.this.f2040c, "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf", "GET", bundle).f2053a));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                bqp.this.f2043g = 0;
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public void m5769c(JSONObject jSONObject) {
        m5768d("cgi back, do update");
        this.bIK = jSONObject;
        m5773a("com.tencent.open.config.json", jSONObject.toString());
        this.f2042f = SystemClock.elapsedRealtime();
    }

    /* renamed from: c */
    private void m5770c() {
        int optInt = this.bIK.optInt("Common_frequency");
        if (optInt == 0) {
            optInt = 1;
        }
        if (SystemClock.elapsedRealtime() - this.f2042f >= optInt * 3600000) {
            m5772b();
        }
    }

    /* renamed from: a */
    public int m5774a(String str) {
        m5768d("get " + str);
        m5770c();
        return this.bIK.optInt(str);
    }

    /* renamed from: b */
    public boolean m5771b(String str) {
        m5768d("get " + str);
        m5770c();
        Object opt = this.bIK.opt(str);
        if (opt == null) {
            return false;
        }
        if (opt instanceof Integer) {
            return !opt.equals(0);
        } else if (opt instanceof Boolean) {
            return ((Boolean) opt).booleanValue();
        } else {
            return false;
        }
    }

    /* renamed from: d */
    private void m5768d(String str) {
        if (this.f2044h) {
            bpy.m5848a("openSDK_LOG.OpenConfig", str + "; appid: " + this.f2041d);
        }
    }
}
