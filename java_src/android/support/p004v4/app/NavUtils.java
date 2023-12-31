package android.support.p004v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.support.annotation.Nullable;
import android.support.p004v4.content.IntentCompat;
import android.util.Log;
import oicq.wlogin_sdk.request.WtloginHelper;
/* renamed from: android.support.v4.app.NavUtils */
/* loaded from: classes.dex */
public final class NavUtils {
    private static final NavUtilsImpl IMPL;
    public static final String PARENT_ACTIVITY = "android.support.PARENT_ACTIVITY";
    private static final String TAG = "NavUtils";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.app.NavUtils$NavUtilsImpl */
    /* loaded from: classes.dex */
    public interface NavUtilsImpl {
        Intent getParentActivityIntent(Activity activity);

        String getParentActivityName(Context context, ActivityInfo activityInfo);

        void navigateUpTo(Activity activity, Intent intent);

        boolean shouldUpRecreateTask(Activity activity, Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.app.NavUtils$NavUtilsImplBase */
    /* loaded from: classes.dex */
    public static class NavUtilsImplBase implements NavUtilsImpl {
        NavUtilsImplBase() {
        }

        @Override // android.support.p004v4.app.NavUtils.NavUtilsImpl
        public Intent getParentActivityIntent(Activity activity) {
            Intent intent = null;
            String parentActivityName = NavUtils.getParentActivityName(activity);
            if (parentActivityName != null) {
                ComponentName componentName = new ComponentName(activity, parentActivityName);
                try {
                    if (NavUtils.getParentActivityName(activity, componentName) == null) {
                        intent = IntentCompat.makeMainActivity(componentName);
                    } else {
                        intent = new Intent().setComponent(componentName);
                    }
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e(NavUtils.TAG, "getParentActivityIntent: bad parentActivityName '" + parentActivityName + "' in manifest");
                }
            }
            return intent;
        }

        @Override // android.support.p004v4.app.NavUtils.NavUtilsImpl
        public boolean shouldUpRecreateTask(Activity activity, Intent intent) {
            String action = activity.getIntent().getAction();
            return (action == null || action.equals("android.intent.action.MAIN")) ? false : true;
        }

        @Override // android.support.p004v4.app.NavUtils.NavUtilsImpl
        public void navigateUpTo(Activity activity, Intent intent) {
            intent.addFlags(WtloginHelper.SigType.WLOGIN_QRPUSH);
            activity.startActivity(intent);
            activity.finish();
        }

        @Override // android.support.p004v4.app.NavUtils.NavUtilsImpl
        public String getParentActivityName(Context context, ActivityInfo activityInfo) {
            String string;
            if (activityInfo.metaData != null && (string = activityInfo.metaData.getString(NavUtils.PARENT_ACTIVITY)) != null) {
                if (string.charAt(0) == '.') {
                    return context.getPackageName() + string;
                }
                return string;
            }
            return null;
        }
    }

    /* renamed from: android.support.v4.app.NavUtils$NavUtilsImplJB */
    /* loaded from: classes.dex */
    static class NavUtilsImplJB extends NavUtilsImplBase {
        NavUtilsImplJB() {
        }

        @Override // android.support.p004v4.app.NavUtils.NavUtilsImplBase, android.support.p004v4.app.NavUtils.NavUtilsImpl
        public Intent getParentActivityIntent(Activity activity) {
            Intent parentActivityIntent = NavUtilsJB.getParentActivityIntent(activity);
            if (parentActivityIntent == null) {
                return superGetParentActivityIntent(activity);
            }
            return parentActivityIntent;
        }

        Intent superGetParentActivityIntent(Activity activity) {
            return super.getParentActivityIntent(activity);
        }

        @Override // android.support.p004v4.app.NavUtils.NavUtilsImplBase, android.support.p004v4.app.NavUtils.NavUtilsImpl
        public boolean shouldUpRecreateTask(Activity activity, Intent intent) {
            return NavUtilsJB.shouldUpRecreateTask(activity, intent);
        }

        @Override // android.support.p004v4.app.NavUtils.NavUtilsImplBase, android.support.p004v4.app.NavUtils.NavUtilsImpl
        public void navigateUpTo(Activity activity, Intent intent) {
            NavUtilsJB.navigateUpTo(activity, intent);
        }

        @Override // android.support.p004v4.app.NavUtils.NavUtilsImplBase, android.support.p004v4.app.NavUtils.NavUtilsImpl
        public String getParentActivityName(Context context, ActivityInfo activityInfo) {
            String parentActivityName = NavUtilsJB.getParentActivityName(activityInfo);
            if (parentActivityName == null) {
                return super.getParentActivityName(context, activityInfo);
            }
            return parentActivityName;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 16) {
            IMPL = new NavUtilsImplJB();
        } else {
            IMPL = new NavUtilsImplBase();
        }
    }

    public static boolean shouldUpRecreateTask(Activity activity, Intent intent) {
        return IMPL.shouldUpRecreateTask(activity, intent);
    }

    public static void navigateUpFromSameTask(Activity activity) {
        Intent parentActivityIntent = getParentActivityIntent(activity);
        if (parentActivityIntent == null) {
            throw new IllegalArgumentException("Activity " + activity.getClass().getSimpleName() + " does not have a parent activity name specified. (Did you forget to add the android.support.PARENT_ACTIVITY <meta-data>  element in your manifest?)");
        }
        navigateUpTo(activity, parentActivityIntent);
    }

    public static void navigateUpTo(Activity activity, Intent intent) {
        IMPL.navigateUpTo(activity, intent);
    }

    public static Intent getParentActivityIntent(Activity activity) {
        return IMPL.getParentActivityIntent(activity);
    }

    public static Intent getParentActivityIntent(Context context, Class<?> cls) {
        String parentActivityName = getParentActivityName(context, new ComponentName(context, cls));
        if (parentActivityName == null) {
            return null;
        }
        ComponentName componentName = new ComponentName(context, parentActivityName);
        if (getParentActivityName(context, componentName) == null) {
            return IntentCompat.makeMainActivity(componentName);
        }
        return new Intent().setComponent(componentName);
    }

    public static Intent getParentActivityIntent(Context context, ComponentName componentName) {
        String parentActivityName = getParentActivityName(context, componentName);
        if (parentActivityName == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), parentActivityName);
        if (getParentActivityName(context, componentName2) == null) {
            return IntentCompat.makeMainActivity(componentName2);
        }
        return new Intent().setComponent(componentName2);
    }

    @Nullable
    public static String getParentActivityName(Activity activity) {
        try {
            return getParentActivityName(activity, activity.getComponentName());
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Nullable
    public static String getParentActivityName(Context context, ComponentName componentName) {
        return IMPL.getParentActivityName(context, context.getPackageManager().getActivityInfo(componentName, 128));
    }

    private NavUtils() {
    }
}
