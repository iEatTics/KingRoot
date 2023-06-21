package oicq.wlogin_sdk.request;

import android.os.Parcel;
import android.os.Parcelable;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;
import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public class Ticket implements Parcelable {
    public static final Parcelable.Creator<Ticket> CREATOR = new Parcelable.Creator<Ticket>() { // from class: oicq.wlogin_sdk.request.Ticket.1
        @Override // android.os.Parcelable.Creator
        public Ticket createFromParcel(Parcel parcel) {
            return new Ticket(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Ticket[] newArray(int i) {
            return new Ticket[i];
        }
    };
    private static final int EXPIRE_FIELD = 65535;
    public long _create_time;
    public long _expire_time;
    public Map<String, Long> _pskey_expire;
    public Map<String, byte[]> _pskey_map;
    public Map<String, Long> _pt4token_expire;
    public Map<String, byte[]> _pt4token_map;
    public byte[] _sig;
    public byte[] _sig_key;
    public int _type;

    public Ticket() {
        this._pskey_map = new HashMap();
        this._pskey_expire = new HashMap();
        this._pt4token_map = new HashMap();
        this._pt4token_expire = new HashMap();
    }

    public Ticket(int i, byte[] bArr, byte[] bArr2, long j, long j2) {
        this._pskey_map = new HashMap();
        this._pskey_expire = new HashMap();
        this._pt4token_map = new HashMap();
        this._pt4token_expire = new HashMap();
        this._type = i;
        this._sig = bArr == null ? new byte[0] : (byte[]) bArr.clone();
        this._sig_key = bArr2 == null ? new byte[0] : (byte[]) bArr2.clone();
        this._create_time = j;
        this._expire_time = j2;
    }

    public Ticket(int i, byte[] bArr, byte[] bArr2, long j, byte[] bArr3) {
        this._pskey_map = new HashMap();
        this._pskey_expire = new HashMap();
        this._pt4token_map = new HashMap();
        this._pt4token_expire = new HashMap();
        this._type = i;
        this._sig = bArr == null ? new byte[0] : (byte[]) bArr.clone();
        this._sig_key = bArr2 == null ? new byte[0] : (byte[]) bArr2.clone();
        this._create_time = j;
        this._expire_time = 86400 + j;
        parsePsBuf(bArr3, this._create_time, this._pskey_map, this._pskey_expire);
    }

    public Ticket(int i, byte[] bArr, byte[] bArr2, long j, byte[] bArr3, byte[] bArr4) {
        this._pskey_map = new HashMap();
        this._pskey_expire = new HashMap();
        this._pt4token_map = new HashMap();
        this._pt4token_expire = new HashMap();
        this._type = i;
        this._sig = bArr == null ? new byte[0] : (byte[]) bArr.clone();
        this._sig_key = bArr2 == null ? new byte[0] : (byte[]) bArr2.clone();
        this._create_time = j;
        this._expire_time = 86400 + j;
        parsePsBuf(bArr3, this._create_time, this._pskey_map, this._pskey_expire);
        parsePsBuf(bArr4, this._create_time, this._pt4token_map, this._pt4token_expire);
    }

    private Ticket(Parcel parcel) {
        this._pskey_map = new HashMap();
        this._pskey_expire = new HashMap();
        this._pt4token_map = new HashMap();
        this._pt4token_expire = new HashMap();
        readFromParcel(parcel);
    }

    private String __getPskey(String str, Map<String, byte[]> map, Map<String, Long> map2) {
        Long l;
        C4393util.LOGI("__getPskey get domain " + str + " pskey or pt4token", "");
        if (map == null) {
            return null;
        }
        byte[] bArr = map.get(str);
        if (bArr == null) {
            C4393util.LOGI("__getPskey get domain " + str + " pskey or pt4token null", "");
            return null;
        } else if (map2 == null || (l = map2.get(str)) == null || l.longValue() > C4379u.m72f()) {
            String str2 = new String(bArr);
            C4393util.LOGI("__getPskey get domain " + str + " pskey or pt4token len " + str2.length() + " " + str2.substring(0, 5) + "***" + str2.substring(str2.length() - 5, str2.length()), "");
            return str2;
        } else {
            C4393util.LOGI("__getPskey delete domain " + str + " expired pskey or pt4token expire time " + l, "");
            map2.remove(str);
            map.remove(str);
            return null;
        }
    }

    public static boolean isPskeyExpired(long j) {
        long m72f = C4379u.m72f();
        if (m72f > j) {
            return true;
        }
        if (j > 86400 + m72f) {
            C4393util.LOGI("time for system may be  modified manually expireTime " + j + " current " + m72f, "");
            return true;
        }
        return false;
    }

    public static boolean isPt4TokenExpired(long j) {
        return isPskeyExpired(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] packPsBuf(Map<String, byte[]> map, long j, Map<String, Long> map2) {
        C4393util.LOGI("pskeyMap " + map.size(), "");
        ByteBuffer allocate = ByteBuffer.allocate(4096);
        allocate.putShort((short) map.size());
        for (String str : map.keySet()) {
            allocate.putShort((short) str.length());
            allocate.put(str.getBytes());
            byte[] bArr = map.get(str);
            allocate.putShort((short) bArr.length);
            allocate.put(bArr);
            allocate.putShort((short) -1);
            Long l = map2.get(str);
            if (l != null) {
                allocate.putLong(l.longValue());
            } else {
                allocate.putLong(86400 + j);
            }
        }
        allocate.flip();
        byte[] bArr2 = new byte[allocate.limit()];
        allocate.get(bArr2);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void parsePsBuf(byte[] bArr, long j, Map<String, byte[]> map, Map<String, Long> map2) {
        long j2;
        C4393util.LOGI("ps_buf " + (bArr == null ? "null" : Integer.valueOf(bArr.length)), "");
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        long m72f = C4379u.m72f();
        int buf_to_int16 = C4393util.buf_to_int16(bArr, 0);
        int i = 2;
        C4393util.LOGI("domainCnt " + buf_to_int16, "");
        for (int i2 = 0; i2 < buf_to_int16 && bArr.length >= i + 2; i2++) {
            int buf_to_int162 = C4393util.buf_to_int16(bArr, i);
            int i3 = i + 2;
            if (bArr.length < i3 + buf_to_int162) {
                return;
            }
            String str = new String(bArr, i3, buf_to_int162);
            int i4 = buf_to_int162 + i3;
            if (bArr.length < i4 + 2) {
                return;
            }
            int buf_to_int163 = C4393util.buf_to_int16(bArr, i4);
            int i5 = i4 + 2;
            if (bArr.length < i5 + buf_to_int163) {
                return;
            }
            byte[] bArr2 = new byte[buf_to_int163];
            System.arraycopy(bArr, i5, bArr2, 0, buf_to_int163);
            i = i5 + buf_to_int163;
            if (bArr.length <= i + 2 || C4393util.buf_to_int16(bArr, i) != 65535) {
                j2 = 86400 + j;
            } else {
                int i6 = i + 2;
                j2 = C4393util.buf_to_int64(bArr, i6);
                i = i6 + 8;
            }
            if (j2 > m72f) {
                map.put(str, bArr2);
                map2.put(str, Long.valueOf(j2));
            }
            C4393util.LOGI(str + " pskey:" + buf_to_int163 + " expire: " + j2, "");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void parseSvrPs(byte[] bArr, long j, Map<String, byte[]> map, Map<String, Long> map2, Map<String, byte[]> map3, Map<String, Long> map4) {
        C4393util.LOGI("pskeyMap " + map.size() + ", tokenMap " + map3.size() + " create time:" + j, "");
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        short s = wrap.getShort();
        for (int i = 0; i < s; i++) {
            byte[] bArr2 = new byte[wrap.getShort()];
            wrap.get(bArr2);
            String str = new String(bArr2);
            byte[] bArr3 = new byte[wrap.getShort()];
            wrap.get(bArr3);
            byte[] bArr4 = new byte[wrap.getShort()];
            wrap.get(bArr4);
            long j2 = 86400 + j;
            if (bArr3.length > 0) {
                map.put(str, bArr3);
                map2.put(str, Long.valueOf(j2));
            }
            if (bArr4.length > 0) {
                String str2 = new String(bArr4);
                C4393util.LOGI("parseSvrPs add domain " + str + " pt4token len " + bArr4.length + " " + str2.substring(0, 5) + "***" + str2.substring(str2.length() - 5), "");
                map3.put(str, bArr4);
                map4.put(str, Long.valueOf(j2));
            }
            C4393util.LOGI(str + " pskey:" + bArr3.length + " pt4token " + bArr4.length + " expire: " + j2, "");
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getPSkey(String str) {
        return __getPskey(str, this._pskey_map, this._pskey_expire);
    }

    public String getPt4Token(String str) {
        C4393util.LOGI("getPt4Token get domain " + str + " pt4token", "");
        return __getPskey(str, this._pt4token_map, this._pt4token_expire);
    }

    public void readFromParcel(Parcel parcel) {
        this._type = parcel.readInt();
        this._sig = parcel.createByteArray();
        this._sig_key = parcel.createByteArray();
        this._create_time = parcel.readLong();
        this._expire_time = parcel.readLong();
        this._pskey_map = parcel.readHashMap(Map.class.getClassLoader());
        this._pt4token_map = parcel.readHashMap(Map.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this._type);
        parcel.writeByteArray(this._sig);
        parcel.writeByteArray(this._sig_key);
        parcel.writeLong(this._create_time);
        parcel.writeLong(this._expire_time);
        parcel.writeMap(this._pskey_map);
        parcel.writeMap(this._pt4token_map);
    }
}
