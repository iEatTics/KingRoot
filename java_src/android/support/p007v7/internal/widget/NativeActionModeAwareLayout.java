package android.support.p007v7.internal.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.View;
import android.widget.LinearLayout;
/* renamed from: android.support.v7.internal.widget.NativeActionModeAwareLayout */
/* loaded from: classes.dex */
public class NativeActionModeAwareLayout extends LinearLayout {
    private OnActionModeForChildListener mActionModeForChildListener;

    /* renamed from: android.support.v7.internal.widget.NativeActionModeAwareLayout$OnActionModeForChildListener */
    /* loaded from: classes.dex */
    public interface OnActionModeForChildListener {
        ActionMode.Callback onActionModeForChild(ActionMode.Callback callback);
    }

    public NativeActionModeAwareLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setActionModeForChildListener(OnActionModeForChildListener onActionModeForChildListener) {
        this.mActionModeForChildListener = onActionModeForChildListener;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        if (this.mActionModeForChildListener != null) {
            callback = this.mActionModeForChildListener.onActionModeForChild(callback);
        }
        return super.startActionModeForChild(view, callback);
    }
}
