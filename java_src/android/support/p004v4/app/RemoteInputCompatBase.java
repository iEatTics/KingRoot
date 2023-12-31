package android.support.p004v4.app;

import android.os.Bundle;
/* renamed from: android.support.v4.app.RemoteInputCompatBase */
/* loaded from: classes.dex */
class RemoteInputCompatBase {

    /* renamed from: android.support.v4.app.RemoteInputCompatBase$RemoteInput */
    /* loaded from: classes.dex */
    public static abstract class RemoteInput {

        /* renamed from: android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory */
        /* loaded from: classes.dex */
        public interface Factory {
            RemoteInput build(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, Bundle bundle);

            RemoteInput[] newArray(int i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract boolean getAllowFreeFormInput();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract CharSequence[] getChoices();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract Bundle getExtras();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract CharSequence getLabel();

        /* JADX INFO: Access modifiers changed from: protected */
        public abstract String getResultKey();
    }

    RemoteInputCompatBase() {
    }
}
