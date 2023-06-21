package android.support.p004v4.print;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.support.p004v4.print.PrintHelperKitkat;
/* renamed from: android.support.v4.print.PrintHelper */
/* loaded from: classes.dex */
public final class PrintHelper {
    public static final int COLOR_MODE_COLOR = 2;
    public static final int COLOR_MODE_MONOCHROME = 1;
    public static final int ORIENTATION_LANDSCAPE = 1;
    public static final int ORIENTATION_PORTRAIT = 2;
    public static final int SCALE_MODE_FILL = 2;
    public static final int SCALE_MODE_FIT = 1;
    PrintHelperVersionImpl mImpl;

    /* renamed from: android.support.v4.print.PrintHelper$OnPrintFinishCallback */
    /* loaded from: classes.dex */
    public interface OnPrintFinishCallback {
        void onFinish();
    }

    /* renamed from: android.support.v4.print.PrintHelper$PrintHelperVersionImpl */
    /* loaded from: classes.dex */
    interface PrintHelperVersionImpl {
        int getColorMode();

        int getOrientation();

        int getScaleMode();

        void printBitmap(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback);

        void printBitmap(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback);

        void setColorMode(int i);

        void setOrientation(int i);

        void setScaleMode(int i);
    }

    public static boolean systemSupportsPrint() {
        return Build.VERSION.SDK_INT >= 19;
    }

    /* renamed from: android.support.v4.print.PrintHelper$PrintHelperStubImpl */
    /* loaded from: classes.dex */
    static final class PrintHelperStubImpl implements PrintHelperVersionImpl {
        int mColorMode;
        int mOrientation;
        int mScaleMode;

