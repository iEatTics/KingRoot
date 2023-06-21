package oicq.wlogin_sdk.request;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import oicq.wlogin_sdk.p027b.C4232b;
import oicq.wlogin_sdk.request.WtloginHelper;
import oicq.wlogin_sdk.sharemem.WloginSigInfo;
import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public class WUserSigInfo implements Parcelable {
    public static final Parcelable.Creator<WUserSigInfo> CREATOR = new Parcelable.Creator<WUserSigInfo>() { // from class: oicq.wlogin_sdk.request.WUserSigInfo.1
        @Override // android.os.Parcelable.Creator
        public WUserSigInfo createFromParcel(Parcel parcel) {
            return new WUserSigInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public WUserSigInfo[] newArray(int i) {
            return new WUserSigInfo[i];
        }
    };
    public List<String> _domains;
    public byte[] _fastLoginBuf;
    public byte[] _in_ksid;
    public int _login_bitmap;
    public byte[] _reserveData;
    public long _seqence;
    public List<Ticket> _tickets;
    public Map<Integer, C4232b> extraLoginTLVMap;
    public Map<Integer, C4232b> regTLVMap;
    public byte[][] stList;
    public String uin;

    public WUserSigInfo() {
        this.uin = "";
        this._seqence = 0L;
        this._login_bitmap = 0;
        this._domains = new ArrayList();
        this._tickets = new ArrayList();
        this.regTLVMap = new HashMap();
        this.extraLoginTLVMap = new HashMap();
    }

    private WUserSigInfo(Parcel parcel) {
        this.uin = "";
        this._seqence = 0L;
        this._login_bitmap = 0;
        this._domains = new ArrayList();
        this._tickets = new ArrayList();
        this.regTLVMap = new HashMap();
        this.extraLoginTLVMap = new HashMap();
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void get_clone(WloginSigInfo wloginSigInfo) {
        if (wloginSigInfo.cacheTickets != null) {
            C4393util.LOGI("WUserSigInfo::get_clone using cacheTickets last update stamp " + wloginSigInfo.cacheUpdateStamp, "");
            this._tickets = wloginSigInfo.cacheTickets;
            return;
        }
        this._tickets.clear();
        this._tickets.add(new Ticket(2, wloginSigInfo._userA5, (byte[]) null, wloginSigInfo._userA5_create_time, 0L));
        this._tickets.add(new Ticket(2097152, wloginSigInfo._aqSig, (byte[]) null, wloginSigInfo._aqSig_create_time, 0L));
        this._tickets.add(new Ticket(8192, wloginSigInfo._userSig64, (byte[]) null, wloginSigInfo._userSig64_create_time, 0L));
        this._tickets.add(new Ticket(1048576, wloginSigInfo._superKey, null, wloginSigInfo._psKey_create_time, wloginSigInfo._psKey, wloginSigInfo._pt4Token));
        this._tickets.add(new Ticket(16384, wloginSigInfo._openkey, wloginSigInfo._openid, wloginSigInfo._openkey_create_time, 0L));
        this._tickets.add(new Ticket(32768, wloginSigInfo._access_token, wloginSigInfo._openid, wloginSigInfo._access_token_create_time, 0L));
        this._tickets.add(new Ticket(128, wloginSigInfo._userStSig, wloginSigInfo._userSt_Key, wloginSigInfo._userStSig_create_time, 0L));
        this._tickets.add(new Ticket(16, wloginSigInfo._userA8, (byte[]) null, wloginSigInfo._userA8_create_time, wloginSigInfo._userA8_expire_time));
        this._tickets.add(new Ticket(512, wloginSigInfo._lsKey, (byte[]) null, wloginSigInfo._lsKey_create_time, wloginSigInfo._lsKey_expire_time));
        this._tickets.add(new Ticket(4096, wloginSigInfo._sKey, (byte[]) null, wloginSigInfo._sKey_create_time, wloginSigInfo._sKey_expire_time));
        this._tickets.add(new Ticket(131072, wloginSigInfo._vkey, (byte[]) null, wloginSigInfo._vkey_create_time, wloginSigInfo._vKey_expire_time));
        this._tickets.add(new Ticket(64, wloginSigInfo._TGT, wloginSigInfo._TGTKey, wloginSigInfo._A2_create_time, wloginSigInfo._A2_expire_time));
        this._tickets.add(new Ticket(262144, wloginSigInfo._D2, wloginSigInfo._D2Key, wloginSigInfo._D2_create_time, wloginSigInfo._D2_expire_time));
        this._tickets.add(new Ticket(524288, wloginSigInfo._sid, (byte[]) null, wloginSigInfo._sid_create_time, wloginSigInfo._sid_expire_time));
        this._tickets.add(new Ticket(32, wloginSigInfo._userStWebSig, (byte[]) null, wloginSigInfo._userStWebSig_create_time, wloginSigInfo._userStWebSig_expire_time));
        this._tickets.add(new Ticket(8388608, wloginSigInfo._pay_token, (byte[]) null, 0L, 0L));
        this._tickets.add(new Ticket(16777216, wloginSigInfo._pf, wloginSigInfo._pfKey, 0L, 0L));
        Object[] objArr = new Object[1];
        objArr[0] = Integer.valueOf(wloginSigInfo._DA2 != null ? wloginSigInfo._DA2.length : 0);
        C4393util.LOGI(String.format("WUserSigInfo.get_clone add da2 %d", objArr), "");
        this._tickets.add(new Ticket((int) WtloginHelper.SigType.WLOGIN_DA2, wloginSigInfo._DA2, (byte[]) null, 0L, 0L));
        wloginSigInfo.cacheTickets = this._tickets;
        wloginSigInfo.cacheUpdateStamp = C4393util.get_server_cur_time();
    }

    public void readFromParcel(Parcel parcel) {
        this._in_ksid = parcel.createByteArray();
        this._reserveData = parcel.createByteArray();
        this._fastLoginBuf = parcel.createByteArray();
        this._seqence = parcel.readLong();
        this._login_bitmap = parcel.readInt();
        this._domains = parcel.readArrayList(List.class.getClassLoader());
        parcel.readTypedList(this._tickets, Ticket.CREATOR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this._in_ksid);
        parcel.writeByteArray(this._reserveData);
        parcel.writeByteArray(this._fastLoginBuf);
        parcel.writeLong(this._seqence);
        parcel.writeInt(this._login_bitmap);
        parcel.writeList(this._domains);
        parcel.writeTypedList(this._tickets);
    }
}
