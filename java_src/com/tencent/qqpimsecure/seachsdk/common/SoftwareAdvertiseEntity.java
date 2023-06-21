package com.tencent.qqpimsecure.seachsdk.common;

import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class SoftwareAdvertiseEntity implements Serializable {
    private static final long serialVersionUID = -156912436582579145L;
    public String apkName;
    public ArrayList<AppInfo> appList;
    public final String backgroundUrl;
    public final String buttonText;
    public int categoryId;
    public String channelId;
    public final String content;
    public final String destinationUrl;
    public final long expireTime;
    public final String iconBigUrl;
    public final String iconUrl;

    /* renamed from: id */
    public final long f4895id;
    public int index;
    public final boolean isAutoRun;
    public boolean isNeedGuide;
    public final boolean isPush;
    public final String jumpParam;
    public final int jumpType;
    public final int modelId;
    public int nextPageIndex;
    public final String packageName;
    public final int priority;
    public String searchKeyWord;
    public long tagId;
    public final String title;
    public final String topicId;
    public final int type;
    public final String viewId;
    public int pageId = -2016;
    public boolean hasNextPage = true;

    public SoftwareAdvertiseEntity(long j, int i, int i2, int i3, String str, String str2, String str3, String str4, String str5, String str6, ArrayList<AppInfo> arrayList, String str7, long j2, int i4, String str8, int i5, String str9, String str10, String str11, boolean z, boolean z2) {
        this.f4895id = j;
        this.modelId = i;
        this.type = i2;
        this.categoryId = i3;
        this.title = str;
        this.content = str2;
        this.buttonText = str3;
        this.iconUrl = str4;
        this.iconBigUrl = str5;
        this.backgroundUrl = str6;
        this.appList = arrayList;
        this.destinationUrl = str7;
        this.expireTime = j2;
        this.priority = i4;
        this.packageName = str8;
        this.jumpType = i5;
        this.jumpParam = str9;
        this.viewId = str10;
        this.topicId = str11;
        this.isPush = z;
        this.isAutoRun = z2;
    }

    public String toString() {
        return "SoftwareAdvertiseEntity [id=" + this.f4895id + ", modelId=" + this.modelId + ", type=" + this.type + ", categoryId=" + this.categoryId + ", title=" + this.title + ", content=" + this.content + ", buttonText=" + this.buttonText + ", iconUrl=" + this.iconUrl + ", iconBigUrl=" + this.iconBigUrl + ", backgroundUrl=" + this.backgroundUrl + ", appList=" + (this.appList == null ? null : Integer.valueOf(this.appList.size())) + ", destinationUrl=" + this.destinationUrl + ", expireTime=" + this.expireTime + ", priority=" + this.priority + ", packageName=" + this.packageName + ", apkName=" + this.apkName + ", jumpType=" + this.jumpType + ", jumpParam=" + this.jumpParam + ", viewId=" + this.viewId + ", topicId=" + this.topicId + ", isPush=" + this.isPush + ", isAutoRun=" + this.isAutoRun + ", isNeedGuide=" + this.isNeedGuide + ", channelId=" + this.channelId + ", index=" + this.index + ", pageId=" + this.pageId + ", hasNextPage=" + this.hasNextPage + ", nextPageIndex=" + this.nextPageIndex + this.tagId + this.searchKeyWord + "]";
    }
}
