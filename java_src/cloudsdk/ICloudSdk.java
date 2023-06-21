package cloudsdk;

import android.content.Context;
/* loaded from: classes.dex */
public interface ICloudSdk {
    boolean destoryAllModules();

    boolean destoryModule(int i);

    SdkConfig getConfig();

    Context getContext();

    String getWorkingDir();

    IActionResult initialize(Context context, SdkConfig sdkConfig);

    ILoadResult loadModule(int i);

    ILoadResult loadModule(int i, boolean z);
}
