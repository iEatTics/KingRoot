package oicq.wlogin_sdk.tools;

import android.os.Parcel;
import android.os.Parcelable;
import oicq.wlogin_sdk.tools.InternationMsg;
/* loaded from: classes.dex */
public class ErrMsg implements Parcelable, Cloneable {
    public static final Parcelable.Creator<ErrMsg> CREATOR = new Parcelable.Creator<ErrMsg>() { // from class: oicq.wlogin_sdk.tools.ErrMsg.1
        @Override // android.os.Parcelable.Creator
        public ErrMsg createFromParcel(Parcel parcel) {
            return new ErrMsg(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public ErrMsg[] newArray(int i) {
            return new ErrMsg[i];
        }
    };
    private String message;
    private String otherinfo;
    private String title;
    private int type;

    public ErrMsg() {
        this.type = 0;
        this.title = InternationMsg.m49a(InternationMsg.MSG_TYPE.MSG_0);
        this.message = InternationMsg.m49a(InternationMsg.MSG_TYPE.MSG_1);
        this.otherinfo = "";
    }

    public ErrMsg(int i, String str, String str2, String str3) {
        this.type = i;
        this.title = str;
        this.message = str2;
        this.otherinfo = str3;
    }

    private ErrMsg(Parcel parcel) {
        readFromParcel(parcel);
    }

    public Object clone() {
        return super.clone();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getMessage() {
        return this.message;
    }

    public String getOtherinfo() {
        return this.otherinfo;
    }

    public String getTitle() {
        return this.title;
    }

    public int getType() {
        return this.type;
    }

    public void readFromParcel(Parcel parcel) {
        this.type = parcel.readInt();
        this.title = parcel.readString();
        this.message = parcel.readString();
        this.otherinfo = parcel.readString();
    }

    public void setMessage(String str) {
        this.message = str;
    }

    public void setOtherinfo(String str) {
        this.otherinfo = str;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public void setType(int i) {
        this.type = i;
    }

    public String toString() {
        return ("(" + (this.type < 0 ? Integer.valueOf(this.type) : Integer.toString(this.type)) + ")[") + this.title + "]" + this.message + "[" + this.otherinfo + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.type);
        parcel.writeString(this.title);
        parcel.writeString(this.message);
        parcel.writeString(this.otherinfo);
    }
}
