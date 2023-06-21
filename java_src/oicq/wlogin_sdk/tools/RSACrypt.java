package oicq.wlogin_sdk.tools;

import android.content.Context;
import java.security.KeyPair;
/* loaded from: classes.dex */
public class RSACrypt {
    protected static final String DEFAULT_PRIV_KEY = "3082025e02010002818100daaa2a418b271f3dfcf8f0a9120326d47f07618593d8d71d61a4fe987cc47740e491105bf8e68bd479bf51dfe19d3b06e12017df6d87a0f43bb82b57f59bd4220f2a3d8d68904a6ddb51197989e6e82512d8d8fa6c41b755a8ca962595d3e1e1be7ea01677249be4794cd7c6682d611c1bd81f0a16231fb83517515b94d13e5d02030100010281806bbfca4ebde92b45fa7018f6d6ff6294f77b859cb2fbf9146b5748758f95a845fbdb57ba5a6e109d44d8f7d9606d7ff6a5dc90a6f26c10ee08b779f43ffce78c6fc0feb8a063885e1b9ee6f3615b8b850e6b89365fe7037de6928e3ca2b93c55f60fff2873ce9a88254c4c553aece69c311ddd37bb6dfc8c45399144a59f25e9024100f12a24798dfc2d56e719df7a8f9f870037007ac187c1a76a88e4749347cbc270ea54491b27309d02d0d0e1bb566a3f4972c286193e34b3863962a103ab2e9063024100e81db1b9e333baa72636599b792f7ae2fc06593a94851bd15c5d209c5d5d2836ecf2309c52426ca297475bfd8920e5fade8765afd9f6822ee4b7e333d234523f024100e356ead37bb981b42e5f0180b3eb9a83e5559a62ddeafc3b3d98bf1c27ce3919e08c5bee30df6ee3bc9d6c6e01645f0c8a163dfb85dc806fc3a0ea505f0aa229024100dee10c73f2bf0c1e4de9e8370ab155ad38d49bbf4d375713bc3dcbff7902e7877e13bc2b8e2d2c051f7faccc116d5e877a3fc69b898e5348d5e3e0ad34cd7a9f024100ede9b6081428b058d2db5c7ccbef7a178d9003c547319d177a5d1d219e9727f18dbe41008198af9a01fb684b6c96c536c8fbb98532b908028c2d4dce7281aff9";
    public static final String DEFAULT_PUB_KEY = "30818902818100daaa2a418b271f3dfcf8f0a9120326d47f07618593d8d71d61a4fe987cc47740e491105bf8e68bd479bf51dfe19d3b06e12017df6d87a0f43bb82b57f59bd4220f2a3d8d68904a6ddb51197989e6e82512d8d8fa6c41b755a8ca962595d3e1e1be7ea01677249be4794cd7c6682d611c1bd81f0a16231fb83517515b94d13e5d0203010001";
    private Context _context;
    private byte[] _pub_key = new byte[0];
    private byte[] _priv_key = new byte[0];

    public RSACrypt(Context context) {
        this._context = context;
        try {
            C4393util.loadLibrary("wtecdh", this._context);
        } catch (UnsatisfiedLinkError e) {
        }
    }

    private native byte[] decryptdata(byte[] bArr, byte[] bArr2);

    private native byte[] encryptdata(byte[] bArr, byte[] bArr2);

    private native int genrsakey();

    public byte[] DecryptData(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = null;
        if (bArr2 == null) {
            return null;
        }
        if (bArr == null && ((bArr = C4393util.get_rsa_privkey(this._context)) == null || bArr.length == 0)) {
            bArr = C4393util.string_to_buf(DEFAULT_PRIV_KEY);
        }
        try {
            bArr3 = decryptdata(bArr, bArr2);
            if (bArr3 == null || bArr3.length == 0) {
                bArr3 = decryptdata(C4393util.string_to_buf(DEFAULT_PRIV_KEY), bArr2);
            }
        } catch (UnsatisfiedLinkError e) {
        }
        if (bArr3 == null) {
            try {
                byte[] RSADecrypt = C4393util.RSADecrypt(bArr2, C4393util.RSAPrivKeyFromJNI(bArr));
                return (RSADecrypt == null || RSADecrypt.length == 0) ? C4393util.RSADecrypt(bArr2, C4393util.RSAPrivKeyFromJNI(C4393util.string_to_buf(DEFAULT_PRIV_KEY))) : RSADecrypt;
            } catch (Exception e2) {
                return bArr3;
            }
        }
        return bArr3;
    }

