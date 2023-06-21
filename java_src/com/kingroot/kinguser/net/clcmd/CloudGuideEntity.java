package com.kingroot.kinguser.net.clcmd;

import android.content.Intent;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.p007v7.internal.widget.ActivityChooserView;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.InterfaceC3562rr;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class CloudGuideEntity implements Parcelable, InterfaceC3562rr {
    private static final long serialVersionUID = 0;
    public int downloadTime;
    public final String jumpParams;
    public final int jumpType;
    public final int language;
    public long lastDownloadTime;
    public long lastShowTime;
    public final int maxShowTime;
    public final String picDownloadUrl;
    public final int seqNo;
    public final int showPriority;
    public int showTime;
    public final String subTitle;
    public final long taskID;
    public final int timeInterval;
    public final String title;
    private static final SimpleDateFormat aTl = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.getDefault());
    public static final Parcelable.Creator<CloudGuideEntity> CREATOR = new Parcelable.Creator<CloudGuideEntity>() { // from class: com.kingroot.kinguser.net.clcmd.CloudGuideEntity.1
        @Override // android.os.Parcelable.Creator
        /* renamed from: aG */
        public CloudGuideEntity createFromParcel(Parcel parcel) {
            return new CloudGuideEntity(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: gY */
        public CloudGuideEntity[] newArray(int i) {
            return new CloudGuideEntity[i];
        }
    };

    private CloudGuideEntity(Parcel parcel) {
        this.showTime = 0;
        this.downloadTime = 0;
        this.lastShowTime = 0L;
        this.lastDownloadTime = 0L;
        this.language = parcel.readInt();
        this.title = parcel.readString();
        this.subTitle = parcel.readString();
        this.picDownloadUrl = parcel.readString();
        this.jumpType = parcel.readInt();
        this.jumpParams = parcel.readString();
        this.timeInterval = parcel.readInt();
        this.showPriority = parcel.readInt();
        this.maxShowTime = parcel.readInt();
        this.taskID = parcel.readLong();
        this.seqNo = parcel.readInt();
        this.showTime = parcel.readInt();
        this.downloadTime = parcel.readInt();
        this.lastShowTime = parcel.readLong();
        this.lastDownloadTime = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NonNull Parcel parcel, int i) {
        parcel.writeInt(this.language);
        parcel.writeString(this.title);
        parcel.writeString(this.subTitle);
        parcel.writeString(this.picDownloadUrl);
        parcel.writeInt(this.jumpType);
        parcel.writeString(this.jumpParams);
        parcel.writeInt(this.timeInterval);
        parcel.writeInt(this.showPriority);
        parcel.writeInt(this.maxShowTime);
        parcel.writeLong(this.taskID);
        parcel.writeInt(this.seqNo);
        parcel.writeInt(this.showTime);
        parcel.writeInt(this.downloadTime);
        parcel.writeLong(this.lastShowTime);
        parcel.writeLong(this.lastDownloadTime);
    }

    private CloudGuideEntity(long j, int i, List<String> list) {
        this.showTime = 0;
        this.downloadTime = 0;
        this.lastShowTime = 0L;
        this.lastDownloadTime = 0L;
        try {
            this.taskID = j;
            this.seqNo = i;
            this.language = Integer.parseInt(list.get(0));
            this.title = list.get(1);
            this.subTitle = list.get(2);
            this.picDownloadUrl = list.get(3);
            this.jumpType = Integer.parseInt(list.get(4));
            this.jumpParams = list.get(5);
            this.timeInterval = Integer.parseInt(TextUtils.isEmpty(list.get(6)) ? "0" : list.get(6));
            this.showPriority = Integer.parseInt(TextUtils.isEmpty(list.get(7)) ? String.valueOf((int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) : list.get(7));
            this.maxShowTime = Integer.parseInt(TextUtils.isEmpty(list.get(8)) ? String.valueOf((int) ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED) : list.get(8));
        } catch (Throwable th) {
            throw new Exception("Illegal Arguments pas to newInstance(List<String>)");
        }
    }

    public String toString() {
        return "CloudGuideEntity taskID=" + this.taskID + "\n taskID=" + this.taskID + "\n seqNo=" + this.seqNo + "\n language=" + this.language + "\n title=" + this.title + "\n subTitle=" + this.subTitle + "\n picDownloadUrl=" + this.picDownloadUrl + "\n jumpType=" + this.jumpType + "\n jumpParams=" + this.jumpParams + "\n timeInterval=" + this.timeInterval + "\n showPriority=" + this.showPriority + "\n maxShowTime=" + this.maxShowTime + "\n showTime=" + this.showTime + "\n downloadTime=" + this.downloadTime + "\n lastDownloadTime=" + aTl.format(new Date(this.lastDownloadTime)) + "\n lastShowTime=" + aTl.format(new Date(this.lastShowTime)) + "\n ";
    }

    /* renamed from: a */
    public static CloudGuideEntity m2899a(long j, int i, List<String> list) {
        return new CloudGuideEntity(j, i, list);
    }

    /* renamed from: b */
    public static void m2898b(CloudGuideEntity cloudGuideEntity) {
        if (cloudGuideEntity != null && !TextUtils.isEmpty(cloudGuideEntity.jumpParams)) {
            if (cloudGuideEntity.jumpType == 1) {
                m2896jq(cloudGuideEntity.jumpParams);
            } else if (cloudGuideEntity.jumpType == 2) {
                m2897jp(cloudGuideEntity.jumpParams);
            } else if (cloudGuideEntity.jumpType == 3) {
                String[] split = cloudGuideEntity.jumpParams.split("\\|");
                if (split.length == 2 && !m2896jq(split[0])) {
                    m2897jp(split[1]);
                }
            }
        }
    }

    /* renamed from: jp */
    private static void m2897jp(String str) {
        if (!TextUtils.isEmpty(str)) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
            intent.addFlags(268435456);
            KApplication.m13453ge().startActivity(intent);
        }
    }

    /* renamed from: jq */
    private static boolean m2896jq(String str) {
        Intent launchIntentForPackage;
        if (TextUtils.isEmpty(str) || (launchIntentForPackage = C3952zh.m1312pq().getLaunchIntentForPackage(str)) == null) {
            return false;
        }
        launchIntentForPackage.addFlags(268435456);
        KApplication.m13453ge().startActivity(launchIntentForPackage);
        return true;
    }
}
