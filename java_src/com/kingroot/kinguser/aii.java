package com.kingroot.kinguser;

import com.kingroot.kinguser.aae;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
/* loaded from: classes.dex */
public final class aii {
    private static volatile aii arz = null;
    private String ary;

    /* renamed from: xL */
    public static aii m11642xL() {
        if (arz == null) {
            synchronized (aii.class) {
                if (arz == null) {
                    arz = new aii();
                }
            }
        }
        return arz;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private aii() {
        InputStream inputStream;
        InputStream inputStream2;
        InputStream inputStream3 = null;
        this.ary = "0";
        try {
            inputStream = C3953zi.m1311pr().getAssets().open("config.properties");
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[1024];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read <= 0) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    if (byteArray != null && byteArray.length > 0) {
                        bArr = aae.m13007a(aae.EnumC0609a.XXTEA2).mo12988D(byteArrayOutputStream.toByteArray());
                    }
                    Properties properties = new Properties();
                    if (bArr != null) {
                        properties.load(new ByteArrayInputStream(bArr));
                        this.ary = properties.getProperty("channel");
                    }
                    if (this.ary == null) {
                        this.ary = "0";
                    }
                    C3945za.m1340c(inputStream);
                    C3945za.m1340c(byteArrayOutputStream);
                } catch (IOException e) {
                    inputStream3 = inputStream;
                    inputStream2 = byteArrayOutputStream;
                    try {
                        this.ary = "0";
                        C3945za.m1340c(inputStream3);
                        C3945za.m1340c(inputStream2);
                    } catch (Throwable th) {
                        inputStream = inputStream3;
                        inputStream3 = inputStream2;
                        th = th;
                        C3945za.m1340c(inputStream);
                        C3945za.m1340c(inputStream3);
                        throw th;
                    }
                } catch (Throwable th2) {
                    inputStream3 = byteArrayOutputStream;
                    th = th2;
                    C3945za.m1340c(inputStream);
                    C3945za.m1340c(inputStream3);
                    throw th;
                }
            } catch (IOException e2) {
                inputStream2 = null;
                inputStream3 = inputStream;
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e3) {
            inputStream2 = null;
        } catch (Throwable th4) {
            th = th4;
            inputStream = null;
        }
    }

    public String getChannel() {
        return this.ary;
    }

    /* renamed from: xM */
    public boolean m11641xM() {
        return C3946zb.m1331pk() || !C3952zh.m1312pq().m1314du("com.android.vending");
    }

    /* renamed from: xN */
    public boolean m11640xN() {
        return true;
    }

    /* renamed from: xO */
    public boolean m11639xO() {
        return air.asl && akr.m11154BL().m11153BM() && m11642xL().m11641xM();
    }
}
