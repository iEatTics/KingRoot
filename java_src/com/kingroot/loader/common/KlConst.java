package com.kingroot.loader.common;
/* loaded from: classes.dex */
public final class KlConst {
    public static final String BUILDIN_PLUGIN_DIR_ASSETS_NAME = "plugins";
    public static final String DEFAULT_CPU_TYPE = "armeabi";
    public static final int DEFAULT_THEME_ID = 0;
    public static final String MERIPI_LABEL = "meripi";
    public static final String PLUGIN_APP_DIR_NAME = "app";
    public static final String PLUGIN_BASE_DIR_NAME = "workspace";
    public static final String PLUGIN_CACHE_DIR_NAME = "cache";
    public static final String PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR = "-";
    public static final String PLUGIN_CONFIG_ENTRY = "assets/meripi.m";
    public static final String PLUGIN_DATA_DIR_NAME = "data";
    public static final String PLUGIN_DEX_DIR_NAME = "dalvik-cache";
    public static final String PLUGIN_EXTRACT_DIR_NAME = "klex";
    public static final String PLUGIN_FILES_DIR_NAME = "files";
    public static final String PLUGIN_FILE_NAME_SUFFIX = ".apk";
    public static final String PLUGIN_LIB_DIR_NAME = "lib";
    public static final String PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR = "_";
    public static final String PLUGIN_SOURCE_NAME_FORMAT = "%s-%s.apk";

    /* loaded from: classes.dex */
    public static final class KlBundleKey {
        public static final String ARGV = "com.kingroot.loader.argv";
        public static final String FRAGMENT_NAME = "com.kingroot.loader.fragment_name";
        public static final String PLUGIN_ID = "com.kingroot.loader.plugin_id";
    }

    /* loaded from: classes.dex */
    public static final class PluginCreateFragmentResult {
        public static final int CREATE_FAILED_EMPTY_FRAGMENT_ENTRY = -1;
        public static final int CREATE_FAILED_EXCEPTION_CLASS_NOT_FOUND = -6;
        public static final int CREATE_FAILED_EXCEPTION_ILLEGAL_ACCESS = -5;
        public static final int CREATE_FAILED_EXCEPTION_INSTANTIATION = -4;
        public static final int CREATE_FAILED_NO_LOADED_APPLICATION = -2;
        public static final int CREATE_FAILED_NO_RUNNING_APPLICATION = -3;
        public static final int CREATE_SUCCEEDED = 1;
    }

    /* loaded from: classes.dex */
    public static final class PluginInstallResult {
        public static final int INSTALL_FAILED_ALREADY_EXISTS = -1;
        public static final int INSTALL_FAILED_COPY_APK = -9;
        public static final int INSTALL_FAILED_CRATE_PKG_OBJ = -22;
        public static final int INSTALL_FAILED_EXTRACT_PLUGIN = -15;
        public static final int INSTALL_FAILED_EXTRACT_SO = -10;
        public static final int INSTALL_FAILED_GET_APK_MD5 = -16;
        public static final int INSTALL_FAILED_INVALID_APK = -2;
        public static final int INSTALL_FAILED_INVALID_URI = -8;
        public static final int INSTALL_FAILED_NEWER_SDK = -4;
        public static final int INSTALL_FAILED_OLDER_PLUGIN = -14;
        public static final int INSTALL_FAILED_OLDER_SDK = -3;
        public static final int INSTALL_FAILED_PLUGIN_CL_ISN_RECYCLED = -17;
        public static final int INSTALL_FAILED_PLUGIN_ENTRY_CLASS_NOT_FOUND = -20;
        public static final int INSTALL_FAILED_PLUGIN_IS_RUNNING_POSSIBLY = -13;
        public static final int INSTALL_FAILED_PLUGIN_NO_ENTRY = -21;
        public static final int INSTALL_FAILED_PLUGIN_UNSUPPORTED = -19;
        public static final int INSTALL_FAILED_UNKNOWN_INTERNAL = -12;
        public static final int INSTALL_FAILED_VERSION_DOWNGRADE = -5;
        public static final int INSTALL_PARSE_FAILED_BAD_MANIFEST = -7;
        public static final int INSTALL_PARSE_FAILED_NOT_APK = -6;
        public static final int INSTALL_PARSE_FAILED_NOT_SOURCE_APK = -11;
        public static final int INSTALL_SUCCEEDED = 1;
        public static final int INSTALL_TRANSFER_MERI_PI_TO_KLINFO = -18;
    }

    /* loaded from: classes.dex */
    public static final class PluginLaunchResult {
        public static final int LAUNCH_FAILED_ALREADY_LAUNCHED = -3;
        public static final int LAUNCH_FAILED_NO_LOADED_APPLICATION = -2;
        public static final int LAUNCH_FAILED_PLUGIN_INTERNAL = -4;
        public static final int LAUNCH_FAILED_UNKNOWN_INTERNAL = -1;
        public static final int LAUNCH_SUCCESS = 1;
    }

    /* loaded from: classes.dex */
    public static final class PluginLoadResult {
        public static final int LOAD_FAILED_ALREADY_LOADED = -7;
        public static final int LOAD_FAILED_CREATE_CLASS_LOADER_ERR = -2;
        public static final int LOAD_FAILED_CREATE_CONTEXT_ERR = -3;
        public static final int LOAD_FAILED_EMPTY_BACK_ENTRY = -8;
        public static final int LOAD_FAILED_EMPTY_FORE_ENTRY = -9;
        public static final int LOAD_FAILED_INITIALIZE_APPLICATION_ERR = -5;
        public static final int LOAD_FAILED_INSTANTIATE_APPLICATION_ERR = -4;
        public static final int LOAD_FAILED_PLUGIN_DISABLED = -6;
        public static final int LOAD_FAILED_PLUGIN_ISN_INSTALLED = -1;
        public static final int LOAD_SUCCEED = 1;
    }

    /* loaded from: classes.dex */
    public static final class PluginPostUpdateResult {
        public static final int POST_FAIL_INVALID_PATH = -1;
        public static final int POST_FAIL_LOWER_VERSION_CODE = -4;
        public static final int POST_FAIL_NOT_INSTALLED = -3;
        public static final int POST_FAIL_PARSE_MANIFEST_FAIL = -2;
        public static final int POST_SUCCESS = 0;
    }

    /* loaded from: classes.dex */
    public static final class PluginState {
        public static final int INSTALLED = 1;
        public static final int INVALID = 0;
        public static final int INVALID_KEEP_DATA = 3;
        @Deprecated
        public static final int NOT_INSTALLED = 2;
    }
}
