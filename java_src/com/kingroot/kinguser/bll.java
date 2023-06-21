package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.res.AssetManager;
import android.util.Base64;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.Properties;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* loaded from: classes.dex */
public final class bll {
    private static RSAPublicKey bzS;
    private Properties bzT;

    static {
        try {
            bzS = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDCTrqGfyNYDKZEFfvXuYOu9mSCNu6ri10PMG2xJ5sBuUN2OFBT1W5n/dyUkR+Xgnd6w9arSFnU/8fpiP4DRZPL7pkmgzJvjoPqrreXO4nGRQtVbp6sD/gWCKsTlJ9bk01W32gfSOrCNch8BQJO8nE01ffnWmyRiqVTbuh9KEGgcwIDAQAB", 0)));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            bzS = null;
        } catch (InvalidKeySpecException e2) {
            e2.printStackTrace();
            bzS = null;
        }
    }

    private bll(Properties properties) {
        this.bzT = properties;
    }

    /* renamed from: b */
    public static bll m6489b(AssetManager assetManager, String str) {
        InputStream open = assetManager.open(str, 1);
        ByteArrayInputStream byteArrayInputStream = null;
        try {
            if (m6488b(open) != 1413698123) {
                throw new DataFormatException("Not a kingroot sdk certification file");
            }
            int m6488b = m6488b(open);
            byte[] bArr = new byte[m6488b(open)];
            byte[] bArr2 = new byte[m6488b];
            open.read(bArr);
            Inflater inflater = new Inflater();
            inflater.setInput(bArr);
            if (m6488b != inflater.inflate(bArr2)) {
                throw new DataFormatException("Unexpected data length");
            }
            inflater.end();
            Properties properties = new Properties();
            ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArr2);
            try {
                properties.loadFromXML(byteArrayInputStream2);
                byte[] bArr3 = new byte[m6488b(open)];
                open.read(bArr3);
                Signature signature = Signature.getInstance("SHA1WithRSA");
                signature.initVerify(bzS);
                signature.update(bArr);
                if (!signature.verify(bArr3)) {
                    throw new SignatureException("Bad signature");
                }
                bll bllVar = new bll(properties);
                bmu.m6336a(byteArrayInputStream2);
                bmu.m6336a(open);
                return bllVar;
            } catch (Throwable th) {
                th = th;
                byteArrayInputStream = byteArrayInputStream2;
                bmu.m6336a(byteArrayInputStream);
                bmu.m6336a(open);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: b */
    private static int m6488b(InputStream inputStream) {
        return inputStream.read() | (inputStream.read() << 8) | (inputStream.read() << 16) | (inputStream.read() << 24);
    }

    /* renamed from: e */
    public final String m6487e() {
        return this.bzT.getProperty("channel_id");
    }

    /* renamed from: a */
    public final boolean m6491a(Context context) {
        String m6490b = m6490b(context);
        return m6490b != null && context.getPackageName().equals(this.bzT.getProperty("package_name")) && m6490b.equals(this.bzT.getProperty("cert_md5"));
    }

    /* renamed from: b */
    public static String m6490b(Context context) {
        String str;
        PackageInfo m6343a = bmu.m6343a(context, context.getPackageName(), 64);
        if (m6343a == null) {
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(m6343a.signatures[0].toByteArray());
        try {
            try {
                str = bmm.m6382R(((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(byteArrayInputStream)).getEncoded());
            } catch (CertificateException e) {
                e.printStackTrace();
                bmu.m6336a(byteArrayInputStream);
                str = null;
            }
            return str;
        } finally {
            bmu.m6336a(byteArrayInputStream);
        }
    }
}