    public byte[] EncryptData(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = null;
        if (bArr == null || bArr2 == null) {
            return null;
        }
        try {
            bArr3 = encryptdata(bArr, bArr2);
        } catch (UnsatisfiedLinkError e) {
        }
        return bArr3 == null ? C4393util.RSAEncrypt(bArr2, C4393util.RSAPubKeyFromJNI(bArr)) : bArr3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:117:?, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x005a, code lost:
        if (r2 != 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005e, code lost:
        monitor-enter(oicq.wlogin_sdk.tools.RSACrypt.class);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005f, code lost:
        r0 = oicq.wlogin_sdk.tools.C4393util.get_rsa_pubkey(r6._context);
        r3 = oicq.wlogin_sdk.tools.C4393util.get_rsa_privkey(r6._context);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006b, code lost:
        if (r0 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006e, code lost:
        if (r0.length <= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0070, code lost:
        if (r3 == null) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0073, code lost:
        if (r3.length <= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0075, code lost:
        r6._pub_key = (byte[]) r0.clone();
        r6._priv_key = (byte[]) r3.clone();
        oicq.wlogin_sdk.tools.C4393util.LOGI("rsa has saved", "");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008c, code lost:
        monitor-exit(oicq.wlogin_sdk.tools.RSACrypt.class);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008d, code lost:
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0192, code lost:
        oicq.wlogin_sdk.tools.C4393util.LOGI("saversa begin", "");
        oicq.wlogin_sdk.tools.C4393util.save_rsa_pubkey(r6._context, r6._pub_key);
        oicq.wlogin_sdk.tools.C4393util.save_rsa_privkey(r6._context, r6._priv_key);
        oicq.wlogin_sdk.tools.C4393util.LOGI("saversa end", "");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:119:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c4 A[Catch: all -> 0x01b6, TRY_LEAVE, TryCatch #1 {all -> 0x01b6, blocks: (B:45:0x00be, B:47:0x00c4), top: B:102:0x00be }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0116  */
    /* JADX WARN: Type inference failed for: r2v1, types: [byte[], java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int GenRSAKey() {
        Throwable th;
        int i;
        KeyPair generateRSAKeyPair;
        int i2;
        int i3 = 0;
        byte[] bArr = C4393util.get_rsa_pubkey(this._context);
        ?? r2 = C4393util.get_rsa_privkey(this._context);
        if (bArr != null && bArr.length > 0 && r2 != 0 && r2.length > 0) {
            this._pub_key = (byte[]) bArr.clone();
            this._priv_key = (byte[]) r2.clone();
            return 0;
        }
        try {
            try {
                synchronized (RSACrypt.class) {
                    try {
                        byte[] bArr2 = C4393util.get_rsa_pubkey(this._context);
                        byte[] bArr3 = C4393util.get_rsa_privkey(this._context);
                        if (bArr2 == null || bArr2.length <= 0 || bArr3 == null || bArr3.length <= 0) {
                            C4393util.LOGI("rsa begin", "");
                            int genrsakey = genrsakey();
                            C4393util.LOGI("rsa end " + genrsakey, "");
                            i3 = genrsakey;
                            i2 = 0;
                        } else {
                            this._pub_key = (byte[]) bArr2.clone();
                            this._priv_key = (byte[]) bArr3.clone();
                            C4393util.LOGI("rsa has generated", "");
                            i2 = 1;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        r2 = 0;
                    }
                    try {
                    } catch (Throwable th3) {
                        th = th3;
                        int i4 = i2;
                        r2 = i3;
                        i3 = i4;
                        try {
                            throw th;
                        } catch (UnsatisfiedLinkError e) {
                            i = i3;
                            i3 = r2;
                            try {
                                generateRSAKeyPair = C4393util.generateRSAKeyPair();
                                if (generateRSAKeyPair != null) {
                                    this._pub_key = C4393util.RSAPubKeyFromJava(generateRSAKeyPair.getPublic().getEncoded());
                                    this._priv_key = C4393util.RSAPrivKeyFromJava(generateRSAKeyPair.getPrivate().getEncoded());
                                }
                                if (i != 0) {
                                    synchronized (RSACrypt.class) {
                                        byte[] bArr4 = C4393util.get_rsa_pubkey(this._context);
                                        byte[] bArr5 = C4393util.get_rsa_privkey(this._context);
                                        if (bArr4 == null || bArr4.length <= 0 || bArr5 == null || bArr5.length <= 0) {
                                            C4393util.LOGI("saversa begin", "");
                                            C4393util.save_rsa_pubkey(this._context, this._pub_key);
                                            C4393util.save_rsa_privkey(this._context, this._priv_key);
                                            C4393util.LOGI("saversa end", "");
                                        } else {
                                            this._pub_key = (byte[]) bArr4.clone();
                                            this._priv_key = (byte[]) bArr5.clone();
                                            C4393util.LOGI("rsa has saved", "");
                                        }
                                        int i5 = i3;
                                        return i5;
                                    }
                                }
                                return i3;
                            } catch (Throwable th4) {
                                th = th4;
                                if (i != 0) {
                                    return i3;
                                }
                                synchronized (RSACrypt.class) {
                                    byte[] bArr6 = C4393util.get_rsa_pubkey(this._context);
                                    byte[] bArr7 = C4393util.get_rsa_privkey(this._context);
                                    if (bArr6 == null || bArr6.length <= 0 || bArr7 == null || bArr7.length <= 0) {
                                        C4393util.LOGI("saversa begin", "");
                                        C4393util.save_rsa_pubkey(this._context, this._pub_key);
                                        C4393util.save_rsa_privkey(this._context, this._priv_key);
                                        C4393util.LOGI("saversa end", "");
                                    } else {
                                        this._pub_key = (byte[]) bArr6.clone();
                                        this._priv_key = (byte[]) bArr7.clone();
                                        C4393util.LOGI("rsa has saved", "");
                                    }
                                    throw th;
                                }
                            }
                        } catch (Throwable th5) {
                            i = i3;
                            i3 = r2;
                            th = th5;
                            if (i != 0) {
                            }
                        }
                    }
                }
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (UnsatisfiedLinkError e2) {
            i = 0;
            generateRSAKeyPair = C4393util.generateRSAKeyPair();
            if (generateRSAKeyPair != null) {
            }
            if (i != 0) {
            }
        } catch (Throwable th7) {
            th = th7;
            i = 0;
            if (i != 0) {
            }
        }
        int i52 = i3;
        return i52;
    }

    public byte[] get_priv_key() {
        return this._priv_key;
    }

    public byte[] get_pub_key() {
        return this._pub_key;
    }

    public void set_priv_key(byte[] bArr) {
        this._priv_key = bArr;
    }

    public void set_pub_key(byte[] bArr) {
        this._pub_key = bArr;
    }
}
