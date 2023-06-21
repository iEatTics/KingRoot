package com.kingroot.common.framework.service;

import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.text.TextUtils;
import com.kingroot.common.framework.service.IKServiceManager;
import com.kingroot.kinguser.AbstractC3642to;
import com.kingroot.kinguser.C3840wl;
import java.util.HashMap;
/* loaded from: classes.dex */
public class KServiceManager extends IKServiceManager.Stub {
    public static final int STOP_SERVICE_NOT_EXIST = 1;
    public static final int STOP_SERVICE_OK = 0;
    private Context mServiceContext;
    private HashMap<String, AbstractC3642to> mServiceMap;

    public KServiceManager(Context context, HashMap<String, AbstractC3642to> hashMap) {
        this.mServiceContext = context;
        this.mServiceMap = hashMap;
    }

    private void removeService(String str) {
        final AbstractC3642to abstractC3642to = this.mServiceMap.get(str);
        if (abstractC3642to != null) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.common.framework.service.KServiceManager.1
                @Override // java.lang.Runnable
                public void run() {
                    abstractC3642to.onDestroy();
                }
            });
            this.mServiceMap.remove(str);
        }
    }

    private void addService(String str) {
        if (!TextUtils.isEmpty(str) && this.mServiceMap.get(str) == null) {
            try {
                final AbstractC3642to abstractC3642to = (AbstractC3642to) Class.forName(str).newInstance();
                this.mServiceMap.put(str, abstractC3642to);
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.common.framework.service.KServiceManager.2
                    @Override // java.lang.Runnable
                    public void run() {
                        abstractC3642to.mo2133I(KServiceManager.this.mServiceContext);
                    }
                });
            } catch (Exception e) {
            }
        }
    }

    @Override // com.kingroot.common.framework.service.IKServiceManager
    public synchronized void startService(final Intent intent) {
        if (checkPermission() && intent != null) {
            String className = intent.getComponent().getClassName();
            addService(className);
            final AbstractC3642to abstractC3642to = this.mServiceMap.get(className);
            if (abstractC3642to != null) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.common.framework.service.KServiceManager.3
                    @Override // java.lang.Runnable
                    public void run() {
                        abstractC3642to.mo2132a(intent);
                    }
                });
            }
        }
    }

    @Override // com.kingroot.common.framework.service.IKServiceManager
    public synchronized void stopService(Intent intent) {
        String className;
        final AbstractC3642to abstractC3642to;
        if (checkPermission() && intent != null && (abstractC3642to = this.mServiceMap.get((className = intent.getComponent().getClassName()))) != null) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.common.framework.service.KServiceManager.4
                @Override // java.lang.Runnable
                public void run() {
                    abstractC3642to.onStop();
                }
            });
            removeService(className);
        }
    }

    @Override // com.kingroot.common.framework.service.IKServiceManager
    public synchronized void bindService(final Intent intent, final IServiceConnection iServiceConnection) {
        if (checkPermission() && intent != null) {
            String className = intent.getComponent().getClassName();
            addService(className);
            final AbstractC3642to abstractC3642to = this.mServiceMap.get(className);
            if (abstractC3642to != null) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.common.framework.service.KServiceManager.5
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            iServiceConnection.connected(abstractC3642to.onBind(intent));
                        } catch (Throwable th) {
                        }
                    }
                });
            }
        }
    }

    @Override // com.kingroot.common.framework.service.IKServiceManager
    public synchronized void unbindService(String str) {
        final AbstractC3642to abstractC3642to;
        if (checkPermission() && !TextUtils.isEmpty(str) && (abstractC3642to = this.mServiceMap.get(str)) != null) {
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.common.framework.service.KServiceManager.6
                @Override // java.lang.Runnable
                public void run() {
                    abstractC3642to.mo2131jR();
                }
            });
            removeService(str);
        }
    }

    private boolean checkPermission() {
        try {
            return Binder.getCallingUid() == Process.myUid();
        } catch (Throwable th) {
            return true;
        }
    }
}
