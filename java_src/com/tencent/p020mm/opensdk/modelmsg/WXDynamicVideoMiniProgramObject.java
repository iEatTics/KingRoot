package com.tencent.p020mm.opensdk.modelmsg;

import android.os.Bundle;
import com.tencent.p020mm.opensdk.utils.C4178d;
import com.tencent.p020mm.opensdk.utils.Log;
/* renamed from: com.tencent.mm.opensdk.modelmsg.WXDynamicVideoMiniProgramObject */
/* loaded from: classes.dex */
public class WXDynamicVideoMiniProgramObject extends WXMiniProgramObject {
    private static final String TAG = "MicroMsg.SDK.WXDynamicVideoMiniProgramObject";
    public String appThumbUrl;
    public String videoSource;

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMiniProgramObject, com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public boolean checkArgs() {
        if (C4178d.m486b(this.webpageUrl)) {
            Log.m495e(TAG, "webPageUrl is null");
            return false;
        } else if (C4178d.m486b(this.userName)) {
            Log.m495e(TAG, "userName is null");
            return false;
        } else if (this.miniprogramType < 0 || this.miniprogramType > 2) {
            Log.m495e(TAG, "miniprogram type should between MINIPTOGRAM_TYPE_RELEASE and MINIPROGRAM_TYPE_PREVIEW");
            return false;
        } else {
            return true;
        }
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMiniProgramObject, com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public void serialize(Bundle bundle) {
        bundle.putString("_wxminiprogram_webpageurl", this.webpageUrl);
        bundle.putString("_wxminiprogram_username", this.userName);
        bundle.putString("_wxminiprogram_path", this.path);
        bundle.putString("_wxminiprogram_videoSource", this.videoSource);
        bundle.putString("_wxminiprogram_appThumbUrl", this.appThumbUrl);
        bundle.putBoolean("_wxminiprogram_withsharetiket", this.withShareTicket);
        bundle.putInt("_wxminiprogram_type", this.miniprogramType);
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMiniProgramObject, com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public int type() {
        return 46;
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMiniProgramObject, com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public void unserialize(Bundle bundle) {
        this.webpageUrl = bundle.getString("_wxminiprogram_webpageurl");
        this.userName = bundle.getString("_wxminiprogram_username");
        this.path = bundle.getString("_wxminiprogram_path");
        this.videoSource = bundle.getString("_wxminiprogram_videoSource");
        this.appThumbUrl = bundle.getString("_wxminiprogram_appThumbUrl");
        this.withShareTicket = bundle.getBoolean("_wxminiprogram_withsharetiket");
        this.miniprogramType = bundle.getInt("_wxminiprogram_type");
    }
}
