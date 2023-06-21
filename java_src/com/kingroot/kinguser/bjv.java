package com.kingroot.kinguser;

import android.app.Service;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.support.annotation.NonNull;
import android.util.SparseArray;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.host.KlContentProvider;
import com.kingroot.loader.sdk.AbsKlApplication;
import com.kingroot.loader.sdk.KlContext;
import com.kingroot.loader.sdk.service.IKlApplicationManager;
import com.kingroot.loader.sdk.service.IKlConnectionManager;
import java.util.HashMap;
/* loaded from: classes.dex */
public class bjv implements IKlConnectionManager {
    private final SparseArray<HashMap<String, Service>> byJ = new SparseArray<>();

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public IBinder getService(int i, @NonNull Intent intent) {
        AbsKlApplication runningPluginApplication;
        HashMap<String, Service> hashMap;
        String className;
        IKlApplicationManager iKlApplicationManager = (IKlApplicationManager) KlServiceManager.getKService(IKlApplicationManager.class);
        if ((iKlApplicationManager.getRunningPluginApplication(i) != null || iKlApplicationManager.launchPlugin(i)) && (runningPluginApplication = iKlApplicationManager.getRunningPluginApplication(i)) != null) {
            HashMap<String, Service> hashMap2 = this.byJ.get(i);
            if (hashMap2 == null) {
                HashMap<String, Service> hashMap3 = new HashMap<>(1);
                this.byJ.put(i, hashMap3);
                hashMap = hashMap3;
            } else {
                hashMap = hashMap2;
            }
            ComponentName component = intent.getComponent();
            if (component != null && (className = component.getClassName()) != null) {
                Service service = hashMap.get(className);
                if (service != null) {
                    return service.onBind(intent);
                }
                try {
                    Class<?> loadClass = runningPluginApplication.getClass().getClassLoader().loadClass(className);
                    if (Service.class.isAssignableFrom(loadClass)) {
                        try {
                            Service service2 = (Service) loadClass.newInstance();
                            hashMap.put(className, service2);
                            return service2.onBind(intent);
                        } catch (Throwable th) {
                            bkq.m6550d(th);
                            return null;
                        }
                    }
                    return null;
                } catch (ClassNotFoundException e) {
                    bkq.m6550d(e);
                    return null;
                }
            }
            return null;
        }
        return null;
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public Bundle talkWithHost(@NonNull KlContext klContext, Bundle bundle) {
        bkc aeH = bkd.aeH();
        if (aeH == null) {
            return null;
        }
        return aeH.mo6578a(klContext.getPluginId(), bundle, bkd.isCoreProcess());
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public Bundle talkWithPlugin(int i, Bundle bundle) {
        AbsKlApplication runningPluginApplication = ((IKlApplicationManager) KlServiceManager.getKService(IKlApplicationManager.class)).getRunningPluginApplication(i);
        if (runningPluginApplication == null) {
            return null;
        }
        return runningPluginApplication.onHostCall(bundle);
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public Cursor query(int i, @NonNull Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return bkd.aeG().getContentResolver().query(KlContentProvider.m1225a(uri, i), strArr, str, strArr2, str2);
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public String getType(int i, @NonNull Uri uri) {
        return bkd.aeG().getContentResolver().getType(KlContentProvider.m1225a(uri, i));
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public Uri insert(int i, @NonNull Uri uri, ContentValues contentValues) {
        return bkd.aeG().getContentResolver().insert(KlContentProvider.m1225a(uri, i), contentValues);
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public int delete(int i, @NonNull Uri uri, String str, String[] strArr) {
        return bkd.aeG().getContentResolver().delete(KlContentProvider.m1225a(uri, i), str, strArr);
    }

    @Override // com.kingroot.loader.sdk.service.IKlConnectionManager
    public int update(int i, @NonNull Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return bkd.aeG().getContentResolver().update(KlContentProvider.m1225a(uri, i), contentValues, str, strArr);
    }
}
