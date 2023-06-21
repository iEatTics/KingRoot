package android.support.p004v4.media;

import android.media.MediaDescription;
import android.net.Uri;
import android.support.p004v4.media.MediaDescriptionCompatApi21;
/* renamed from: android.support.v4.media.MediaDescriptionCompatApi23 */
/* loaded from: classes.dex */
class MediaDescriptionCompatApi23 extends MediaDescriptionCompatApi21 {
    MediaDescriptionCompatApi23() {
    }

    public static Uri getMediaUri(Object obj) {
        return ((MediaDescription) obj).getMediaUri();
    }

    /* renamed from: android.support.v4.media.MediaDescriptionCompatApi23$Builder */
    /* loaded from: classes.dex */
    static class Builder extends MediaDescriptionCompatApi21.Builder {
        Builder() {
        }

        public static void setMediaUri(Object obj, Uri uri) {
            ((MediaDescription.Builder) obj).setMediaUri(uri);
        }
    }
}
