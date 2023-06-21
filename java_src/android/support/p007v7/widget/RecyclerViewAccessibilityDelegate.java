package android.support.p007v7.widget;

import android.os.Bundle;
import android.support.p004v4.view.AccessibilityDelegateCompat;
import android.support.p004v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
/* renamed from: android.support.v7.widget.RecyclerViewAccessibilityDelegate */
/* loaded from: classes.dex */
public class RecyclerViewAccessibilityDelegate extends AccessibilityDelegateCompat {
    final AccessibilityDelegateCompat mItemDelegate = new AccessibilityDelegateCompat() { // from class: android.support.v7.widget.RecyclerViewAccessibilityDelegate.1
        @Override // android.support.p004v4.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            if (!RecyclerViewAccessibilityDelegate.this.shouldIgnore() && RecyclerViewAccessibilityDelegate.this.mRecyclerView.getLayoutManager() != null) {
                RecyclerViewAccessibilityDelegate.this.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, accessibilityNodeInfoCompat);
            }
        }

        @Override // android.support.p004v4.view.AccessibilityDelegateCompat
        public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
            if (!super.performAccessibilityAction(view, i, bundle)) {
                if (!RecyclerViewAccessibilityDelegate.this.shouldIgnore() && RecyclerViewAccessibilityDelegate.this.mRecyclerView.getLayoutManager() != null) {
                    return RecyclerViewAccessibilityDelegate.this.mRecyclerView.getLayoutManager().performAccessibilityActionForItem(view, i, bundle);
                }
                return false;
            }
            return true;
        }
    };
    final RecyclerView mRecyclerView;

    public RecyclerViewAccessibilityDelegate(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldIgnore() {
        return this.mRecyclerView.hasPendingAdapterUpdates();
    }

    @Override // android.support.p004v4.view.AccessibilityDelegateCompat
    public boolean performAccessibilityAction(View view, int i, Bundle bundle) {
        if (super.performAccessibilityAction(view, i, bundle)) {
            return true;
        }
        if (!shouldIgnore() && this.mRecyclerView.getLayoutManager() != null) {
            return this.mRecyclerView.getLayoutManager().performAccessibilityAction(i, bundle);
        }
        return false;
    }

    @Override // android.support.p004v4.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        accessibilityNodeInfoCompat.setClassName(RecyclerView.class.getName());
        if (!shouldIgnore() && this.mRecyclerView.getLayoutManager() != null) {
            this.mRecyclerView.getLayoutManager().onInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat);
        }
    }

    @Override // android.support.p004v4.view.AccessibilityDelegateCompat
    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(RecyclerView.class.getName());
        if ((view instanceof RecyclerView) && !shouldIgnore()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AccessibilityDelegateCompat getItemDelegate() {
        return this.mItemDelegate;
    }
}
