package android.support.p004v4.text;

import android.os.Build;
import java.util.Locale;
/* renamed from: android.support.v4.text.ICUCompat */
/* loaded from: classes.dex */
public final class ICUCompat {
    private static final ICUCompatImpl IMPL;

    /* renamed from: android.support.v4.text.ICUCompat$ICUCompatImpl */
    /* loaded from: classes.dex */
    interface ICUCompatImpl {
        String maximizeAndGetScript(Locale locale);
    }

    /* renamed from: android.support.v4.text.ICUCompat$ICUCompatImplBase */
    /* loaded from: classes.dex */
    static class ICUCompatImplBase implements ICUCompatImpl {
        ICUCompatImplBase() {
        }

        @Override // android.support.p004v4.text.ICUCompat.ICUCompatImpl
        public String maximizeAndGetScript(Locale locale) {
            return null;
        }
    }

    /* renamed from: android.support.v4.text.ICUCompat$ICUCompatImplIcs */
    /* loaded from: classes.dex */
    static class ICUCompatImplIcs implements ICUCompatImpl {
        ICUCompatImplIcs() {
        }

        @Override // android.support.p004v4.text.ICUCompat.ICUCompatImpl
        public String maximizeAndGetScript(Locale locale) {
            return ICUCompatIcs.maximizeAndGetScript(locale);
        }
    }

    /* renamed from: android.support.v4.text.ICUCompat$ICUCompatImplLollipop */
    /* loaded from: classes.dex */
    static class ICUCompatImplLollipop implements ICUCompatImpl {
        ICUCompatImplLollipop() {
        }

        @Override // android.support.p004v4.text.ICUCompat.ICUCompatImpl
        public String maximizeAndGetScript(Locale locale) {
            return ICUCompatApi23.maximizeAndGetScript(locale);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            IMPL = new ICUCompatImplLollipop();
        } else if (i >= 14) {
            IMPL = new ICUCompatImplIcs();
        } else {
            IMPL = new ICUCompatImplBase();
        }
    }

    public static String maximizeAndGetScript(Locale locale) {
        return IMPL.maximizeAndGetScript(locale);
    }

    private ICUCompat() {
    }
}
