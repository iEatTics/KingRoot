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
/* renamed from: com.kingroot.kinguser.ev */
/* loaded from: classes.dex */
public class C3034ev {

    /* renamed from: pB */
    private static RSAPublicKey f2632pB;

    /* renamed from: pC */
    private Properties f2633pC;

    static {
        try {
            f2632pB = (RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDCTrqGfyNYDKZEFfvXuYOu9mSCNu6ri10PMG2xJ5sBuUN2OFBT1W5n/dyUkR+Xgnd6w9arSFnU/8fpiP4DRZPL7pkmgzJvjoPqrreXO4nGRQtVbp6sD/gWCKsTlJ9bk01W32gfSOrCNch8BQJO8nE01ffnWmyRiqVTbuh9KEGgcwIDAQAB", 0)));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            f2632pB = null;
        } catch (InvalidKeySpecException e2) {
            e2.printStackTrace();
            f2632pB = null;
        }
    }

    private C3034ev(Properties properties) {
        this.f2633pC = properties;
    }

    /* renamed from: a */
    public static C3034ev m3896a(AssetManager assetManager, String str) {
        InputStream open = assetManager.open(str, 1);
        ByteArrayInputStream byteArrayInputStream = null;
        try {
            if (m3894b(open) != 1413698123) {
                throw new DataFormatException("Not a TPS sdk certification file");
            }
            int m3894b = m3894b(open);
            byte[] bArr = new byte[m3894b(open)];
            byte[] bArr2 = new byte[m3894b];
            open.read(bArr);
            Inflater inflater = new Inflater();
            inflater.setInput(bArr);
            if (m3894b != inflater.inflate(bArr2)) {
                throw new DataFormatException("Unexpected data length");
            }
            inflater.end();
            Properties properties = new Properties();
            ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(bArr2);
            try {
                properties.loadFromXML(byteArrayInputStream2);
                byte[] bArr3 = new byte[m3894b(open)];
                open.read(bArr3);
                Signature signature = Signature.getInstance("SHA1WithRSA");
                signature.initVerify(f2632pB);
                signature.update(bArr);
                if (!signature.verify(bArr3)) {
                    throw new SignatureException("Bad signature");
                }
                C3034ev c3034ev = new C3034ev(properties);
                C3066fr.m3833b(byteArrayInputStream2);
                C3066fr.m3833b(open);
                return c3034ev;
            } catch (Throwable th) {
                th = th;
                byteArrayInputStream = byteArrayInputStream2;
                C3066fr.m3833b(byteArrayInputStream);
                C3066fr.m3833b(open);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* renamed from: b */
    private static int m3894b(InputStream inputStream) {
        return inputStream.read() | (inputStream.read() << 8) | (inputStream.read() << 16) | (inputStream.read() << 24);
    }

    public String getPackageName() {
        return this.f2633pC.getProperty("package_name");
    }

    /* renamed from: a */
    public String m3898a() {
        return this.f2633pC.getProperty("cert_md5");
    }

    /* renamed from: a */
    public boolean m3897a(Context context) {
        String m3895b = m3895b(context);
        return m3895b != null && context.getPackageName().equals(getPackageName()) && m3895b.equals(m3898a());
    }

    /* renamed from: b */
    public static String m3895b(Context context) {
        String str;
        PackageInfo m3827a = C3068ft.m3827a(context, context.getPackageName(), 64);
        if (m3827a == null) {
            return null;
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(m3827a.signatures[0].toByteArray());
        try {
            try {
                str = C3067fs.m3829g(((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(byteArrayInputStream)).getEncoded());
            } catch (CertificateException e) {
                e.printStackTrace();
                C3066fr.m3833b(byteArrayInputStream);
                str = null;
            }
            return str;
        } finally {
            C3066fr.m3833b(byteArrayInputStream);
        }
    }
}
