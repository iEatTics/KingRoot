package com.kingroot.kinguser.distribution.base;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import com.kingroot.kinguser.distribution.net.download.AppDownloadRequest;
/* loaded from: classes.dex */
public final class QQPimAppDownloadRequest extends AppDownloadRequest implements Parcelable {
    public static final Parcelable.Creator<QQPimAppDownloadRequest> CREATOR = new Parcelable.Creator<QQPimAppDownloadRequest>() { // from class: com.kingroot.kinguser.distribution.base.QQPimAppDownloadRequest.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: ar */
        public QQPimAppDownloadRequest createFromParcel(Parcel parcel) {
            return new QQPimAppDownloadRequest(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: fO */
        public QQPimAppDownloadRequest[] newArray(int i) {
            return new QQPimAppDownloadRequest[i];
        }
    };
    public String businessStream;
    public String channelId;
    public String cmsCategoryId;
    public String versionName;

    public QQPimAppDownloadRequest() {
        this.cmsCategoryId = "";
        this.businessStream = "";
        this.channelId = "";
        this.versionName = "";
    }

    private QQPimAppDownloadRequest(Parcel parcel) {
        super(parcel);
        this.cmsCategoryId = "";
        this.businessStream = "";
        this.channelId = "";
        this.versionName = "";
        this.cmsCategoryId = parcel.readString();
        this.businessStream = parcel.readString();
        this.channelId = parcel.readString();
        this.versionName = parcel.readString();
    }

    @Override // com.kingroot.kinguser.distribution.net.download.AppDownloadRequest, android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.cmsCategoryId);
        parcel.writeString(this.businessStream);
        parcel.writeString(this.channelId);
        parcel.writeString(this.versionName);
    }
}
