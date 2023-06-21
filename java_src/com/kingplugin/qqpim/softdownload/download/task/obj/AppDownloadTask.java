package com.kingplugin.qqpim.softdownload.download.task.obj;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes.dex */
public class AppDownloadTask implements Parcelable {
    public static final Parcelable.Creator<AppDownloadTask> CREATOR = new Parcelable.Creator<AppDownloadTask>() { // from class: com.kingplugin.qqpim.softdownload.download.task.obj.AppDownloadTask.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppDownloadTask createFromParcel(Parcel parcel) {
            return new AppDownloadTask(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AppDownloadTask[] newArray(int i) {
            return new AppDownloadTask[i];
        }
    };
    public List<String> allRetryUrl;
    public String appName;
    public String businessStream;
    public String channelId;
    public String cmsCategoryId;
    public long currentSize;
    public int errorCode;
    public String exception;
    public String fileMd5;
    public String fileName;
    public long fileSize;
    public String orignalUrl;
    public String packageName;
    public int progress;
    public String savePath;
    public TaskStatus state;
    public String uniqueKey;
    public String url;
    public int versionCode;
    public String versionName;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.packageName);
        parcel.writeString(this.appName);
        parcel.writeString(this.versionName);
        parcel.writeInt(this.versionCode);
        parcel.writeString(this.fileMd5);
        parcel.writeString(this.uniqueKey);
        parcel.writeString(this.fileName);
        parcel.writeString(this.orignalUrl);
        parcel.writeString(this.url);
        parcel.writeString(this.savePath);
        parcel.writeLong(this.fileSize);
        parcel.writeLong(this.currentSize);
        parcel.writeInt(this.progress);
        parcel.writeInt(this.state == null ? -1 : this.state.ordinal());
        parcel.writeInt(this.errorCode);
        parcel.writeString(this.exception);
        parcel.writeStringList(this.allRetryUrl);
        parcel.writeString(this.cmsCategoryId);
        parcel.writeString(this.businessStream);
        parcel.writeString(this.channelId);
    }

    public AppDownloadTask() {
        this.packageName = "";
        this.appName = "";
        this.versionName = "";
        this.fileMd5 = null;
        this.uniqueKey = "";
        this.fileName = "";
        this.orignalUrl = "";
        this.url = "";
        this.savePath = "";
        this.state = TaskStatus.PENDING;
        this.exception = "";
        this.cmsCategoryId = "";
        this.businessStream = "";
        this.channelId = "";
    }

    protected AppDownloadTask(Parcel parcel) {
        this.packageName = "";
        this.appName = "";
        this.versionName = "";
        this.fileMd5 = null;
        this.uniqueKey = "";
        this.fileName = "";
        this.orignalUrl = "";
        this.url = "";
        this.savePath = "";
        this.state = TaskStatus.PENDING;
        this.exception = "";
        this.cmsCategoryId = "";
        this.businessStream = "";
        this.channelId = "";
        this.packageName = parcel.readString();
        this.appName = parcel.readString();
        this.versionName = parcel.readString();
        this.versionCode = parcel.readInt();
        this.fileMd5 = parcel.readString();
        this.uniqueKey = parcel.readString();
        this.fileName = parcel.readString();
        this.orignalUrl = parcel.readString();
        this.url = parcel.readString();
        this.savePath = parcel.readString();
        this.fileSize = parcel.readLong();
        this.currentSize = parcel.readLong();
        this.progress = parcel.readInt();
        int readInt = parcel.readInt();
        this.state = readInt != -1 ? TaskStatus.values()[readInt] : null;
        this.errorCode = parcel.readInt();
        this.exception = parcel.readString();
        this.allRetryUrl = parcel.createStringArrayList();
        this.cmsCategoryId = parcel.readString();
        this.businessStream = parcel.readString();
        this.channelId = parcel.readString();
    }
}
