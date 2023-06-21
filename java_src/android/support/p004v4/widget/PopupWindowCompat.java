package android.support.p004v4.widget;

import android.os.Build;
import android.support.p004v4.view.GravityCompat;
import android.support.p004v4.view.ViewCompat;
import android.view.View;
import android.widget.PopupWindow;
/* renamed from: android.support.v4.widget.PopupWindowCompat */
/* loaded from: classes.dex */
public final class PopupWindowCompat {
    static final PopupWindowImpl IMPL;

    /* renamed from: android.support.v4.widget.PopupWindowCompat$PopupWindowImpl */
    /* loaded from: classes.dex */
    interface PopupWindowImpl {
        boolean getOverlapAnchor(PopupWindow popupWindow);

        int getWindowLayoutType(PopupWindow popupWindow);

        void setOverlapAnchor(PopupWindow popupWindow, boolean z);

        void setWindowLayoutType(PopupWindow popupWindow, int i);

        void showAsDropDown(PopupWindow popupWindow, View view, int i, int i2, int i3);
    }

    /* renamed from: android.support.v4.widget.PopupWindowCompat$BasePopupWindowImpl */
    /* loaded from: classes.dex */
    static class BasePopupWindowImpl implements PopupWindowImpl {
        BasePopupWindowImpl() {
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public void showAsDropDown(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            if ((GravityCompat.getAbsoluteGravity(i3, ViewCompat.getLayoutDirection(view)) & 7) == 5) {
                i -= popupWindow.getWidth() - view.getWidth();
            }
            popupWindow.showAsDropDown(view, i, i2);
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public void setOverlapAnchor(PopupWindow popupWindow, boolean z) {
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public boolean getOverlapAnchor(PopupWindow popupWindow) {
            return false;
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public void setWindowLayoutType(PopupWindow popupWindow, int i) {
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public int getWindowLayoutType(PopupWindow popupWindow) {
            return 0;
        }
    }

    /* renamed from: android.support.v4.widget.PopupWindowCompat$GingerbreadPopupWindowImpl */
    /* loaded from: classes.dex */
    static class GingerbreadPopupWindowImpl extends BasePopupWindowImpl {
        GingerbreadPopupWindowImpl() {
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.BasePopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public void setWindowLayoutType(PopupWindow popupWindow, int i) {
            PopupWindowCompatGingerbread.setWindowLayoutType(popupWindow, i);
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.BasePopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public int getWindowLayoutType(PopupWindow popupWindow) {
            return PopupWindowCompatGingerbread.getWindowLayoutType(popupWindow);
        }
    }

    /* renamed from: android.support.v4.widget.PopupWindowCompat$KitKatPopupWindowImpl */
    /* loaded from: classes.dex */
    static class KitKatPopupWindowImpl extends GingerbreadPopupWindowImpl {
        KitKatPopupWindowImpl() {
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.BasePopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public void showAsDropDown(PopupWindow popupWindow, View view, int i, int i2, int i3) {
            PopupWindowCompatKitKat.showAsDropDown(popupWindow, view, i, i2, i3);
        }
    }

    /* renamed from: android.support.v4.widget.PopupWindowCompat$Api21PopupWindowImpl */
    /* loaded from: classes.dex */
    static class Api21PopupWindowImpl extends KitKatPopupWindowImpl {
        Api21PopupWindowImpl() {
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.BasePopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public void setOverlapAnchor(PopupWindow popupWindow, boolean z) {
            PopupWindowCompatApi21.setOverlapAnchor(popupWindow, z);
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.BasePopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public boolean getOverlapAnchor(PopupWindow popupWindow) {
            return PopupWindowCompatApi21.getOverlapAnchor(popupWindow);
        }
    }

    /* renamed from: android.support.v4.widget.PopupWindowCompat$Api23PopupWindowImpl */
    /* loaded from: classes.dex */
    static class Api23PopupWindowImpl extends Api21PopupWindowImpl {
        Api23PopupWindowImpl() {
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.Api21PopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.BasePopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public void setOverlapAnchor(PopupWindow popupWindow, boolean z) {
            PopupWindowCompatApi23.setOverlapAnchor(popupWindow, z);
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.Api21PopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.BasePopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public boolean getOverlapAnchor(PopupWindow popupWindow) {
            return PopupWindowCompatApi23.getOverlapAnchor(popupWindow);
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.GingerbreadPopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.BasePopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public void setWindowLayoutType(PopupWindow popupWindow, int i) {
            PopupWindowCompatApi23.setWindowLayoutType(popupWindow, i);
        }

        @Override // android.support.p004v4.widget.PopupWindowCompat.GingerbreadPopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.BasePopupWindowImpl, android.support.p004v4.widget.PopupWindowCompat.PopupWindowImpl
        public int getWindowLayoutType(PopupWindow popupWindow) {
            return PopupWindowCompatApi23.getWindowLayoutType(popupWindow);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            IMPL = new Api23PopupWindowImpl();
        } else if (i >= 21) {
            IMPL = new Api21PopupWindowImpl();
        } else if (i >= 19) {
            IMPL = new KitKatPopupWindowImpl();
        } else if (i >= 9) {
            IMPL = new GingerbreadPopupWindowImpl();
        } else {
            IMPL = new BasePopupWindowImpl();
        }
    }

    private PopupWindowCompat() {
    }

    public static void showAsDropDown(PopupWindow popupWindow, View view, int i, int i2, int i3) {
        IMPL.showAsDropDown(popupWindow, view, i, i2, i3);
    }

    public static void setOverlapAnchor(PopupWindow popupWindow, boolean z) {
        IMPL.setOverlapAnchor(popupWindow, z);
    }

    public static boolean getOverlapAnchor(PopupWindow popupWindow) {
        return IMPL.getOverlapAnchor(popupWindow);
    }

    public static void setWindowLayoutType(PopupWindow popupWindow, int i) {
        IMPL.setWindowLayoutType(popupWindow, i);
    }

    public static int getWindowLayoutType(PopupWindow popupWindow) {
        return IMPL.getWindowLayoutType(popupWindow);
    }
}
