package android.support.p004v4.graphics.drawable;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.p004v4.graphics.drawable.DrawableWrapperDonut;
/* renamed from: android.support.v4.graphics.drawable.DrawableWrapperEclair */
/* loaded from: classes.dex */
class DrawableWrapperEclair extends DrawableWrapperDonut {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DrawableWrapperEclair(Drawable drawable) {
        super(drawable);
    }

    DrawableWrapperEclair(DrawableWrapperDonut.DrawableWrapperState drawableWrapperState, Resources resources) {
        super(drawableWrapperState, resources);
    }

    @Override // android.support.p004v4.graphics.drawable.DrawableWrapperDonut
    DrawableWrapperDonut.DrawableWrapperState mutateConstantState() {
        return new DrawableWrapperStateEclair(this.mState, null);
    }

    @Override // android.support.p004v4.graphics.drawable.DrawableWrapperDonut
    protected Drawable newDrawableFromState(Drawable.ConstantState constantState, Resources resources) {
        return constantState.newDrawable(resources);
    }

    /* renamed from: android.support.v4.graphics.drawable.DrawableWrapperEclair$DrawableWrapperStateEclair */
    /* loaded from: classes.dex */
    static class DrawableWrapperStateEclair extends DrawableWrapperDonut.DrawableWrapperState {
        DrawableWrapperStateEclair(@Nullable DrawableWrapperDonut.DrawableWrapperState drawableWrapperState, @Nullable Resources resources) {
            super(drawableWrapperState, resources);
        }

        @Override // android.support.p004v4.graphics.drawable.DrawableWrapperDonut.DrawableWrapperState, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(@Nullable Resources resources) {
            return new DrawableWrapperEclair(this, resources);
        }
    }
}
