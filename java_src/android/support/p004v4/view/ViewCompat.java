package android.support.p004v4.view;

import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.FloatRange;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p004v4.p006os.BuildCompat;
import android.support.p004v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.p004v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* renamed from: android.support.v4.view.ViewCompat */
/* loaded from: classes.dex */
public class ViewCompat {
    public static final int ACCESSIBILITY_LIVE_REGION_ASSERTIVE = 2;
    public static final int ACCESSIBILITY_LIVE_REGION_NONE = 0;
    public static final int ACCESSIBILITY_LIVE_REGION_POLITE = 1;
    private static final long FAKE_FRAME_TIME = 10;
    static final ViewCompatImpl IMPL;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_AUTO = 0;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO = 2;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_NO_HIDE_DESCENDANTS = 4;
    public static final int IMPORTANT_FOR_ACCESSIBILITY_YES = 1;
    public static final int LAYER_TYPE_HARDWARE = 2;
    public static final int LAYER_TYPE_NONE = 0;
    public static final int LAYER_TYPE_SOFTWARE = 1;
    public static final int LAYOUT_DIRECTION_INHERIT = 2;
    public static final int LAYOUT_DIRECTION_LOCALE = 3;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    public static final int MEASURED_HEIGHT_STATE_SHIFT = 16;
    public static final int MEASURED_SIZE_MASK = 16777215;
    public static final int MEASURED_STATE_MASK = -16777216;
    public static final int MEASURED_STATE_TOO_SMALL = 16777216;
    public static final int OVER_SCROLL_ALWAYS = 0;
    public static final int OVER_SCROLL_IF_CONTENT_SCROLLS = 1;
    public static final int OVER_SCROLL_NEVER = 2;
    public static final int SCROLL_AXIS_HORIZONTAL = 1;
    public static final int SCROLL_AXIS_NONE = 0;
    public static final int SCROLL_AXIS_VERTICAL = 2;
    public static final int SCROLL_INDICATOR_BOTTOM = 2;
    public static final int SCROLL_INDICATOR_END = 32;
    public static final int SCROLL_INDICATOR_LEFT = 4;
    public static final int SCROLL_INDICATOR_RIGHT = 8;
    public static final int SCROLL_INDICATOR_START = 16;
    public static final int SCROLL_INDICATOR_TOP = 1;
    private static final String TAG = "ViewCompat";

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v4.view.ViewCompat$FocusDirection */
    /* loaded from: classes.dex */
    public @interface FocusDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v4.view.ViewCompat$FocusRealDirection */
    /* loaded from: classes.dex */
    public @interface FocusRealDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v4.view.ViewCompat$FocusRelativeDirection */
    /* loaded from: classes.dex */
    public @interface FocusRelativeDirection {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* renamed from: android.support.v4.view.ViewCompat$ScrollIndicators */
    /* loaded from: classes.dex */
    public @interface ScrollIndicators {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.view.ViewCompat$ViewCompatImpl */
    /* loaded from: classes.dex */
    public interface ViewCompatImpl {
        ViewPropertyAnimatorCompat animate(View view);

        boolean canScrollHorizontally(View view, int i);

        boolean canScrollVertically(View view, int i);

        int combineMeasuredStates(int i, int i2);

        WindowInsetsCompat dispatchApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat);

        void dispatchFinishTemporaryDetach(View view);

        boolean dispatchNestedFling(View view, float f, float f2, boolean z);

        boolean dispatchNestedPreFling(View view, float f, float f2);

        boolean dispatchNestedPreScroll(View view, int i, int i2, int[] iArr, int[] iArr2);

        boolean dispatchNestedScroll(View view, int i, int i2, int i3, int i4, int[] iArr);

        void dispatchStartTemporaryDetach(View view);

        int getAccessibilityLiveRegion(View view);

        AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view);

        float getAlpha(View view);

        ColorStateList getBackgroundTintList(View view);

        PorterDuff.Mode getBackgroundTintMode(View view);

        Rect getClipBounds(View view);

        float getElevation(View view);

        boolean getFitsSystemWindows(View view);

        int getImportantForAccessibility(View view);

        int getLabelFor(View view);

        int getLayerType(View view);

        int getLayoutDirection(View view);

        @Nullable
        Matrix getMatrix(View view);

        int getMeasuredHeightAndState(View view);

        int getMeasuredState(View view);

        int getMeasuredWidthAndState(View view);

        int getMinimumHeight(View view);

        int getMinimumWidth(View view);

        int getOverScrollMode(View view);

        int getPaddingEnd(View view);

        int getPaddingStart(View view);

        ViewParent getParentForAccessibility(View view);

        float getPivotX(View view);

        float getPivotY(View view);

        float getRotation(View view);

        float getRotationX(View view);

        float getRotationY(View view);

        float getScaleX(View view);

        float getScaleY(View view);

        int getScrollIndicators(View view);

        String getTransitionName(View view);

        float getTranslationX(View view);

        float getTranslationY(View view);

        float getTranslationZ(View view);

        int getWindowSystemUiVisibility(View view);

        float getX(View view);

        float getY(View view);

        float getZ(View view);

        boolean hasAccessibilityDelegate(View view);

        boolean hasNestedScrollingParent(View view);

        boolean hasOnClickListeners(View view);

        boolean hasOverlappingRendering(View view);

        boolean hasTransientState(View view);

        boolean isAttachedToWindow(View view);

        boolean isImportantForAccessibility(View view);

        boolean isInLayout(View view);

        boolean isLaidOut(View view);

        boolean isLayoutDirectionResolved(View view);

        boolean isNestedScrollingEnabled(View view);

        boolean isOpaque(View view);

        boolean isPaddingRelative(View view);

        void jumpDrawablesToCurrentState(View view);

        void offsetLeftAndRight(View view, int i);

        void offsetTopAndBottom(View view, int i);

        WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat);

