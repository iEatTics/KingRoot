package com.kingroot.kinguser;

import android.os.Process;
import android.text.TextUtils;
import android.util.SparseArray;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.host.stub.KlActivity;
import com.kingroot.loader.sdk.AbsKlApplication;
import com.kingroot.loader.sdk.KlContext;
import com.kingroot.loader.sdk.KlPackage;
import com.kingroot.loader.sdk.service.IKlApplicationManager;
import com.kingroot.loader.sdk.service.IKlLaunchObserver;
import com.kingroot.loader.sdk.service.IKlPackageManager;
import java.io.File;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class bju implements IKlApplicationManager {

    /* renamed from: a */
    private final String f1700a = getClass().getName();
    private final Object byG = new Object();

    /* renamed from: c */
    private final SparseArray<AbsKlApplication> f1701c = new SparseArray<>();
    private final SparseArray<WeakReference<ClassLoader>> byH = new SparseArray<>();
    private IKlLaunchObserver byI = null;

    @Override // com.kingroot.loader.sdk.service.IKlApplicationManager
    public AbsKlApplication getRunningPluginApplication(int i) {
        AbsKlApplication pluginApplication = getPluginApplication(i);
        if (pluginApplication == null || !pluginApplication.isRunning()) {
            return null;
        }
        return pluginApplication;
    }

    @Override // com.kingroot.loader.sdk.service.IKlApplicationManager
    public AbsKlApplication getPluginApplication(int i) {
        AbsKlApplication absKlApplication;
        synchronized (this.f1701c) {
            absKlApplication = this.f1701c.get(i);
        }
        return absKlApplication;
    }

    /* renamed from: a */
    private void m6611a(int i, ClassLoader classLoader) {
        if (i != -1 && classLoader != null) {
            synchronized (this.byH) {
                this.byH.put(i, new WeakReference<>(classLoader));
            }
        }
    }

    @Override // com.kingroot.loader.sdk.service.IKlApplicationManager
    public void stopPlugin(int i, boolean z) {
        synchronized (this.byG) {
            AbsKlApplication pluginApplication = getPluginApplication(i);
            if (pluginApplication != null) {
                if (pluginApplication.isRunning()) {
                    pluginApplication.onDestroy();
                }
                if (z) {
                    synchronized (this.f1701c) {
                        this.f1701c.delete(i);
                        m6611a(i, pluginApplication.getClass().getClassLoader());
                    }
                    System.gc();
                }
            }
        }
    }

    @Override // com.kingroot.loader.sdk.service.IKlApplicationManager
    public void setLaunchObserver(IKlLaunchObserver iKlLaunchObserver) {
        this.byI = iKlLaunchObserver;
    }

    /* renamed from: ju */
    private ClassLoader m6607ju(int i) {
        WeakReference<ClassLoader> weakReference;
        synchronized (this.byH) {
            weakReference = this.byH.get(i);
        }
        if (weakReference == null) {
            return null;
        }
        ClassLoader classLoader = weakReference.get();
        if (classLoader == null) {
            synchronized (this.byH) {
                this.byH.remove(i);
            }
            return classLoader;
        }
        return classLoader;
    }

    /* renamed from: c */
    private void m6608c(int i) {
        synchronized (this.byH) {
            this.byH.remove(i);
        }
    }

    /* renamed from: jv */
    private int m6606jv(int i) {
        bkg bkgVar;
        synchronized (this.byG) {
            if (getPluginApplication(i) != null) {
                return -7;
            }
            IKlPackageManager iKlPackageManager = (IKlPackageManager) KlServiceManager.getKService(IKlPackageManager.class);
            KlPackage installedKlPackage = iKlPackageManager.getInstalledKlPackage(i);
            if (installedKlPackage == null) {
                return -1;
            }
            if (installedKlPackage.config.isPluginDisabled()) {
                return -6;
            }
            ClassLoader m6607ju = m6607ju(i);
            if (m6607ju == null) {
                bkgVar = new bkg(installedKlPackage.getPluginSourcePath(), new File(installedKlPackage.getPluginDexOutPath()), installedKlPackage.getPluginLibPath(), KlActivity.class.getClassLoader());
            } else {
                m6608c(i);
                bkgVar = m6607ju;
            }
            if (bkgVar == null) {
                return -2;
            }
            KlContext klContext = new KlContext(bkgVar, bkd.aeG(), installedKlPackage);
            if (klContext == null) {
                return -3;
            }
            String str = installedKlPackage.klInfo.foreEntryClass;
            if (TextUtils.isEmpty(str)) {
                return -9;
            }
            AbsKlApplication absKlApplication = (AbsKlApplication) bkgVar.loadClass(str).newInstance();
            if (absKlApplication == null) {
                return -4;
            }
            absKlApplication.attachKlContext(klContext, bkd.isCoreProcess());
            iKlPackageManager.markPluginRunning(i, Process.myPid());
            synchronized (this.f1701c) {
                this.f1701c.put(i, absKlApplication);
            }
            return 1;
        }
    }

    @Override // com.kingroot.loader.sdk.service.IKlApplicationManager
    public boolean launchPlugin(int i) {
        int m6606jv = m6606jv(i);
        if (m6606jv != -7) {
            m6612a(i, m6606jv);
            if (m6606jv != 1) {
                return false;
            }
        }
        int i2 = -1;
        try {
            i2 = m6613a(i);
        } catch (Throwable th) {
            bkq.m6550d(th);
            m6609b(i, th);
        }
        if (i2 != -3) {
            m6610am(i, i2);
            if (i2 != 1) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public int m6613a(int i) {
        int i2;
        AbsKlApplication pluginApplication = getPluginApplication(i);
        if (pluginApplication == null) {
            return -2;
        }
        synchronized (this.byG) {
            if (pluginApplication.isRunning()) {
                i2 = -3;
            } else {
                pluginApplication.onCreate();
                i2 = 1;
            }
        }
        return i2;
    }

    /* renamed from: a */
    private void m6612a(int i, int i2) {
        IKlLaunchObserver iKlLaunchObserver = this.byI;
        if (iKlLaunchObserver != null) {
            iKlLaunchObserver.onPluginLoaded(i, i2);
        }
    }

    /* renamed from: am */
    private void m6610am(int i, int i2) {
        IKlLaunchObserver iKlLaunchObserver = this.byI;
        if (iKlLaunchObserver != null) {
            iKlLaunchObserver.onPluginLaunched(i, i2);
        }
    }

    /* renamed from: b */
    private void m6609b(int i, Throwable th) {
        IKlLaunchObserver iKlLaunchObserver = this.byI;
        if (iKlLaunchObserver != null) {
            iKlLaunchObserver.onPluginLaunchException(i, th);
        }
    }
}
