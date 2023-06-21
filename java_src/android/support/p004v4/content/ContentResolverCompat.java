package android.support.p004v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.support.p004v4.p006os.CancellationSignal;
import android.support.p004v4.p006os.OperationCanceledException;
/* renamed from: android.support.v4.content.ContentResolverCompat */
/* loaded from: classes.dex */
public final class ContentResolverCompat {
    private static final ContentResolverCompatImpl IMPL;

    /* renamed from: android.support.v4.content.ContentResolverCompat$ContentResolverCompatImpl */
    /* loaded from: classes.dex */
    interface ContentResolverCompatImpl {
        Cursor query(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);
    }

    /* renamed from: android.support.v4.content.ContentResolverCompat$ContentResolverCompatImplBase */
    /* loaded from: classes.dex */
    static class ContentResolverCompatImplBase implements ContentResolverCompatImpl {
        ContentResolverCompatImplBase() {
        }

        @Override // android.support.p004v4.content.ContentResolverCompat.ContentResolverCompatImpl
        public Cursor query(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            if (cancellationSignal != null) {
                cancellationSignal.throwIfCanceled();
            }
            return contentResolver.query(uri, strArr, str, strArr2, str2);
        }
    }

    /* renamed from: android.support.v4.content.ContentResolverCompat$ContentResolverCompatImplJB */
    /* loaded from: classes.dex */
    static class ContentResolverCompatImplJB extends ContentResolverCompatImplBase {
        ContentResolverCompatImplJB() {
        }

        @Override // android.support.p004v4.content.ContentResolverCompat.ContentResolverCompatImplBase, android.support.p004v4.content.ContentResolverCompat.ContentResolverCompatImpl
        public Cursor query(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            Object cancellationSignalObject;
            if (cancellationSignal != null) {
                try {
                    cancellationSignalObject = cancellationSignal.getCancellationSignalObject();
                } catch (Exception e) {
                    if (ContentResolverCompatJellybean.isFrameworkOperationCanceledException(e)) {
                        throw new OperationCanceledException();
                    }
                    throw e;
                }
            } else {
                cancellationSignalObject = null;
            }
            return ContentResolverCompatJellybean.query(contentResolver, uri, strArr, str, strArr2, str2, cancellationSignalObject);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            IMPL = new ContentResolverCompatImplJB();
        } else {
            IMPL = new ContentResolverCompatImplBase();
        }
    }

    private ContentResolverCompat() {
    }

    public static Cursor query(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
        return IMPL.query(contentResolver, uri, strArr, str, strArr2, str2, cancellationSignal);
    }
}
