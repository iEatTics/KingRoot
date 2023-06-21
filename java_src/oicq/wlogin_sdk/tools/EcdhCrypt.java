package oicq.wlogin_sdk.tools;

import android.content.Context;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.ECGenParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.KeyAgreement;
import oicq.wlogin_sdk.request.C4379u;
/* loaded from: classes.dex */
public class EcdhCrypt {
    public static final String DEFAULT_PUB_KEY = "020b03cf3d99541f29ffec281bebbd4ea211292ac1f53d7128";
    public static final String DEFAULT_SHARE_KEY = "4da0f614fc9f29c2054c77048a6566d7";
    public static final String S_PUB_KEY = "04928D8850673088B343264E0C6BACB8496D697799F37211DEB25BB73906CB089FEA9639B4E0260498B51A992D50813DA8";
    public static final String X509_S_PUB_KEY = "3046301006072A8648CE3D020106052B8104001F03320004928D8850673088B343264E0C6BACB8496D697799F37211DEB25BB73906CB089FEA9639B4E0260498B51A992D50813DA8";
    public static PrivateKey pkcs8PrivateKey;
    public static PublicKey x509PublicKey;
    private static boolean initFlg = false;
    private static boolean userOpenSSLLib = true;
    public static byte[] _c_pub_key = new byte[0];
    public static byte[] _c_pri_key = new byte[0];
    private static byte[] _g_share_key = new byte[0];

    public EcdhCrypt(Context context) {
        C4393util.loadLibrary("wtecdh", context);
    }

    private byte[] calShareKeyByBouncycastle(byte[] bArr) {
        try {
            PublicKey constructX509PublicKey = constructX509PublicKey((bArr.length < 30 ? "302E301006072A8648CE3D020106052B8104001F031A00" : "3046301006072A8648CE3D020106052B8104001F03320004") + C4393util.buf_to_string(bArr));
            C4393util.LOGI("raw public key " + C4393util.buf_to_string(_c_pub_key), "");
            C4393util.LOGI("pkcs8PrivateKey " + pkcs8PrivateKey.toString(), "");
            KeyAgreement keyAgreement = KeyAgreement.getInstance("ECDH", "BC");
            keyAgreement.init(pkcs8PrivateKey);
            keyAgreement.doPhase(constructX509PublicKey, true);
            byte[] generateSecret = keyAgreement.generateSecret();
            byte[] mD5Byte = MD5.toMD5Byte(generateSecret);
            C4393util.LOGI("share key " + C4393util.buf_to_string(generateSecret), "");
            C4393util.LOGI("share key md5 " + C4393util.buf_to_string(mD5Byte), "");
            return mD5Byte;
        } catch (Exception e) {
            C4393util.LOGI("calShareKeyByBouncycastle failed " + pkcs8PrivateKey.toString() + " peer public key " + C4393util.buf_to_string(bArr), "");
            C4393util.printException(e);
            C4379u.f5281al.attr_api(2459818);
            return null;
        } catch (ExceptionInInitializerError e2) {
            C4393util.LOGW("create key failed ExceptionInInitializerError, " + e2.getMessage(), "");
            C4379u.f5281al.attr_api(2459818);
            return null;
        }
    }

    private byte[] calShareKeyByOpenSSL(String str, String str2, String str3) {
        C4393util.LOGI("calShareKeyByOpenSSL publickey " + str2, "");
        if (GenECDHKeyEx(str3, str2, str) == 0) {
            return _g_share_key;
        }
        C4379u.f5281al.attr_api(2461268);
        return null;
    }

    private PublicKey constructX509PublicKey(String str) {
        C4393util.LOGI("constructX509PublicKey publickey " + str + " at " + C4379u.m66l(), "");
        return KeyFactory.getInstance("EC", "BC").generatePublic(new X509EncodedKeySpec(C4393util.string_to_buf(str)));
    }

