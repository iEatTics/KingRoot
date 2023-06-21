package cloudsdk;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import com.kingroot.kinguser.bme;
/* loaded from: classes.dex */
public interface IModule {
    boolean asyncExecute(int i, Bundle bundle, IActionCallback iActionCallback);

    boolean asyncExecute(Context context, int i, Bundle bundle, IActionCallback iActionCallback);

    boolean destory();

    IActionResult execute(int i, Bundle bundle);

    IActionResult execute(int i, Bundle bundle, Handler.Callback callback);

    IActionResult execute(Context context, int i, Bundle bundle);

    IActionResult execute(Context context, int i, Bundle bundle, Handler.Callback callback);

    bme getModuleInfo();

    int getVersion();

    boolean isAlive();
}
