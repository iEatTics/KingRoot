package android.support.p004v4.content;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Build;
/* renamed from: android.support.v4.content.IntentCompat */
/* loaded from: classes.dex */
public final class IntentCompat {
    public static final String ACTION_EXTERNAL_APPLICATIONS_AVAILABLE = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE";
    public static final String ACTION_EXTERNAL_APPLICATIONS_UNAVAILABLE = "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE";
    public static final String CATEGORY_LEANBACK_LAUNCHER = "android.intent.category.LEANBACK_LAUNCHER";
    public static final String EXTRA_CHANGED_PACKAGE_LIST = "android.intent.extra.changed_package_list";
    public static final String EXTRA_CHANGED_UID_LIST = "android.intent.extra.changed_uid_list";
    public static final String EXTRA_HTML_TEXT = "android.intent.extra.HTML_TEXT";
    public static final int FLAG_ACTIVITY_CLEAR_TASK = 32768;
    public static final int FLAG_ACTIVITY_TASK_ON_HOME = 16384;
    private static final IntentCompatImpl IMPL;

    /* renamed from: android.support.v4.content.IntentCompat$IntentCompatImpl */
    /* loaded from: classes.dex */
    interface IntentCompatImpl {
        Intent makeMainActivity(ComponentName componentName);

        Intent makeMainSelectorActivity(String str, String str2);

        Intent makeRestartActivityTask(ComponentName componentName);
    }

    /* renamed from: android.support.v4.content.IntentCompat$IntentCompatImplBase */
    /* loaded from: classes.dex */
    static class IntentCompatImplBase implements IntentCompatImpl {
        IntentCompatImplBase() {
        }

        @Override // android.support.p004v4.content.IntentCompat.IntentCompatImpl
        public Intent makeMainActivity(ComponentName componentName) {
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.setComponent(componentName);
            intent.addCategory("android.intent.category.LAUNCHER");
            return intent;
        }

        @Override // android.support.p004v4.content.IntentCompat.IntentCompatImpl
        public Intent makeMainSelectorActivity(String str, String str2) {
            Intent intent = new Intent(str);
            intent.addCategory(str2);
            return intent;
        }

        @Override // android.support.p004v4.content.IntentCompat.IntentCompatImpl
        public Intent makeRestartActivityTask(ComponentName componentName) {
            Intent makeMainActivity = makeMainActivity(componentName);
            makeMainActivity.addFlags(268468224);
            return makeMainActivity;
        }
    }

    /* renamed from: android.support.v4.content.IntentCompat$IntentCompatImplHC */
    /* loaded from: classes.dex */
    static class IntentCompatImplHC extends IntentCompatImplBase {
        IntentCompatImplHC() {
        }

        @Override // android.support.p004v4.content.IntentCompat.IntentCompatImplBase, android.support.p004v4.content.IntentCompat.IntentCompatImpl
        public Intent makeMainActivity(ComponentName componentName) {
            return IntentCompatHoneycomb.makeMainActivity(componentName);
        }

        @Override // android.support.p004v4.content.IntentCompat.IntentCompatImplBase, android.support.p004v4.content.IntentCompat.IntentCompatImpl
        public Intent makeRestartActivityTask(ComponentName componentName) {
            return IntentCompatHoneycomb.makeRestartActivityTask(componentName);
        }
    }

    /* renamed from: android.support.v4.content.IntentCompat$IntentCompatImplIcsMr1 */
    /* loaded from: classes.dex */
    static class IntentCompatImplIcsMr1 extends IntentCompatImplHC {
        IntentCompatImplIcsMr1() {
        }

        @Override // android.support.p004v4.content.IntentCompat.IntentCompatImplBase, android.support.p004v4.content.IntentCompat.IntentCompatImpl
        public Intent makeMainSelectorActivity(String str, String str2) {
            return IntentCompatIcsMr1.makeMainSelectorActivity(str, str2);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 15) {
            IMPL = new IntentCompatImplIcsMr1();
        } else if (i >= 11) {
            IMPL = new IntentCompatImplHC();
        } else {
            IMPL = new IntentCompatImplBase();
        }
    }

    private IntentCompat() {
    }

    public static Intent makeMainActivity(ComponentName componentName) {
        return IMPL.makeMainActivity(componentName);
    }

    public static Intent makeMainSelectorActivity(String str, String str2) {
        return IMPL.makeMainSelectorActivity(str, str2);
    }

    public static Intent makeRestartActivityTask(ComponentName componentName) {
        return IMPL.makeRestartActivityTask(componentName);
    }
}
