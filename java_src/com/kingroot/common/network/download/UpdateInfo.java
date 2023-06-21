package com.kingroot.common.network.download;

import android.os.Parcel;
import android.os.Parcelable;
import com.kingroot.common.entity.BaseEntity;
/* loaded from: classes.dex */
public class UpdateInfo extends BaseEntity implements Parcelable {
    public static final Parcelable.Creator<UpdateInfo> CREATOR = new Parcelable.Creator<UpdateInfo>() { // from class: com.kingroot.common.network.download.UpdateInfo.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: p */
        public UpdateInfo createFromParcel(Parcel parcel) {
            return new UpdateInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: bh */
        public UpdateInfo[] newArray(int i) {
            return new UpdateInfo[i];
        }
    };
    private static final long serialVersionUID = 1;
    public String all_check_sum;
    public int buildNum;
    public String checksum;
    public byte[] data;
    public String fileName;
    public int flag;
    public String localName;
    public String message;
    public int record_num;
    public int size;
    public int timestamp;
    public String title;
    public int type;
    public String url;
    public String version;
    public int obtainType = 0;
    public int is_increase_update = 0;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.flag);
        parcel.writeInt(this.type);
        parcel.writeString(this.url);
        parcel.writeString(this.fileName);
        parcel.writeString(this.checksum);
        parcel.writeInt(this.timestamp);
        parcel.writeString(this.title);
        parcel.writeString(this.message);
        parcel.writeString(this.version);
        parcel.writeInt(this.buildNum);
        parcel.writeInt(this.is_increase_update);
        parcel.writeString(this.all_check_sum);
        parcel.writeByteArray(this.data);
        parcel.writeInt(this.record_num);
        parcel.writeInt(this.size);
        parcel.writeString(this.localName);
        parcel.writeInt(this.f776id);
        parcel.writeInt(this.obtainType);
    }

    public UpdateInfo() {
    }

    public UpdateInfo(Parcel parcel) {
        readFromParcel(parcel);
    }

    public void readFromParcel(Parcel parcel) {
        this.flag = parcel.readInt();
        this.type = parcel.readInt();
        this.url = parcel.readString();
        this.fileName = parcel.readString();
        this.checksum = parcel.readString();
        this.timestamp = parcel.readInt();
        this.title = parcel.readString();
        this.message = parcel.readString();
        this.version = parcel.readString();
        this.buildNum = parcel.readInt();
        this.is_increase_update = parcel.readInt();
        this.all_check_sum = parcel.readString();
        this.data = parcel.createByteArray();
        this.record_num = parcel.readInt();
        this.size = parcel.readInt();
        this.localName = parcel.readString();
        this.f776id = parcel.readInt();
        this.obtainType = parcel.readInt();
    }
}
