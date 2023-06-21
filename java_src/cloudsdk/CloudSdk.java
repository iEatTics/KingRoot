package cloudsdk;

import android.content.Context;
import com.kingroot.kinguser.bmg;
/* loaded from: classes.dex */
public final class CloudSdk implements ICloudSdk {

    /* renamed from: a */
    private static CloudSdk f91a;

    /* renamed from: b */
    private ICloudSdk f92b = new bmg();

    private CloudSdk() {
    }

    public static CloudSdk getInstance() {
        if (f91a == null) {
            synchronized (CloudSdk.class) {
                f91a = new CloudSdk();
            }
        }
        return f91a;
    }

    @Override // cloudsdk.ICloudSdk
    public final String getWorkingDir() {
        return this.f92b.getWorkingDir();
    }

    @Override // cloudsdk.ICloudSdk
    public final IActionResult initialize(Context context, SdkConfig sdkConfig) {
        return this.f92b.initialize(context, sdkConfig);
    }

    @Override // cloudsdk.ICloudSdk
    public final ILoadResult loadModule(int i) {
        return this.f92b.loadModule(i);
    }

    @Override // cloudsdk.ICloudSdk
    public final ILoadResult loadModule(int i, boolean z) {
        return this.f92b.loadModule(i, z);
    }

    @Override // cloudsdk.ICloudSdk
    public final boolean destoryModule(int i) {
        return this.f92b.destoryModule(i);
    }

    @Override // cloudsdk.ICloudSdk
    public final boolean destoryAllModules() {
        return this.f92b.destoryAllModules();
    }

    @Override // cloudsdk.ICloudSdk
    public final Context getContext() {
        return this.f92b.getContext();
    }

    @Override // cloudsdk.ICloudSdk
    public final SdkConfig getConfig() {
        return this.f92b.getConfig();
    }
}
