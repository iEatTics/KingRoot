package oicq.wlogin_sdk.tools;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.database.Cursor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.p003os.Environmenu;
import android.provider.Settings;
import android.support.p004v4.internal.view.SupportMenu;
import android.support.p004v4.view.MotionEventCompat;
import android.support.p004v4.view.ViewCompat;
import android.telephony.TelephonyManager;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Array;
import java.security.Key;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DeflaterOutputStream;
import java.util.zip.InflaterInputStream;
import javax.crypto.Cipher;
import oicq.wlogin_sdk.request.C4379u;
import oicq.wlogin_sdk.tools.InternationMsg;
/* renamed from: oicq.wlogin_sdk.tools.util */
/* loaded from: classes.dex */
public class C4393util {
    public static final int ASYN_CHECK_IMAGE = 2;
    public static final int ASYN_CHECK_SMS = 4;
    public static final int ASYN_EXCEPTION = 11;
    public static final int ASYN_GET_A1_WITH_A1 = 6;
    public static final int ASYN_GET_ST_WITHOUT_PWD = 5;
    public static final int ASYN_GET_ST_WITH_PWD = 0;
    public static final int ASYN_QUICKLOG_WITH_PTSIG = 16;
    public static final int ASYN_QUICKLOG_WITH_QQSIG = 15;
    public static final int ASYN_QUICKLOG_WITH_QRSIG = 17;
    public static final int ASYN_REFLUSH_IMAGE = 1;
    public static final int ASYN_REFLUSH_SMS = 3;
    public static final int ASYN_REPORT = 7;
    public static final int ASYN_REPORT_ERROR = 8;
    public static final int ASYN_SMSLOGIN_CHECK = 12;
    public static final int ASYN_SMSLOGIN_REFRESH = 14;
    public static final int ASYN_SMSLOGIN_VERIFY = 13;
    public static final int ASYN_TRANSPORT = 9;
    public static final int ASYN_TRANSPORT_MSF = 10;
    public static final long BUILD_TIME = 1483427861;

    /* renamed from: D */
    public static final int f5342D = 2;
    public static final int E_A1_DECRYPT = -1014;
    public static final int E_A1_FORMAT = -1016;
    public static final int E_ADVANCE_NOTICE = 257;
    public static final int E_APK_CHK_ERR = -1021;
    public static final int E_BUFFER_OVERFLOW = -1023;
    public static final int E_DECRYPT = -1002;
    public static final int E_ENCODING = -1013;
    public static final int E_ENCRYPTION_METHOD = -1024;
    public static final int E_INPUT = -1017;
    public static final int E_NAME_INVALID = -1008;
    public static final int E_NO_KEY = -1004;
    public static final int E_NO_REG_CMD = -1010;
    public static final int E_NO_RET = -1000;
    public static final int E_NO_TGTKEY = -1006;
    public static final int E_NO_UIN = -1003;
    public static final int E_PENDING = -1001;
    public static final int E_PK_LEN = -1009;
    public static final int E_PUSH_REG = -1011;
    public static final int E_RESOLVE_ADDR = -1007;
    public static final int E_SAVE_TICKET_ERROR = -1022;
    public static final int E_SHARE_SERVICE_EXCEPTION = -1020;
    public static final int E_SHARE_SERVICE_PARAM = -1019;
    public static final int E_SHARE_SERVICE_UNCHECK = -1018;
    public static final int E_SYSTEM = -1012;
    public static final int E_TLV_DECRYPT = -1015;
    public static final int E_TLV_VERIFY = -1005;
    public static final String FILE_DIR = "wtlogin";
    private static int HONEYCOMB = 0;

    /* renamed from: I */
    public static final int f5343I = 1;
    public static final String LOG_DIR = "tencent/wtlogin";
    public static final int MAX_CONTENT_SIZE = 25600;
    public static final int MAX_FILE_SIZE = 524288;
    @SuppressLint({"NewApi"})
    private static int MODE_MULTI_PROCESS = 0;
    public static final String SDK_VERSION = "6.0.0.2003";
    public static final int SSO_VERSION = 5;
    public static final long SVN_VER = 2003;
    public static final int S_BABYLH_EXPIRED = 116;
    public static final int S_GET_IMAGE = 2;
    public static final int S_GET_SMS = 160;
    public static final int S_LH_EXPIRED = 41;
    public static final int S_PWD_WRONG = 1;
    public static final int S_ROLL_BACK = 180;
    public static final int S_SEC_GUID = 204;
    public static final int S_SUCCESS = 0;
    public static final String TAG = "wlogin_sdk";

    /* renamed from: W */
    public static final int f5344W = 0;
    static final char[] base64_encode_chars;
    static final char base64_pad_url = '_';
    static final short[] base64_reverse_table_url;
    public static int MAX_APPID = SupportMenu.USER_MASK;
    public static int MAX_NAME_LEN = 128;
    public static int LOG_LEVEL = 1;
    public static LogCallBack LCB = null;
    public static boolean LOGCAT_OUT = false;
    public static String logContent = "";
    private static SimpleDateFormat DAYFORMAT = null;
    private static boolean libwtecdh_loaded = false;
    public static boolean loadEncryptSo = true;

