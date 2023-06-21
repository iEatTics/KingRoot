package com.kingroot.kinguser;

import android.content.Context;
import android.net.Proxy;
import android.os.Bundle;
import android.os.Environment;
import android.p003os.Environmenu;
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
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import sm.C4414j;
/* loaded from: classes.dex */
public class cda extends ccz {
    private HttpGet bXs;

    /* renamed from: c */
    private Context f2262c;

    /* renamed from: e */
    private String f2263e;

    /* renamed from: f */
    private String f2264f;

    /* renamed from: j */
    private boolean f2268j;

    /* renamed from: g */
    private String f2265g = null;

    /* renamed from: h */
    private String f2266h = null;

    /* renamed from: i */
    private int f2267i = 0;
    private boolean bGo = false;

    /* renamed from: l */
    private long f2269l = 0;

    public cda(Context context) {
        this.bXs = null;
        this.f2263e = null;
        this.f2264f = null;
        this.f2268j = false;
        this.f2262c = context;
        this.f2268j = Environmenu.MEDIA_MOUNTED.equals(Environment.getExternalStorageState());
        if (this.f2268j) {
            this.f2263e = "/sdcard/qqsecure";
            this.f2264f = "/sdcard/qqsecure";
        } else {
            this.f2263e = context.getCacheDir().getAbsolutePath();
            this.f2264f = context.getFilesDir().getAbsolutePath();
        }
        this.bXs = new HttpGet();
        if (C4414j.m19cq(this.f2262c) == C4414j.EnumC4415a.CONN_CMWAP) {
            m4881a(Proxy.getDefaultHost(), Proxy.getDefaultPort());
            m4880a(true);
        }
    }

