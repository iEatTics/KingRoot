package android.support.p004v4.app;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.lang.reflect.Method;
/* renamed from: android.support.v4.app.ActionBarDrawerToggleHoneycomb */
/* loaded from: classes.dex */
class ActionBarDrawerToggleHoneycomb {
    private static final String TAG = "ActionBarDrawerToggleHoneycomb";
    private static final int[] THEME_ATTRS = {16843531};

    ActionBarDrawerToggleHoneycomb() {
    }

    public static Object setActionBarUpIndicator(Object obj, Activity activity, Drawable drawable, int i) {
        Object setIndicatorInfo = obj == null ? new SetIndicatorInfo(activity) : obj;
        SetIndicatorInfo setIndicatorInfo2 = (SetIndicatorInfo) setIndicatorInfo;
        if (setIndicatorInfo2.setHomeAsUpIndicator != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                setIndicatorInfo2.setHomeAsUpIndicator.invoke(actionBar, drawable);
                setIndicatorInfo2.setHomeActionContentDescription.invoke(actionBar, Integer.valueOf(i));
            } catch (Exception e) {
                Log.w(TAG, "Couldn't set home-as-up indicator via JB-MR2 API", e);
            }
        } else if (setIndicatorInfo2.upIndicatorView != null) {
            setIndicatorInfo2.upIndicatorView.setImageDrawable(drawable);
        } else {
            Log.w(TAG, "Couldn't set home-as-up indicator");
        }
        return setIndicatorInfo;
    }

    public static Object setActionBarDescription(Object obj, Activity activity, int i) {
        Object setIndicatorInfo = obj == null ? new SetIndicatorInfo(activity) : obj;
        SetIndicatorInfo setIndicatorInfo2 = (SetIndicatorInfo) setIndicatorInfo;
        if (setIndicatorInfo2.setHomeAsUpIndicator != null) {
            try {
                ActionBar actionBar = activity.getActionBar();
                setIndicatorInfo2.setHomeActionContentDescription.invoke(actionBar, Integer.valueOf(i));
                if (Build.VERSION.SDK_INT <= 19) {
                    actionBar.setSubtitle(actionBar.getSubtitle());
                }
            } catch (Exception e) {
                Log.w(TAG, "Couldn't set content description via JB-MR2 API", e);
            }
        }
        return setIndicatorInfo;
    }

    public static Drawable getThemeUpIndicator(Activity activity) {
        TypedArray obtainStyledAttributes = activity.obtainStyledAttributes(THEME_ATTRS);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        obtainStyledAttributes.recycle();
        return drawable;
    }

    /* renamed from: android.support.v4.app.ActionBarDrawerToggleHoneycomb$SetIndicatorInfo */
    /* loaded from: classes.dex */
    static class SetIndicatorInfo {
        public Method setHomeActionContentDescription;
        public Method setHomeAsUpIndicator;
        public ImageView upIndicatorView;

        SetIndicatorInfo(Activity activity) {
            try {
                this.setHomeAsUpIndicator = ActionBar.class.getDeclaredMethod("setHomeAsUpIndicator", Drawable.class);
                this.setHomeActionContentDescription = ActionBar.class.getDeclaredMethod("setHomeActionContentDescription", Integer.TYPE);
            } catch (NoSuchMethodException e) {
                View findViewById = activity.findViewById(16908332);
                if (findViewById != null) {
                    ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
                    if (viewGroup.getChildCount() == 2) {
                        View childAt = viewGroup.getChildAt(0);
                        View childAt2 = childAt.getId() != 16908332 ? childAt : viewGroup.getChildAt(1);
                        if (childAt2 instanceof ImageView) {
                            this.upIndicatorView = (ImageView) childAt2;
                        }
                    }
                }
            }
        }
    }
}
