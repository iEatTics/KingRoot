package com.tencent.p020mm.opensdk.modelmsg;

import android.os.Bundle;
import com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage;
import com.tencent.p020mm.opensdk.utils.Log;
/* renamed from: com.tencent.mm.opensdk.modelmsg.WXEnterpriseCardObject */
/* loaded from: classes.dex */
public class WXEnterpriseCardObject implements WXMediaMessage.IMediaObject {
    private static final int LENGTH_LIMIT = 10240;
    private static final String TAG = "MicroMsg.SDK.WXEnterpriseCardObject";
    public String cardInfo;
    public int msgType;

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public boolean checkArgs() {
        if (this.cardInfo == null || this.cardInfo.length() == 0) {
            Log.m495e(TAG, "checkArgs fail, cardInfo is invalid");
            return false;
        }
        return true;
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public void serialize(Bundle bundle) {
        bundle.putInt("_wxenterprisecard_msgtype", this.msgType);
        bundle.putString("_wxenterprisecard_cardinfo", this.cardInfo);
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public int type() {
        return 45;
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public void unserialize(Bundle bundle) {
        this.msgType = bundle.getInt("_wxenterprisecard_msgtype");
        this.cardInfo = bundle.getString("_wxenterprisecard_cardinfo");
    }
}
