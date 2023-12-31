package com.tencent.p020mm.opensdk.modelmsg;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage;
import com.tencent.p020mm.opensdk.utils.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
/* renamed from: com.tencent.mm.opensdk.modelmsg.WXImageObject */
/* loaded from: classes.dex */
public class WXImageObject implements WXMediaMessage.IMediaObject {
    private static final int CONTENT_LENGTH_LIMIT = 26214400;
    private static final int PATH_LENGTH_LIMIT = 10240;
    private static final String TAG = "MicroMsg.SDK.WXImageObject";
    public byte[] imageData;
    public String imagePath;

    public WXImageObject() {
    }

    public WXImageObject(Bitmap bitmap) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 85, byteArrayOutputStream);
            this.imageData = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
        } catch (Exception e) {
            Log.m495e(TAG, "WXImageObject <init>, exception:" + e.getMessage());
        }
    }

    public WXImageObject(byte[] bArr) {
        this.imageData = bArr;
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
        if ((this.imageData == null || this.imageData.length == 0) && (this.imagePath == null || this.imagePath.length() == 0)) {
            Log.m495e(TAG, "checkArgs fail, all arguments are null");
            return false;
        } else if (this.imageData != null && this.imageData.length > CONTENT_LENGTH_LIMIT) {
            Log.m495e(TAG, "checkArgs fail, content is too large");
            return false;
        } else if (this.imagePath != null && this.imagePath.length() > PATH_LENGTH_LIMIT) {
            Log.m495e(TAG, "checkArgs fail, path is invalid");
            return false;
        } else if (this.imagePath == null || getFileSize(this.imagePath) <= CONTENT_LENGTH_LIMIT) {
            return true;
        } else {
            Log.m495e(TAG, "checkArgs fail, image content is too large");
            return false;
        }
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public void serialize(Bundle bundle) {
        bundle.putByteArray("_wximageobject_imageData", this.imageData);
        bundle.putString("_wximageobject_imagePath", this.imagePath);
    }

    public void setImagePath(String str) {
        this.imagePath = str;
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public int type() {
        return 2;
    }

    @Override // com.tencent.p020mm.opensdk.modelmsg.WXMediaMessage.IMediaObject
    public void unserialize(Bundle bundle) {
        this.imageData = bundle.getByteArray("_wximageobject_imageData");
        this.imagePath = bundle.getString("_wximageobject_imagePath");
    }
}
