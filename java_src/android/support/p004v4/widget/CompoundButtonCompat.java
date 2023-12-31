package android.support.p004v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.widget.CompoundButton;
/* renamed from: android.support.v4.widget.CompoundButtonCompat */
/* loaded from: classes.dex */
public final class CompoundButtonCompat {
    private static final CompoundButtonCompatImpl IMPL;

    /* renamed from: android.support.v4.widget.CompoundButtonCompat$CompoundButtonCompatImpl */
    /* loaded from: classes.dex */
    interface CompoundButtonCompatImpl {
        Drawable getButtonDrawable(CompoundButton compoundButton);

        ColorStateList getButtonTintList(CompoundButton compoundButton);

        PorterDuff.Mode getButtonTintMode(CompoundButton compoundButton);

        void setButtonTintList(CompoundButton compoundButton, ColorStateList colorStateList);

        void setButtonTintMode(CompoundButton compoundButton, PorterDuff.Mode mode);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            IMPL = new Api23CompoundButtonImpl();
        } else if (i >= 21) {
            IMPL = new LollipopCompoundButtonImpl();
        } else {
            IMPL = new BaseCompoundButtonCompat();
        }
    }

    /* renamed from: android.support.v4.widget.CompoundButtonCompat$BaseCompoundButtonCompat */
    /* loaded from: classes.dex */
    static class BaseCompoundButtonCompat implements CompoundButtonCompatImpl {
        BaseCompoundButtonCompat() {
        }

        @Override // android.support.p004v4.widget.CompoundButtonCompat.CompoundButtonCompatImpl
        public void setButtonTintList(CompoundButton compoundButton, ColorStateList colorStateList) {
            CompoundButtonCompatDonut.setButtonTintList(compoundButton, colorStateList);
        }

        @Override // android.support.p004v4.widget.CompoundButtonCompat.CompoundButtonCompatImpl
        public ColorStateList getButtonTintList(CompoundButton compoundButton) {
            return CompoundButtonCompatDonut.getButtonTintList(compoundButton);
        }

        @Override // android.support.p004v4.widget.CompoundButtonCompat.CompoundButtonCompatImpl
        public void setButtonTintMode(CompoundButton compoundButton, PorterDuff.Mode mode) {
            CompoundButtonCompatDonut.setButtonTintMode(compoundButton, mode);
        }

        @Override // android.support.p004v4.widget.CompoundButtonCompat.CompoundButtonCompatImpl
        public PorterDuff.Mode getButtonTintMode(CompoundButton compoundButton) {
            return CompoundButtonCompatDonut.getButtonTintMode(compoundButton);
        }

        @Override // android.support.p004v4.widget.CompoundButtonCompat.CompoundButtonCompatImpl
        public Drawable getButtonDrawable(CompoundButton compoundButton) {
            return CompoundButtonCompatDonut.getButtonDrawable(compoundButton);
        }
    }

    /* renamed from: android.support.v4.widget.CompoundButtonCompat$LollipopCompoundButtonImpl */
    /* loaded from: classes.dex */
    static class LollipopCompoundButtonImpl extends BaseCompoundButtonCompat {
        LollipopCompoundButtonImpl() {
        }

        @Override // android.support.p004v4.widget.CompoundButtonCompat.BaseCompoundButtonCompat, android.support.p004v4.widget.CompoundButtonCompat.CompoundButtonCompatImpl
        public void setButtonTintList(CompoundButton compoundButton, ColorStateList colorStateList) {
            CompoundButtonCompatLollipop.setButtonTintList(compoundButton, colorStateList);
        }

        @Override // android.support.p004v4.widget.CompoundButtonCompat.BaseCompoundButtonCompat, android.support.p004v4.widget.CompoundButtonCompat.CompoundButtonCompatImpl
        public ColorStateList getButtonTintList(CompoundButton compoundButton) {
            return CompoundButtonCompatLollipop.getButtonTintList(compoundButton);
        }

        @Override // android.support.p004v4.widget.CompoundButtonCompat.BaseCompoundButtonCompat, android.support.p004v4.widget.CompoundButtonCompat.CompoundButtonCompatImpl
        public void setButtonTintMode(CompoundButton compoundButton, PorterDuff.Mode mode) {
            CompoundButtonCompatLollipop.setButtonTintMode(compoundButton, mode);
        }

        @Override // android.support.p004v4.widget.CompoundButtonCompat.BaseCompoundButtonCompat, android.support.p004v4.widget.CompoundButtonCompat.CompoundButtonCompatImpl
        public PorterDuff.Mode getButtonTintMode(CompoundButton compoundButton) {
            return CompoundButtonCompatLollipop.getButtonTintMode(compoundButton);
        }
    }

    /* renamed from: android.support.v4.widget.CompoundButtonCompat$Api23CompoundButtonImpl */
    /* loaded from: classes.dex */
    static class Api23CompoundButtonImpl extends LollipopCompoundButtonImpl {
        Api23CompoundButtonImpl() {
        }

        @Override // android.support.p004v4.widget.CompoundButtonCompat.BaseCompoundButtonCompat, android.support.p004v4.widget.CompoundButtonCompat.CompoundButtonCompatImpl
        public Drawable getButtonDrawable(CompoundButton compoundButton) {
            return CompoundButtonCompatApi23.getButtonDrawable(compoundButton);
        }
    }

    private CompoundButtonCompat() {
    }

    public static void setButtonTintList(@NonNull CompoundButton compoundButton, @Nullable ColorStateList colorStateList) {
        IMPL.setButtonTintList(compoundButton, colorStateList);
    }

    @Nullable
    public static ColorStateList getButtonTintList(@NonNull CompoundButton compoundButton) {
        return IMPL.getButtonTintList(compoundButton);
    }

    public static void setButtonTintMode(@NonNull CompoundButton compoundButton, @Nullable PorterDuff.Mode mode) {
        IMPL.setButtonTintMode(compoundButton, mode);
    }

    @Nullable
    public static PorterDuff.Mode getButtonTintMode(@NonNull CompoundButton compoundButton) {
        return IMPL.getButtonTintMode(compoundButton);
    }

    @Nullable
    public static Drawable getButtonDrawable(@NonNull CompoundButton compoundButton) {
        return IMPL.getButtonDrawable(compoundButton);
    }
}
