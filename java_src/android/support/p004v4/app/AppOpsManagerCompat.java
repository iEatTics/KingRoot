package android.support.p004v4.app;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
/* renamed from: android.support.v4.app.AppOpsManagerCompat */
/* loaded from: classes.dex */
public final class AppOpsManagerCompat {
    private static final AppOpsManagerImpl IMPL;
    public static final int MODE_ALLOWED = 0;
    public static final int MODE_DEFAULT = 3;
    public static final int MODE_IGNORED = 1;

    /* renamed from: android.support.v4.app.AppOpsManagerCompat$AppOpsManagerImpl */
    /* loaded from: classes.dex */
    static class AppOpsManagerImpl {
        private AppOpsManagerImpl() {
        }

        public String permissionToOp(String str) {
            return null;
        }

        public int noteOp(Context context, String str, int i, String str2) {
            return 1;
        }

        public int noteProxyOp(Context context, String str, String str2) {
            return 1;
        }
    }

    /* renamed from: android.support.v4.app.AppOpsManagerCompat$AppOpsManager23 */
    /* loaded from: classes.dex */
    static class AppOpsManager23 extends AppOpsManagerImpl {
        private AppOpsManager23() {
            super();
        }

        @Override // android.support.p004v4.app.AppOpsManagerCompat.AppOpsManagerImpl
        public String permissionToOp(String str) {
            return AppOpsManagerCompat23.permissionToOp(str);
        }

        @Override // android.support.p004v4.app.AppOpsManagerCompat.AppOpsManagerImpl
        public int noteOp(Context context, String str, int i, String str2) {
            return AppOpsManagerCompat23.noteOp(context, str, i, str2);
        }

        @Override // android.support.p004v4.app.AppOpsManagerCompat.AppOpsManagerImpl
        public int noteProxyOp(Context context, String str, String str2) {
            return AppOpsManagerCompat23.noteProxyOp(context, str, str2);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 23) {
            IMPL = new AppOpsManager23();
        } else {
            IMPL = new AppOpsManagerImpl();
        }
    }

    private AppOpsManagerCompat() {
    }

    public static String permissionToOp(@NonNull String str) {
        return IMPL.permissionToOp(str);
    }

    public static int noteOp(@NonNull Context context, @NonNull String str, int i, @NonNull String str2) {
        return IMPL.noteOp(context, str, i, str2);
    }

    public static int noteProxyOp(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        return IMPL.noteProxyOp(context, str, str2);
    }
}