    static {
        MODE_MULTI_PROCESS = Build.VERSION.SDK_INT > 9 ? 4 : 0;
        HONEYCOMB = 11;
        base64_encode_chars = new char[]{'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
        base64_reverse_table_url = new short[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 63, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    }

    public static boolean CheckMayFastLogin(Context context) {
        if (context == null) {
            return false;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.tencent.mobileqq", 0);
            if (packageInfo != null) {
                String str = packageInfo.versionName;
                if (str.compareTo("4.6.0") >= 0) {
                    return true;
                }
                try {
                    return Integer.parseInt(str.substring(0, str.indexOf("."))) >= 10;
                } catch (Exception e) {
                    printException(e, "");
                    return false;
                }
            }
            return false;
        } catch (Exception e2) {
            return false;
        }
    }

    public static boolean CheckQQMiniHD(Context context) {
        if (context == null) {
            return false;
        }
        try {
            LOGI(context.getPackageManager().getPackageInfo("com.tencent.minihd.qq", 0).versionName, "");
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean ExistSDCard() {
        return Environment.getExternalStorageState().equals(Environmenu.MEDIA_MOUNTED);
    }

    public static void LOGD(String str) {
        try {
            if (LOG_LEVEL >= 2) {
                if (LCB != null) {
                    LCB.OnLog(str);
                } else if (LOGCAT_OUT) {
                    Log.d(TAG + getLineInfo(2), str);
                }
            }
        } catch (Exception e) {
        }
    }

    public static void LOGD(String str, String str2) {
        try {
            if (LOG_LEVEL >= 2) {
                if (LCB != null) {
                    LCB.OnLog(str, str2);
                } else if (LOGCAT_OUT) {
                    Log.d(TAG + getLineInfo(2), str + ":" + str2);
                }
            }
        } catch (Exception e) {
        }
    }

    public static void LOGI(String str) {
        try {
            if (LOG_LEVEL >= 1) {
                if (LCB != null) {
                    LCB.OnLog(str);
                } else if (LOGCAT_OUT) {
                    Log.i(TAG + getLineInfo(2), str);
                }
            }
        } catch (Exception e) {
        }
    }

    public static void LOGI(String str, String str2) {
        try {
            if (LOG_LEVEL >= 1) {
                if (LCB != null) {
                    LCB.OnLog(str);
                } else if (LOGCAT_OUT) {
                    Log.i(TAG + getLineInfo(2), str);
                }
                C4391b.m28a(C4379u.f5288t, str2, str);
            }
        } catch (Exception e) {
        }
    }

    public static void LOGW(String str, String str2) {
        try {
            if (LOG_LEVEL >= 0) {
                if (LCB != null) {
                    LCB.OnLog(str, str2);
                } else if (LOGCAT_OUT) {
                    Log.w(TAG + getLineInfo(2), str + ":" + str2);
                }
            }
        } catch (Exception e) {
        }
    }

    public static void LOGW(String str, String str2, String str3) {
        try {
            if (LOG_LEVEL >= 0) {
                if (LCB != null) {
                    LCB.OnLog(str, str2);
                } else if (LOGCAT_OUT) {
                    Log.w(TAG + getLineInfo(2), str + ":" + str2);
                }
                C4391b.m28a(C4379u.f5288t, str3, str + ":" + str2);
            }
        } catch (Exception e) {
        }
    }

    public static byte[] RSADecrypt(byte[] bArr, Key key) {
        if (bArr == null || key == null) {
            return null;
        }
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(2, key);
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            if (length % 128 == 0) {
                int i = 0;
                for (int i2 = 0; i2 < length / 128; i2++) {
                    byte[] bArr3 = new byte[128];
                    System.arraycopy(bArr, i2 * 128, bArr3, 0, 128);
                    byte[] doFinal = cipher.doFinal(bArr3);
                    System.arraycopy(doFinal, 0, bArr2, i, doFinal.length);
                    i += doFinal.length;
                }
                byte[] bArr4 = new byte[i];
                System.arraycopy(bArr2, 0, bArr4, 0, i);
                return bArr4;
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    public static byte[] RSAEncrypt(byte[] bArr, Key key) {
        if (bArr == null || key == null) {
            return null;
        }
        try {
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, key);
            int length = bArr.length;
            int round = (int) Math.round((length / 117) + 0.5d);
            byte[] bArr2 = new byte[128 * round];
            int i = 0;
            int i2 = 117;
            while (i < round) {
                if (length < 117) {
                    i2 = length;
                }
                byte[] bArr3 = new byte[i2];
                System.arraycopy(bArr, i * 117, bArr3, 0, i2);
                System.arraycopy(cipher.doFinal(bArr3), 0, bArr2, 128 * i, 128);
                i++;
                length -= i2;
            }
            return bArr2;
        } catch (Exception e) {
            return null;
        }
    }

    public static Key RSAPrivKeyFromJNI(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = {48, -126, 2, 117, 2, 1, 0, 48, 13, 6, 9, 42, -122, 72, -122, -9, 13, 1, 1, 1, 5, 0, 4, -126, 2, 95};
        int length = bArr.length - 607;
        bArr2[3] = (byte) (bArr2[3] + length);
        bArr2[25] = (byte) (length + bArr2[25]);
        byte[] bArr3 = new byte[bArr2.length + bArr.length];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, 0, bArr3, bArr2.length, bArr.length);
        try {
            return KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(bArr3));
        } catch (Exception e) {
            printException(e, "");
            return null;
        }
    }

    public static byte[] RSAPrivKeyFromJava(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            byte[] bArr2 = {48, -126, 2, 117, 2, 1, 0, 48, 13, 6, 9, 42, -122, 72, -122, -9, 13, 1, 1, 1, 5, 0, 4, -126, 2, 95};
            byte[] encoded = KeyFactory.getInstance("RSA").generatePrivate(new PKCS8EncodedKeySpec(bArr)).getEncoded();
            byte[] bArr3 = new byte[encoded.length - bArr2.length];
            System.arraycopy(encoded, bArr2.length, bArr3, 0, bArr3.length);
            return bArr3;
        } catch (Exception e) {
            printException(e, "");
            return null;
        }
    }

    public static Key RSAPubKeyFromJNI(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = {48, -127, -97, 48, 13, 6, 9, 42, -122, 72, -122, -9, 13, 1, 1, 1, 5, 0, 3, -127, -115, 0};
        byte[] bArr3 = new byte[bArr2.length + bArr.length];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, 0, bArr3, bArr2.length, bArr.length);
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr3));
        } catch (Exception e) {
            printException(e, "");
            return null;
        }
    }

    public static byte[] RSAPubKeyFromJava(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            byte[] bArr2 = {48, -127, -97, 48, 13, 6, 9, 42, -122, 72, -122, -9, 13, 1, 1, 1, 5, 0, 3, -127, -115, 0};
            byte[] encoded = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr)).getEncoded();
            byte[] bArr3 = new byte[encoded.length - bArr2.length];
            System.arraycopy(encoded, bArr2.length, bArr3, 0, bArr3.length);
            return bArr3;
        } catch (Exception e) {
            printException(e, "");
            return null;
        }
    }

    public static byte[] base64_decode_url(byte[] bArr, int i) {
        int i2;
        byte[] bArr2 = new byte[24];
        int i3 = 0;
        int i4 = 0;
        short s = 0;
        int i5 = 0;
        while (true) {
            int i6 = i - 1;
            if (i > 0) {
                int i7 = i5 + 1;
                s = bArr[i5];
                if (s != 0 && s != 95) {
                    if (s == 32) {
                        s = 42;
                    }
                    short s2 = base64_reverse_table_url[s];
                    if (s2 < 0) {
                        s = s2;
                        i = i6;
                        i5 = i7;
                    } else {
                        switch (i4 % 4) {
                            case 0:
                                bArr2[i3] = (byte) (s2 << 2);
                                i2 = i3;
                                break;
                            case 1:
                                i2 = i3 + 1;
                                bArr2[i3] = (byte) (bArr2[i3] | (s2 >> 4));
                                bArr2[i2] = (byte) ((s2 & 15) << 4);
                                break;
                            case 2:
                                i2 = i3 + 1;
                                bArr2[i3] = (byte) (bArr2[i3] | (s2 >> 2));
                                bArr2[i2] = (byte) ((s2 & 3) << 6);
                                break;
                            case 3:
                                i2 = i3 + 1;
                                bArr2[i3] = (byte) (bArr2[i3] | s2);
                                break;
                            default:
                                i2 = i3;
                                break;
                        }
                        i4++;
                        i = i6;
                        i3 = i2;
                        s = s2;
                        i5 = i7;
                    }
                }
            }
        }
        if (s == 95) {
            switch (i4 % 4) {
                case 0:
                case 1:
                    return null;
                case 2:
                    i3++;
                case 3:
                    int i8 = i3 + 1;
                    bArr2[i3] = 0;
                    break;
            }
        }
        return bArr2;
    }

    public static String base64_encode(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int i2 = i + 1;
            int i3 = bArr[i] & 255;
            if (i2 == length) {
                stringBuffer.append(base64_encode_chars[i3 >>> 2]);
                stringBuffer.append(base64_encode_chars[(i3 & 3) << 4]);
                break;
            }
            int i4 = i2 + 1;
            int i5 = bArr[i2] & 255;
            if (i4 == length) {
                stringBuffer.append(base64_encode_chars[i3 >>> 2]);
                stringBuffer.append(base64_encode_chars[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
                stringBuffer.append(base64_encode_chars[(i5 & 15) << 2]);
                break;
            }
            i = i4 + 1;
            int i6 = bArr[i4] & 255;
            stringBuffer.append(base64_encode_chars[i3 >>> 2]);
            stringBuffer.append(base64_encode_chars[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
            stringBuffer.append(base64_encode_chars[((i5 & 15) << 2) | ((i6 & 192) >>> 6)]);
            stringBuffer.append(base64_encode_chars[i6 & 63]);
        }
        return stringBuffer.toString();
    }

    public static long buf_len(byte[] bArr) {
        if (bArr == null) {
            return 0L;
        }
        return bArr.length;
    }

    public static int buf_to_int16(byte[] bArr, int i) {
        return ((bArr[i] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + ((bArr[i + 1] << 0) & 255);
    }

    public static int buf_to_int32(byte[] bArr, int i) {
        return ((bArr[i] << 24) & ViewCompat.MEASURED_STATE_MASK) + ((bArr[i + 1] << 16) & 16711680) + ((bArr[i + 2] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + ((bArr[i + 3] << 0) & 255);
    }

    public static long buf_to_int64(byte[] bArr, int i) {
        return 0 + ((bArr[i] << 56) & (-72057594037927936L)) + ((bArr[i + 1] << 48) & 71776119061217280L) + ((bArr[i + 2] << 40) & 280375465082880L) + ((bArr[i + 3] << 32) & 1095216660480L) + ((bArr[i + 4] << 24) & 4278190080L) + ((bArr[i + 5] << 16) & 16711680) + ((bArr[i + 6] << 8) & 65280) + ((bArr[i + 7] << 0) & 255);
    }

    public static int buf_to_int8(byte[] bArr, int i) {
        return bArr[i] & 255;
    }

    public static String buf_to_string(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        String str = "";
        for (int i = 0; i < bArr.length; i++) {
            str = (str + Integer.toHexString((bArr[i] >> 4) & 15)) + Integer.toHexString(bArr[i] & 15);
        }
        return str;
    }

    public static String buf_to_string(byte[] bArr, int i) {
        if (bArr == null) {
            return "";
        }
        if (i > bArr.length) {
            i = bArr.length;
        }
        String str = "";
        int i2 = 0;
        while (i2 < i) {
            String str2 = (str + Integer.toHexString((bArr[i2] >> 4) & 15)) + Integer.toHexString(bArr[i2] & 15);
            i2++;
            str = str2;
        }
        return str;
    }

    public static Boolean check_uin_account(String str) {
        try {
            long parseLong = Long.parseLong(str);
            return parseLong >= 10000 && parseLong <= 4000000000L;
        } catch (NumberFormatException e) {
            return false;
        }
    }

    public static void chg_retry_type(Context context) {
        if (get_net_retry_type(context) == 0) {
            set_net_retry_type(context, 1);
        } else {
            set_net_retry_type(context, 0);
        }
    }

    public static byte[] compress(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return bArr;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            DeflaterOutputStream deflaterOutputStream = new DeflaterOutputStream(byteArrayOutputStream);
            deflaterOutputStream.write(bArr);
            deflaterOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            return new byte[0];
        }
    }

    public static long constructSalt() {
        return (get_rand_32() << 32) + get_rand_32();
    }

    public static void decompress(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return;
        }
        LOGI("data len:" + bArr.length);
        int i = 0;
        int i2 = 0;
        while (bArr.length > i2 + 3) {
            int buf_to_int32 = buf_to_int32(bArr, i2);
            if (bArr.length <= i2 + buf_to_int32 + 3) {
                return;
            }
            byte[] bArr2 = new byte[buf_to_int32];
            System.arraycopy(bArr, i2 + 4, bArr2, 0, buf_to_int32);
            i2 = i2 + 4 + buf_to_int32;
            i++;
            LOGI("len:" + buf_to_int32);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                InflaterInputStream inflaterInputStream = new InflaterInputStream(new ByteArrayInputStream(bArr2));
                byte[] bArr3 = new byte[1024];
                while (true) {
                    int read = inflaterInputStream.read(bArr3);
                    if (read == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr3, 0, read);
                }
                LOGI(i + byteArrayOutputStream.toString());
            } catch (IOException e) {
            }
        }
    }

    public static void deleteExpireFile(String str, int i) {
        File[] listFiles;
        if (str == null || str.length() == 0) {
            return;
        }
        LOGI("file path:" + str);
        try {
            File file = new File(str);
            if (!file.isDirectory() || (listFiles = file.listFiles()) == null) {
                return;
            }
            int length = listFiles.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (!listFiles[i2].isDirectory() && (System.currentTimeMillis() - listFiles[i2].lastModified()) / 1000 > i) {
                    listFiles[i2].delete();
                }
            }
        } catch (Exception e) {
        }
    }

    public static void deleteExpireLog(Context context) {
        if (context == null) {
            return;
        }
        try {
            if (ExistSDCard()) {
                deleteExpireFile(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + LOG_DIR + "/" + context.getPackageName(), 691200);
            } else {
                deleteExpireFile(context.getFilesDir().getPath() + "/" + LOG_DIR, 259200);
            }
        } catch (Exception e) {
        }
    }

    public static int format_ret_code(int i) {
        switch (i) {
            case E_TLV_DECRYPT /* -1015 */:
            case E_A1_DECRYPT /* -1014 */:
            case E_NO_TGTKEY /* -1006 */:
            case E_DECRYPT /* -1002 */:
                return 5;
            case -1000:
                return 1;
            case 0:
                return 0;
            case 2:
                return 2;
            default:
                return 17;
        }
    }

    public static byte[] generateGuid(Context context) {
        WifiInfo connectionInfo;
        String str = null;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            String deviceId = telephonyManager != null ? telephonyManager.getDeviceId() : null;
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (wifiManager != null && (connectionInfo = wifiManager.getConnectionInfo()) != null) {
                str = connectionInfo.getMacAddress();
            }
            String str2 = deviceId != null ? "" + deviceId : "";
            if (str != null) {
                str2 = str2 + str;
            }
            return str2.length() <= 0 ? new byte[0] : MD5.toMD5Byte(str2.getBytes());
        } catch (Throwable th) {
            return new byte[0];
        }
    }

    public static KeyPair generateRSAKeyPair() {
        try {
            KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA");
            keyPairGenerator.initialize(1024);
            return keyPairGenerator.generateKeyPair();
        } catch (Exception e) {
            return null;
        }
    }

    public static byte[] getAppName(Context context) {
        String charSequence;
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 0);
            if (applicationInfo != null && (charSequence = context.getPackageManager().getApplicationLabel(applicationInfo).toString()) != null) {
                return charSequence.getBytes();
            }
        } catch (Throwable th) {
        }
        return new byte[0];
    }

    public static String getChannelId(Context context, String str) {
        String str2;
        long j;
        int i = 0;
        if (str == null || str.length() == 0) {
            str = context.getPackageName();
        }
        str2 = "";
        try {
            String str3 = context.getPackageManager().getPackageInfo(str, 0).applicationInfo.sourceDir;
            LOGI("pkg " + str + " path " + (str3 == null ? "null" : str3), "");
            if (str3 != null && str3.length() != 0) {
                byte[] bArr = {80, 75, 5, 6};
                FileInputStream fileInputStream = new FileInputStream(str3);
                long available = fileInputStream.available();
                byte[] bArr2 = new byte[(int) (available - fileInputStream.skip(available - 256))];
                fileInputStream.read(bArr2);
                fileInputStream.close();
                while (true) {
                    if (i >= bArr2.length - 4) {
                        j = -1;
                        break;
                    } else if (bArr2[i] == bArr[0] && bArr2[i + 1] == bArr[1] && bArr2[i + 2] == bArr[2] && bArr2[i + 3] == bArr[3]) {
                        j = i;
                        break;
                    } else {
                        i++;
                    }
                }
                if (j != -1) {
                    int i2 = ((int) j) + 20;
                    int i3 = (bArr2[i2 + 1] << 8) + bArr2[i2];
                    if (i3 != 0) {
                        byte[] bArr3 = new byte[i3];
                        System.arraycopy(bArr2, (int) (j + 20), bArr3, 0, i3);
                        Matcher matcher = Pattern.compile("channelId=(\\S+)").matcher(new String(bArr3));
                        str2 = matcher.find() ? matcher.group(1) : "";
                        LOGI("found comment " + new String(bArr3) + " channelId:" + str2, "");
                    }
                }
            }
        } catch (Exception e) {
            printException(e, "");
        }
        return str2;
    }

    public static String getCurrentDay() {
        try {
            if (DAYFORMAT == null) {
                DAYFORMAT = new SimpleDateFormat("yyyyMMdd");
            }
            return DAYFORMAT.format(new Date());
        } catch (Exception e) {
            return null;
        }
    }

    public static String getDate() {
        try {
            return "[" + System.currentTimeMillis() + "]";
        } catch (Exception e) {
            return "";
        }
    }

    public static long getFileModifyTime(String str) {
        if (str == null || str.length() == 0) {
            return 0L;
        }
        try {
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                return file.lastModified();
            }
            return 0L;
        } catch (Exception e) {
            return 0L;
        }
    }

    public static int getFileSize(String str) {
        try {
            File file = new File(str);
            if (file.exists() && file.isFile()) {
                return (int) file.length();
            }
            return 0;
        } catch (Exception e) {
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0086 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] getGuidFromFile(Context context) {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e;
        byte[] bArr = null;
        if (context != null) {
            FileInputStream fileInputStream2 = null;
            byte[] bArr2 = new byte[0];
            try {
                try {
                    File file = new File(context.getFilesDir().getAbsolutePath() + "/wlogin_device.dat");
                    if (file == null || !file.exists()) {
                        fileInputStream = null;
                    } else {
                        fileInputStream = new FileInputStream(file);
                        try {
                            int available = fileInputStream.available();
                            if (available < 1024) {
                                bArr2 = new byte[available];
                                fileInputStream.read(bArr2);
                            }
                        } catch (Exception e2) {
                            e = e2;
                            C4379u.f5269Y |= 65536;
                            printException(e, "");
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                    bArr = bArr2;
                                } catch (IOException e3) {
                                    printException(e3, "");
                                    bArr = bArr2;
                                }
                                if (bArr != null) {
                                }
                                saveGuidToFile(context, bArr);
                                return bArr;
                            }
                            bArr = bArr2;
                            if (bArr != null) {
                            }
                            saveGuidToFile(context, bArr);
                            return bArr;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e4) {
                            printException(e4, "");
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
                fileInputStream = null;
                e = e5;
            } catch (Throwable th3) {
                fileInputStream2 = null;
                th = th3;
                if (fileInputStream2 != null) {
                }
                throw th;
            }
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                    bArr = bArr2;
                } catch (IOException e6) {
                    printException(e6, "");
                    bArr = bArr2;
                }
                if ((bArr != null || bArr.length <= 0) && (bArr = get_saved_imei(context)) != null && bArr.length > 0) {
                    saveGuidToFile(context, bArr);
                }
            }
            bArr = bArr2;
            if (bArr != null) {
            }
            saveGuidToFile(context, bArr);
        }
        return bArr;
    }

    public static String getLanguage(Context context) {
        String country = context.getResources().getConfiguration().locale.getCountry();
        return country.equals("CN") ? "CN" : country.equals("TW") ? "TW" : "EN";
    }

    public static String getLineInfo(int i) {
        if (i < 0) {
            return "";
        }
        try {
            StackTraceElement stackTraceElement = new Throwable().getStackTrace()[i];
            return "[" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + "]";
        } catch (Throwable th) {
            return "";
        }
    }

    public static String getLogFileName(Context context, String str) {
        String str2;
        if (context == null || str == null || str.length() == 0) {
            return null;
        }
        try {
            if (ExistSDCard()) {
                str2 = Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + LOG_DIR + "/" + context.getPackageName() + "/" + str + ".log";
            } else {
                str2 = context.getFilesDir().getPath() + "/" + LOG_DIR + "/" + str + ".log";
            }
            return str2;
        } catch (Exception e) {
            return "";
        }
    }

    public static long getLogModifyTime(Context context, String str) {
        if (context == null || str == null || str.length() == 0) {
            return 0L;
        }
        return getFileModifyTime(getLogFileName(context, str));
    }

    public static byte[] getPkgSigFromApkName(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 64);
            return (packageInfo.signatures == null || packageInfo.signatures.length <= 0 || packageInfo.signatures[0] == null) ? new byte[0] : MD5.toMD5Byte(packageInfo.signatures[0].toByteArray());
        } catch (Throwable th) {
            return new byte[0];
        }
    }

    public static byte[] getRequestInitTime() {
        byte[] bArr = new byte[4];
        int64_to_buf32(bArr, 0, (System.currentTimeMillis() / 1000) + C4379u.f5274ac);
        return bArr;
    }

    public static String getSdkVersion() {
        return "[5]";
    }

    public static String getThreadId() {
        return "[" + Thread.currentThread().getId() + "]";
    }

    public static String getUser(String str) {
        return str != null ? "[" + str + "]" : "[]";
    }

    public static byte[] get_IMSI(Context context) {
        String subscriberId;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null && (subscriberId = telephonyManager.getSubscriberId()) != null) {
                return subscriberId.getBytes();
            }
        } catch (Throwable th) {
        }
        return new byte[0];
    }

    @SuppressLint({"NewApi"})
    public static byte[] get_android_id(Context context) {
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
            if (string != null) {
                return string.getBytes();
            }
        } catch (Throwable th) {
        }
        return new byte[0];
    }

    public static byte[] get_apk_id(Context context) {
        try {
            return context.getPackageName().getBytes();
        } catch (Throwable th) {
            return new byte[0];
        }
    }

    public static byte[] get_apk_v(Context context, String str) {
        try {
            return context.getPackageManager().getPackageInfo(str, 0).versionName.getBytes();
        } catch (Throwable th) {
            return new byte[0];
        }
    }

    public static String get_apn_string(Context context) {
        NetworkInfo activeNetworkInfo;
        try {
            activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        } catch (Throwable th) {
        }
        if (activeNetworkInfo.getType() == 0) {
            String extraInfo = activeNetworkInfo.getExtraInfo();
            return extraInfo != null ? extraInfo : "wifi";
        }
        return "wifi";
    }

    public static byte[] get_bssid_addr(Context context) {
        WifiInfo connectionInfo;
        String bssid;
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (wifiManager != null && (connectionInfo = wifiManager.getConnectionInfo()) != null && (bssid = connectionInfo.getBSSID()) != null) {
                return bssid.toLowerCase().getBytes();
            }
        } catch (Throwable th) {
        }
        return new byte[0];
    }

    public static byte get_char(byte b) {
        if (b < 48 || b > 57) {
            if (b < 97 || b > 102) {
                if (b < 65 || b > 70) {
                    return (byte) 0;
                }
                return (byte) ((b - 65) + 10);
            }
            return (byte) ((b - 97) + 10);
        }
        return (byte) (b - 48);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ca  */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static byte[] get_cp_pubkey(Context context, long j, long j2) {
        Cursor cursor;
        ?? r6 = 0;
        if (context == null) {
            return new byte[0];
        }
        ContentResolver contentResolver = context.getContentResolver();
        Uri parse = Uri.parse("content://oicq.wlogin_sdk.WloginProvider/rsa_pubkey");
        try {
            try {
                cursor = contentResolver.query(parse, new String[]{"id", "appid", "subappid", "pubkey", "pubkey_md5"}, "appid=? and subappid=?", new String[]{"" + j, "" + j2}, null);
                if (cursor != null) {
                    try {
                        if (cursor.moveToNext()) {
                            String string = cursor.getString(cursor.getColumnIndex("pubkey"));
                            if (MD5.toMD5(string).equals(cursor.getString(cursor.getColumnIndex("pubkey_md5")))) {
                                byte[] string_to_buf = string_to_buf(string);
                                if (cursor != null) {
                                    cursor.close();
                                    return string_to_buf;
                                }
                                return string_to_buf;
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        printException(e, "");
                        if (cursor != null) {
                            cursor.close();
                        }
                        return string_to_buf(RSACrypt.DEFAULT_PUB_KEY);
                    }
                }
                if (cursor != null) {
                    cursor.close();
                }
            } catch (Throwable th) {
                th = th;
                r6 = parse;
                if (r6 != 0) {
                    r6.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            if (r6 != 0) {
            }
            throw th;
        }
        return string_to_buf(RSACrypt.DEFAULT_PUB_KEY);
    }

    public static String get_error_msg(int i) {
        switch (i) {
            case -1000:
                return InternationMsg.m49a(InternationMsg.MSG_TYPE.MSG_4);
            default:
                return InternationMsg.m49a(InternationMsg.MSG_TYPE.MSG_3);
        }
    }

    public static byte[] get_imei_id(Context context) {
        String deviceId;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager != null && (deviceId = telephonyManager.getDeviceId()) != null) {
                return deviceId.getBytes();
            }
        } catch (Throwable th) {
        }
        return new byte[0];
    }

    public static byte[] get_ksid(Context context) {
        byte[] bArr = new byte[0];
        try {
            return string_to_buf(context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getString("ksid", new String("")));
        } catch (Throwable th) {
            return bArr;
        }
    }

    public static int get_last_flag(Context context) {
        try {
            return context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getInt("last_flag", 0);
        } catch (Throwable th) {
            return 0;
        }
    }

    public static byte[] get_last_guid(Context context) {
        byte[] bArr = new byte[0];
        try {
            bArr = string_to_buf(context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getString("last_guid", new String("")));
        } catch (Throwable th) {
        }
        return (bArr == null || bArr.length <= 0) ? new byte[0] : bArr;
    }

    public static byte[] get_last_imei(Context context) {
        byte[] bArr = new byte[0];
        try {
            bArr = string_to_buf(context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getString("last_imei", new String("")));
        } catch (Throwable th) {
        }
        return (bArr == null || bArr.length <= 0) ? new byte[0] : bArr;
    }

    public static byte[] get_last_mac(Context context) {
        byte[] bArr = new byte[0];
        try {
            bArr = string_to_buf(context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getString("last_mac", new String("")));
        } catch (Throwable th) {
        }
        return (bArr == null || bArr.length <= 0) ? new byte[0] : bArr;
    }

    public static byte[] get_mac_addr(Context context) {
        WifiInfo connectionInfo;
        String macAddress;
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (wifiManager != null && (connectionInfo = wifiManager.getConnectionInfo()) != null && (macAddress = connectionInfo.getMacAddress()) != null) {
                return macAddress.getBytes();
            }
        } catch (Throwable th) {
        }
        return new byte[0];
    }

    public static String get_mpasswd() {
        try {
            byte[] seed = SecureRandom.getSeed(16);
            String str = "";
            int i = 0;
            while (true) {
                int i2 = i;
                String str2 = str;
                if (i2 >= seed.length) {
                    return str2;
                }
                str = str2 + String.valueOf((char) ((new Random().nextBoolean() ? 97 : 65) + Math.abs(seed[i2] % 26)));
                i = i2 + 1;
            }
        } catch (Throwable th) {
            return "1234567890123456";
        }
    }

    public static int get_net_retry_type(Context context) {
        try {
            return context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getInt("netretry_type", 0);
        } catch (Throwable th) {
            return 0;
        }
    }

    public static int get_network_type(Context context) {
        int i;
        try {
            i = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getType();
        } catch (Throwable th) {
            i = 0;
        }
        if (i == 0) {
            return 1;
        }
        return i == 1 ? 2 : 0;
    }

    public static byte[] get_os_type() {
        return "android".getBytes();
    }

    public static byte[] get_os_version() {
        return Build.VERSION.RELEASE.getBytes();
    }

    public static byte[] get_prand_16byte() {
        try {
            byte[] bArr = new byte[16];
            int32_to_buf(bArr, 0, (int) (Math.random() * 2.147483647E9d));
            int32_to_buf(bArr, 4, (int) (Math.random() * 2.147483647E9d));
            int32_to_buf(bArr, 8, (int) (Math.random() * 2.147483647E9d));
            int32_to_buf(bArr, 12, (int) (Math.random() * 2.147483647E9d));
            return MD5.toMD5Byte(bArr);
        } catch (Throwable th) {
            return new byte[16];
        }
    }

    @SuppressLint({"NewApi"})
    @TargetApi(4)
    public static String get_proxy_ip() {
        return Build.VERSION.SDK_INT < HONEYCOMB ? Proxy.getDefaultHost() : System.getProperty("http.proxyHost");
    }

    @SuppressLint({"NewApi", "NewApi"})
    @TargetApi(4)
    public static int get_proxy_port() {
        if (Build.VERSION.SDK_INT < HONEYCOMB) {
            return Proxy.getDefaultPort();
        }
        try {
            return Integer.parseInt(System.getProperty("http.proxyPort"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static byte[] get_rand_16byte(SecureRandom secureRandom) {
        try {
            byte[] bArr = new byte[16];
            secureRandom.nextBytes(bArr);
            return bArr;
        } catch (Throwable th) {
            return get_prand_16byte();
        }
    }

    public static byte[] get_rand_16byte(byte[] bArr) {
        try {
            byte[] seed = SecureRandom.getSeed(16);
            byte[] bArr2 = new byte[seed.length + bArr.length];
            System.arraycopy(seed, 0, bArr2, 0, seed.length);
            System.arraycopy(bArr, 0, bArr2, seed.length, bArr.length);
            return MD5.toMD5Byte(bArr2);
        } catch (Throwable th) {
            return get_prand_16byte();
        }
    }

    public static int get_rand_32() {
        return (int) (Math.random() * 2.147483647E9d);
    }

    public static String get_release_time() {
        return "2017/01/03 15:17:41";
    }

    public static byte[] get_rsa_privkey(Context context) {
        byte[] bArr = new byte[0];
        try {
            bArr = string_to_buf(context.getSharedPreferences("WLOGIN_DEVICE_INFO", MODE_MULTI_PROCESS).getString("rsa_privkey", ""));
        } catch (Throwable th) {
        }
        return (bArr == null || bArr.length <= 0) ? new byte[0] : bArr;
    }

    public static byte[] get_rsa_pubkey(Context context) {
        byte[] bArr = new byte[0];
        try {
            bArr = string_to_buf(context.getSharedPreferences("WLOGIN_DEVICE_INFO", MODE_MULTI_PROCESS).getString("rsa_pubkey", ""));
        } catch (Throwable th) {
        }
        return (bArr == null || bArr.length <= 0) ? new byte[0] : bArr;
    }

    public static byte[] get_saved_imei(Context context) {
        byte[] bArr = new byte[0];
        try {
            return string_to_buf(context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getString("imei", new String("")));
        } catch (Throwable th) {
            printThrowable(th, "");
            return bArr;
        }
    }

    public static int get_saved_network_type(Context context) {
        try {
            return context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getInt("network_type", 0);
        } catch (Throwable th) {
            return 0;
        }
    }

    public static long get_server_cur_time() {
        return C4379u.m71g();
    }

    public static byte[] get_server_host1(Context context) {
        try {
            return context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getString("host1", "").getBytes();
        } catch (Throwable th) {
            return new byte[0];
        }
    }

    public static byte[] get_server_host2(Context context) {
        try {
            return context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getString("host2", "").getBytes();
        } catch (Throwable th) {
            return new byte[0];
        }
    }

    public static byte[] get_sim_operator_name(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (telephonyManager.getSimState() == 5) {
                return telephonyManager.getSimOperatorName().getBytes();
            }
        } catch (Throwable th) {
        }
        return new byte[0];
    }

    public static byte[] get_ssid_addr(Context context) {
        WifiInfo connectionInfo;
        String ssid;
        try {
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (wifiManager != null && (connectionInfo = wifiManager.getConnectionInfo()) != null && (ssid = connectionInfo.getSSID()) != null) {
                return ssid.getBytes();
            }
        } catch (Throwable th) {
        }
        return new byte[0];
    }

    public static byte[] get_wap_server_host1(Context context) {
        try {
            return context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getString("wap-host1", "").getBytes();
        } catch (Throwable th) {
            return new byte[0];
        }
    }

    public static byte[] get_wap_server_host2(Context context) {
        try {
            return context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).getString("wap-host2", "").getBytes();
        } catch (Throwable th) {
            return new byte[0];
        }
    }

    public static void int16_to_buf(byte[] bArr, int i, int i2) {
        bArr[i + 1] = (byte) (i2 >> 0);
        bArr[i + 0] = (byte) (i2 >> 8);
    }

    public static void int32_to_buf(byte[] bArr, int i, int i2) {
        bArr[i + 3] = (byte) (i2 >> 0);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 0] = (byte) (i2 >> 24);
    }

    public static void int64_to_buf(byte[] bArr, int i, long j) {
        bArr[i + 7] = (byte) (j >> 0);
        bArr[i + 6] = (byte) (j >> 8);
        bArr[i + 5] = (byte) (j >> 16);
        bArr[i + 4] = (byte) (j >> 24);
        bArr[i + 3] = (byte) (j >> 32);
        bArr[i + 2] = (byte) (j >> 40);
        bArr[i + 1] = (byte) (j >> 48);
        bArr[i + 0] = (byte) (j >> 56);
    }

    public static void int64_to_buf32(byte[] bArr, int i, long j) {
        bArr[i + 3] = (byte) (j >> 0);
        bArr[i + 2] = (byte) (j >> 8);
        bArr[i + 1] = (byte) (j >> 16);
        bArr[i + 0] = (byte) (j >> 24);
    }

    public static void int8_to_buf(byte[] bArr, int i, int i2) {
        bArr[i + 0] = (byte) (i2 >> 0);
    }

    public static boolean isFileExist(String str) {
        try {
            return new File(str).exists();
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean is_wap_proxy_retry(Context context) {
        try {
            String str = get_apn_string(context);
            if (str != null) {
                if (str.equalsIgnoreCase("cmwap") || str.equalsIgnoreCase("uniwap") || str.equalsIgnoreCase("ctwap")) {
                    return true;
                }
                if (str.equalsIgnoreCase("3gwap")) {
                    return true;
                }
            }
        } catch (Throwable th) {
        }
        return false;
    }

    public static boolean is_wap_retry(Context context) {
        return get_net_retry_type(context) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean loadLibrary(String str, Context context) {
        File file;
        File file2;
        boolean z;
        if (loadEncryptSo && Build.VERSION.SDK_INT < 23) {
            if (libwtecdh_loaded) {
                return true;
            }
            if (context == null || str == null || str.length() == 0) {
                return false;
            }
            try {
                file = new File(context.getFilesDir().getParent() + "/txlib/lib" + str + ".so");
                try {
                } catch (Exception e) {
                    e = e;
                    printException(e);
                    file2 = file;
                    if (file2 != null) {
                    }
                    z = false;
                    if (!z) {
                    }
                    if (!z) {
                    }
                    libwtecdh_loaded = z;
                    LOGI("libwtecdh loaded " + libwtecdh_loaded, "");
                    return z;
                }
            } catch (Exception e2) {
                e = e2;
                file = null;
            }
            if (!file.exists()) {
                file2 = new File(context.getFilesDir().getParent() + "/lib/lib" + str + ".so");
                if (file2 != null && file2.exists()) {
                    try {
                        System.load(file2.getAbsolutePath());
                        z = true;
                    } catch (UnsatisfiedLinkError e3) {
                        LOGI("loadLibrary failed " + e3.getMessage(), "");
                    }
                    if (!z) {
                        try {
                            System.loadLibrary(str);
                            z = true;
                        } catch (UnsatisfiedLinkError e4) {
                            LOGI("loadLibrary failed " + e4.getMessage(), "");
                        }
                    }
                    if (!z) {
                    }
                    libwtecdh_loaded = z;
                    LOGI("libwtecdh loaded " + libwtecdh_loaded, "");
                    return z;
                }
                z = false;
                if (!z) {
                }
                if (!z) {
                }
                libwtecdh_loaded = z;
                LOGI("libwtecdh loaded " + libwtecdh_loaded, "");
                return z;
            }
            file2 = file;
            if (file2 != null) {
                System.load(file2.getAbsolutePath());
                z = true;
                if (!z) {
                }
                if (!z) {
                }
                libwtecdh_loaded = z;
                LOGI("libwtecdh loaded " + libwtecdh_loaded, "");
                return z;
            }
            z = false;
            if (!z) {
            }
            if (!z) {
            }
            libwtecdh_loaded = z;
            LOGI("libwtecdh loaded " + libwtecdh_loaded, "");
            return z;
        }
        return false;
    }

    public static Bundle packBundle(byte[][] bArr) {
        Bundle bundle = new Bundle();
        if (bArr != null && bArr.length > 0) {
            bundle.putInt("len", bArr.length);
            for (int i = 0; i < bArr.length; i++) {
                bundle.putByteArray(String.valueOf(i), bArr[i]);
            }
        }
        if (bundle.isEmpty()) {
            return null;
        }
        return bundle;
    }

    public static void printException(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter((Writer) stringWriter, true);
        exc.printStackTrace(printWriter);
        printWriter.flush();
        stringWriter.flush();
        LOGW("exception:", stringWriter.toString());
    }

    public static void printException(Exception exc, String str) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter((Writer) stringWriter, true);
        exc.printStackTrace(printWriter);
        printWriter.flush();
        stringWriter.flush();
        LOGW("exception", stringWriter.toString(), str);
    }

    public static void printThrowable(Throwable th, String str) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter((Writer) stringWriter, true);
        th.printStackTrace(printWriter);
        printWriter.flush();
        stringWriter.flush();
        LOGW("throwable", stringWriter.toString(), str);
    }

    public static byte[] readFile(String str) {
        byte[] bArr = null;
        if (str != null && str.length() != 0) {
            try {
                File file = new File(str);
                if (file.exists() && file.isFile()) {
                    FileInputStream fileInputStream = new FileInputStream(str);
                    int available = fileInputStream.available();
                    if (available > 528384) {
                        fileInputStream.close();
                    } else {
                        byte[] bArr2 = new byte[available];
                        fileInputStream.read(bArr2);
                        fileInputStream.close();
                        bArr = bArr2;
                    }
                }
            } catch (Exception e) {
            }
        }
        return bArr;
    }

    public static byte[] readLog(Context context, String str) {
        if (context == null || str == null || str.length() == 0) {
            return null;
        }
        return readFile(getLogFileName(context, str));
    }

    public static void saveGuidToFile(Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                File file = new File(context.getFilesDir().getAbsolutePath() + "/wlogin_device.dat");
                if (!file.exists()) {
                    file.createNewFile();
                }
                if (file.exists() && file.canWrite()) {
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file, false);
                    try {
                        fileOutputStream2.write(bArr);
                        fileOutputStream = fileOutputStream2;
                    } catch (Exception e) {
                        e = e;
                        fileOutputStream = fileOutputStream2;
                        printException(e, "");
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                                return;
                            } catch (IOException e2) {
                                printException(e2, "");
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e3) {
                                printException(e3, "");
                            }
                        }
                        throw th;
                    }
                }
                save_imei(context, bArr);
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (IOException e4) {
                        printException(e4, "");
                    }
                }
            } catch (Exception e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void save_cur_flag(Context context, int i) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
            edit.putInt("last_flag", i);
            edit.commit();
        }
    }

    public static void save_cur_guid(Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
        edit.putString("last_guid", buf_to_string(bArr));
        edit.commit();
    }

    public static void save_cur_imei(Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
        edit.putString("last_imei", buf_to_string(bArr));
        edit.commit();
    }

    public static void save_cur_mac(Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
        edit.putString("last_mac", buf_to_string(bArr));
        edit.commit();
    }

    public static void save_imei(Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
        edit.putString("imei", buf_to_string(bArr));
        edit.commit();
    }

    public static void save_network_type(Context context, int i) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
            edit.putInt("network_type", i);
            edit.commit();
        }
    }

    public static void save_rsa_privkey(Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", MODE_MULTI_PROCESS).edit();
        edit.putString("rsa_privkey", buf_to_string(bArr));
        edit.commit();
    }

    public static void save_rsa_pubkey(Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", MODE_MULTI_PROCESS).edit();
        edit.putString("rsa_pubkey", buf_to_string(bArr));
        edit.commit();
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean set_cp_pubkey(Context context, long j, long j2) {
        Cursor cursor;
        Cursor cursor2;
        if (context == null) {
            return false;
        }
        ContentResolver contentResolver = context.getContentResolver();
        Uri parse = Uri.parse("content://oicq.wlogin_sdk.WloginProvider/rsa_pubkey");
        LOGI(parse.toString());
        try {
            cursor = contentResolver.query(parse, new String[]{"id", "appid", "subappid", "pubkey", "pubkey_md5"}, "appid=? and subappid=?", new String[]{"" + j, "" + j2}, null);
            if (cursor == null) {
                if (cursor != null) {
                    cursor.close();
                }
                return false;
            }
            try {
                String buf_to_string = buf_to_string(get_rsa_pubkey(context));
                if (buf_to_string.length() == 0) {
                    if (cursor != null) {
                        cursor.close();
                    }
                    return false;
                }
                String md5 = MD5.toMD5(buf_to_string);
                if (cursor.getCount() > 0) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("pubkey", buf_to_string);
                    contentValues.put("pubkey_md5", md5);
                    cursor.moveToNext();
                } else {
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("appid", Long.valueOf(j));
                    contentValues2.put("subappid", Long.valueOf(j2));
                    contentValues2.put("pubkey", buf_to_string);
                    contentValues2.put("pubkey_md5", md5);
                    LOGD("inserted uri: " + contentResolver.insert(parse, contentValues2) + ", with appid=" + j + ", subappid=" + j2);
                }
                if (cursor != null) {
                    cursor.close();
                }
                return true;
            } catch (Exception e) {
                e = e;
                cursor2 = cursor;
                try {
                    printException(e, "");
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursor2;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor2 = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public static void set_ksid(Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        byte[] bArr2 = get_ksid(context);
        if (bArr2 == null || bArr2.length <= 0) {
            SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
            edit.putString("ksid", buf_to_string(bArr));
            edit.commit();
        }
    }

    public static void set_net_retry_type(Context context, int i) {
        if (context != null) {
            SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
            edit.putInt("netretry_type", i);
            edit.commit();
        }
    }

    public static void set_server_host1(Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
        edit.putString("host1", new String(bArr));
        edit.commit();
    }

    public static void set_server_host2(Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
        edit.putString("host2", new String(bArr));
        edit.commit();
    }

    public static void set_wap_server_host1(Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
        edit.putString("wap-host1", new String(bArr));
        edit.commit();
    }

    public static void set_wap_server_host2(Context context, byte[] bArr) {
        if (context == null || bArr == null || bArr.length <= 0) {
            return;
        }
        SharedPreferences.Editor edit = context.getSharedPreferences("WLOGIN_DEVICE_INFO", 0).edit();
        edit.putString("wap-host2", new String(bArr));
        edit.commit();
    }

    public static boolean shouldKick(int i) {
        return (i == -1000 || i == 257) ? false : true;
    }

    public static byte[] string_to_buf(String str) {
        if (str == null) {
            return new byte[0];
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length() / 2; i++) {
            bArr[i] = (byte) ((get_char((byte) str.charAt(i * 2)) << 4) + get_char((byte) str.charAt((i * 2) + 1)));
        }
        return bArr;
    }

    public static byte[][] unpackBundle(Bundle bundle) {
        if (bundle != null) {
            int i = bundle.getInt("len");
            byte[][] bArr = (byte[][]) Array.newInstance(Byte.TYPE, i, 0);
            for (int i2 = 0; i2 < i; i2++) {
                bArr[i2] = bundle.getByteArray(String.valueOf(i2));
            }
            return bArr;
        }
        return null;
    }

    public static synchronized void writeFile(String str, byte[] bArr) {
        File parentFile;
        synchronized (C4393util.class) {
            if (str != null) {
                if (str.length() != 0) {
                    try {
                        File file = new File(str);
                        if ((file.exists() || ((parentFile = file.getParentFile()) != null && (parentFile.mkdirs() || parentFile.isDirectory()))) && getFileSize(str) < 524288) {
                            FileOutputStream fileOutputStream = new FileOutputStream(file, true);
                            fileOutputStream.write(bArr);
                            fileOutputStream.close();
                        }
                    } catch (Exception e) {
                    }
                }
            }
        }
    }
}