        void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent);

        void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

        void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent);

        boolean performAccessibilityAction(View view, int i, Bundle bundle);

        void postInvalidateOnAnimation(View view);

        void postInvalidateOnAnimation(View view, int i, int i2, int i3, int i4);

        void postOnAnimation(View view, Runnable runnable);

        void postOnAnimationDelayed(View view, Runnable runnable, long j);

        void requestApplyInsets(View view);

        int resolveSizeAndState(int i, int i2, int i3);

        void setAccessibilityDelegate(View view, @Nullable AccessibilityDelegateCompat accessibilityDelegateCompat);

        void setAccessibilityLiveRegion(View view, int i);

        void setActivated(View view, boolean z);

        void setAlpha(View view, float f);

        void setBackgroundTintList(View view, ColorStateList colorStateList);

        void setBackgroundTintMode(View view, PorterDuff.Mode mode);

        void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean z);

        void setClipBounds(View view, Rect rect);

        void setElevation(View view, float f);

        void setFitsSystemWindows(View view, boolean z);

        void setHasTransientState(View view, boolean z);

        void setImportantForAccessibility(View view, int i);

        void setLabelFor(View view, int i);

        void setLayerPaint(View view, Paint paint);

        void setLayerType(View view, int i, Paint paint);

        void setLayoutDirection(View view, int i);

        void setNestedScrollingEnabled(View view, boolean z);

        void setOnApplyWindowInsetsListener(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener);

        void setOverScrollMode(View view, int i);

        void setPaddingRelative(View view, int i, int i2, int i3, int i4);

        void setPivotX(View view, float f);

        void setPivotY(View view, float f);

        void setPointerIcon(View view, PointerIconCompat pointerIconCompat);

        void setRotation(View view, float f);

        void setRotationX(View view, float f);

        void setRotationY(View view, float f);

        void setSaveFromParentEnabled(View view, boolean z);

        void setScaleX(View view, float f);

        void setScaleY(View view, float f);

        void setScrollIndicators(View view, int i);

        void setScrollIndicators(View view, int i, int i2);

        void setTransitionName(View view, String str);

        void setTranslationX(View view, float f);

        void setTranslationY(View view, float f);

        void setTranslationZ(View view, float f);

        void setX(View view, float f);

        void setY(View view, float f);

        void setZ(View view, float f);

        boolean startNestedScroll(View view, int i);

        void stopNestedScroll(View view);
    }

    /* renamed from: android.support.v4.view.ViewCompat$BaseViewCompatImpl */
    /* loaded from: classes.dex */
    static class BaseViewCompatImpl implements ViewCompatImpl {
        private Method mDispatchFinishTemporaryDetach;
        private Method mDispatchStartTemporaryDetach;
        private boolean mTempDetachBound;
        WeakHashMap<View, ViewPropertyAnimatorCompat> mViewPropertyAnimatorCompatMap = null;

        BaseViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean canScrollHorizontally(View view, int i) {
            return (view instanceof ScrollingView) && canScrollingViewScrollHorizontally((ScrollingView) view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean canScrollVertically(View view, int i) {
            return (view instanceof ScrollingView) && canScrollingViewScrollVertically((ScrollingView) view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getOverScrollMode(View view) {
            return 2;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setOverScrollMode(View view, int i) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setAccessibilityDelegate(View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean hasAccessibilityDelegate(View view) {
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean hasTransientState(View view) {
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setHasTransientState(View view, boolean z) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void postInvalidateOnAnimation(View view) {
            view.invalidate();
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void postInvalidateOnAnimation(View view, int i, int i2, int i3, int i4) {
            view.invalidate(i, i2, i3, i4);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void postOnAnimation(View view, Runnable runnable) {
            view.postDelayed(runnable, getFrameTime());
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void postOnAnimationDelayed(View view, Runnable runnable, long j) {
            view.postDelayed(runnable, getFrameTime() + j);
        }

        long getFrameTime() {
            return ViewCompat.FAKE_FRAME_TIME;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getImportantForAccessibility(View view) {
            return 0;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setImportantForAccessibility(View view, int i) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isImportantForAccessibility(View view) {
            return true;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
            return null;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getAlpha(View view) {
            return 1.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setLayerType(View view, int i, Paint paint) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getLayerType(View view) {
            return 0;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getLabelFor(View view) {
            return 0;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setLabelFor(View view, int i) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setLayerPaint(View view, Paint paint) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getLayoutDirection(View view) {
            return 0;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setLayoutDirection(View view, int i) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public ViewParent getParentForAccessibility(View view) {
            return view.getParent();
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isOpaque(View view) {
            Drawable background = view.getBackground();
            return background != null && background.getOpacity() == -1;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int resolveSizeAndState(int i, int i2, int i3) {
            return View.resolveSize(i, i2);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getMeasuredWidthAndState(View view) {
            return view.getMeasuredWidth();
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getMeasuredHeightAndState(View view) {
            return view.getMeasuredHeight();
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getMeasuredState(View view) {
            return 0;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getAccessibilityLiveRegion(View view) {
            return 0;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setAccessibilityLiveRegion(View view, int i) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getPaddingStart(View view) {
            return view.getPaddingLeft();
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getPaddingEnd(View view) {
            return view.getPaddingRight();
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setPaddingRelative(View view, int i, int i2, int i3, int i4) {
            view.setPadding(i, i2, i3, i4);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void dispatchStartTemporaryDetach(View view) {
            if (!this.mTempDetachBound) {
                bindTempDetach();
            }
            if (this.mDispatchStartTemporaryDetach != null) {
                try {
                    this.mDispatchStartTemporaryDetach.invoke(view, new Object[0]);
                    return;
                } catch (Exception e) {
                    Log.d("ViewCompat", "Error calling dispatchStartTemporaryDetach", e);
                    return;
                }
            }
            view.onStartTemporaryDetach();
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void dispatchFinishTemporaryDetach(View view) {
            if (!this.mTempDetachBound) {
                bindTempDetach();
            }
            if (this.mDispatchFinishTemporaryDetach != null) {
                try {
                    this.mDispatchFinishTemporaryDetach.invoke(view, new Object[0]);
                    return;
                } catch (Exception e) {
                    Log.d("ViewCompat", "Error calling dispatchFinishTemporaryDetach", e);
                    return;
                }
            }
            view.onFinishTemporaryDetach();
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean hasOverlappingRendering(View view) {
            return true;
        }

        private void bindTempDetach() {
            try {
                this.mDispatchStartTemporaryDetach = View.class.getDeclaredMethod("dispatchStartTemporaryDetach", new Class[0]);
                this.mDispatchFinishTemporaryDetach = View.class.getDeclaredMethod("dispatchFinishTemporaryDetach", new Class[0]);
            } catch (NoSuchMethodException e) {
                Log.e("ViewCompat", "Couldn't find method", e);
            }
            this.mTempDetachBound = true;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getTranslationX(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getTranslationY(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getX(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getY(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getRotation(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getRotationX(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getRotationY(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getScaleX(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getScaleY(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public Matrix getMatrix(View view) {
            return null;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getMinimumWidth(View view) {
            return ViewCompatBase.getMinimumWidth(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getMinimumHeight(View view) {
            return ViewCompatBase.getMinimumHeight(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public ViewPropertyAnimatorCompat animate(View view) {
            return new ViewPropertyAnimatorCompat(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setRotation(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setTranslationX(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setTranslationY(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setAlpha(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setRotationX(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setRotationY(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setScaleX(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setScaleY(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setX(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setY(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setPivotX(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setPivotY(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getPivotX(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getPivotY(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setTransitionName(View view, String str) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public String getTransitionName(View view) {
            return null;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getWindowSystemUiVisibility(View view) {
            return 0;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void requestApplyInsets(View view) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setElevation(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getElevation(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setTranslationZ(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getTranslationZ(View view) {
            return 0.0f;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setClipBounds(View view, Rect rect) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public Rect getClipBounds(View view) {
            return null;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean z) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean getFitsSystemWindows(View view) {
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setFitsSystemWindows(View view, boolean z) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void jumpDrawablesToCurrentState(View view) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setOnApplyWindowInsetsListener(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public WindowInsetsCompat dispatchApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return windowInsetsCompat;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setSaveFromParentEnabled(View view, boolean z) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setActivated(View view, boolean z) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isPaddingRelative(View view) {
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setNestedScrollingEnabled(View view, boolean z) {
            if (view instanceof NestedScrollingChild) {
                ((NestedScrollingChild) view).setNestedScrollingEnabled(z);
            }
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isNestedScrollingEnabled(View view) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).isNestedScrollingEnabled();
            }
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public ColorStateList getBackgroundTintList(View view) {
            return ViewCompatBase.getBackgroundTintList(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setBackgroundTintList(View view, ColorStateList colorStateList) {
            ViewCompatBase.setBackgroundTintList(view, colorStateList);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
            ViewCompatBase.setBackgroundTintMode(view, mode);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public PorterDuff.Mode getBackgroundTintMode(View view) {
            return ViewCompatBase.getBackgroundTintMode(view);
        }

        private boolean canScrollingViewScrollHorizontally(ScrollingView scrollingView, int i) {
            int computeHorizontalScrollOffset = scrollingView.computeHorizontalScrollOffset();
            int computeHorizontalScrollRange = scrollingView.computeHorizontalScrollRange() - scrollingView.computeHorizontalScrollExtent();
            if (computeHorizontalScrollRange == 0) {
                return false;
            }
            return i < 0 ? computeHorizontalScrollOffset > 0 : computeHorizontalScrollOffset < computeHorizontalScrollRange + (-1);
        }

        private boolean canScrollingViewScrollVertically(ScrollingView scrollingView, int i) {
            int computeVerticalScrollOffset = scrollingView.computeVerticalScrollOffset();
            int computeVerticalScrollRange = scrollingView.computeVerticalScrollRange() - scrollingView.computeVerticalScrollExtent();
            if (computeVerticalScrollRange == 0) {
                return false;
            }
            return i < 0 ? computeVerticalScrollOffset > 0 : computeVerticalScrollOffset < computeVerticalScrollRange + (-1);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean startNestedScroll(View view, int i) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).startNestedScroll(i);
            }
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void stopNestedScroll(View view) {
            if (view instanceof NestedScrollingChild) {
                ((NestedScrollingChild) view).stopNestedScroll();
            }
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean hasNestedScrollingParent(View view) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).hasNestedScrollingParent();
            }
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean dispatchNestedScroll(View view, int i, int i2, int i3, int i4, int[] iArr) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).dispatchNestedScroll(i, i2, i3, i4, iArr);
            }
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean dispatchNestedPreScroll(View view, int i, int i2, int[] iArr, int[] iArr2) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).dispatchNestedPreScroll(i, i2, iArr, iArr2);
            }
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean dispatchNestedFling(View view, float f, float f2, boolean z) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).dispatchNestedFling(f, f2, z);
            }
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean dispatchNestedPreFling(View view, float f, float f2) {
            if (view instanceof NestedScrollingChild) {
                return ((NestedScrollingChild) view).dispatchNestedPreFling(f, f2);
            }
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isInLayout(View view) {
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isLaidOut(View view) {
            return ViewCompatBase.isLaidOut(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isLayoutDirectionResolved(View view) {
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int combineMeasuredStates(int i, int i2) {
            return i | i2;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getZ(View view) {
            return getTranslationZ(view) + getElevation(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setZ(View view, float f) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isAttachedToWindow(View view) {
            return ViewCompatBase.isAttachedToWindow(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean hasOnClickListeners(View view) {
            return false;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getScrollIndicators(View view) {
            return 0;
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setScrollIndicators(View view, int i) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setScrollIndicators(View view, int i, int i2) {
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void offsetLeftAndRight(View view, int i) {
            ViewCompatBase.offsetLeftAndRight(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void offsetTopAndBottom(View view, int i) {
            ViewCompatBase.offsetTopAndBottom(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setPointerIcon(View view, PointerIconCompat pointerIconCompat) {
        }
    }

    /* renamed from: android.support.v4.view.ViewCompat$EclairMr1ViewCompatImpl */
    /* loaded from: classes.dex */
    static class EclairMr1ViewCompatImpl extends BaseViewCompatImpl {
        EclairMr1ViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isOpaque(View view) {
            return ViewCompatEclairMr1.isOpaque(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean z) {
            ViewCompatEclairMr1.setChildrenDrawingOrderEnabled(viewGroup, z);
        }
    }

    /* renamed from: android.support.v4.view.ViewCompat$GBViewCompatImpl */
    /* loaded from: classes.dex */
    static class GBViewCompatImpl extends EclairMr1ViewCompatImpl {
        GBViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getOverScrollMode(View view) {
            return ViewCompatGingerbread.getOverScrollMode(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setOverScrollMode(View view, int i) {
            ViewCompatGingerbread.setOverScrollMode(view, i);
        }
    }

    /* renamed from: android.support.v4.view.ViewCompat$HCViewCompatImpl */
    /* loaded from: classes.dex */
    static class HCViewCompatImpl extends GBViewCompatImpl {
        HCViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl
        long getFrameTime() {
            return ViewCompatHC.getFrameTime();
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getAlpha(View view) {
            return ViewCompatHC.getAlpha(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setLayerType(View view, int i, Paint paint) {
            ViewCompatHC.setLayerType(view, i, paint);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getLayerType(View view) {
            return ViewCompatHC.getLayerType(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setLayerPaint(View view, Paint paint) {
            setLayerType(view, getLayerType(view), paint);
            view.invalidate();
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int resolveSizeAndState(int i, int i2, int i3) {
            return ViewCompatHC.resolveSizeAndState(i, i2, i3);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getMeasuredWidthAndState(View view) {
            return ViewCompatHC.getMeasuredWidthAndState(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getMeasuredHeightAndState(View view) {
            return ViewCompatHC.getMeasuredHeightAndState(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getMeasuredState(View view) {
            return ViewCompatHC.getMeasuredState(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getTranslationX(View view) {
            return ViewCompatHC.getTranslationX(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getTranslationY(View view) {
            return ViewCompatHC.getTranslationY(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public Matrix getMatrix(View view) {
            return ViewCompatHC.getMatrix(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setTranslationX(View view, float f) {
            ViewCompatHC.setTranslationX(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setTranslationY(View view, float f) {
            ViewCompatHC.setTranslationY(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setAlpha(View view, float f) {
            ViewCompatHC.setAlpha(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setX(View view, float f) {
            ViewCompatHC.setX(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setY(View view, float f) {
            ViewCompatHC.setY(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setRotation(View view, float f) {
            ViewCompatHC.setRotation(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setRotationX(View view, float f) {
            ViewCompatHC.setRotationX(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setRotationY(View view, float f) {
            ViewCompatHC.setRotationY(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setScaleX(View view, float f) {
            ViewCompatHC.setScaleX(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setScaleY(View view, float f) {
            ViewCompatHC.setScaleY(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setPivotX(View view, float f) {
            ViewCompatHC.setPivotX(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setPivotY(View view, float f) {
            ViewCompatHC.setPivotY(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getX(View view) {
            return ViewCompatHC.getX(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getY(View view) {
            return ViewCompatHC.getY(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getRotation(View view) {
            return ViewCompatHC.getRotation(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getRotationX(View view) {
            return ViewCompatHC.getRotationX(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getRotationY(View view) {
            return ViewCompatHC.getRotationY(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getScaleX(View view) {
            return ViewCompatHC.getScaleX(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getScaleY(View view) {
            return ViewCompatHC.getScaleY(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getPivotX(View view) {
            return ViewCompatHC.getPivotX(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getPivotY(View view) {
            return ViewCompatHC.getPivotY(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void jumpDrawablesToCurrentState(View view) {
            ViewCompatHC.jumpDrawablesToCurrentState(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setSaveFromParentEnabled(View view, boolean z) {
            ViewCompatHC.setSaveFromParentEnabled(view, z);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setActivated(View view, boolean z) {
            ViewCompatHC.setActivated(view, z);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int combineMeasuredStates(int i, int i2) {
            return ViewCompatHC.combineMeasuredStates(i, i2);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void offsetLeftAndRight(View view, int i) {
            ViewCompatHC.offsetLeftAndRight(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void offsetTopAndBottom(View view, int i) {
            ViewCompatHC.offsetTopAndBottom(view, i);
        }
    }

    /* renamed from: android.support.v4.view.ViewCompat$ICSViewCompatImpl */
    /* loaded from: classes.dex */
    static class ICSViewCompatImpl extends HCViewCompatImpl {
        static boolean accessibilityDelegateCheckFailed = false;
        static Field mAccessibilityDelegateField;

        ICSViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean canScrollHorizontally(View view, int i) {
            return ViewCompatICS.canScrollHorizontally(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean canScrollVertically(View view, int i) {
            return ViewCompatICS.canScrollVertically(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            ViewCompatICS.onPopulateAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            ViewCompatICS.onInitializeAccessibilityEvent(view, accessibilityEvent);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            ViewCompatICS.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat.getInfo());
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setAccessibilityDelegate(View view, @Nullable AccessibilityDelegateCompat accessibilityDelegateCompat) {
            ViewCompatICS.setAccessibilityDelegate(view, accessibilityDelegateCompat == null ? null : accessibilityDelegateCompat.getBridge());
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean hasAccessibilityDelegate(View view) {
            if (accessibilityDelegateCheckFailed) {
                return false;
            }
            if (mAccessibilityDelegateField == null) {
                try {
                    mAccessibilityDelegateField = View.class.getDeclaredField("mAccessibilityDelegate");
                    mAccessibilityDelegateField.setAccessible(true);
                } catch (Throwable th) {
                    accessibilityDelegateCheckFailed = true;
                    return false;
                }
            }
            try {
                return mAccessibilityDelegateField.get(view) != null;
            } catch (Throwable th2) {
                accessibilityDelegateCheckFailed = true;
                return false;
            }
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public ViewPropertyAnimatorCompat animate(View view) {
            if (this.mViewPropertyAnimatorCompatMap == null) {
                this.mViewPropertyAnimatorCompatMap = new WeakHashMap<>();
            }
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.mViewPropertyAnimatorCompatMap.get(view);
            if (viewPropertyAnimatorCompat == null) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = new ViewPropertyAnimatorCompat(view);
                this.mViewPropertyAnimatorCompatMap.put(view, viewPropertyAnimatorCompat2);
                return viewPropertyAnimatorCompat2;
            }
            return viewPropertyAnimatorCompat;
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setFitsSystemWindows(View view, boolean z) {
            ViewCompatICS.setFitsSystemWindows(view, z);
        }
    }

    /* renamed from: android.support.v4.view.ViewCompat$ICSMr1ViewCompatImpl */
    /* loaded from: classes.dex */
    static class ICSMr1ViewCompatImpl extends ICSViewCompatImpl {
        ICSMr1ViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean hasOnClickListeners(View view) {
            return ViewCompatICSMr1.hasOnClickListeners(view);
        }
    }

    /* renamed from: android.support.v4.view.ViewCompat$JBViewCompatImpl */
    /* loaded from: classes.dex */
    static class JBViewCompatImpl extends ICSMr1ViewCompatImpl {
        JBViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean hasTransientState(View view) {
            return ViewCompatJB.hasTransientState(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setHasTransientState(View view, boolean z) {
            ViewCompatJB.setHasTransientState(view, z);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void postInvalidateOnAnimation(View view) {
            ViewCompatJB.postInvalidateOnAnimation(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void postInvalidateOnAnimation(View view, int i, int i2, int i3, int i4) {
            ViewCompatJB.postInvalidateOnAnimation(view, i, i2, i3, i4);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void postOnAnimation(View view, Runnable runnable) {
            ViewCompatJB.postOnAnimation(view, runnable);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void postOnAnimationDelayed(View view, Runnable runnable, long j) {
            ViewCompatJB.postOnAnimationDelayed(view, runnable, j);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getImportantForAccessibility(View view) {
            return ViewCompatJB.getImportantForAccessibility(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setImportantForAccessibility(View view, int i) {
            if (i == 4) {
                i = 2;
            }
            ViewCompatJB.setImportantForAccessibility(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            return ViewCompatJB.performAccessibilityAction(view, i, bundle);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
            Object accessibilityNodeProvider = ViewCompatJB.getAccessibilityNodeProvider(view);
            if (accessibilityNodeProvider != null) {
                return new AccessibilityNodeProviderCompat(accessibilityNodeProvider);
            }
            return null;
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public ViewParent getParentForAccessibility(View view) {
            return ViewCompatJB.getParentForAccessibility(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getMinimumWidth(View view) {
            return ViewCompatJB.getMinimumWidth(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getMinimumHeight(View view) {
            return ViewCompatJB.getMinimumHeight(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void requestApplyInsets(View view) {
            ViewCompatJB.requestApplyInsets(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean getFitsSystemWindows(View view) {
            return ViewCompatJB.getFitsSystemWindows(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean hasOverlappingRendering(View view) {
            return ViewCompatJB.hasOverlappingRendering(view);
        }
    }

    /* renamed from: android.support.v4.view.ViewCompat$JbMr1ViewCompatImpl */
    /* loaded from: classes.dex */
    static class JbMr1ViewCompatImpl extends JBViewCompatImpl {
        JbMr1ViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getLabelFor(View view) {
            return ViewCompatJellybeanMr1.getLabelFor(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setLabelFor(View view, int i) {
            ViewCompatJellybeanMr1.setLabelFor(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.HCViewCompatImpl, android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setLayerPaint(View view, Paint paint) {
            ViewCompatJellybeanMr1.setLayerPaint(view, paint);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getLayoutDirection(View view) {
            return ViewCompatJellybeanMr1.getLayoutDirection(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setLayoutDirection(View view, int i) {
            ViewCompatJellybeanMr1.setLayoutDirection(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getPaddingStart(View view) {
            return ViewCompatJellybeanMr1.getPaddingStart(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getPaddingEnd(View view) {
            return ViewCompatJellybeanMr1.getPaddingEnd(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setPaddingRelative(View view, int i, int i2, int i3, int i4) {
            ViewCompatJellybeanMr1.setPaddingRelative(view, i, i2, i3, i4);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getWindowSystemUiVisibility(View view) {
            return ViewCompatJellybeanMr1.getWindowSystemUiVisibility(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isPaddingRelative(View view) {
            return ViewCompatJellybeanMr1.isPaddingRelative(view);
        }
    }

    /* renamed from: android.support.v4.view.ViewCompat$JbMr2ViewCompatImpl */
    /* loaded from: classes.dex */
    static class JbMr2ViewCompatImpl extends JbMr1ViewCompatImpl {
        JbMr2ViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setClipBounds(View view, Rect rect) {
            ViewCompatJellybeanMr2.setClipBounds(view, rect);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public Rect getClipBounds(View view) {
            return ViewCompatJellybeanMr2.getClipBounds(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isInLayout(View view) {
            return ViewCompatJellybeanMr2.isInLayout(view);
        }
    }

    /* renamed from: android.support.v4.view.ViewCompat$KitKatViewCompatImpl */
    /* loaded from: classes.dex */
    static class KitKatViewCompatImpl extends JbMr2ViewCompatImpl {
        KitKatViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getAccessibilityLiveRegion(View view) {
            return ViewCompatKitKat.getAccessibilityLiveRegion(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setAccessibilityLiveRegion(View view, int i) {
            ViewCompatKitKat.setAccessibilityLiveRegion(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.JBViewCompatImpl, android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setImportantForAccessibility(View view, int i) {
            ViewCompatJB.setImportantForAccessibility(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isLaidOut(View view) {
            return ViewCompatKitKat.isLaidOut(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isLayoutDirectionResolved(View view) {
            return ViewCompatKitKat.isLayoutDirectionResolved(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isAttachedToWindow(View view) {
            return ViewCompatKitKat.isAttachedToWindow(view);
        }
    }

    /* renamed from: android.support.v4.view.ViewCompat$LollipopViewCompatImpl */
    /* loaded from: classes.dex */
    static class LollipopViewCompatImpl extends KitKatViewCompatImpl {
        LollipopViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setTransitionName(View view, String str) {
            ViewCompatLollipop.setTransitionName(view, str);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public String getTransitionName(View view) {
            return ViewCompatLollipop.getTransitionName(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.JBViewCompatImpl, android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void requestApplyInsets(View view) {
            ViewCompatLollipop.requestApplyInsets(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setElevation(View view, float f) {
            ViewCompatLollipop.setElevation(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getElevation(View view) {
            return ViewCompatLollipop.getElevation(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setTranslationZ(View view, float f) {
            ViewCompatLollipop.setTranslationZ(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getTranslationZ(View view) {
            return ViewCompatLollipop.getTranslationZ(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setOnApplyWindowInsetsListener(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
            ViewCompatLollipop.setOnApplyWindowInsetsListener(view, onApplyWindowInsetsListener);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setNestedScrollingEnabled(View view, boolean z) {
            ViewCompatLollipop.setNestedScrollingEnabled(view, z);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isNestedScrollingEnabled(View view) {
            return ViewCompatLollipop.isNestedScrollingEnabled(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean startNestedScroll(View view, int i) {
            return ViewCompatLollipop.startNestedScroll(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void stopNestedScroll(View view) {
            ViewCompatLollipop.stopNestedScroll(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean hasNestedScrollingParent(View view) {
            return ViewCompatLollipop.hasNestedScrollingParent(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean dispatchNestedScroll(View view, int i, int i2, int i3, int i4, int[] iArr) {
            return ViewCompatLollipop.dispatchNestedScroll(view, i, i2, i3, i4, iArr);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean dispatchNestedPreScroll(View view, int i, int i2, int[] iArr, int[] iArr2) {
            return ViewCompatLollipop.dispatchNestedPreScroll(view, i, i2, iArr, iArr2);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean dispatchNestedFling(View view, float f, float f2, boolean z) {
            return ViewCompatLollipop.dispatchNestedFling(view, f, f2, z);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean dispatchNestedPreFling(View view, float f, float f2) {
            return ViewCompatLollipop.dispatchNestedPreFling(view, f, f2);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public boolean isImportantForAccessibility(View view) {
            return ViewCompatLollipop.isImportantForAccessibility(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public ColorStateList getBackgroundTintList(View view) {
            return ViewCompatLollipop.getBackgroundTintList(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setBackgroundTintList(View view, ColorStateList colorStateList) {
            ViewCompatLollipop.setBackgroundTintList(view, colorStateList);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
            ViewCompatLollipop.setBackgroundTintMode(view, mode);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public PorterDuff.Mode getBackgroundTintMode(View view) {
            return ViewCompatLollipop.getBackgroundTintMode(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return ViewCompatLollipop.onApplyWindowInsets(view, windowInsetsCompat);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public WindowInsetsCompat dispatchApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            return ViewCompatLollipop.dispatchApplyWindowInsets(view, windowInsetsCompat);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public float getZ(View view) {
            return ViewCompatLollipop.getZ(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setZ(View view, float f) {
            ViewCompatLollipop.setZ(view, f);
        }

        @Override // android.support.p004v4.view.ViewCompat.HCViewCompatImpl, android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void offsetLeftAndRight(View view, int i) {
            ViewCompatLollipop.offsetLeftAndRight(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.HCViewCompatImpl, android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void offsetTopAndBottom(View view, int i) {
            ViewCompatLollipop.offsetTopAndBottom(view, i);
        }
    }

    /* renamed from: android.support.v4.view.ViewCompat$MarshmallowViewCompatImpl */
    /* loaded from: classes.dex */
    static class MarshmallowViewCompatImpl extends LollipopViewCompatImpl {
        MarshmallowViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setScrollIndicators(View view, int i) {
            ViewCompatMarshmallow.setScrollIndicators(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setScrollIndicators(View view, int i, int i2) {
            ViewCompatMarshmallow.setScrollIndicators(view, i, i2);
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public int getScrollIndicators(View view) {
            return ViewCompatMarshmallow.getScrollIndicators(view);
        }

        @Override // android.support.p004v4.view.ViewCompat.LollipopViewCompatImpl, android.support.p004v4.view.ViewCompat.HCViewCompatImpl, android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void offsetLeftAndRight(View view, int i) {
            ViewCompatMarshmallow.offsetLeftAndRight(view, i);
        }

        @Override // android.support.p004v4.view.ViewCompat.LollipopViewCompatImpl, android.support.p004v4.view.ViewCompat.HCViewCompatImpl, android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void offsetTopAndBottom(View view, int i) {
            ViewCompatMarshmallow.offsetTopAndBottom(view, i);
        }
    }

    /* renamed from: android.support.v4.view.ViewCompat$Api24ViewCompatImpl */
    /* loaded from: classes.dex */
    static class Api24ViewCompatImpl extends MarshmallowViewCompatImpl {
        Api24ViewCompatImpl() {
        }

        @Override // android.support.p004v4.view.ViewCompat.BaseViewCompatImpl, android.support.p004v4.view.ViewCompat.ViewCompatImpl
        public void setPointerIcon(View view, PointerIconCompat pointerIconCompat) {
            ViewCompatApi24.setPointerIcon(view, pointerIconCompat.getPointerIcon());
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (BuildCompat.isAtLeastN()) {
            IMPL = new Api24ViewCompatImpl();
        } else if (i >= 23) {
            IMPL = new MarshmallowViewCompatImpl();
        } else if (i >= 21) {
            IMPL = new LollipopViewCompatImpl();
        } else if (i >= 19) {
            IMPL = new KitKatViewCompatImpl();
        } else if (i >= 18) {
            IMPL = new JbMr2ViewCompatImpl();
        } else if (i >= 17) {
            IMPL = new JbMr1ViewCompatImpl();
        } else if (i >= 16) {
            IMPL = new JBViewCompatImpl();
        } else if (i >= 15) {
            IMPL = new ICSMr1ViewCompatImpl();
        } else if (i >= 14) {
            IMPL = new ICSViewCompatImpl();
        } else if (i >= 11) {
            IMPL = new HCViewCompatImpl();
        } else if (i >= 9) {
            IMPL = new GBViewCompatImpl();
        } else if (i >= 7) {
            IMPL = new EclairMr1ViewCompatImpl();
        } else {
            IMPL = new BaseViewCompatImpl();
        }
    }

    public static boolean canScrollHorizontally(View view, int i) {
        return IMPL.canScrollHorizontally(view, i);
    }

    public static boolean canScrollVertically(View view, int i) {
        return IMPL.canScrollVertically(view, i);
    }

    public static int getOverScrollMode(View view) {
        return IMPL.getOverScrollMode(view);
    }

    public static void setOverScrollMode(View view, int i) {
        IMPL.setOverScrollMode(view, i);
    }

    public static void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        IMPL.onPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    public static void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        IMPL.onInitializeAccessibilityEvent(view, accessibilityEvent);
    }

    public static void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        IMPL.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
    }

    public static void setAccessibilityDelegate(View view, AccessibilityDelegateCompat accessibilityDelegateCompat) {
        IMPL.setAccessibilityDelegate(view, accessibilityDelegateCompat);
    }

    public static boolean hasAccessibilityDelegate(View view) {
        return IMPL.hasAccessibilityDelegate(view);
    }

    public static boolean hasTransientState(View view) {
        return IMPL.hasTransientState(view);
    }

    public static void setHasTransientState(View view, boolean z) {
        IMPL.setHasTransientState(view, z);
    }

    public static void postInvalidateOnAnimation(View view) {
        IMPL.postInvalidateOnAnimation(view);
    }

    public static void postInvalidateOnAnimation(View view, int i, int i2, int i3, int i4) {
        IMPL.postInvalidateOnAnimation(view, i, i2, i3, i4);
    }

    public static void postOnAnimation(View view, Runnable runnable) {
        IMPL.postOnAnimation(view, runnable);
    }

    public static void postOnAnimationDelayed(View view, Runnable runnable, long j) {
        IMPL.postOnAnimationDelayed(view, runnable, j);
    }

    public static int getImportantForAccessibility(View view) {
        return IMPL.getImportantForAccessibility(view);
    }

    public static void setImportantForAccessibility(View view, int i) {
        IMPL.setImportantForAccessibility(view, i);
    }

    public static boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        return IMPL.performAccessibilityAction(view, i, bundle);
    }

    public static AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        return IMPL.getAccessibilityNodeProvider(view);
    }

    public static float getAlpha(View view) {
        return IMPL.getAlpha(view);
    }

    public static void setLayerType(View view, int i, Paint paint) {
        IMPL.setLayerType(view, i, paint);
    }

    public static int getLayerType(View view) {
        return IMPL.getLayerType(view);
    }

    public static int getLabelFor(View view) {
        return IMPL.getLabelFor(view);
    }

    public static void setLabelFor(View view, @IdRes int i) {
        IMPL.setLabelFor(view, i);
    }

    public static void setLayerPaint(View view, Paint paint) {
        IMPL.setLayerPaint(view, paint);
    }

    public static int getLayoutDirection(View view) {
        return IMPL.getLayoutDirection(view);
    }

    public static void setLayoutDirection(View view, int i) {
        IMPL.setLayoutDirection(view, i);
    }

    public static ViewParent getParentForAccessibility(View view) {
        return IMPL.getParentForAccessibility(view);
    }

    public static boolean isOpaque(View view) {
        return IMPL.isOpaque(view);
    }

    public static int resolveSizeAndState(int i, int i2, int i3) {
        return IMPL.resolveSizeAndState(i, i2, i3);
    }

    public static int getMeasuredWidthAndState(View view) {
        return IMPL.getMeasuredWidthAndState(view);
    }

    public static int getMeasuredHeightAndState(View view) {
        return IMPL.getMeasuredHeightAndState(view);
    }

    public static int getMeasuredState(View view) {
        return IMPL.getMeasuredState(view);
    }

    public static int combineMeasuredStates(int i, int i2) {
        return IMPL.combineMeasuredStates(i, i2);
    }

    public static int getAccessibilityLiveRegion(View view) {
        return IMPL.getAccessibilityLiveRegion(view);
    }

    public static void setAccessibilityLiveRegion(View view, int i) {
        IMPL.setAccessibilityLiveRegion(view, i);
    }

    public static int getPaddingStart(View view) {
        return IMPL.getPaddingStart(view);
    }

    public static int getPaddingEnd(View view) {
        return IMPL.getPaddingEnd(view);
    }

    public static void setPaddingRelative(View view, int i, int i2, int i3, int i4) {
        IMPL.setPaddingRelative(view, i, i2, i3, i4);
    }

    public static void dispatchStartTemporaryDetach(View view) {
        IMPL.dispatchStartTemporaryDetach(view);
    }

    public static void dispatchFinishTemporaryDetach(View view) {
        IMPL.dispatchFinishTemporaryDetach(view);
    }

    public static float getTranslationX(View view) {
        return IMPL.getTranslationX(view);
    }

    public static float getTranslationY(View view) {
        return IMPL.getTranslationY(view);
    }

    @Nullable
    public static Matrix getMatrix(View view) {
        return IMPL.getMatrix(view);
    }

    public static int getMinimumWidth(View view) {
        return IMPL.getMinimumWidth(view);
    }

    public static int getMinimumHeight(View view) {
        return IMPL.getMinimumHeight(view);
    }

    public static ViewPropertyAnimatorCompat animate(View view) {
        return IMPL.animate(view);
    }

    public static void setTranslationX(View view, float f) {
        IMPL.setTranslationX(view, f);
    }

    public static void setTranslationY(View view, float f) {
        IMPL.setTranslationY(view, f);
    }

    public static void setAlpha(View view, @FloatRange(from = 0.0d, m13741to = 1.0d) float f) {
        IMPL.setAlpha(view, f);
    }

    public static void setX(View view, float f) {
        IMPL.setX(view, f);
    }

    public static void setY(View view, float f) {
        IMPL.setY(view, f);
    }

    public static void setRotation(View view, float f) {
        IMPL.setRotation(view, f);
    }

    public static void setRotationX(View view, float f) {
        IMPL.setRotationX(view, f);
    }

    public static void setRotationY(View view, float f) {
        IMPL.setRotationY(view, f);
    }

    public static void setScaleX(View view, float f) {
        IMPL.setScaleX(view, f);
    }

    public static void setScaleY(View view, float f) {
        IMPL.setScaleY(view, f);
    }

    public static float getPivotX(View view) {
        return IMPL.getPivotX(view);
    }

    public static void setPivotX(View view, float f) {
        IMPL.setPivotX(view, f);
    }

    public static float getPivotY(View view) {
        return IMPL.getPivotY(view);
    }

    public static void setPivotY(View view, float f) {
        IMPL.setPivotY(view, f);
    }

    public static float getRotation(View view) {
        return IMPL.getRotation(view);
    }

    public static float getRotationX(View view) {
        return IMPL.getRotationX(view);
    }

    public static float getRotationY(View view) {
        return IMPL.getRotationY(view);
    }

    public static float getScaleX(View view) {
        return IMPL.getScaleX(view);
    }

    public static float getScaleY(View view) {
        return IMPL.getScaleY(view);
    }

    public static float getX(View view) {
        return IMPL.getX(view);
    }

    public static float getY(View view) {
        return IMPL.getY(view);
    }

    public static void setElevation(View view, float f) {
        IMPL.setElevation(view, f);
    }

    public static float getElevation(View view) {
        return IMPL.getElevation(view);
    }

    public static void setTranslationZ(View view, float f) {
        IMPL.setTranslationZ(view, f);
    }

    public static float getTranslationZ(View view) {
        return IMPL.getTranslationZ(view);
    }

    public static void setTransitionName(View view, String str) {
        IMPL.setTransitionName(view, str);
    }

    public static String getTransitionName(View view) {
        return IMPL.getTransitionName(view);
    }

    public static int getWindowSystemUiVisibility(View view) {
        return IMPL.getWindowSystemUiVisibility(view);
    }

    public static void requestApplyInsets(View view) {
        IMPL.requestApplyInsets(view);
    }

    public static void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean z) {
        IMPL.setChildrenDrawingOrderEnabled(viewGroup, z);
    }

    public static boolean getFitsSystemWindows(View view) {
        return IMPL.getFitsSystemWindows(view);
    }

    public static void setFitsSystemWindows(View view, boolean z) {
        IMPL.setFitsSystemWindows(view, z);
    }

    public static void jumpDrawablesToCurrentState(View view) {
        IMPL.jumpDrawablesToCurrentState(view);
    }

    public static void setOnApplyWindowInsetsListener(View view, OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        IMPL.setOnApplyWindowInsetsListener(view, onApplyWindowInsetsListener);
    }

    public static WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return IMPL.onApplyWindowInsets(view, windowInsetsCompat);
    }

    public static WindowInsetsCompat dispatchApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        return IMPL.dispatchApplyWindowInsets(view, windowInsetsCompat);
    }

    public static void setSaveFromParentEnabled(View view, boolean z) {
        IMPL.setSaveFromParentEnabled(view, z);
    }

    public static void setActivated(View view, boolean z) {
        IMPL.setActivated(view, z);
    }

    public static boolean hasOverlappingRendering(View view) {
        return IMPL.hasOverlappingRendering(view);
    }

    public static boolean isPaddingRelative(View view) {
        return IMPL.isPaddingRelative(view);
    }

    public static ColorStateList getBackgroundTintList(View view) {
        return IMPL.getBackgroundTintList(view);
    }

    public static void setBackgroundTintList(View view, ColorStateList colorStateList) {
        IMPL.setBackgroundTintList(view, colorStateList);
    }

    public static PorterDuff.Mode getBackgroundTintMode(View view) {
        return IMPL.getBackgroundTintMode(view);
    }

    public static void setBackgroundTintMode(View view, PorterDuff.Mode mode) {
        IMPL.setBackgroundTintMode(view, mode);
    }

    public static void setNestedScrollingEnabled(View view, boolean z) {
        IMPL.setNestedScrollingEnabled(view, z);
    }

    public static boolean isNestedScrollingEnabled(View view) {
        return IMPL.isNestedScrollingEnabled(view);
    }

    public static boolean startNestedScroll(View view, int i) {
        return IMPL.startNestedScroll(view, i);
    }

    public static void stopNestedScroll(View view) {
        IMPL.stopNestedScroll(view);
    }

    public static boolean hasNestedScrollingParent(View view) {
        return IMPL.hasNestedScrollingParent(view);
    }

    public static boolean dispatchNestedScroll(View view, int i, int i2, int i3, int i4, int[] iArr) {
        return IMPL.dispatchNestedScroll(view, i, i2, i3, i4, iArr);
    }

    public static boolean dispatchNestedPreScroll(View view, int i, int i2, int[] iArr, int[] iArr2) {
        return IMPL.dispatchNestedPreScroll(view, i, i2, iArr, iArr2);
    }

    public static boolean dispatchNestedFling(View view, float f, float f2, boolean z) {
        return IMPL.dispatchNestedFling(view, f, f2, z);
    }

    public static boolean dispatchNestedPreFling(View view, float f, float f2) {
        return IMPL.dispatchNestedPreFling(view, f, f2);
    }

    public static boolean isInLayout(View view) {
        return IMPL.isInLayout(view);
    }

    public static boolean isLaidOut(View view) {
        return IMPL.isLaidOut(view);
    }

    public static boolean isLayoutDirectionResolved(View view) {
        return IMPL.isLayoutDirectionResolved(view);
    }

    public static float getZ(View view) {
        return IMPL.getZ(view);
    }

    public static void setZ(View view, float f) {
        IMPL.setZ(view, f);
    }

    public static void offsetTopAndBottom(View view, int i) {
        IMPL.offsetTopAndBottom(view, i);
    }

    public static void offsetLeftAndRight(View view, int i) {
        IMPL.offsetLeftAndRight(view, i);
    }

    public static void setClipBounds(View view, Rect rect) {
        IMPL.setClipBounds(view, rect);
    }

    public static Rect getClipBounds(View view) {
        return IMPL.getClipBounds(view);
    }

    public static boolean isAttachedToWindow(View view) {
        return IMPL.isAttachedToWindow(view);
    }

    public static boolean hasOnClickListeners(View view) {
        return IMPL.hasOnClickListeners(view);
    }

    public static void setScrollIndicators(@NonNull View view, int i) {
        IMPL.setScrollIndicators(view, i);
    }

    public static void setScrollIndicators(@NonNull View view, int i, int i2) {
        IMPL.setScrollIndicators(view, i, i2);
    }

    public static int getScrollIndicators(@NonNull View view) {
        return IMPL.getScrollIndicators(view);
    }

    public static void setPointerIcon(@NonNull View view, PointerIconCompat pointerIconCompat) {
        IMPL.setPointerIcon(view, pointerIconCompat);
    }

    protected ViewCompat() {
    }
}
