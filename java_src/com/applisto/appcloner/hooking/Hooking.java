package com.applisto.appcloner.hooking;

import andhook.lib.AndHook;
import andhook.lib.HookHelper;
import android.content.Context;
import android.os.Build;
import com.applisto.appcloner.classes.util.Log;
import com.swift.sandhook.SandHook;
import com.swift.sandhook.SandHookConfig;
import com.swift.sandhook.wrapper.HookErrorException;
import com.swift.sandhook.wrapper.HookWrapper;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public class Hooking {
    private static final String TAG = Hooking.class.getSimpleName();
    private static ExecutorService sHookExecutor;
    private static boolean sHookingInited;
    private static Boolean sUseSandHook;

    /* JADX WARN: Removed duplicated region for block: B:21:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0064 A[Catch: all -> 0x007c, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0014, B:10:0x001e, B:12:0x0026, B:14:0x002f, B:19:0x003b, B:22:0x005c, B:24:0x0064, B:25:0x0074), top: B:31:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized boolean useSandHook() {
        boolean booleanValue;
        boolean z;
        synchronized (Hooking.class) {
            if (sUseSandHook == null) {
                sUseSandHook = false;
                if (Build.VERSION.SDK_INT >= 21) {
                    List<String> abis = getAbis();
                    String str = abis.size() > 0 ? abis.get(0) : null;
                    if (!"x86".equals(str) && !"x86_64".equals(str)) {
                        z = false;
                        String str2 = TAG;
                        Log.m13704i(str2, "useSandHook; primaryAbi: " + str + ", x86: " + z);
                        sUseSandHook = Boolean.valueOf(z ? false : true);
                        if (z) {
                            sHookExecutor = Executors.newSingleThreadExecutor();
                            sHookExecutor.submit(new Runnable() { // from class: com.applisto.appcloner.hooking.Hooking.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        Thread.sleep(500L);
                                    } catch (InterruptedException unused) {
                                    }
                                }
                            });
                        }
                    }
                    z = true;
                    String str22 = TAG;
                    Log.m13704i(str22, "useSandHook; primaryAbi: " + str + ", x86: " + z);
                    sUseSandHook = Boolean.valueOf(z ? false : true);
                    if (z) {
                    }
                }
            }
            booleanValue = sUseSandHook.booleanValue();
        }
        return booleanValue;
    }

    private static List<String> getAbis() {
        if (Build.VERSION.SDK_INT >= 21) {
            return Arrays.asList(Build.SUPPORTED_ABIS);
        }
        return Collections.singletonList(Build.CPU_ABI);
    }

    public static synchronized void initHooking(Context context) {
        synchronized (Hooking.class) {
            if (!sHookingInited) {
                sHookingInited = true;
                if (useSandHook()) {
                    Log.m13704i(TAG, "initHooking; SandHook");
                    SandHookConfig.SELF_PACKAGE_NAME = context.getPackageName();
                    SandHook.disableVMInline();
                    SandHook.tryDisableProfile(SandHookConfig.SELF_PACKAGE_NAME);
                    SandHook.disableDex2oatInline(false);
                    if (SandHookConfig.SDK_INT >= 28) {
                        SandHook.passApiCheck();
                    }
                    return;
                }
                Log.m13704i(TAG, "initHooking; AndHook");
                SandHookConfig.SELF_PACKAGE_NAME = context.getPackageName();
                AndHook.ensureNativeLibraryLoaded(null);
            }
        }
    }

    public static void addHookClass(Class cls) {
        String str = TAG;
        Log.m13704i(str, "addHookClass; hookWrapperClass: " + cls);
        try {
            if (useSandHook()) {
                SandHook.addHookClass(cls);
                return;
            }
            Class targetHookClass = HookWrapper.getTargetHookClass(null, cls);
            if (targetHookClass == null) {
                throw new HookErrorException("Failed to find target hook class for " + cls.getName());
            }
            AndHook.ensureClassInitialized(targetHookClass);
            for (final HookWrapper.HookEntity hookEntity : HookWrapper.getHookMethods(null, targetHookClass, cls).values()) {
                AndHook.ensureClassInitialized(hookEntity.target.getDeclaringClass());
                Method method = (Method) hookEntity.target;
                if (Modifier.isStatic(method.getModifiers())) {
                    try {
                        ArrayList arrayList = new ArrayList(Arrays.asList(method.getParameterTypes()));
                        arrayList.add(0, Class.class);
                        hookEntity.hook = hookEntity.hook.getDeclaringClass().getMethod(hookEntity.hook.getName(), (Class[]) arrayList.toArray(new Class[0]));
                    } catch (Exception e) {
                        Log.m13698w(TAG, e);
                        System.exit(1);
                    }
                }
                if (sHookExecutor != null) {
                    sHookExecutor.submit(new Runnable() { // from class: com.applisto.appcloner.hooking.Hooking.2
                        @Override // java.lang.Runnable
                        public void run() {
                            Log.m13704i(Hooking.TAG, "addHookClass; hooking using thread executor...");
                            HookHelper.hook(HookWrapper.HookEntity.this.target, HookWrapper.HookEntity.this.hook);
                        }
                    });
                } else {
                    HookHelper.hook(hookEntity.target, hookEntity.hook);
                }
            }
        } catch (Throwable th) {
            String str2 = TAG;
            Log.m13700w(str2, "addHookClass; t: " + th + ", cause: " + th.getCause());
        }
    }

    public static <T> T callStaticOrigin(Method method, Object... objArr) throws Throwable {
        if (useSandHook()) {
            return (T) SandHook.callOriginByBackup(method, null, objArr);
        }
        return (T) HookHelper.invokeObjectOrigin(null, objArr);
    }

    public static <T> T callInstanceOrigin(Method method, Object obj, Object... objArr) throws Throwable {
        if (useSandHook()) {
            return (T) SandHook.callOriginByBackup(method, obj, objArr);
        }
        return (T) HookHelper.invokeObjectOrigin(obj, objArr);
    }
}
