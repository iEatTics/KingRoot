package android.support.p004v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p004v4.graphics.drawable.DrawableWrapperDonut;
/* renamed from: android.support.v4.graphics.drawable.DrawableWrapperHoneycomb */
/* loaded from: classes.dex */
class DrawableWrapperHoneycomb extends DrawableWrapperDonut {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DrawableWrapperHoneycomb(Drawable drawable) {
        super(drawable);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DrawableWrapperHoneycomb(DrawableWrapperDonut.DrawableWrapperState drawableWrapperState, Resources resources) {
        super(drawableWrapperState, resources);
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.mDrawable.jumpToCurrentState();
    }

    @Override // android.support.p004v4.graphics.drawable.DrawableWrapperDonut
    @NonNull
    DrawableWrapperDonut.DrawableWrapperState mutateConstantState() {
        return new DrawableWrapperStateHoneycomb(this.mState, null);
    }

    /* renamed from: android.support.v4.graphics.drawable.DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb */
    /* loaded from: classes.dex */
    static class DrawableWrapperStateHoneycomb extends DrawableWrapperDonut.DrawableWrapperState {
        DrawableWrapperStateHoneycomb(@Nullable DrawableWrapperDonut.DrawableWrapperState drawableWrapperState, @Nullable Resources resources) {
            super(drawableWrapperState, resources);
        }

        @Override // android.support.p004v4.graphics.drawable.DrawableWrapperDonut.DrawableWrapperState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(@Nullable Resources resources) {
            return new DrawableWrapperHoneycomb(this, resources);
        }
    }
}