        private PrintHelperStubImpl() {
            this.mScaleMode = 2;
            this.mColorMode = 2;
            this.mOrientation = 1;
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public void setScaleMode(int i) {
            this.mScaleMode = i;
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public int getColorMode() {
            return this.mColorMode;
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public void setColorMode(int i) {
            this.mColorMode = i;
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public void setOrientation(int i) {
            this.mOrientation = i;
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public int getOrientation() {
            return this.mOrientation;
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public int getScaleMode() {
            return this.mScaleMode;
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public void printBitmap(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public void printBitmap(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) {
        }
    }

    /* renamed from: android.support.v4.print.PrintHelper$PrintHelperImpl */
    /* loaded from: classes.dex */
    static class PrintHelperImpl<RealHelper extends PrintHelperKitkat> implements PrintHelperVersionImpl {
        private final RealHelper mPrintHelper;

        protected PrintHelperImpl(RealHelper realhelper) {
            this.mPrintHelper = realhelper;
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public void setScaleMode(int i) {
            this.mPrintHelper.setScaleMode(i);
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public int getScaleMode() {
            return this.mPrintHelper.getScaleMode();
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public void setColorMode(int i) {
            this.mPrintHelper.setColorMode(i);
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public int getColorMode() {
            return this.mPrintHelper.getColorMode();
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public void setOrientation(int i) {
            this.mPrintHelper.setOrientation(i);
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public int getOrientation() {
            return this.mPrintHelper.getOrientation();
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public void printBitmap(String str, Bitmap bitmap, final OnPrintFinishCallback onPrintFinishCallback) {
            PrintHelperKitkat.OnPrintFinishCallback onPrintFinishCallback2 = null;
            if (onPrintFinishCallback != null) {
                onPrintFinishCallback2 = new PrintHelperKitkat.OnPrintFinishCallback() { // from class: android.support.v4.print.PrintHelper.PrintHelperImpl.1
                    @Override // android.support.p004v4.print.PrintHelperKitkat.OnPrintFinishCallback
                    public void onFinish() {
                        onPrintFinishCallback.onFinish();
                    }
                };
            }
            this.mPrintHelper.printBitmap(str, bitmap, onPrintFinishCallback2);
        }

        @Override // android.support.p004v4.print.PrintHelper.PrintHelperVersionImpl
        public void printBitmap(String str, Uri uri, final OnPrintFinishCallback onPrintFinishCallback) {
            PrintHelperKitkat.OnPrintFinishCallback onPrintFinishCallback2 = null;
            if (onPrintFinishCallback != null) {
                onPrintFinishCallback2 = new PrintHelperKitkat.OnPrintFinishCallback() { // from class: android.support.v4.print.PrintHelper.PrintHelperImpl.2
                    @Override // android.support.p004v4.print.PrintHelperKitkat.OnPrintFinishCallback
                    public void onFinish() {
                        onPrintFinishCallback.onFinish();
                    }
                };
            }
            this.mPrintHelper.printBitmap(str, uri, onPrintFinishCallback2);
        }
    }

    /* renamed from: android.support.v4.print.PrintHelper$PrintHelperKitkatImpl */
    /* loaded from: classes.dex */
    static final class PrintHelperKitkatImpl extends PrintHelperImpl<PrintHelperKitkat> {
        PrintHelperKitkatImpl(Context context) {
            super(new PrintHelperKitkat(context));
        }
    }

    /* renamed from: android.support.v4.print.PrintHelper$PrintHelperApi20Impl */
    /* loaded from: classes.dex */
    static final class PrintHelperApi20Impl extends PrintHelperImpl<PrintHelperApi20> {
        PrintHelperApi20Impl(Context context) {
            super(new PrintHelperApi20(context));
        }
    }

    /* renamed from: android.support.v4.print.PrintHelper$PrintHelperApi23Impl */
    /* loaded from: classes.dex */
    static final class PrintHelperApi23Impl extends PrintHelperImpl<PrintHelperApi23> {
        PrintHelperApi23Impl(Context context) {
            super(new PrintHelperApi23(context));
        }
    }

    /* renamed from: android.support.v4.print.PrintHelper$PrintHelperApi24Impl */
    /* loaded from: classes.dex */
    static final class PrintHelperApi24Impl extends PrintHelperImpl<PrintHelperApi24> {
        PrintHelperApi24Impl(Context context) {
            super(new PrintHelperApi24(context));
        }
    }

    public PrintHelper(Context context) {
        if (systemSupportsPrint()) {
            if (Build.VERSION.SDK_INT >= 24) {
                this.mImpl = new PrintHelperApi24Impl(context);
                return;
            } else if (Build.VERSION.SDK_INT >= 23) {
                this.mImpl = new PrintHelperApi23Impl(context);
                return;
            } else if (Build.VERSION.SDK_INT >= 20) {
                this.mImpl = new PrintHelperApi20Impl(context);
                return;
            } else {
                this.mImpl = new PrintHelperKitkatImpl(context);
                return;
            }
        }
        this.mImpl = new PrintHelperStubImpl();
    }

    public void setScaleMode(int i) {
        this.mImpl.setScaleMode(i);
    }

    public int getScaleMode() {
        return this.mImpl.getScaleMode();
    }

    public void setColorMode(int i) {
        this.mImpl.setColorMode(i);
    }

    public int getColorMode() {
        return this.mImpl.getColorMode();
    }

    public void setOrientation(int i) {
        this.mImpl.setOrientation(i);
    }

    public int getOrientation() {
        return this.mImpl.getOrientation();
    }

    public void printBitmap(String str, Bitmap bitmap) {
        this.mImpl.printBitmap(str, bitmap, (OnPrintFinishCallback) null);
    }

    public void printBitmap(String str, Bitmap bitmap, OnPrintFinishCallback onPrintFinishCallback) {
        this.mImpl.printBitmap(str, bitmap, onPrintFinishCallback);
    }

    public void printBitmap(String str, Uri uri) {
        this.mImpl.printBitmap(str, uri, (OnPrintFinishCallback) null);
    }

    public void printBitmap(String str, Uri uri, OnPrintFinishCallback onPrintFinishCallback) {
        this.mImpl.printBitmap(str, uri, onPrintFinishCallback);
    }
}
