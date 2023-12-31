package android.support.p004v4.view;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.support.p004v4.p006os.BuildCompat;
/* renamed from: android.support.v4.view.PointerIconCompat */
/* loaded from: classes.dex */
public final class PointerIconCompat {
    static final PointerIconCompatImpl IMPL;
    public static final int TYPE_ALIAS = 1010;
    public static final int TYPE_ALL_SCROLL = 1013;
    public static final int TYPE_ARROW = 1000;
    public static final int TYPE_CELL = 1006;
    public static final int TYPE_CONTEXT_MENU = 1001;
    public static final int TYPE_COPY = 1011;
    public static final int TYPE_CROSSHAIR = 1007;
    public static final int TYPE_DEFAULT = 1000;
    public static final int TYPE_GRAB = 1020;
    public static final int TYPE_GRABBING = 1021;
    public static final int TYPE_HAND = 1002;
    public static final int TYPE_HELP = 1003;
    public static final int TYPE_HORIZONTAL_DOUBLE_ARROW = 1014;
    public static final int TYPE_NO_DROP = 1012;
    public static final int TYPE_NULL = 0;
    public static final int TYPE_TEXT = 1008;
    public static final int TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW = 1017;
    public static final int TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW = 1016;
    public static final int TYPE_VERTICAL_DOUBLE_ARROW = 1015;
    public static final int TYPE_VERTICAL_TEXT = 1009;
    public static final int TYPE_WAIT = 1004;
    public static final int TYPE_ZOOM_IN = 1018;
    public static final int TYPE_ZOOM_OUT = 1019;
    private Object mPointerIcon;

    /* renamed from: android.support.v4.view.PointerIconCompat$PointerIconCompatImpl */
    /* loaded from: classes.dex */
    interface PointerIconCompatImpl {
        Object create(Bitmap bitmap, float f, float f2);

        Object getSystemIcon(Context context, int i);

        Object load(Resources resources, int i);
    }

    private PointerIconCompat(Object obj) {
        this.mPointerIcon = obj;
    }

    public Object getPointerIcon() {
        return this.mPointerIcon;
    }

    /* renamed from: android.support.v4.view.PointerIconCompat$BasePointerIconCompatImpl */
    /* loaded from: classes.dex */
    static class BasePointerIconCompatImpl implements PointerIconCompatImpl {
        BasePointerIconCompatImpl() {
        }

        @Override // android.support.p004v4.view.PointerIconCompat.PointerIconCompatImpl
        public Object getSystemIcon(Context context, int i) {
            return null;
        }

        @Override // android.support.p004v4.view.PointerIconCompat.PointerIconCompatImpl
        public Object create(Bitmap bitmap, float f, float f2) {
            return null;
        }

        @Override // android.support.p004v4.view.PointerIconCompat.PointerIconCompatImpl
        public Object load(Resources resources, int i) {
            return null;
        }
    }

    /* renamed from: android.support.v4.view.PointerIconCompat$Api24PointerIconCompatImpl */
    /* loaded from: classes.dex */
    static class Api24PointerIconCompatImpl extends BasePointerIconCompatImpl {
        Api24PointerIconCompatImpl() {
        }

        @Override // android.support.p004v4.view.PointerIconCompat.BasePointerIconCompatImpl, android.support.p004v4.view.PointerIconCompat.PointerIconCompatImpl
        public Object getSystemIcon(Context context, int i) {
            return PointerIconCompatApi24.getSystemIcon(context, i);
        }

        @Override // android.support.p004v4.view.PointerIconCompat.BasePointerIconCompatImpl, android.support.p004v4.view.PointerIconCompat.PointerIconCompatImpl
        public Object create(Bitmap bitmap, float f, float f2) {
            return PointerIconCompatApi24.create(bitmap, f, f2);
        }

        @Override // android.support.p004v4.view.PointerIconCompat.BasePointerIconCompatImpl, android.support.p004v4.view.PointerIconCompat.PointerIconCompatImpl
        public Object load(Resources resources, int i) {
            return PointerIconCompatApi24.load(resources, i);
        }
    }

    static {
        if (BuildCompat.isAtLeastN()) {
            IMPL = new Api24PointerIconCompatImpl();
        } else {
            IMPL = new BasePointerIconCompatImpl();
        }
    }

    public static PointerIconCompat getSystemIcon(Context context, int i) {
        return new PointerIconCompat(IMPL.getSystemIcon(context, i));
    }

    public static PointerIconCompat create(Bitmap bitmap, float f, float f2) {
        return new PointerIconCompat(IMPL.create(bitmap, f, f2));
    }

    public static PointerIconCompat load(Resources resources, int i) {
        return new PointerIconCompat(IMPL.load(resources, i));
    }
}
