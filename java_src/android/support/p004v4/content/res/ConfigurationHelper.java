package android.support.p004v4.content.res;

import android.content.res.Resources;
import android.os.Build;
import android.support.annotation.NonNull;
/* renamed from: android.support.v4.content.res.ConfigurationHelper */
/* loaded from: classes.dex */
public final class ConfigurationHelper {
    private static final ConfigurationHelperImpl IMPL;

    /* renamed from: android.support.v4.content.res.ConfigurationHelper$ConfigurationHelperImpl */
    /* loaded from: classes.dex */
    interface ConfigurationHelperImpl {
        int getDensityDpi(@NonNull Resources resources);

        int getScreenHeightDp(@NonNull Resources resources);

        int getScreenWidthDp(@NonNull Resources resources);

        int getSmallestScreenWidthDp(@NonNull Resources resources);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            IMPL = new JellybeanMr1Impl();
        } else if (i >= 13) {
            IMPL = new HoneycombMr2Impl();
        } else {
            IMPL = new DonutImpl();
        }
    }

    private ConfigurationHelper() {
    }

    /* renamed from: android.support.v4.content.res.ConfigurationHelper$DonutImpl */
    /* loaded from: classes.dex */
    static class DonutImpl implements ConfigurationHelperImpl {
        private DonutImpl() {
        }

        @Override // android.support.p004v4.content.res.ConfigurationHelper.ConfigurationHelperImpl
        public int getScreenHeightDp(@NonNull Resources resources) {
            return ConfigurationHelperDonut.getScreenHeightDp(resources);
        }

        @Override // android.support.p004v4.content.res.ConfigurationHelper.ConfigurationHelperImpl
        public int getScreenWidthDp(@NonNull Resources resources) {
            return ConfigurationHelperDonut.getScreenWidthDp(resources);
        }

        @Override // android.support.p004v4.content.res.ConfigurationHelper.ConfigurationHelperImpl
        public int getSmallestScreenWidthDp(@NonNull Resources resources) {
            return ConfigurationHelperDonut.getSmallestScreenWidthDp(resources);
        }

        @Override // android.support.p004v4.content.res.ConfigurationHelper.ConfigurationHelperImpl
        public int getDensityDpi(@NonNull Resources resources) {
            return ConfigurationHelperDonut.getDensityDpi(resources);
        }
    }

    /* renamed from: android.support.v4.content.res.ConfigurationHelper$HoneycombMr2Impl */
    /* loaded from: classes.dex */
    static class HoneycombMr2Impl extends DonutImpl {
        private HoneycombMr2Impl() {
            super();
        }

        @Override // android.support.p004v4.content.res.ConfigurationHelper.DonutImpl, android.support.p004v4.content.res.ConfigurationHelper.ConfigurationHelperImpl
        public int getScreenHeightDp(@NonNull Resources resources) {
            return ConfigurationHelperHoneycombMr2.getScreenHeightDp(resources);
        }

        @Override // android.support.p004v4.content.res.ConfigurationHelper.DonutImpl, android.support.p004v4.content.res.ConfigurationHelper.ConfigurationHelperImpl
        public int getScreenWidthDp(@NonNull Resources resources) {
            return ConfigurationHelperHoneycombMr2.getScreenWidthDp(resources);
        }

        @Override // android.support.p004v4.content.res.ConfigurationHelper.DonutImpl, android.support.p004v4.content.res.ConfigurationHelper.ConfigurationHelperImpl
        public int getSmallestScreenWidthDp(@NonNull Resources resources) {
            return ConfigurationHelperHoneycombMr2.getSmallestScreenWidthDp(resources);
        }
    }

    /* renamed from: android.support.v4.content.res.ConfigurationHelper$JellybeanMr1Impl */
    /* loaded from: classes.dex */
    static class JellybeanMr1Impl extends HoneycombMr2Impl {
        private JellybeanMr1Impl() {
            super();
        }

        @Override // android.support.p004v4.content.res.ConfigurationHelper.DonutImpl, android.support.p004v4.content.res.ConfigurationHelper.ConfigurationHelperImpl
        public int getDensityDpi(@NonNull Resources resources) {
            return ConfigurationHelperJellybeanMr1.getDensityDpi(resources);
        }
    }

    public static int getScreenHeightDp(@NonNull Resources resources) {
        return IMPL.getScreenHeightDp(resources);
    }

    public static int getScreenWidthDp(@NonNull Resources resources) {
        return IMPL.getScreenWidthDp(resources);
    }

    public static int getSmallestScreenWidthDp(@NonNull Resources resources) {
        return IMPL.getSmallestScreenWidthDp(resources);
    }

    public static int getDensityDpi(@NonNull Resources resources) {
        return IMPL.getDensityDpi(resources);
    }
}
