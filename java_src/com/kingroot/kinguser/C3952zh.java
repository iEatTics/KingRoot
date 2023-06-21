package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.FeatureInfo;
import android.content.pm.InstrumentationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import android.content.pm.PermissionInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.UserHandle;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.common.app.KApplication;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.kingroot.kinguser.zh */
/* loaded from: classes.dex */
public class C3952zh extends PackageManager {

    /* renamed from: Wu */
    private static volatile C3952zh f4077Wu = null;
    protected PackageManager mPackageManager;

    protected C3952zh() {
        this.mPackageManager = null;
        this.mPackageManager = bzt.m5101ge().getPackageManager();
    }

    /* renamed from: pq */
    public static C3952zh m1312pq() {
        if (f4077Wu == null) {
            synchronized (C3952zh.class) {
                if (f4077Wu == null) {
                    f4077Wu = new C3952zh();
                }
            }
        }
        return f4077Wu;
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageInfo(String str, int i) {
        PackageInfo packageInfo;
        try {
            packageInfo = this.mPackageManager.getPackageInfo(str, i);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                packageInfo = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (packageInfo == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return packageInfo;
    }

    @Override // android.content.pm.PackageManager
    public String[] currentToCanonicalPackageNames(String[] strArr) {
        try {
            return this.mPackageManager.currentToCanonicalPackageNames(strArr);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] canonicalToCurrentPackageNames(String[] strArr) {
        try {
            return this.mPackageManager.canonicalToCurrentPackageNames(strArr);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Intent getLaunchIntentForPackage(String str) {
        try {
            return this.mPackageManager.getLaunchIntentForPackage(str);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public int[] getPackageGids(String str) {
        int[] iArr;
        try {
            iArr = this.mPackageManager.getPackageGids(str);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                iArr = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (iArr == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return iArr;
    }

    @Override // android.content.pm.PackageManager
    public PermissionInfo getPermissionInfo(String str, int i) {
        PermissionInfo permissionInfo;
        try {
            permissionInfo = this.mPackageManager.getPermissionInfo(str, i);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                permissionInfo = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (permissionInfo == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return permissionInfo;
    }

    @Override // android.content.pm.PackageManager
    public List<PermissionInfo> queryPermissionsByGroup(String str, int i) {
        List<PermissionInfo> list;
        try {
            list = this.mPackageManager.queryPermissionsByGroup(str, i);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                list = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (list == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return list;
    }

    @Override // android.content.pm.PackageManager
    public PermissionGroupInfo getPermissionGroupInfo(String str, int i) {
        PermissionGroupInfo permissionGroupInfo;
        try {
            permissionGroupInfo = this.mPackageManager.getPermissionGroupInfo(str, i);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                permissionGroupInfo = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (permissionGroupInfo == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return permissionGroupInfo;
    }

    @Override // android.content.pm.PackageManager
    public List<PermissionGroupInfo> getAllPermissionGroups(int i) {
        try {
            return this.mPackageManager.getAllPermissionGroups(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public ApplicationInfo getApplicationInfo(String str, int i) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = this.mPackageManager.getApplicationInfo(str, i);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                applicationInfo = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (applicationInfo == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return applicationInfo;
    }

    @Override // android.content.pm.PackageManager
    public ActivityInfo getActivityInfo(ComponentName componentName, int i) {
        ActivityInfo activityInfo;
        try {
            activityInfo = this.mPackageManager.getActivityInfo(componentName, i);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                activityInfo = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (activityInfo == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return activityInfo;
    }

    @Override // android.content.pm.PackageManager
    public ActivityInfo getReceiverInfo(ComponentName componentName, int i) {
        ActivityInfo activityInfo;
        try {
            activityInfo = this.mPackageManager.getReceiverInfo(componentName, i);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                activityInfo = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (activityInfo == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return activityInfo;
    }

    @Override // android.content.pm.PackageManager
    public ServiceInfo getServiceInfo(ComponentName componentName, int i) {
        ServiceInfo serviceInfo;
        try {
            serviceInfo = this.mPackageManager.getServiceInfo(componentName, i);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                serviceInfo = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (serviceInfo == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return serviceInfo;
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getInstalledPackages(int i) {
        InterfaceC3950zf m13446hX;
        List<PackageInfo> list = null;
        try {
            list = this.mPackageManager.getInstalledPackages(i);
        } catch (Throwable th) {
        }
        if ((list == null || list.size() <= 0) && (m13446hX = KApplication.m13446hX()) != null) {
            list = m13446hX.getInstalledPackages(i);
        }
        if (list == null) {
            return new ArrayList();
        }
        return list;
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getPackagesHoldingPermissions(String[] strArr, int i) {
        try {
            return this.mPackageManager.getPackagesHoldingPermissions(strArr, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public int checkPermission(String str, String str2) {
        try {
            return this.mPackageManager.checkPermission(str, str2);
        } catch (Throwable th) {
            return -9999;
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermission(PermissionInfo permissionInfo) {
        try {
            return this.mPackageManager.addPermission(permissionInfo);
        } catch (Throwable th) {
            if (th instanceof SecurityException) {
                throw ((SecurityException) th);
            }
            return false;
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermissionAsync(PermissionInfo permissionInfo) {
        try {
            return this.mPackageManager.addPermissionAsync(permissionInfo);
        } catch (Throwable th) {
            if (th instanceof SecurityException) {
                throw ((SecurityException) th);
            }
            return false;
        }
    }

    @Override // android.content.pm.PackageManager
    public void removePermission(String str) {
        boolean z;
        SecurityException securityException;
        try {
            this.mPackageManager.removePermission(str);
        } finally {
            if (z) {
            }
        }
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(String str, String str2) {
        try {
            return this.mPackageManager.checkSignatures(str, str2);
        } catch (Throwable th) {
            return -9999;
        }
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(int i, int i2) {
        try {
            return this.mPackageManager.checkSignatures(i, i2);
        } catch (Throwable th) {
            return -9999;
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] getPackagesForUid(int i) {
        try {
            return this.mPackageManager.getPackagesForUid(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public String getNameForUid(int i) {
        try {
            return this.mPackageManager.getNameForUid(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ApplicationInfo> getInstalledApplications(int i) {
        try {
            return this.mPackageManager.getInstalledApplications(i);
        } catch (Throwable th) {
            return new ArrayList();
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] getSystemSharedLibraryNames() {
        try {
            return this.mPackageManager.getSystemSharedLibraryNames();
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public FeatureInfo[] getSystemAvailableFeatures() {
        try {
            return this.mPackageManager.getSystemAvailableFeatures();
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean hasSystemFeature(String str) {
        try {
            return this.mPackageManager.hasSystemFeature(str);
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveActivity(Intent intent, int i) {
        try {
            return this.mPackageManager.resolveActivity(intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivities(Intent intent, int i) {
        List<ResolveInfo> emptyList = Collections.emptyList();
        try {
            return this.mPackageManager.queryIntentActivities(intent, i);
        } catch (Throwable th) {
            return emptyList;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivityOptions(ComponentName componentName, Intent[] intentArr, Intent intent, int i) {
        try {
            return this.mPackageManager.queryIntentActivityOptions(componentName, intentArr, intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i) {
        try {
            return this.mPackageManager.queryBroadcastReceivers(intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveService(Intent intent, int i) {
        try {
            return this.mPackageManager.resolveService(intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentServices(Intent intent, int i) {
        try {
            return this.mPackageManager.queryIntentServices(intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentContentProviders(Intent intent, int i) {
        try {
            return this.mPackageManager.queryIntentContentProviders(intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo resolveContentProvider(String str, int i) {
        try {
            return this.mPackageManager.resolveContentProvider(str, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ProviderInfo> queryContentProviders(String str, int i, int i2) {
        try {
            return this.mPackageManager.queryContentProviders(str, i, i2);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public InstrumentationInfo getInstrumentationInfo(ComponentName componentName, int i) {
        try {
            return this.mPackageManager.getInstrumentationInfo(componentName, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<InstrumentationInfo> queryInstrumentation(String str, int i) {
        try {
            return this.mPackageManager.queryInstrumentation(str, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDrawable(String str, int i, ApplicationInfo applicationInfo) {
        try {
            return this.mPackageManager.getDrawable(str, i, applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityIcon(ComponentName componentName) {
        Drawable drawable;
        try {
            drawable = this.mPackageManager.getActivityIcon(componentName);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                drawable = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (drawable == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return drawable;
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityIcon(Intent intent) {
        Drawable drawable;
        try {
            drawable = this.mPackageManager.getActivityIcon(intent);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                drawable = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (drawable == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return drawable;
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDefaultActivityIcon() {
        try {
            return this.mPackageManager.getDefaultActivityIcon();
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(ApplicationInfo applicationInfo) {
        try {
            return this.mPackageManager.getApplicationIcon(applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(String str) {
        Drawable drawable;
        try {
            drawable = this.mPackageManager.getApplicationIcon(str);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                drawable = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (drawable == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return drawable;
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getText(String str, int i, ApplicationInfo applicationInfo) {
        CharSequence text;
        try {
            if (KApplication.m13450hT() == 2) {
                text = C3694uh.m2035ky().m2036i(str, i);
            } else {
                text = this.mPackageManager.getText(str, i, applicationInfo);
            }
            return text;
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public XmlResourceParser getXml(String str, int i, ApplicationInfo applicationInfo) {
        try {
            return this.mPackageManager.getXml(str, i, applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getApplicationLabel(ApplicationInfo applicationInfo) {
        try {
            return this.mPackageManager.getApplicationLabel(applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForActivity(ComponentName componentName) {
        Resources resources;
        try {
            resources = this.mPackageManager.getResourcesForActivity(componentName);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                resources = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (resources == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return resources;
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplication(ApplicationInfo applicationInfo) {
        Resources resources;
        try {
            resources = this.mPackageManager.getResourcesForApplication(applicationInfo);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                resources = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (resources == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return resources;
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForApplication(String str) {
        Resources resources;
        try {
            resources = this.mPackageManager.getResourcesForApplication(str);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                resources = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (resources == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return resources;
    }

    @Override // android.content.pm.PackageManager
    public String getInstallerPackageName(String str) {
        try {
            return this.mPackageManager.getInstallerPackageName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public void addPackageToPreferred(String str) {
        try {
            this.mPackageManager.addPackageToPreferred(str);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void removePackageFromPreferred(String str) {
        try {
            this.mPackageManager.removePackageFromPreferred(str);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getPreferredPackages(int i) {
        try {
            return this.mPackageManager.getPreferredPackages(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public void addPreferredActivity(IntentFilter intentFilter, int i, ComponentName[] componentNameArr, ComponentName componentName) {
        try {
            this.mPackageManager.addPreferredActivity(intentFilter, i, componentNameArr, componentName);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void clearPackagePreferredActivities(String str) {
        try {
            this.mPackageManager.clearPackagePreferredActivities(str);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public int getPreferredActivities(List<IntentFilter> list, List<ComponentName> list2, String str) {
        try {
            return this.mPackageManager.getPreferredActivities(list, list2, str);
        } catch (Throwable th) {
            return -9999;
        }
    }

    @Override // android.content.pm.PackageManager
    public void setComponentEnabledSetting(ComponentName componentName, int i, int i2) {
        try {
            this.mPackageManager.setComponentEnabledSetting(componentName, i, i2);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public int getComponentEnabledSetting(ComponentName componentName) {
        try {
            return this.mPackageManager.getComponentEnabledSetting(componentName);
        } catch (Throwable th) {
            return -9999;
        }
    }

    @Override // android.content.pm.PackageManager
    public void setApplicationEnabledSetting(String str, int i, int i2) {
        try {
            this.mPackageManager.setApplicationEnabledSetting(str, i, i2);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public int getApplicationEnabledSetting(String str) {
        try {
            return this.mPackageManager.getApplicationEnabledSetting(str);
        } catch (Throwable th) {
            if (th instanceof IllegalArgumentException) {
                throw ((IllegalArgumentException) th);
            }
            return -9999;
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean isSafeMode() {
        try {
            return this.mPackageManager.isSafeMode();
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityLogo(ComponentName componentName) {
        Drawable drawable;
        try {
            drawable = this.mPackageManager.getActivityLogo(componentName);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                drawable = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (drawable == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return drawable;
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityLogo(Intent intent) {
        Drawable drawable;
        try {
            drawable = this.mPackageManager.getActivityLogo(intent);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                drawable = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (drawable == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return drawable;
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationLogo(ApplicationInfo applicationInfo) {
        try {
            return this.mPackageManager.getApplicationLogo(applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationLogo(String str) {
        Drawable drawable;
        try {
            drawable = this.mPackageManager.getApplicationLogo(str);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                drawable = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (drawable == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return drawable;
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo getProviderInfo(ComponentName componentName, int i) {
        ProviderInfo providerInfo;
        try {
            providerInfo = this.mPackageManager.getProviderInfo(componentName, i);
        } catch (Throwable th) {
            if (!(th instanceof PackageManager.NameNotFoundException)) {
                providerInfo = null;
            } else {
                throw ((PackageManager.NameNotFoundException) th);
            }
        }
        if (providerInfo == null) {
            throw new PackageManager.NameNotFoundException();
        }
        return providerInfo;
    }

    /* renamed from: du */
    public boolean m1314du(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return this.mPackageManager.getApplicationInfo(str, 0) != null;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageArchiveInfo(String str, int i) {
        try {
            return this.mPackageManager.getPackageArchiveInfo(str, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public void verifyPendingInstall(int i, int i2) {
        try {
            this.mPackageManager.verifyPendingInstall(i, i2);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void extendVerificationTimeout(int i, int i2, long j) {
        try {
            this.mPackageManager.extendVerificationTimeout(i, i2, j);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void setInstallerPackageName(String str, String str2) {
        try {
            this.mPackageManager.setInstallerPackageName(str, str2);
        } catch (Throwable th) {
        }
    }

    /* renamed from: dv */
    public Drawable m1313dv(String str) {
        try {
            return this.mPackageManager.getApplicationIcon(str);
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Intent getLeanbackLaunchIntentForPackage(String str) {
        try {
            return this.mPackageManager.getLeanbackLaunchIntentForPackage(str);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityBanner(ComponentName componentName) {
        try {
            return this.mPackageManager.getActivityBanner(componentName);
        } catch (Throwable th) {
            if (th instanceof PackageManager.NameNotFoundException) {
                throw ((PackageManager.NameNotFoundException) th);
            }
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityBanner(Intent intent) {
        try {
            return this.mPackageManager.getActivityBanner(intent);
        } catch (Throwable th) {
            if (th instanceof PackageManager.NameNotFoundException) {
                throw ((PackageManager.NameNotFoundException) th);
            }
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationBanner(ApplicationInfo applicationInfo) {
        try {
            return this.mPackageManager.getApplicationBanner(applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationBanner(String str) {
        try {
            return this.mPackageManager.getApplicationBanner(str);
        } catch (Throwable th) {
            if (th instanceof PackageManager.NameNotFoundException) {
                throw ((PackageManager.NameNotFoundException) th);
            }
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getUserBadgedIcon(Drawable drawable, UserHandle userHandle) {
        try {
            return this.mPackageManager.getUserBadgedIcon(drawable, userHandle);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getUserBadgedDrawableForDensity(Drawable drawable, UserHandle userHandle, Rect rect, int i) {
        try {
            return this.mPackageManager.getUserBadgedDrawableForDensity(drawable, userHandle, rect, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getUserBadgedLabel(CharSequence charSequence, UserHandle userHandle) {
        try {
            return this.mPackageManager.getUserBadgedLabel(charSequence, userHandle);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    @Nullable
    public PackageInstaller getPackageInstaller() {
        try {
            return this.mPackageManager.getPackageInstaller();
        } catch (Throwable th) {
            return null;
        }
    }
}
