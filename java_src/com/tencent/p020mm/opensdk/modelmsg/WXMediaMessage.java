package com.tencent.p020mm.opensdk.modelmsg;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.tencent.p020mm.opensdk.utils.C4178d;
import com.tencent.p020mm.opensdk.utils.Log;
import java.io.ByteArrayOutputStream;
/* renamed from: com.tencent.mm.opensdk.modelmsg.WXMediaMessage */
/* loaded from: classes.dex */
public final class WXMediaMessage {
    public static final String ACTION_WXAPPMESSAGE = "com.tencent.mm.sdk.openapi.Intent.ACTION_WXAPPMESSAGE";
    public static final int DESCRIPTION_LENGTH_LIMIT = 1024;
    public static final int MEDIA_TAG_NAME_LENGTH_LIMIT = 64;
    public static final int MESSAGE_ACTION_LENGTH_LIMIT = 2048;
    public static final int MESSAGE_EXT_LENGTH_LIMIT = 2048;
    public static final int MINI_PROGRAM__THUMB_LENGHT = 131072;
    private static final String TAG = "MicroMsg.SDK.WXMediaMessage";
    public static final int THUMB_LENGTH_LIMIT = 65536;
    public static final int TITLE_LENGTH_LIMIT = 512;
    public String description;
    public IMediaObject mediaObject;
    public String mediaTagName;
    public String messageAction;
    public String messageExt;
    public int sdkVer;
    public byte[] thumbData;
    public String title;

    /* renamed from: com.tencent.mm.opensdk.modelmsg.WXMediaMessage$Builder */
    /* loaded from: classes.dex */
    public static class Builder {
        public static final String KEY_IDENTIFIER = "_wxobject_identifier_";

        public static WXMediaMessage fromBundle(Bundle bundle) {
            WXMediaMessage wXMediaMessage = new WXMediaMessage();
            wXMediaMessage.sdkVer = bundle.getInt("_wxobject_sdkVer");
            wXMediaMessage.title = bundle.getString("_wxobject_title");
            wXMediaMessage.description = bundle.getString("_wxobject_description");
            wXMediaMessage.thumbData = bundle.getByteArray("_wxobject_thumbdata");
            wXMediaMessage.mediaTagName = bundle.getString("_wxobject_mediatagname");
            wXMediaMessage.messageAction = bundle.getString("_wxobject_message_action");
            wXMediaMessage.messageExt = bundle.getString("_wxobject_message_ext");
            String pathOldToNew = pathOldToNew(bundle.getString(KEY_IDENTIFIER));
            if (pathOldToNew == null || pathOldToNew.length() <= 0) {
                return wXMediaMessage;
            }
            try {
                wXMediaMessage.mediaObject = (IMediaObject) Class.forName(pathOldToNew).newInstance();
                wXMediaMessage.mediaObject.unserialize(bundle);
                return wXMediaMessage;
            } catch (Exception e) {
                Log.m495e(WXMediaMessage.TAG, "get media object from bundle failed: unknown ident " + pathOldToNew + ", ex = " + e.getMessage());
                return wXMediaMessage;
            }
        }

        private static String pathNewToOld(String str) {
            if (str == null || str.length() == 0) {
                Log.m495e(WXMediaMessage.TAG, "pathNewToOld fail, newPath is null");
                return str;
            }
            return str.replace("com.tencent.mm.opensdk.modelmsg", "com.tencent.mm.sdk.openapi");
        }

        private static String pathOldToNew(String str) {
            Log.m494i(WXMediaMessage.TAG, "pathOldToNew, oldPath = " + str);
            if (str == null || str.length() == 0) {
                Log.m495e(WXMediaMessage.TAG, "pathOldToNew fail, oldPath is null");
                return str;
            }
            int lastIndexOf = str.lastIndexOf(46);
            if (lastIndexOf == -1) {
                Log.m495e(WXMediaMessage.TAG, "pathOldToNew fail, invalid pos, oldPath = " + str);
                return str;
            }
            return "com.tencent.mm.opensdk.modelmsg" + str.substring(lastIndexOf);
        }

        public static Bundle toBundle(WXMediaMessage wXMediaMessage) {
            Bundle bundle = new Bundle();
            bundle.putInt("_wxobject_sdkVer", wXMediaMessage.sdkVer);
            bundle.putString("_wxobject_title", wXMediaMessage.title);
            bundle.putString("_wxobject_description", wXMediaMessage.description);
            bundle.putByteArray("_wxobject_thumbdata", wXMediaMessage.thumbData);
            if (wXMediaMessage.mediaObject != null) {
                bundle.putString(KEY_IDENTIFIER, pathNewToOld(wXMediaMessage.mediaObject.getClass().getName()));
                wXMediaMessage.mediaObject.serialize(bundle);
            }
            bundle.putString("_wxobject_mediatagname", wXMediaMessage.mediaTagName);
            bundle.putString("_wxobject_message_action", wXMediaMessage.messageAction);
            bundle.putString("_wxobject_message_ext", wXMediaMessage.messageExt);
            return bundle;
        }
    }

