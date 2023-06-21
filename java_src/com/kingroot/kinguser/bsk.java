package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.os.Environment;
import android.p003os.Environmenu;
import android.text.TextUtils;
import android.util.Log;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.zip.InflaterInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
/* loaded from: classes.dex */
public class bsk extends bsj {
    private String aGQ;
    private HttpGet bLL;
    private String bLM;
    private boolean bLQ;
    private Context mContext;
    private String bLN = null;
    private String bLO = null;
    private int bLP = 0;
    private boolean mIsCanceled = false;
    private long bLR = 0;

    /* renamed from: Ys */
    private long f2067Ys = 0;
    private boolean bLS = false;

    /* renamed from: com.kingroot.kinguser.bsk$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2613a {
        /* renamed from: na */
        boolean mo5558na(String str);
    }

    public bsk(Context context) {
        this.bLL = null;
        this.bLM = null;
        this.aGQ = null;
        this.bLQ = false;
        this.mContext = context;
        if (bsm.m5555b(this.mContext, "android.permission.WRITE_EXTERNAL_STORAGE") == 1) {
            this.bLQ = Environmenu.MEDIA_MOUNTED.equals(Environment.getExternalStorageState());
            if (this.bLQ) {
                this.bLM = bsn.getExternalStorageDirectory().getAbsolutePath();
                this.aGQ = this.bLM;
            } else {
                this.bLM = context.getCacheDir().getAbsolutePath();
                this.aGQ = context.getFilesDir().getAbsolutePath();
            }
        } else {
            this.bLM = context.getCacheDir().getAbsolutePath();
            this.aGQ = context.getFilesDir().getAbsolutePath();
        }
        this.bLL = new HttpGet();
    }

    /* renamed from: hV */
    public void m5561hV(String str) {
        this.aGQ = str;
    }

    /* renamed from: nc */
    public void m5560nc(String str) {
        this.bLO = str;
    }

    /* renamed from: nd */
    private int m5559nd(String str) {
        int i;
        URI uri = null;
        try {
            uri = new URI(str);
            i = -1000;
        } catch (URISyntaxException e) {
            Log.e("HttpBase", "url error: " + e.getMessage());
            e.printStackTrace();
            i = -1053;
        }
        if (uri != null) {
            this.bLL.setURI(uri);
            return 0;
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.kingroot.kinguser.bsk] */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v30, types: [int] */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v38 */
    /* JADX WARN: Type inference failed for: r3v39 */
    /* JADX WARN: Type inference failed for: r3v40 */
    /* JADX WARN: Type inference failed for: r3v41 */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.os.Bundle] */
    /* renamed from: a */
    public int m5564a(String str, String str2, boolean z, InterfaceC2613a interfaceC2613a) {
        String str3;
        int i;
        HttpClient httpClient;
        Throwable th;
        HttpClient httpClient2;
        Object obj;
        HttpClient httpClient3;
        Object obj2;
        HttpClient httpClient4;
        Object obj3;
        HttpClient httpClient5;
        Object obj4;
        HttpClient httpClient6;
        Object obj5;
        int i2;
        int m5563a;
        HttpResponse httpResponse;
        ?? r1;
        ?? r3 = -3000;
        String str4 = "";
        String str5 = null;
        int i3 = 0;
        ?? bundle = new Bundle();
        try {
            try {
                HttpClient ahT = ahT();
                try {
                    int m5559nd = m5559nd(str2);
                    if (m5559nd != 0) {
                        httpResponse = null;
                        r1 = m5559nd;
                    } else if (this.mIsCanceled) {
                        httpResponse = null;
                        r1 = -3003;
                    } else if (this.bLL.getURI() == null) {
                        Log.e("HttpBase", "url == null");
                        httpResponse = null;
                        r1 = -3053;
                    } else {
                        if (TextUtils.isEmpty(str)) {
                            str = bsi.m5571aW(str2, null);
                        }
                        this.bLN = String.valueOf(str) + ".tmp";
                        Log.i("HttpBase", "mTempName: " + this.bLN);
                        if (this.bLO == null) {
                            this.bLO = str;
                        }
                        File file = new File(this.bLM, this.bLN);
                        if (file.exists()) {
                            this.bLR = file.length();
                            this.bLL.setHeader("RANGE", "bytes=" + this.bLR + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR);
                            this.bLS = true;
                        }
                        HttpResponse execute = ahT.execute(this.bLL);
                        try {
                            int statusCode = execute.getStatusLine().getStatusCode();
                            Log.i("HttpBase", "statusCode == " + statusCode);
                            if (statusCode != 200 && statusCode != 206) {
                                m5563a = (-3000) - statusCode;
                                if (statusCode != 416) {
                                    httpResponse = execute;
                                    r1 = m5563a;
                                }
                            }
                            if (this.mIsCanceled) {
                                m5563a = -3003;
                                httpResponse = execute;
                                r1 = -3003;
                            } else {
                                HttpEntity entity = execute.getEntity();
                                if (entity == null) {
                                    m5563a = -4000;
                                    Log.e("HttpBase", "httpEntity == null");
                                    httpResponse = execute;
                                    r1 = -4000;
                                } else {
                                    m5563a = m5563a(entity, bundle, z);
                                    if (m5563a != 0) {
                                        httpResponse = execute;
                                        r1 = m5563a;
                                    } else if (interfaceC2613a == null || interfaceC2613a.mo5558na(String.valueOf(this.bLM) + File.separator + this.bLN)) {
                                        m5563a = m5562eE(true);
                                        if (m5563a != 0) {
                                            httpResponse = execute;
                                            r1 = m5563a;
                                        } else {
                                            m5563a = 0;
                                            httpResponse = execute;
                                            r1 = 0;
                                        }
                                    } else {
                                        m5563a = -7000;
                                        httpResponse = execute;
                                        r1 = -7000;
                                    }
                                }
                            }
                        } catch (ClientProtocolException e) {
                            e = e;
                            httpClient2 = ahT;
                            obj = r1;
                            i3 = -3051;
                            str4 = e.getMessage();
                            Log.e("HttpBase", "protocol error:" + e.getMessage());
                            e.printStackTrace();
                            if (httpClient2 != null) {
                                httpClient2.getConnectionManager().shutdown();
                            }
                            if (obj != null) {
                            }
                            bundle.putInt("key_errcode", -3051);
                            bundle.putString("key_errorMsg", str4);
                            bundle.putInt("key_downSize", (int) this.bLR);
                            bundle.putInt("key_total", (int) this.f2067Ys);
                            bundle.putInt("key_sdcardstatus", bsi.m5570cG(this.f2067Ys - this.bLR));
                            str5 = "key_downType";
                            bundle.putByte("key_downType", (byte) (this.bLS ? 1 : 0));
                            m5567a(1, bundle);
                            i2 = -3051;
                            r3 = httpClient2;
                            return i2;
                        } catch (SocketException e2) {
                            e = e2;
                            httpClient6 = ahT;
                            obj5 = r1;
                            i3 = -3054;
                            str4 = e.getMessage();
                            Log.e("HttpBase", "socket error:" + e.getMessage());
                            e.printStackTrace();
                            if (httpClient6 != null) {
                                httpClient6.getConnectionManager().shutdown();
                            }
                            if (obj5 != null) {
                            }
                            bundle.putInt("key_errcode", -3054);
                            bundle.putString("key_errorMsg", str4);
                            bundle.putInt("key_downSize", (int) this.bLR);
                            bundle.putInt("key_total", (int) this.f2067Ys);
                            bundle.putInt("key_sdcardstatus", bsi.m5570cG(this.f2067Ys - this.bLR));
                            str5 = "key_downType";
                            bundle.putByte("key_downType", (byte) (this.bLS ? 1 : 0));
                            m5567a(1, bundle);
                            i2 = -3054;
                            r3 = httpClient6;
                            return i2;
                        } catch (SocketTimeoutException e3) {
                            e = e3;
                            httpClient5 = ahT;
                            obj4 = r1;
                            i3 = -3055;
                            str4 = e.getMessage();
                            Log.e("HttpBase", "socket timeout error:" + e.getMessage());
                            e.printStackTrace();
                            if (httpClient5 != null) {
                                httpClient5.getConnectionManager().shutdown();
                            }
                            if (obj4 != null) {
                            }
                            bundle.putInt("key_errcode", -3055);
                            bundle.putString("key_errorMsg", str4);
                            bundle.putInt("key_downSize", (int) this.bLR);
                            bundle.putInt("key_total", (int) this.f2067Ys);
                            bundle.putInt("key_sdcardstatus", bsi.m5570cG(this.f2067Ys - this.bLR));
                            str5 = "key_downType";
                            bundle.putByte("key_downType", (byte) (this.bLS ? 1 : 0));
                            m5567a(1, bundle);
                            i2 = -3055;
                            r3 = httpClient5;
                            return i2;
                        } catch (IOException e4) {
                            e = e4;
                            httpClient4 = ahT;
                            obj3 = r1;
                            i3 = -3056;
                            str4 = e.getMessage();
                            Log.e("HttpBase", "io error:" + e.getMessage());
                            e.printStackTrace();
                            if (httpClient4 != null) {
                                httpClient4.getConnectionManager().shutdown();
                            }
                            if (obj3 != null) {
                            }
                            bundle.putInt("key_errcode", -3056);
                            bundle.putString("key_errorMsg", str4);
                            bundle.putInt("key_downSize", (int) this.bLR);
                            bundle.putInt("key_total", (int) this.f2067Ys);
                            bundle.putInt("key_sdcardstatus", bsi.m5570cG(this.f2067Ys - this.bLR));
                            str5 = "key_downType";
                            bundle.putByte("key_downType", (byte) (this.bLS ? 1 : 0));
                            m5567a(1, bundle);
                            i2 = -3056;
                            r3 = httpClient4;
                            return i2;
                        } catch (Exception e5) {
                            e = e5;
                            httpClient3 = ahT;
                            obj2 = r1;
                            i3 = -3000;
                            str4 = e.getMessage();
                            Log.e("HttpBase", "get error:" + e.getMessage());
                            e.printStackTrace();
                            if (httpClient3 != null) {
                                httpClient3.getConnectionManager().shutdown();
                            }
                            if (obj2 != null) {
                            }
                            bundle.putInt("key_errcode", -3000);
                            bundle.putString("key_errorMsg", str4);
                            bundle.putInt("key_downSize", (int) this.bLR);
                            bundle.putInt("key_total", (int) this.f2067Ys);
                            bundle.putInt("key_sdcardstatus", bsi.m5570cG(this.f2067Ys - this.bLR));
                            str5 = "key_downType";
                            bundle.putByte("key_downType", (byte) (this.bLS ? 1 : 0));
                            m5567a(1, bundle);
                            i2 = -3000;
                            r3 = httpClient3;
                            return i2;
                        } catch (Throwable th2) {
                            str3 = "";
                            i = m5563a;
                            httpClient = ahT;
                            str5 = r1;
                            th = th2;
                            if (httpClient != null) {
                                httpClient.getConnectionManager().shutdown();
                            }
                            if (str5 != null) {
                            }
                            if (i != 0 && i != -7) {
                                bundle.putInt("key_errcode", i);
                                bundle.putString("key_errorMsg", str3);
                                bundle.putInt("key_downSize", (int) this.bLR);
                                bundle.putInt("key_total", (int) this.f2067Ys);
                                bundle.putInt("key_sdcardstatus", bsi.m5570cG(this.f2067Ys - this.bLR));
                                bundle.putByte("key_downType", (byte) (this.bLS ? 1 : 0));
                                m5567a(1, bundle);
                            }
                            throw th;
                        }
                    }
                    if (ahT != null) {
                        ahT.getConnectionManager().shutdown();
                    }
                    if (httpResponse != null) {
                    }
                    if (r1 != 0 && r1 != -7) {
                        bundle.putInt("key_errcode", r1);
                        bundle.putString("key_errorMsg", "");
                        bundle.putInt("key_downSize", (int) this.bLR);
                        bundle.putInt("key_total", (int) this.f2067Ys);
                        bundle.putInt("key_sdcardstatus", bsi.m5570cG(this.f2067Ys - this.bLR));
                        bundle.putByte("key_downType", (byte) (this.bLS ? 1 : 0));
                        m5567a(1, bundle);
                    }
                    return r1;
                } catch (SocketException e6) {
                    e = e6;
                    httpClient6 = ahT;
                    obj5 = null;
                } catch (SocketTimeoutException e7) {
                    e = e7;
                    httpClient5 = ahT;
                    obj4 = null;
                } catch (IOException e8) {
                    e = e8;
                    httpClient4 = ahT;
                    obj3 = null;
                } catch (Exception e9) {
                    e = e9;
                    httpClient3 = ahT;
                    obj2 = null;
                } catch (ClientProtocolException e10) {
                    e = e10;
                    httpClient2 = ahT;
                    obj = null;
                } catch (Throwable th3) {
                    str3 = "";
                    i = -3000;
                    httpClient = ahT;
                    str5 = null;
                    th = th3;
                }
            } catch (Throwable th4) {
                str3 = str4;
                i = i3;
                th = th4;
                httpClient = r3;
            }
        } catch (SocketException e11) {
            e = e11;
            httpClient6 = null;
            obj5 = null;
        } catch (SocketTimeoutException e12) {
            e = e12;
            httpClient5 = null;
            obj4 = null;
        } catch (IOException e13) {
            e = e13;
            httpClient4 = null;
            obj3 = null;
        } catch (Exception e14) {
            e = e14;
            httpClient3 = null;
            obj2 = null;
        } catch (ClientProtocolException e15) {
            e = e15;
            httpClient2 = null;
            obj = null;
        } catch (Throwable th5) {
            str3 = "";
            i = -3000;
            httpClient = null;
            str5 = null;
            th = th5;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:155:0x0308, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0309, code lost:
        r1 = -7000;
        android.util.Log.e("HttpBase", "is close file error");
        r0.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0315, code lost:
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:238:?, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:239:?, code lost:
        return -7000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:251:?, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0081, code lost:
        r3.flush();
        android.util.Log.i("HttpBase", "mTotalSize: " + r13.f2067Ys + ", mCompletedSize: " + r13.bLR + ", httpEntity.getContentLength(): " + r14.getContentLength());
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00bb, code lost:
        if (r1 != r14.getContentLength()) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00bd, code lost:
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00be, code lost:
        if (r0 == null) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c0, code lost:
        android.util.Log.i("HttpBase", "is closing file");
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c7, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ca, code lost:
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00cb, code lost:
        if (r3 != null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00cd, code lost:
        android.util.Log.i("HttpBase", "fos closing file");
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00d4, code lost:
        r3.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00d9, code lost:
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00da, code lost:
        android.util.Log.e("HttpBase", "fos close file error");
        r1.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x014a, code lost:
        r1 = -7;
     */
    /* JADX WARN: Removed duplicated region for block: B:145:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02e5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m5563a(HttpEntity httpEntity, Bundle bundle, boolean z) {
        FileOutputStream fileOutputStream;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        FileOutputStream fileOutputStream2 = null;
        InputStream inputStream = null;
        byte[] bArr = new byte[8192];
        try {
            try {
                this.f2067Ys = httpEntity.getContentLength() + this.bLR;
                int i6 = (int) ((this.bLR * 100) / this.f2067Ys);
                if (i6 == 100) {
                    if (0 != 0) {
                        Log.i("HttpBase", "is closing file");
                        try {
                            inputStream.close();
                        } catch (IOException e) {
                            Log.e("HttpBase", "is close file error");
                            e.printStackTrace();
                        }
                    }
                    if (0 != 0) {
                        Log.i("HttpBase", "fos closing file");
                        try {
                            fileOutputStream2.close();
                            return 0;
                        } catch (IOException e2) {
                            Log.e("HttpBase", "fos close file error");
                            e2.printStackTrace();
                            return 0;
                        }
                    }
                    return 0;
                }
                File file = new File(this.bLM, this.bLN);
                if (!file.exists()) {
                    file.getParentFile().mkdirs();
                    file.createNewFile();
                }
                fileOutputStream = new FileOutputStream(file, true);
                try {
                    InputStream inflaterInputStream = z ? new InflaterInputStream(httpEntity.getContent()) : httpEntity.getContent();
                    int i7 = 0;
                    inputStream = null;
                    inputStream = null;
                    inputStream = null;
                    inputStream = null;
                    inputStream = null;
                    int i8 = i6;
                    while (true) {
                        try {
                            int read = inflaterInputStream.read(bArr);
                            if (read == -1) {
                                break;
                            } else if (this.mIsCanceled) {
                                if (inflaterInputStream != null) {
                                    Log.i("HttpBase", "is closing file");
                                    try {
                                        inflaterInputStream.close();
                                    } catch (IOException e3) {
                                        Log.e("HttpBase", "is close file error");
                                        e3.printStackTrace();
                                    }
                                }
                                if (fileOutputStream != null) {
                                    Log.i("HttpBase", "fos closing file");
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e4) {
                                        Log.e("HttpBase", "fos close file error");
                                        e4.printStackTrace();
                                    }
                                }
                                return -5003;
                            } else {
                                this.bLR += read;
                                int i9 = i7 + read;
                                int i10 = (int) ((this.bLR * 100) / this.f2067Ys);
                                if (i10 != i8) {
                                    bundle.putInt("key_progress", i10);
                                    m5567a(2, bundle);
                                } else {
                                    i10 = i8;
                                }
                                fileOutputStream.write(bArr, 0, read);
                                i8 = i10;
                                i7 = i9;
                            }
                        } catch (FileNotFoundException e5) {
                            fileOutputStream2 = fileOutputStream;
                            InputStream inputStream2 = inflaterInputStream;
                            e = e5;
                            inputStream = inputStream2;
                            try {
                                Log.e("HttpBase", "file not found");
                                e.printStackTrace();
                                if (inputStream != null) {
                                    Log.i("HttpBase", "is closing file");
                                    try {
                                        inputStream.close();
                                        i5 = -7001;
                                    } catch (IOException e6) {
                                        i5 = -7000;
                                        Log.e("HttpBase", "is close file error");
                                        e6.printStackTrace();
                                    }
                                } else {
                                    i5 = -7001;
                                }
                                if (fileOutputStream2 != null) {
                                    Log.i("HttpBase", "fos closing file");
                                    try {
                                        fileOutputStream2.close();
                                        return i5;
                                    } catch (IOException e7) {
                                        Log.e("HttpBase", "fos close file error");
                                        e7.printStackTrace();
                                        return -7000;
                                    }
                                }
                                return i5;
                            } catch (Throwable th) {
                                th = th;
                                fileOutputStream = fileOutputStream2;
                                if (inputStream != null) {
                                    Log.i("HttpBase", "is closing file");
                                    try {
                                        inputStream.close();
                                    } catch (IOException e8) {
                                        Log.e("HttpBase", "is close file error");
                                        e8.printStackTrace();
                                    }
                                }
                                if (fileOutputStream != null) {
                                    Log.i("HttpBase", "fos closing file");
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e9) {
                                        Log.e("HttpBase", "fos close file error");
                                        e9.printStackTrace();
                                    }
                                }
                                throw th;
                            }
                        } catch (SocketException e10) {
                            inputStream = inflaterInputStream;
                            e = e10;
                            Log.e("HttpBase", "socket error:" + e.getMessage());
                            e.printStackTrace();
                            if (inputStream != null) {
                                Log.i("HttpBase", "is closing file");
                                try {
                                    inputStream.close();
                                    i4 = -5054;
                                } catch (IOException e11) {
                                    i4 = -7000;
                                    Log.e("HttpBase", "is close file error");
                                    e11.printStackTrace();
                                }
                            } else {
                                i4 = -5054;
                            }
                            if (fileOutputStream != null) {
                                Log.i("HttpBase", "fos closing file");
                                try {
                                    fileOutputStream.close();
                                    return i4;
                                } catch (IOException e12) {
                                    Log.e("HttpBase", "fos close file error");
                                    e12.printStackTrace();
                                    return -7000;
                                }
                            }
                            return i4;
                        } catch (SocketTimeoutException e13) {
                            inputStream = inflaterInputStream;
                            e = e13;
                            Log.e("HttpBase", "socket timeout error:" + e.getMessage());
                            e.printStackTrace();
                            if (inputStream != null) {
                                Log.i("HttpBase", "is closing file");
                                try {
                                    inputStream.close();
                                    i3 = -5055;
                                } catch (IOException e14) {
                                    i3 = -7000;
                                    Log.e("HttpBase", "is close file error");
                                    e14.printStackTrace();
                                }
                            } else {
                                i3 = -5055;
                            }
                            if (fileOutputStream != null) {
                                Log.i("HttpBase", "fos closing file");
                                try {
                                    fileOutputStream.close();
                                    return i3;
                                } catch (IOException e15) {
                                    Log.e("HttpBase", "fos close file error");
                                    e15.printStackTrace();
                                    return -7000;
                                }
                            }
                            return i3;
                        } catch (IOException e16) {
                            inputStream = inflaterInputStream;
                            e = e16;
                            Log.e("HttpBase", "socket or file io error");
                            e.printStackTrace();
                            if (inputStream != null) {
                                Log.i("HttpBase", "is closing file");
                                try {
                                    inputStream.close();
                                    i2 = -5056;
                                } catch (IOException e17) {
                                    i2 = -7000;
                                    Log.e("HttpBase", "is close file error");
                                    e17.printStackTrace();
                                }
                            } else {
                                i2 = -5056;
                            }
                            if (fileOutputStream != null) {
                                Log.i("HttpBase", "fos closing file");
                                try {
                                    fileOutputStream.close();
                                    return i2;
                                } catch (IOException e18) {
                                    Log.e("HttpBase", "fos close file error");
                                    e18.printStackTrace();
                                    return -7000;
                                }
                            }
                            return i2;
                        } catch (Exception e19) {
                            inputStream = inflaterInputStream;
                            e = e19;
                            Log.e("HttpBase", e.toString());
                            Log.e("HttpBase", "receive data error");
                            e.printStackTrace();
                            if (inputStream != null) {
                                Log.i("HttpBase", "is closing file");
                                try {
                                    inputStream.close();
                                    i = -5000;
                                } catch (IOException e20) {
                                    i = -7000;
                                    Log.e("HttpBase", "is close file error");
                                    e20.printStackTrace();
                                }
                            } else {
                                i = -5000;
                            }
                            if (fileOutputStream != null) {
                                Log.i("HttpBase", "fos closing file");
                                try {
                                    fileOutputStream.close();
                                    return i;
                                } catch (IOException e21) {
                                    Log.e("HttpBase", "fos close file error");
                                    e21.printStackTrace();
                                    return -7000;
                                }
                            }
                            return i;
                        } catch (Throwable th2) {
                            inputStream = inflaterInputStream;
                            th = th2;
                            if (inputStream != null) {
                            }
                            if (fileOutputStream != null) {
                            }
                            throw th;
                        }
                    }
                } catch (FileNotFoundException e22) {
                    e = e22;
                    fileOutputStream2 = fileOutputStream;
                } catch (SocketException e23) {
                    e = e23;
                } catch (SocketTimeoutException e24) {
                    e = e24;
                } catch (IOException e25) {
                    e = e25;
                } catch (Exception e26) {
                    e = e26;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (FileNotFoundException e27) {
            e = e27;
        } catch (SocketException e28) {
            e = e28;
            fileOutputStream = null;
        } catch (SocketTimeoutException e29) {
            e = e29;
            fileOutputStream = null;
        } catch (IOException e30) {
            e = e30;
            fileOutputStream = null;
        } catch (Exception e31) {
            e = e31;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    public String ahU() {
        return String.valueOf(this.aGQ) + File.separator + this.bLO;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:142:0x019d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0198 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v9, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v13, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v19 */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21 */
    /* JADX WARN: Type inference failed for: r5v22, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v28, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v34 */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* renamed from: eE */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m5562eE(boolean z) {
        FileOutputStream fileOutputStream;
        int i;
        int i2;
        FileInputStream fileInputStream;
        int i3 = 0;
        FileInputStream fileInputStream2 = null;
        int i4 = -7000;
        Log.i("HttpGetFile", String.valueOf(this.bLM) + File.separator + this.bLN);
        ?? r2 = "HttpGetFile";
        StringBuilder append = new StringBuilder(String.valueOf(this.aGQ)).append(File.separator);
        ?? r5 = this.bLO;
        Log.i("HttpGetFile", append.append((String) r5).toString());
        try {
            try {
                r2 = new File(this.bLM, this.bLN);
                try {
                    if (r2.exists()) {
                        if (this.bLP == 1 && this.mContext.getFilesDir().getAbsolutePath().equals(this.aGQ)) {
                            r5 = this.mContext.openFileOutput(this.bLO, 1);
                        } else {
                            File file = new File(ahU());
                            if (file.exists()) {
                                file.delete();
                                r5 = new FileOutputStream(file);
                            } else {
                                file.getParentFile().mkdirs();
                                file.createNewFile();
                                r5 = new FileOutputStream(file);
                            }
                        }
                        try {
                            fileInputStream = new FileInputStream((File) r2);
                        } catch (FileNotFoundException e) {
                            e = e;
                            fileOutputStream = r5;
                            r2 = r2;
                        } catch (IOException e2) {
                            e = e2;
                        } catch (Exception e3) {
                            e = e3;
                        }
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int read = fileInputStream.read(bArr);
                                if (read == -1) {
                                    break;
                                }
                                r5.write(bArr, 0, read);
                            }
                        } catch (FileNotFoundException e4) {
                            e = e4;
                            fileInputStream2 = fileInputStream;
                            fileOutputStream = r5;
                            r2 = r2;
                            try {
                                Log.e("HttpBase", "file not found");
                                e.printStackTrace();
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                        i2 = -7001;
                                    } catch (IOException e5) {
                                        Log.e("HttpBase", "fis close file error");
                                        e5.printStackTrace();
                                        i2 = -7000;
                                    }
                                } else {
                                    i2 = -7001;
                                }
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                        i4 = i2;
                                    } catch (IOException e6) {
                                        Log.e("HttpBase", "fosclose file error");
                                        e6.printStackTrace();
                                    }
                                } else {
                                    i4 = i2;
                                }
                                if (z && r2 != 0 && r2.exists()) {
                                    r2.delete();
                                }
                                return i4;
                            } catch (Throwable th) {
                                th = th;
                                r5 = fileOutputStream;
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                    } catch (IOException e7) {
                                        Log.e("HttpBase", "fis close file error");
                                        e7.printStackTrace();
                                    }
                                }
                                if (r5 != 0) {
                                    try {
                                        r5.close();
                                    } catch (IOException e8) {
                                        Log.e("HttpBase", "fosclose file error");
                                        e8.printStackTrace();
                                    }
                                }
                                if (z && r2 != 0 && r2.exists()) {
                                    r2.delete();
                                }
                                throw th;
                            }
                        } catch (IOException e9) {
                            e = e9;
                            fileInputStream2 = fileInputStream;
                            Log.e("HttpBase", "file io error");
                            e.printStackTrace();
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                    i = -7056;
                                } catch (IOException e10) {
                                    Log.e("HttpBase", "fis close file error");
                                    e10.printStackTrace();
                                    i = -7000;
                                }
                            } else {
                                i = -7056;
                            }
                            if (r5 != 0) {
                                try {
                                    r5.close();
                                    i4 = i;
                                } catch (IOException e11) {
                                    Log.e("HttpBase", "fosclose file error");
                                    e11.printStackTrace();
                                }
                            } else {
                                i4 = i;
                            }
                            if (z && r2 != 0 && r2.exists()) {
                                r2.delete();
                            }
                            return i4;
                        } catch (Exception e12) {
                            e = e12;
                            fileInputStream2 = fileInputStream;
                            Log.e("HttpBase", "file op error");
                            e.printStackTrace();
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e13) {
                                    Log.e("HttpBase", "fis close file error");
                                    e13.printStackTrace();
                                }
                            }
                            if (r5 != 0) {
                                try {
                                    r5.close();
                                } catch (IOException e14) {
                                    Log.e("HttpBase", "fosclose file error");
                                    e14.printStackTrace();
                                }
                            }
                            if (z && r2 != 0 && r2.exists()) {
                                r2.delete();
                            }
                            return i4;
                        } catch (Throwable th2) {
                            th = th2;
                            fileInputStream2 = fileInputStream;
                            if (fileInputStream2 != null) {
                            }
                            if (r5 != 0) {
                            }
                            if (z) {
                                r2.delete();
                            }
                            throw th;
                        }
                    } else {
                        fileInputStream = null;
                        r5 = 0;
                        i3 = -7001;
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e15) {
                            Log.e("HttpBase", "fis close file error");
                            e15.printStackTrace();
                            i3 = -7000;
                        }
                    }
                    if (r5 != 0) {
                        try {
                            r5.close();
                            i4 = i3;
                        } catch (IOException e16) {
                            Log.e("HttpBase", "fosclose file error");
                            e16.printStackTrace();
                        }
                    } else {
                        i4 = i3;
                    }
                    if (z && r2 != 0 && r2.exists()) {
                        r2.delete();
                    }
                } catch (FileNotFoundException e17) {
                    e = e17;
                    fileOutputStream = null;
                    r2 = r2;
                } catch (IOException e18) {
                    e = e18;
                    r5 = 0;
                } catch (Exception e19) {
                    e = e19;
                    r5 = 0;
                } catch (Throwable th3) {
                    th = th3;
                    r5 = 0;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (FileNotFoundException e20) {
            e = e20;
            r2 = 0;
            fileOutputStream = null;
        } catch (IOException e21) {
            e = e21;
            r2 = 0;
            r5 = 0;
        } catch (Exception e22) {
            e = e22;
            r2 = 0;
            r5 = 0;
        } catch (Throwable th5) {
            th = th5;
            r2 = 0;
            r5 = 0;
        }
        return i4;
    }
}
