package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.p004v4.view.PointerIconCompat;
import cloudsdk.IActionCallback;
import cloudsdk.IActionResult;
import cloudsdk.IModule;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public final class bmd implements IModule {
    private bme bBd;
    private Context bBe;
    private Context bBf;
    private Object bBg;
    private Method bBh;
    private Method bBi;
    private Method bBj;
    private Method bBk;

    public bmd(Context context, bme bmeVar) {
        this.bBe = context;
        this.bBd = bmeVar;
        try {
            Class<?> loadClass = bmj.m6390e(bmeVar).loadClass(this.bBd.bBt);
            this.bBf = new bmo(context, this.bBd.bBu, this.bBd.f1750vw);
            this.bBg = loadClass.newInstance();
            try {
                this.bBh = loadClass.getMethod("onCreate", Context.class);
                this.bBh.invoke(this.bBg, this.bBf);
            } catch (NoSuchMethodException e) {
            } catch (Exception e2) {
            }
            try {
                this.bBi = loadClass.getMethod("onExecute", Context.class, Integer.TYPE, Bundle.class);
            } catch (NoSuchMethodException e3) {
            }
            try {
                this.bBj = loadClass.getMethod("onExecute", Context.class, Integer.TYPE, Bundle.class, Handler.Callback.class);
            } catch (NoSuchMethodException e4) {
            }
            try {
                this.bBk = loadClass.getMethod("onDestory", new Class[0]);
            } catch (NoSuchMethodException e5) {
            }
        } catch (Exception e6) {
            throw e6;
        }
    }

    @Override // cloudsdk.IModule
    public final IActionResult execute(int i, Bundle bundle) {
        return execute(this.bBf, i, bundle);
    }

    @Override // cloudsdk.IModule
    public final IActionResult execute(Context context, int i, Bundle bundle) {
        bmc bmcVar;
        bmu.m6327bI(this.bBe);
        try {
            Object invoke = this.bBi.invoke(this.bBg, context, Integer.valueOf(i), bundle);
            if (invoke != null && (invoke instanceof Bundle)) {
                bmcVar = bmc.valueOf((Bundle) invoke);
            } else {
                bmcVar = new bmc(1, PointerIconCompat.TYPE_TEXT, "action = " + i, null);
            }
            return bmcVar;
        } catch (Exception e) {
            return new bmc(1, PointerIconCompat.TYPE_CROSSHAIR, "action = " + i, null);
        }
    }

    @Override // cloudsdk.IModule
    public final IActionResult execute(int i, Bundle bundle, Handler.Callback callback) {
        return execute(this.bBf, i, bundle, callback);
    }

    @Override // cloudsdk.IModule
    public final IActionResult execute(Context context, int i, Bundle bundle, Handler.Callback callback) {
        bmc bmcVar;
        bmu.m6327bI(this.bBe);
        try {
            Object invoke = this.bBj.invoke(this.bBg, context, Integer.valueOf(i), bundle, callback);
            if (invoke != null && (invoke instanceof Bundle)) {
                bmcVar = bmc.valueOf((Bundle) invoke);
            } else {
                bmcVar = new bmc(1, PointerIconCompat.TYPE_TEXT, "action = " + i, null);
            }
            return bmcVar;
        } catch (Exception e) {
            return new bmc(1, PointerIconCompat.TYPE_CROSSHAIR, "action = " + i, null);
        }
    }

    @Override // cloudsdk.IModule
    public final boolean asyncExecute(int i, Bundle bundle, IActionCallback iActionCallback) {
        return asyncExecute(this.bBf, i, bundle, iActionCallback);
    }

    @Override // cloudsdk.IModule
    public final boolean asyncExecute(final Context context, final int i, final Bundle bundle, final IActionCallback iActionCallback) {
        new bmq() { // from class: com.kingroot.kinguser.bmd.1
            @Override // com.kingroot.kinguser.bmq, java.lang.Runnable
            public final void run() {
                iActionCallback.onCallback(context, bmd.this.execute(context, i, bundle));
            }
        }.m6355co();
        return true;
    }

    @Override // cloudsdk.IModule
    public final boolean destory() {
        boolean z;
        if (this.bBk != null) {
            Object obj = null;
            try {
                obj = this.bBk.invoke(this.bBg, new Object[0]);
            } catch (IllegalAccessException e) {
            } catch (IllegalArgumentException e2) {
            } catch (InvocationTargetException e3) {
            }
            if (obj != null && (obj instanceof Bundle)) {
                z = bmc.valueOf((Bundle) obj).success();
                bmu.m6311mm(this.bBd.f1750vw);
                bmj.m6389jM(this.bBd.bBq);
                System.gc();
                return z;
            }
        }
        z = false;
        bmu.m6311mm(this.bBd.f1750vw);
        bmj.m6389jM(this.bBd.bBq);
        System.gc();
        return z;
    }

    @Override // cloudsdk.IModule
    public final boolean isAlive() {
        return false;
    }

    @Override // cloudsdk.IModule
    public final int getVersion() {
        return this.bBd.versionCode;
    }

    @Override // cloudsdk.IModule
    public final bme getModuleInfo() {
        return this.bBd;
    }
}
