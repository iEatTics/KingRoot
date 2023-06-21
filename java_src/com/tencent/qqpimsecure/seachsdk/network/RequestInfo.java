package com.tencent.qqpimsecure.seachsdk.network;

import com.kingroot.kinguser.buw;
import com.tencent.qqpimsecure.seachsdk.common.BaseEntity;
/* loaded from: classes.dex */
public class RequestInfo extends BaseEntity {
    public int categoryID;
    public int categoryType;
    public int fetchOffset;
    public int fetchSize;
    public String keyWord;
    public String packageName;
    public int sort_type;
    public String time;
    public int type;
    public int pushType = 0;
    public int tabType = -1;
    public long groupId = -1;
    public String queryKeyWord = "";
    public String pkgName = "";
    public long sourceId = 0;
    public long tagId = -1;

    public String aiD() {
        int i = this.sort_type == 0 ? 1 : 0;
        StringBuffer stringBuffer = new StringBuffer();
        switch (this.type) {
            case 1:
                stringBuffer.append("categorytype=").append(this.categoryType);
                break;
            case 8:
                stringBuffer.append("categoryid=").append(this.categoryID).append("&begin=").append(this.fetchOffset).append("&items=").append(this.fetchSize).append("&order=").append(i).append("&qua=").append("AQQSecure_GA_2_0/011201&ADR&" + buw.m5454qa() + "&V2").append("&guid=").append("0").append("&query=").append(this.keyWord);
                break;
            case 22:
                stringBuffer.append("categoryid=").append(this.categoryID).append("&begin=").append(this.fetchOffset).append("&items=").append(this.fetchSize).append("&order=").append(i).append("&pkgname=").append(this.packageName);
                break;
        }
        return stringBuffer.toString();
    }
}
