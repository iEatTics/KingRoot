package sm;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.URL;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.InflaterInputStream;
/* renamed from: sm.j */
/* loaded from: classes.dex */
public class C4414j {

    /* renamed from: e */
    private static String f5486e = "10.0.0.172";
    EnumC4415a bXu;

    /* renamed from: a */
    protected HttpURLConnection f5487a = null;

    /* renamed from: b */
    protected boolean f5488b = false;

    /* renamed from: d */
    private int f5489d = -1;

    /* renamed from: sm.j$a */
    /* loaded from: classes.dex */
    public enum EnumC4415a {
        CONN_WIFI,
        CONN_CMWAP,
        CONN_CMNET,
        CONN_NONE
    }

    public C4414j(Context context) {
        this.bXu = EnumC4415a.CONN_NONE;
        this.bXu = m19cq(context);
    }

    /* renamed from: cq */
    public static EnumC4415a m19cq(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !(activeNetworkInfo.getState() == NetworkInfo.State.CONNECTING || activeNetworkInfo.getState() == NetworkInfo.State.CONNECTED)) {
            return EnumC4415a.CONN_NONE;
        }
        if (activeNetworkInfo.getType() == 1) {
            return EnumC4415a.CONN_WIFI;
        }
        if (activeNetworkInfo.getType() == 0) {
            if (Proxy.getDefaultHost() == null && Proxy.getHost(context) == null) {
                return EnumC4415a.CONN_CMNET;
            }
            f5486e = Proxy.getDefaultHost();
            return EnumC4415a.CONN_CMWAP;
        }
        return EnumC4415a.CONN_NONE;
    }

    /* renamed from: d */
    private byte[] m18d(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read();
            if (read == -1) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(read);
        }
    }

    /* renamed from: a */
    int m21a(String str) {
        if (this.bXu == EnumC4415a.CONN_NONE) {
            return -1052;
        }
        try {
            URL url = new URL(str);
            if (this.bXu == EnumC4415a.CONN_CMWAP) {
                this.f5487a = (HttpURLConnection) url.openConnection(new java.net.Proxy(Proxy.Type.HTTP, new InetSocketAddress(f5486e, 80)));
            } else {
                this.f5487a = (HttpURLConnection) url.openConnection();
            }
            this.f5487a.setReadTimeout(15000);
            this.f5487a.setConnectTimeout(15000);
            return 0;
        } catch (UnsupportedOperationException e) {
            return -1059;
        } catch (MalformedURLException e2) {
            return -1053;
        } catch (IOException e3) {
            return -1056;
        } catch (IllegalArgumentException e4) {
            return -1057;
        } catch (SecurityException e5) {
            return -1058;
        } catch (Exception e6) {
            return -1000;
        }
    }

    /* renamed from: a */
    public int m20a(boolean z, AtomicReference<byte[]> atomicReference) {
        int i;
        byte[] bArr;
        if (this.f5487a == null || !this.f5488b) {
            return -4000;
        }
        try {
            bArr = m18d(z ? new InflaterInputStream(this.f5487a.getInputStream()) : this.f5487a.getInputStream());
            i = 0;
        } catch (IOException e) {
            i = -4056;
            bArr = null;
        } catch (Exception e2) {
            i = -4000;
            bArr = null;
        }
        atomicReference.set(bArr);
        if (this.f5487a != null) {
            this.f5487a.disconnect();
            this.f5487a = null;
            return i;
        }
        return i;
    }

    /* renamed from: d */
    public int m17d(String str, byte[] bArr) {
        int m21a = m21a(str);
        if (m21a != 0) {
            return m21a;
        }
        this.f5488b = false;
        try {
            int length = bArr.length;
            this.f5487a.setDoOutput(true);
            this.f5487a.setDoInput(true);
            this.f5487a.setUseCaches(false);
            this.f5487a.setRequestMethod("POST");
            this.f5487a.setRequestProperty("User-Agent", "QQPimSecure");
            this.f5487a.setRequestProperty("Accept", "*/*");
            this.f5487a.setRequestProperty("Accept-Charset", "utf-8");
            this.f5487a.setRequestProperty("Content-Type", "application/octet-stream");
            this.f5487a.setRequestProperty("Content-length", "" + length);
            OutputStream outputStream = this.f5487a.getOutputStream();
            outputStream.write(bArr);
            outputStream.close();
            int responseCode = this.f5487a.getResponseCode();
            if (responseCode == 200) {
                this.f5488b = true;
                return 0;
            } else if (responseCode == -1) {
                return -2000;
            } else {
                return (-2000) - responseCode;
            }
        } catch (Exception e) {
            return -2000;
        } catch (IllegalAccessError e2) {
            return -2060;
        } catch (IllegalStateException e3) {
            return -2061;
        } catch (ProtocolException e4) {
            return -2051;
        } catch (IOException e5) {
            return -2056;
        }
    }
}