    private int initShareKeyByBouncycastle() {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("EC", "BC");
            keyPairGenerator.initialize(new ECGenParameterSpec("secp192k1"));
            KeyPair genKeyPair = keyPairGenerator.genKeyPair();
            PublicKey publicKey = genKeyPair.getPublic();
            byte[] encoded = publicKey.getEncoded();
            PrivateKey privateKey = genKeyPair.getPrivate();
            privateKey.getEncoded();
            PublicKey constructX509PublicKey = constructX509PublicKey(X509_S_PUB_KEY);
            KeyAgreement keyAgreement = KeyAgreement.getInstance("ECDH", "BC");
            keyAgreement.init(privateKey);
            keyAgreement.doPhase(constructX509PublicKey, true);
            _g_share_key = MD5.toMD5Byte(keyAgreement.generateSecret());
            _c_pub_key = new byte[49];
            System.arraycopy(encoded, 23, _c_pub_key, 0, 49);
            x509PublicKey = publicKey;
            pkcs8PrivateKey = privateKey;
            return 0;
        } catch (Exception e) {
            C4393util.LOGI("initShareKeyByBouncycastle failed, ", "");
            C4393util.printException(e);
            C4379u.f5281al.attr_api(2368735);
            return -2;
        } catch (ExceptionInInitializerError e2) {
            C4393util.LOGW("create key pair and shared key failed ExceptionInInitializerError, " + e2.getMessage(), "");
            C4379u.f5281al.attr_api(2368735);
            return -1;
        }
    }

    private int initShareKeyByOpenSSL() {
        if (GenereateKey() != 0) {
            return -1;
        }
        if (_c_pub_key != null && _c_pub_key.length != 0 && _c_pri_key != null && _c_pri_key.length != 0 && _g_share_key != null && _g_share_key.length != 0) {
            C4393util.LOGI("initShareKeyByOpenSSL OK", "");
            return 0;
        }
        C4393util.LOGI("_c_pub_key " + C4393util.buf_to_string(_c_pub_key), "");
        C4393util.LOGI("_c_pri_key " + C4393util.buf_to_string(_c_pri_key), "");
        C4393util.LOGI("_g_share_key " + C4393util.buf_to_string(_g_share_key), "");
        C4393util.LOGI("initShareKeyByOpenSSL generate null key", "");
        return -2;
    }

    public native int GenECDHKeyEx(String str, String str2, String str3);

    public int GenereateKey() {
        int GenECDHKeyEx;
        try {
            synchronized (EcdhCrypt.class) {
                GenECDHKeyEx = GenECDHKeyEx(S_PUB_KEY, "", "");
            }
            return GenECDHKeyEx;
        } catch (RuntimeException e) {
            C4393util.LOGW("OpenSSL generate key failed, turn another method " + e.getMessage(), "");
            return -1;
        } catch (UnsatisfiedLinkError e2) {
            C4393util.LOGI("GenereateKey failed " + e2.getMessage(), "");
            return -1;
        }
    }

    public byte[] calShareKeyMd5ByPeerPublicKey(byte[] bArr) {
        C4393util.LOGI("userOpenSSLLib " + userOpenSSLLib + " peerRawPublicKey " + C4393util.buf_to_string(bArr) + " at " + C4379u.m66l(), "");
        return true == userOpenSSLLib ? calShareKeyByOpenSSL(C4393util.buf_to_string(_c_pri_key), C4393util.buf_to_string(_c_pub_key), C4393util.buf_to_string(bArr)) : calShareKeyByBouncycastle(bArr);
    }

    public byte[] get_c_pub_key() {
        return (byte[]) _c_pub_key.clone();
    }

    public byte[] get_g_share_key() {
        return (byte[]) _g_share_key.clone();
    }

    public int initShareKey() {
        if (true == initFlg) {
            return 0;
        }
        initFlg = true;
        if (initShareKeyByOpenSSL() == 0) {
            userOpenSSLLib = true;
            return 0;
        } else if (initShareKeyByBouncycastle() == 0) {
            userOpenSSLLib = false;
            return 0;
        } else {
            return initShareKeyByDefault();
        }
    }

    public int initShareKeyByDefault() {
        _c_pub_key = C4393util.string_to_buf(DEFAULT_PUB_KEY);
        _g_share_key = C4393util.string_to_buf(DEFAULT_SHARE_KEY);
        C4393util.LOGI("initShareKeyByDefault OK", "");
        return 0;
    }

    public void set_c_pri_key(byte[] bArr) {
        if (bArr != null) {
            _c_pri_key = (byte[]) bArr.clone();
        } else {
            _c_pri_key = new byte[0];
        }
    }

    public void set_c_pub_key(byte[] bArr) {
        if (bArr != null) {
            _c_pub_key = (byte[]) bArr.clone();
        } else {
            _c_pub_key = new byte[0];
        }
    }

    public void set_g_share_key(byte[] bArr) {
        if (bArr != null) {
            _g_share_key = (byte[]) bArr.clone();
        } else {
            _g_share_key = new byte[0];
        }
    }
}
