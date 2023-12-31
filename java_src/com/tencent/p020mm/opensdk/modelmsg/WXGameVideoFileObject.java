package com.tencent.p020mm.opensdk.modelmsg;

import android.os.Bundle;
import com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage;
import com.tencent.p020mm.opensdk.utils.Log;
import java.io.File;
/* renamed from: com.tencent.mm.opensdk.modelmsg.WXGameVideoFileObject */
/* loaded from: classes.dex */
public class WXGameVideoFileObject implements WXMediaMessage.IMediaObject {
    private static final int FILE_SIZE_LIMIT = 10485760;
    private static final String TAG = "MicroMsg.SDK.WXGameVideoFileObject";
    private static final int URL_LENGTH_LIMIT = 10240;
    public String filePath;
    public String thumbUrl;
    public String videoUrl;

    public WXGameVideoFileObject() {
        this.filePath = null;
        this.videoUrl = null;
        this.thumbUrl = null;
    }

    public WXGameVideoFileObject(String str, String str2, String str3) {
        this.filePath = str;
        this.videoUrl = str2;
        this.thumbUrl = str3;
    }

    private int getFileSize(String str) {
        if (str == null || str.length() == 0) {
            return 0;
        }
        File file = new File(str);
        if (file.exists()) {
            return (int) file.length();
        }
        return 0;
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public boolean checkArgs() {
        if (this.filePath == null || this.filePath.length() == 0) {
            Log.m495e(TAG, "checkArgs fail, filePath is null");
            return false;
        } else if (getFileSize(this.filePath) > FILE_SIZE_LIMIT) {
            Log.m495e(TAG, "checkArgs fail, video file size is too large");
            return false;
        } else if (this.videoUrl != null && this.videoUrl.length() > URL_LENGTH_LIMIT) {
            Log.m495e(TAG, "checkArgs fail, videoUrl is too long");
            return false;
        } else if (this.thumbUrl == null || this.thumbUrl.length() <= URL_LENGTH_LIMIT) {
            return true;
        } else {
            Log.m495e(TAG, "checkArgs fail, thumbUrl is too long");
            return false;
        }
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public void serialize(Bundle bundle) {
        bundle.putString("_wxvideofileobject_filePath", this.filePath);
        bundle.putString("_wxvideofileobject_cdnUrl", this.videoUrl);
        bundle.putString("_wxvideofileobject_thumbUrl", this.thumbUrl);
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public int type() {
        return 39;
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public void unserialize(Bundle bundle) {
        this.filePath = bundle.getString("_wxvideofileobject_filePath");
        this.videoUrl = bundle.getString("_wxvideofileobject_cdnUrl");
        this.thumbUrl = bundle.getString("_wxvideofileobject_thumbUrl");
    }
}
