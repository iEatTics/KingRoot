package com.kingroot.kinguser;

import andhook.lib.xposed.callbacks.XCallback;
import android.content.Context;
import android.text.TextUtils;
import com.kingroot.kinguser.cff;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.http.client.ClientProtocolException;
import shark.C4395a;
import tmsdk.common.exception.NetWorkException;
/* loaded from: classes.dex */
public class ceo {
    private static String TAG = "HttpNetwork";
    private HttpURLConnection bYs;
    private ceu bYt;
    private cfu bYu;
    private String bYv;
    private boolean bYx;
    private final int bYp = 3;
    private final int bYq = 3;
    private String bYr = "POST";
    private int bYw = 0;

    /* renamed from: com.kingroot.kinguser.ceo$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2710a {
        /* renamed from: a */
        void mo4467a(int i, byte[] bArr);
    }

    public ceo(Context context, ceu ceuVar, cfu cfuVar, boolean z) {
        this.bYx = false;
        this.bYt = ceuVar;
        this.bYu = cfuVar;
        this.bYx = z;
    }

    /* renamed from: nM */
    private int m4758nM(String str) {
        if (this.bYw >= 3) {
            akY();
        }
        if (!TextUtils.isEmpty(this.bYv)) {
            str = this.bYv;
        }
        try {
            URL url = new URL(str);
            try {
                C4395a anb = cgr.anb();
                if (C4395a.bXc == anb) {
                    return -220000;
                }
                if (C4395a.bXe == anb) {
                    this.bYs = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, InetSocketAddress.createUnresolved(cgr.aip(), cgr.aiq())));
                } else {
                    this.bYs = (HttpURLConnection) url.openConnection();
                    this.bYs.setReadTimeout(15000);
                    this.bYs.setConnectTimeout(15000);
                }
                if (cgu.m4301qb() < 8) {
                    System.setProperty("http.keepAlive", "false");
                }
                this.bYs.setUseCaches(false);
                this.bYs.setRequestProperty("Pragma", "no-cache");
                this.bYs.setRequestProperty("Cache-Control", "no-cache");
                this.bYs.setInstanceFollowRedirects(false);
                if ("GET".equalsIgnoreCase(this.bYr)) {
                    this.bYs.setRequestMethod("GET");
                } else {
                    this.bYs.setRequestMethod("POST");
                    this.bYs.setDoOutput(true);
                    this.bYs.setDoInput(true);
                    this.bYs.setRequestProperty("Accept", "*/*");
                    this.bYs.setRequestProperty("Accept-Charset", "utf-8");
                    this.bYs.setRequestProperty("Content-Type", "application/octet-stream");
                }
                return 0;
            } catch (IOException e) {
                e.printStackTrace();
                return -140000;
            } catch (IllegalArgumentException e2) {
                e2.printStackTrace();
                return -240000;
            } catch (SecurityException e3) {
                e3.printStackTrace();
                return -440000;
            } catch (UnknownHostException e4) {
                e4.printStackTrace();
                return -520000;
            }
        } catch (MalformedURLException e5) {
            e5.printStackTrace();
            return -510000;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public synchronized int m4763a(cff.C2744d c2744d, byte[] bArr, AtomicReference<byte[]> atomicReference) {
        int i;
        String ali;
        synchronized (this) {
            if (bArr == null || c2744d == null) {
                i = -10;
            } else {
                boolean z = c2744d.caE == 2048 && !this.bYx;
                int i2 = z ? 1 : 3;
                int i3 = -1;
                for (int i4 = 0; i4 < i2; i4++) {
                    if (C4395a.bXc == cgr.anb()) {
                        i = -220000;
                        break;
                    } else if (c2744d.alO()) {
                        i = -17;
                        break;
                    } else if (cej.akX()) {
                        i = -7;
                        break;
                    } else {
                        if (z) {
                            ali = ces.m4709a(this.bYt);
                            if (ali != null && (ali.length() < 7 || !ali.substring(0, 7).equalsIgnoreCase("http://"))) {
                                ali = "http://" + ali;
                            }
                        } else {
                            ali = this.bYu.ali();
                        }
                        i3 = m4758nM(ali);
                        if (i3 == 0) {
                            c2744d.caT = true;
                            i3 = m4762a(bArr, atomicReference);
                        }
                        aiP();
                        if (i3 == 0 || i3 == -220000) {
                            break;
                        }
                        if (i3 != -60000 && cfd.m4641nS("http send")) {
                            i = -160000;
                            break;
                        }
                        if (!z && i3 != -60000) {
                            this.bYu.mo4387eQ(false);
                        }
                        if (i4 < i2 - 1) {
                            try {
                                Thread.sleep(300L);
                            } catch (InterruptedException e) {
                            }
                        }
                    }
                }
                i = i3;
            }
        }
        return i;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x008e -> B:52:0x0009). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009a -> B:52:0x0009). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a0 -> B:52:0x0009). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00ac -> B:52:0x0009). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00ba -> B:52:0x0009). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00c8 -> B:52:0x0009). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d6 -> B:52:0x0009). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00dc -> B:52:0x0009). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00e2 -> B:52:0x0009). Please submit an issue!!! */
    /* renamed from: a */
    private int m4762a(byte[] bArr, AtomicReference<byte[]> atomicReference) {
        int i = -170000;
        if (this.bYs == null) {
            return XCallback.PRIORITY_LOWEST;
        }
        if (!"GET".equalsIgnoreCase(this.bYr)) {
            this.bYs.setRequestProperty("Content-length", new StringBuilder().append(bArr.length).toString());
        }
        try {
            try {
                try {
                    try {
                        OutputStream outputStream = this.bYs.getOutputStream();
                        outputStream.write(bArr);
                        outputStream.flush();
                        outputStream.close();
                        if (m4760la(this.bYs.getResponseCode())) {
                            this.bYv = m4759lb();
                            this.bYw++;
                            i = -60000;
                        } else {
                            akY();
                            try {
                                if (cgp.isEnable()) {
                                    this.bYs.getHeaderFields();
                                }
                                String headerField = this.bYs.getHeaderField("Server");
                                if (!TextUtils.isEmpty(headerField) && headerField.equals("QBServer")) {
                                    atomicReference.set(m4761g(this.bYs.getInputStream()));
                                    i = 0;
                                }
                            } catch (Exception e) {
                                i = -40000;
                            }
                        }
                    } catch (ClientProtocolException e2) {
                        i = -110000;
                    } catch (IllegalAccessError e3) {
                        i = -80000;
                    }
                } catch (SocketException e4) {
                    i = cen.m4769X(e4.toString(), -420000);
                } catch (SocketTimeoutException e5) {
                    i = -130000;
                }
            } catch (ConnectException e6) {
                i = cen.m4769X(e6.toString(), -500000);
            } catch (IOException e7) {
                i = -140000;
            }
        } catch (IllegalStateException e8) {
            i = -90000;
        } catch (SecurityException e9) {
            i = cen.m4769X(e9.toString(), -440000);
        } catch (ProtocolException e10) {
            i = -100000;
        } catch (UnknownHostException e11) {
            i = -70000;
        } catch (Exception e12) {
            i = -150000;
        }
        return i;
    }

    /* renamed from: g */
    private byte[] m4761g(InputStream inputStream) {
        byte[] bArr = new byte[2048];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            try {
                try {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                } finally {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Exception e) {
                    }
                }
            } catch (IOException e2) {
                throw new NetWorkException(-56, "get Bytes from inputStream when read buffer: " + e2.getMessage());
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    private boolean aiP() {
        if (this.bYs == null) {
            return false;
        }
        try {
            this.bYs.disconnect();
            this.bYs = null;
        } catch (Throwable th) {
        }
        return true;
    }

    /* renamed from: la */
    private boolean m4760la(int i) {
        return i >= 301 && i <= 305;
    }

    private void akY() {
        this.bYv = null;
        this.bYw = 0;
    }

    /* renamed from: lb */
    private String m4759lb() {
        try {
            return this.bYs.getHeaderField("Location");
        } catch (Exception e) {
            return null;
        }
    }
}
