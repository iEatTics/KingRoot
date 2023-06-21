package com.tencent.qqpimsecure.seachsdk.network;

import com.tencent.qqpimsecure.seachsdk.common.BaseEntity;
/* loaded from: classes.dex */
public class ResponseInfo extends BaseEntity {
    public int code;
    public ServerInfo serverInfo;
    public String tips;
    public int type;
    public int softupdate_tips = 1;
    public boolean hasNextPage = false;
    public int nextBeginPos = 0;
    public long categoryId = 0;
    public long groupId = -1;
}
