package oicq.wlogin_sdk.request;

import android.os.Parcel;
import android.os.Parcelable;
import oicq.wlogin_sdk.request.oicq_request;
import oicq.wlogin_sdk.sharemem.WloginSigInfo;
/* loaded from: classes.dex */
public class TransReqContext implements Parcelable {
    public static final Parcelable.Creator<TransReqContext> CREATOR = new Parcelable.Creator<TransReqContext>() { // from class: oicq.wlogin_sdk.request.TransReqContext.1
        @Override // android.os.Parcelable.Creator
        public TransReqContext createFromParcel(Parcel parcel) {
            return new TransReqContext(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public TransReqContext[] newArray(int i) {
            return new TransReqContext[i];
        }
    };
    public byte[] _body;
    public int _subcmd;
    public int _type;
    public long _uin;
    public oicq_request.EncryptionMethod requestEm;
    public byte[] wtSessionTicket;
    public byte[] wtSessionTicketKey;

    public TransReqContext() {
        this._type = 0;
        this._subcmd = 0;
        this._uin = 0L;
        this.requestEm = oicq_request.EncryptionMethod.EM_ECDH;
        this.wtSessionTicket = new byte[0];
        this.wtSessionTicketKey = new byte[0];
    }

    private TransReqContext(Parcel parcel) {
        this._type = 0;
        this._subcmd = 0;
        this._uin = 0L;
        this.requestEm = oicq_request.EncryptionMethod.EM_ECDH;
        this.wtSessionTicket = new byte[0];
        this.wtSessionTicketKey = new byte[0];
        readFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public byte[] get_body() {
        return this._body;
    }

    public int get_subcmd() {
        return this._subcmd;
    }

    public long get_uin() {
        return this._uin;
    }

    public boolean is_code2d_func_req() {
        return this._type == 3;
    }

    public boolean is_devlock_req() {
        return this._type == 5;
    }

    public boolean is_name_func_req() {
        return this._type == 2;
    }

    public boolean is_oidb_func_req() {
        return this._type == 4;
    }

    public boolean is_register_req() {
        return this._type == 1;
    }

    public void readFromParcel(Parcel parcel) {
        this._body = parcel.createByteArray();
        this._type = parcel.readInt();
        this._subcmd = parcel.readInt();
        this._uin = parcel.readLong();
    }

    public void setSTEncryptMethod() {
        this.requestEm = oicq_request.EncryptionMethod.EM_ST;
    }

    public void setWtST(WloginSigInfo wloginSigInfo) {
        if (true == wloginSigInfo.isWtSessionTicketExpired() || wloginSigInfo.wtSessionTicket == null || wloginSigInfo.wtSessionTicketKey == null) {
            return;
        }
        this.wtSessionTicket = (byte[]) wloginSigInfo.wtSessionTicket.clone();
        this.wtSessionTicketKey = (byte[]) wloginSigInfo.wtSessionTicketKey.clone();
    }

    public void set_body(byte[] bArr) {
        if (bArr == null) {
            this._body = new byte[0];
        } else {
            this._body = bArr;
        }
    }

    public void set_code2d_func_req() {
        this._type = 3;
    }

    public void set_devlock_req() {
        this._type = 5;
    }

    public void set_name_func_req() {
        this._type = 2;
    }

    public void set_oidb_func_req() {
        this._type = 4;
    }

    public void set_register_req() {
        this._type = 1;
    }

    public void set_subcmd(int i) {
        this._subcmd = i;
    }

    public void set_uin(long j) {
        this._uin = j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeByteArray(this._body);
        parcel.writeInt(this._type);
        parcel.writeInt(this._subcmd);
        parcel.writeLong(this._uin);
    }
}