    /* renamed from: com.tencent.mm.opensdk.modelmsg.WXMediaMessage$IMediaObject */
    /* loaded from: classes.dex */
    public interface IMediaObject {
        public static final int TYPE_APPBRAND = 33;
        public static final int TYPE_APPDATA = 7;
        public static final int TYPE_BUSINESS_CARD = 45;
        public static final int TYPE_CARD_SHARE = 16;
        public static final int TYPE_DESIGNER_SHARED = 25;
        public static final int TYPE_DEVICE_ACCESS = 12;
        public static final int TYPE_EMOJI = 8;
        public static final int TYPE_EMOJILIST_SHARED = 27;
        public static final int TYPE_EMOTICON_GIFT = 11;
        public static final int TYPE_EMOTICON_SHARED = 15;
        public static final int TYPE_EMOTIONLIST_SHARED = 26;
        public static final int TYPE_FILE = 6;
        public static final int TYPE_GAME_VIDEO_FILE = 39;
        public static final int TYPE_GIFTCARD = 34;
        public static final int TYPE_IMAGE = 2;
        public static final int TYPE_LOCATION = 30;
        public static final int TYPE_LOCATION_SHARE = 17;
        public static final int TYPE_MALL_PRODUCT = 13;
        public static final int TYPE_MUSIC = 3;
        public static final int TYPE_NOTE = 24;
        public static final int TYPE_OLD_TV = 14;
        public static final int TYPE_OPENSDK_APPBRAND = 36;
        public static final int TYPE_OPENSDK_APPBRAND_WEISHIVIDEO = 46;
        public static final int TYPE_PRODUCT = 10;
        public static final int TYPE_RECORD = 19;
        public static final int TYPE_TEXT = 1;
        public static final int TYPE_TV = 20;
        public static final int TYPE_UNKNOWN = 0;
        public static final int TYPE_URL = 5;
        public static final int TYPE_VIDEO = 4;
        public static final int TYPE_VIDEO_FILE = 38;

        boolean checkArgs();

        void serialize(Bundle bundle);

        int type();

        void unserialize(Bundle bundle);
    }

    public WXMediaMessage() {
        this(null);
    }

    public WXMediaMessage(IMediaObject iMediaObject) {
        this.mediaObject = iMediaObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean checkArgs() {
        if (getType() == 8 && (this.thumbData == null || this.thumbData.length == 0)) {
            Log.m495e(TAG, "checkArgs fail, thumbData should not be null when send emoji");
            return false;
        } else if (C4178d.m487a(getType()) && (this.thumbData == null || this.thumbData.length > 131072)) {
            Log.m495e(TAG, "checkArgs fail, thumbData should not be null or exceed 128kb");
            return false;
        } else if (!C4178d.m487a(getType()) && this.thumbData != null && this.thumbData.length > 65536) {
            Log.m495e(TAG, "checkArgs fail, thumbData is invalid");
            return false;
        } else if (this.title != null && this.title.length() > 512) {
            Log.m495e(TAG, "checkArgs fail, title is invalid");
            return false;
        } else if (this.description != null && this.description.length() > 1024) {
            Log.m495e(TAG, "checkArgs fail, description is invalid");
            return false;
        } else if (this.mediaObject == null) {
            Log.m495e(TAG, "checkArgs fail, mediaObject is null");
            return false;
        } else if (this.mediaTagName != null && this.mediaTagName.length() > 64) {
            Log.m495e(TAG, "checkArgs fail, mediaTagName is too long");
            return false;
        } else if (this.messageAction != null && this.messageAction.length() > 2048) {
            Log.m495e(TAG, "checkArgs fail, messageAction is too long");
            return false;
        } else if (this.messageExt == null || this.messageExt.length() <= 2048) {
            return this.mediaObject.checkArgs();
        } else {
            Log.m495e(TAG, "checkArgs fail, messageExt is too long");
            return false;
        }
    }

    public final int getType() {
        if (this.mediaObject == null) {
            return 0;
        }
        return this.mediaObject.type();
    }

    public final void setThumbImage(Bitmap bitmap) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.JPEG, 85, byteArrayOutputStream);
            this.thumbData = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
        } catch (Exception e) {
            Log.m495e(TAG, "setThumbImage exception:" + e.getMessage());
        }
    }
}