    /* renamed from: a */
    private int m4876a(String str) {
        int i;
        URI uri = null;
        try {
            uri = new URI(str);
            i = -1000;
        } catch (URISyntaxException e) {
            e.printStackTrace();
            i = -1053;
        }
        if (uri != null) {
            this.bXs.setURI(uri);
            return 0;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:194:?, code lost:
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:?, code lost:
        return -7000;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:?, code lost:
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00da, code lost:
        r5.flush();
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e4, code lost:
        if (r3 != r18.getContentLength()) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00e6, code lost:
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00e7, code lost:
        if (r2 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e9, code lost:
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00ec, code lost:
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ed, code lost:
        if (r5 != null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ef, code lost:
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f3, code lost:
        r3 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00f4, code lost:
        r3.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00fa, code lost:
        r3 = -7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00fc, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00fd, code lost:
        r3 = -7000;
        r2.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0102, code lost:
        r2 = r3;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m4874b(HttpEntity httpEntity, Bundle bundle, boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        FileOutputStream fileOutputStream = null;
        InputStream inputStream = null;
        byte[] bArr = new byte[8192];
        try {
            try {
                long contentLength = httpEntity.getContentLength() + this.f2269l;
                int i6 = (int) ((this.f2269l * 100) / contentLength);
                bundle.putLong("key_total", contentLength);
                bundle.putLong("key_completed", this.f2269l);
                bundle.putInt("key_progress", i6);
                File file = new File(this.f2263e + File.separator + this.f2265g);
                if (!file.exists()) {
                    file.getParentFile().mkdirs();
                    file.createNewFile();
                }
                FileOutputStream fileOutputStream2 = new FileOutputStream(file, true);
                try {
                    InputStream inflaterInputStream = z ? new InflaterInputStream(httpEntity.getContent()) : httpEntity.getContent();
                    int i7 = 0;
                    inputStream = null;
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
                            } else if (this.bGo) {
                                if (inflaterInputStream != null) {
                                    try {
                                        inflaterInputStream.close();
                                    } catch (IOException e) {
                                        e.printStackTrace();
                                    }
                                }
                                if (fileOutputStream2 != null) {
                                    try {
                                        fileOutputStream2.close();
                                    } catch (IOException e2) {
                                        e2.printStackTrace();
                                    }
                                }
                                return -5003;
                            } else {
                                this.f2269l += read;
                                int i9 = i7 + read;
                                bundle.putLong("key_completed", this.f2269l);
                                int i10 = (int) ((this.f2269l * 100) / contentLength);
                                if (i10 != i8) {
                                    bundle.putInt("key_progress", i10);
                                    m4879b(2, bundle);
                                } else {
                                    i10 = i8;
                                }
                                fileOutputStream2.write(bArr, 0, read);
                                i8 = i10;
                                i7 = i9;
                            }
                        } catch (FileNotFoundException e3) {
                            fileOutputStream = fileOutputStream2;
                            InputStream inputStream2 = inflaterInputStream;
                            e = e3;
                            inputStream = inputStream2;
                            e.printStackTrace();
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                    i5 = -7001;
                                } catch (IOException e4) {
                                    i5 = -7000;
                                    e4.printStackTrace();
                                }
                            } else {
                                i5 = -7001;
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    return i5;
                                } catch (IOException e5) {
                                    e5.printStackTrace();
                                    return -7000;
                                }
                            }
                            return i5;
                        } catch (SocketException e6) {
                            fileOutputStream = fileOutputStream2;
                            InputStream inputStream3 = inflaterInputStream;
                            e = e6;
                            inputStream = inputStream3;
                            e.printStackTrace();
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                    i4 = -5054;
                                } catch (IOException e7) {
                                    i4 = -7000;
                                    e7.printStackTrace();
                                }
                            } else {
                                i4 = -5054;
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    return i4;
                                } catch (IOException e8) {
                                    e8.printStackTrace();
                                    return -7000;
                                }
                            }
                            return i4;
                        } catch (SocketTimeoutException e9) {
                            fileOutputStream = fileOutputStream2;
                            InputStream inputStream4 = inflaterInputStream;
                            e = e9;
                            inputStream = inputStream4;
                            e.printStackTrace();
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                    i3 = -5055;
                                } catch (IOException e10) {
                                    i3 = -7000;
                                    e10.printStackTrace();
                                }
                            } else {
                                i3 = -5055;
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    return i3;
                                } catch (IOException e11) {
                                    e11.printStackTrace();
                                    return -7000;
                                }
                            }
                            return i3;
                        } catch (IOException e12) {
                            fileOutputStream = fileOutputStream2;
                            InputStream inputStream5 = inflaterInputStream;
                            e = e12;
                            inputStream = inputStream5;
                            e.printStackTrace();
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                    i2 = -5056;
                                } catch (IOException e13) {
                                    i2 = -7000;
                                    e13.printStackTrace();
                                }
                            } else {
                                i2 = -5056;
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    return i2;
                                } catch (IOException e14) {
                                    e14.printStackTrace();
                                    return -7000;
                                }
                            }
                            return i2;
                        } catch (Exception e15) {
                            fileOutputStream = fileOutputStream2;
                            InputStream inputStream6 = inflaterInputStream;
                            e = e15;
                            inputStream = inputStream6;
                            e.printStackTrace();
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                    i = -5000;
                                } catch (IOException e16) {
                                    i = -7000;
                                    e16.printStackTrace();
                                }
                            } else {
                                i = -5000;
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    return i;
                                } catch (IOException e17) {
                                    e17.printStackTrace();
                                    return -7000;
                                }
                            }
                            return i;
                        } catch (Throwable th) {
                            fileOutputStream = fileOutputStream2;
                            InputStream inputStream7 = inflaterInputStream;
                            th = th;
                            inputStream = inputStream7;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException e18) {
                                    e18.printStackTrace();
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e19) {
                                    e19.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    }
                } catch (FileNotFoundException e20) {
                    e = e20;
                    fileOutputStream = fileOutputStream2;
                } catch (SocketException e21) {
                    e = e21;
                    fileOutputStream = fileOutputStream2;
                } catch (SocketTimeoutException e22) {
                    e = e22;
                    fileOutputStream = fileOutputStream2;
                } catch (IOException e23) {
                    e = e23;
                    fileOutputStream = fileOutputStream2;
                } catch (Exception e24) {
                    e = e24;
                    fileOutputStream = fileOutputStream2;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (FileNotFoundException e25) {
            e = e25;
        } catch (SocketException e26) {
            e = e26;
        } catch (SocketTimeoutException e27) {
            e = e27;
        } catch (IOException e28) {
            e = e28;
        } catch (Exception e29) {
            e = e29;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x0140 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x013b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: eH */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m4873eH(boolean z) {
        File file;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        int i;
        int i2;
        FileInputStream fileInputStream;
        int i3 = 0;
        FileInputStream fileInputStream2 = null;
        int i4 = -7000;
        try {
            try {
                file = new File(this.f2263e + File.separator + this.f2265g);
                try {
                    if (file.exists()) {
                        if (this.f2268j || this.f2267i != 1) {
                            File file2 = new File(this.f2264f + File.separator + this.f2266h);
                            if (file2.exists()) {
                                file2.delete();
                                fileOutputStream = new FileOutputStream(file2);
                            } else {
                                file2.getParentFile().mkdirs();
                                file2.createNewFile();
                                fileOutputStream = new FileOutputStream(file2);
                            }
                        } else {
                            fileOutputStream = this.f2262c.openFileOutput(this.f2266h, 1);
                        }
                        try {
                            fileInputStream = new FileInputStream(file);
                        } catch (FileNotFoundException e) {
                            e = e;
                            fileOutputStream2 = fileOutputStream;
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
                                fileOutputStream.write(bArr, 0, read);
                            }
                        } catch (FileNotFoundException e4) {
                            e = e4;
                            fileInputStream2 = fileInputStream;
                            fileOutputStream2 = fileOutputStream;
                            try {
                                e.printStackTrace();
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                        i2 = -7001;
                                    } catch (IOException e5) {
                                        e5.printStackTrace();
                                        i2 = -7000;
                                    }
                                } else {
                                    i2 = -7001;
                                }
                                if (fileOutputStream2 != null) {
                                    try {
                                        fileOutputStream2.close();
                                        i4 = i2;
                                    } catch (IOException e6) {
                                        e6.printStackTrace();
                                    }
                                } else {
                                    i4 = i2;
                                }
                                if (z && file.exists()) {
                                    file.delete();
                                }
                                return i4;
                            } catch (Throwable th) {
                                th = th;
                                fileOutputStream = fileOutputStream2;
                                if (fileInputStream2 != null) {
                                    try {
                                        fileInputStream2.close();
                                    } catch (IOException e7) {
                                        e7.printStackTrace();
                                    }
                                }
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException e8) {
                                        e8.printStackTrace();
                                    }
                                }
                                if (z && file.exists()) {
                                    file.delete();
                                }
                                throw th;
                            }
                        } catch (IOException e9) {
                            e = e9;
                            fileInputStream2 = fileInputStream;
                            e.printStackTrace();
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                    i = -7056;
                                } catch (IOException e10) {
                                    e10.printStackTrace();
                                    i = -7000;
                                }
                            } else {
                                i = -7056;
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                    i4 = i;
                                } catch (IOException e11) {
                                    e11.printStackTrace();
                                }
                            } else {
                                i4 = i;
                            }
                            if (z && file.exists()) {
                                file.delete();
                            }
                            return i4;
                        } catch (Exception e12) {
                            e = e12;
                            fileInputStream2 = fileInputStream;
                            e.printStackTrace();
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                } catch (IOException e13) {
                                    e13.printStackTrace();
                                }
                            }
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e14) {
                                    e14.printStackTrace();
                                }
                            }
                            if (z && file.exists()) {
                                file.delete();
                            }
                            return i4;
                        } catch (Throwable th2) {
                            th = th2;
                            fileInputStream2 = fileInputStream;
                            if (fileInputStream2 != null) {
                            }
                            if (fileOutputStream != null) {
                            }
                            if (z) {
                                file.delete();
                            }
                            throw th;
                        }
                    } else {
                        fileInputStream = null;
                        fileOutputStream = null;
                        i3 = -7001;
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (IOException e15) {
                            e15.printStackTrace();
                            i3 = -7000;
                        }
                    }
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                            i4 = i3;
                        } catch (IOException e16) {
                            e16.printStackTrace();
                        }
                    } else {
                        i4 = i3;
                    }
                    if (z && file.exists()) {
                        file.delete();
                    }
                } catch (FileNotFoundException e17) {
                    e = e17;
                    fileOutputStream2 = null;
                } catch (IOException e18) {
                    e = e18;
                    fileOutputStream = null;
                } catch (Exception e19) {
                    e = e19;
                    fileOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (FileNotFoundException e20) {
            e = e20;
            file = null;
            fileOutputStream2 = null;
        } catch (IOException e21) {
            e = e21;
            file = null;
            fileOutputStream = null;
        } catch (Exception e22) {
            e = e22;
            file = null;
            fileOutputStream = null;
        } catch (Throwable th5) {
            th = th5;
            file = null;
            fileOutputStream = null;
        }
        return i4;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0196  */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v36 */
    /* JADX WARN: Type inference failed for: r3v37 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* renamed from: M */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int m4878M(String str, boolean z) {
        HttpClient httpClient;
        ClientProtocolException clientProtocolException;
        HttpClient httpClient2;
        Exception exc;
        HttpClient httpClient3;
        IOException iOException;
        HttpClient httpClient4;
        SocketTimeoutException socketTimeoutException;
        HttpClient httpClient5;
        SocketException socketException;
        int i;
        ?? r3 = -3000;
        int i2 = -3000;
        HttpClient httpClient6 = null;
        HttpClient httpClient7 = null;
        Bundle bundle = new Bundle();
        try {
            try {
                try {
                    HttpClient akL = akL();
                    try {
                        int m4876a = m4876a(str);
                        if (m4876a != 0) {
                            i = m4876a;
                        } else if (this.bGo) {
                            i = -3003;
                        } else if (this.bXs.getURI() == null) {
                            i = -3053;
                        } else {
                            String m4852b = cdf.m4852b(str);
                            this.f2265g = m4852b + ".tmp";
                            if (this.f2266h == null) {
                                this.f2266h = m4852b;
                            }
                            File file = new File(this.f2263e + File.separator + this.f2265g);
                            if (file.exists()) {
                                this.f2269l = file.length();
                                this.bXs.setHeader("RANGE", "bytes=" + this.f2269l + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR);
                            }
                            httpClient7 = akL.execute(this.bXs);
                            try {
                                int statusCode = httpClient7.getStatusLine().getStatusCode();
                                if (statusCode != 200 && statusCode != 206) {
                                    i = (-3000) - statusCode;
                                } else if (this.bGo) {
                                    i = -3003;
                                } else {
                                    HttpEntity entity = httpClient7.getEntity();
                                    if (entity == null) {
                                        i = -4000;
                                    } else {
                                        int m4874b = m4874b(entity, bundle, z);
                                        if (m4874b != 0) {
                                            i = m4874b == -7 ? m4874b : m4874b;
                                        } else {
                                            int m4873eH = m4873eH(true);
                                            i = m4873eH != 0 ? m4873eH : 0;
                                        }
                                    }
                                }
                            } catch (SocketException e) {
                                httpClient5 = akL;
                                httpClient6 = httpClient7;
                                socketException = e;
                                i = -3054;
                                socketException.printStackTrace();
                                if (httpClient5 != null) {
                                    httpClient5.getConnectionManager().shutdown();
                                }
                                if (httpClient6 != null) {
                                }
                                bundle.putInt("key_errcode", -3054);
                                m4879b(1, bundle);
                                r3 = httpClient5;
                                return i;
                            } catch (SocketTimeoutException e2) {
                                httpClient4 = akL;
                                httpClient6 = httpClient7;
                                socketTimeoutException = e2;
                                i = -3055;
                                socketTimeoutException.printStackTrace();
                                if (httpClient4 != null) {
                                    httpClient4.getConnectionManager().shutdown();
                                }
                                if (httpClient6 != null) {
                                }
                                bundle.putInt("key_errcode", -3055);
                                m4879b(1, bundle);
                                r3 = httpClient4;
                                return i;
                            } catch (IOException e3) {
                                httpClient3 = akL;
                                httpClient6 = httpClient7;
                                iOException = e3;
                                i = -3056;
                                iOException.printStackTrace();
                                if (httpClient3 != null) {
                                    httpClient3.getConnectionManager().shutdown();
                                }
                                if (httpClient6 != null) {
                                }
                                bundle.putInt("key_errcode", -3056);
                                m4879b(1, bundle);
                                r3 = httpClient3;
                                return i;
                            } catch (Exception e4) {
                                httpClient2 = akL;
                                httpClient6 = httpClient7;
                                exc = e4;
                                i = -3000;
                                exc.printStackTrace();
                                if (httpClient2 != null) {
                                    httpClient2.getConnectionManager().shutdown();
                                }
                                if (httpClient6 != null) {
                                }
                                bundle.putInt("key_errcode", -3000);
                                m4879b(1, bundle);
                                r3 = httpClient2;
                                return i;
                            } catch (ClientProtocolException e5) {
                                httpClient = akL;
                                httpClient6 = httpClient7;
                                clientProtocolException = e5;
                                i = -3051;
                                clientProtocolException.printStackTrace();
                                if (httpClient != null) {
                                    httpClient.getConnectionManager().shutdown();
                                }
                                if (httpClient6 != null) {
                                }
                                bundle.putInt("key_errcode", -3051);
                                m4879b(1, bundle);
                                r3 = httpClient;
                                return i;
                            }
                        }
                        if (akL != null) {
                            akL.getConnectionManager().shutdown();
                        }
                        if (httpClient7 != null) {
                        }
                        if (i != 0 && i != -7) {
                            bundle.putInt("key_errcode", i);
                            m4879b(1, bundle);
                        }
                    } catch (SocketException e6) {
                        httpClient5 = akL;
                        httpClient6 = null;
                        socketException = e6;
                    } catch (SocketTimeoutException e7) {
                        httpClient4 = akL;
                        httpClient6 = null;
                        socketTimeoutException = e7;
                    } catch (IOException e8) {
                        httpClient3 = akL;
                        httpClient6 = null;
                        iOException = e8;
                    } catch (ClientProtocolException e9) {
                        httpClient = akL;
                        httpClient6 = null;
                        clientProtocolException = e9;
                    } catch (Exception e10) {
                        httpClient2 = akL;
                        httpClient6 = null;
                        exc = e10;
                    }
                } catch (Throwable th) {
                    httpClient7 = httpClient6;
                    httpClient6 = r3;
                    i2 = i;
                    th = th;
                    if (httpClient6 != null) {
                        httpClient6.getConnectionManager().shutdown();
                    }
                    if (httpClient7 == null) {
                    }
                    if (i2 != 0 && i2 != -7) {
                        bundle.putInt("key_errcode", i2);
                        m4879b(1, bundle);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (httpClient6 != null) {
                }
                if (httpClient7 == null) {
                }
                if (i2 != 0) {
                    bundle.putInt("key_errcode", i2);
                    m4879b(1, bundle);
                }
                throw th;
            }
        } catch (SocketException e11) {
            httpClient5 = null;
            httpClient6 = null;
            socketException = e11;
        } catch (SocketTimeoutException e12) {
            httpClient4 = null;
            httpClient6 = null;
            socketTimeoutException = e12;
        } catch (IOException e13) {
            httpClient3 = null;
            httpClient6 = null;
            iOException = e13;
        } catch (Exception e14) {
            httpClient2 = null;
            httpClient6 = null;
            exc = e14;
        } catch (ClientProtocolException e15) {
            httpClient = null;
            httpClient6 = null;
            clientProtocolException = e15;
        }
        return i;
    }

    /* renamed from: a */
    public void m4877a(int i) {
        this.f2267i = i;
    }

    /* renamed from: b */
    public String m4875b() {
        return this.f2264f + File.separator + this.f2266h;
    }
}
