package android.support.p004v4.content;

import android.content.SharedPreferences;
import android.os.Build;
import android.support.annotation.NonNull;
/* renamed from: android.support.v4.content.SharedPreferencesCompat */
/* loaded from: classes.dex */
public final class SharedPreferencesCompat {

    /* renamed from: android.support.v4.content.SharedPreferencesCompat$EditorCompat */
    /* loaded from: classes.dex */
    public static final class EditorCompat {
        private static EditorCompat sInstance;
        private final Helper mHelper;

        /* renamed from: android.support.v4.content.SharedPreferencesCompat$EditorCompat$Helper */
        /* loaded from: classes.dex */
        interface Helper {
            void apply(@NonNull SharedPreferences.Editor editor);
        }

        /* renamed from: android.support.v4.content.SharedPreferencesCompat$EditorCompat$EditorHelperBaseImpl */
        /* loaded from: classes.dex */
        static class EditorHelperBaseImpl implements Helper {
            private EditorHelperBaseImpl() {
            }

            @Override // android.support.p004v4.content.SharedPreferencesCompat.EditorCompat.Helper
            public void apply(@NonNull SharedPreferences.Editor editor) {
                editor.commit();
            }
        }

        /* renamed from: android.support.v4.content.SharedPreferencesCompat$EditorCompat$EditorHelperApi9Impl */
        /* loaded from: classes.dex */
        static class EditorHelperApi9Impl implements Helper {
            private EditorHelperApi9Impl() {
            }

            @Override // android.support.p004v4.content.SharedPreferencesCompat.EditorCompat.Helper
            public void apply(@NonNull SharedPreferences.Editor editor) {
                EditorCompatGingerbread.apply(editor);
            }
        }

        private EditorCompat() {
            if (Build.VERSION.SDK_INT >= 9) {
                this.mHelper = new EditorHelperApi9Impl();
            } else {
                this.mHelper = new EditorHelperBaseImpl();
            }
        }

        public static EditorCompat getInstance() {
            if (sInstance == null) {
                sInstance = new EditorCompat();
            }
            return sInstance;
        }

        public void apply(@NonNull SharedPreferences.Editor editor) {
            this.mHelper.apply(editor);
        }
    }

    private SharedPreferencesCompat() {
    }
}
