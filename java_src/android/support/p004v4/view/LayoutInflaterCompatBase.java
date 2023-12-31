package android.support.p004v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
/* renamed from: android.support.v4.view.LayoutInflaterCompatBase */
/* loaded from: classes.dex */
class LayoutInflaterCompatBase {
    LayoutInflaterCompatBase() {
    }

    /* renamed from: android.support.v4.view.LayoutInflaterCompatBase$FactoryWrapper */
    /* loaded from: classes.dex */
    static class FactoryWrapper implements LayoutInflater.Factory {
        final LayoutInflaterFactory mDelegateFactory;

        /* JADX INFO: Access modifiers changed from: package-private */
        public FactoryWrapper(LayoutInflaterFactory layoutInflaterFactory) {
            this.mDelegateFactory = layoutInflaterFactory;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.mDelegateFactory.onCreateView(null, str, context, attributeSet);
        }

        public String toString() {
            return getClass().getName() + "{" + this.mDelegateFactory + "}";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
        layoutInflater.setFactory(layoutInflaterFactory != null ? new FactoryWrapper(layoutInflaterFactory) : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static LayoutInflaterFactory getFactory(LayoutInflater layoutInflater) {
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof FactoryWrapper) {
            return ((FactoryWrapper) factory).mDelegateFactory;
        }
        return null;
    }
}
