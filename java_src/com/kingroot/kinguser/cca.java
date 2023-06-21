package com.kingroot.kinguser;

import android.annotation.TargetApi;
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
import android.os.Build;
import android.os.UserHandle;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class cca extends PackageManager {
    private static volatile cca bWV = null;
    protected PackageManager bWW;

    protected cca() {
        this.bWW = null;
        this.bWW = bzu.m5098ge().getPackageManager();
    }

    public static cca akH() {
        if (bWV == null) {
            synchronized (cca.class) {
                if (bWV == null) {
                    bWV = new cca();
                }
            }
        }
        return bWV;
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageInfo(String str, int i) {
        PackageInfo packageInfo;
        try {
            packageInfo = this.bWW.getPackageInfo(str, i);
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
            return this.bWW.currentToCanonicalPackageNames(strArr);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] canonicalToCurrentPackageNames(String[] strArr) {
        try {
            return this.bWW.canonicalToCurrentPackageNames(strArr);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Intent getLaunchIntentForPackage(String str) {
        try {
            return this.bWW.getLaunchIntentForPackage(str);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    @TargetApi(21)
    public Intent getLeanbackLaunchIntentForPackage(String str) {
        try {
            return this.bWW.getLeanbackLaunchIntentForPackage(str);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public int[] getPackageGids(String str) {
        int[] iArr;
        try {
            iArr = this.bWW.getPackageGids(str);
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
            permissionInfo = this.bWW.getPermissionInfo(str, i);
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
            list = this.bWW.queryPermissionsByGroup(str, i);
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
            permissionGroupInfo = this.bWW.getPermissionGroupInfo(str, i);
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
            return this.bWW.getAllPermissionGroups(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public ApplicationInfo getApplicationInfo(String str, int i) {
        ApplicationInfo applicationInfo;
        try {
            applicationInfo = this.bWW.getApplicationInfo(str, i);
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
            activityInfo = this.bWW.getActivityInfo(componentName, i);
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
            activityInfo = this.bWW.getReceiverInfo(componentName, i);
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
            serviceInfo = this.bWW.getServiceInfo(componentName, i);
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
        try {
            return this.bWW.getInstalledPackages(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    @TargetApi(18)
    public List<PackageInfo> getPackagesHoldingPermissions(String[] strArr, int i) {
        try {
            return this.bWW.getPackagesHoldingPermissions(strArr, i);
        } catch (Throwable th) {
            return Collections.emptyList();
        }
    }

    @Override // android.content.pm.PackageManager
    public int checkPermission(String str, String str2) {
        try {
            return this.bWW.checkPermission(str, str2);
        } catch (Throwable th) {
            return -9999;
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean addPermission(PermissionInfo permissionInfo) {
        try {
            return this.bWW.addPermission(permissionInfo);
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
            return this.bWW.addPermissionAsync(permissionInfo);
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
            this.bWW.removePermission(str);
        } finally {
            if (z) {
            }
        }
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(String str, String str2) {
        try {
            return this.bWW.checkSignatures(str, str2);
        } catch (Throwable th) {
            return -9999;
        }
    }

    @Override // android.content.pm.PackageManager
    public int checkSignatures(int i, int i2) {
        try {
            return this.bWW.checkSignatures(i, i2);
        } catch (Throwable th) {
            return -9999;
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] getPackagesForUid(int i) {
        try {
            return this.bWW.getPackagesForUid(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public String getNameForUid(int i) {
        try {
            return this.bWW.getNameForUid(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ApplicationInfo> getInstalledApplications(int i) {
        try {
            return this.bWW.getInstalledApplications(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public String[] getSystemSharedLibraryNames() {
        try {
            return this.bWW.getSystemSharedLibraryNames();
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public FeatureInfo[] getSystemAvailableFeatures() {
        try {
            return this.bWW.getSystemAvailableFeatures();
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public boolean hasSystemFeature(String str) {
        try {
            return this.bWW.hasSystemFeature(str);
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveActivity(Intent intent, int i) {
        try {
            return this.bWW.resolveActivity(intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivities(Intent intent, int i) {
        try {
            return this.bWW.queryIntentActivities(intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentActivityOptions(ComponentName componentName, Intent[] intentArr, Intent intent, int i) {
        try {
            return this.bWW.queryIntentActivityOptions(componentName, intentArr, intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryBroadcastReceivers(Intent intent, int i) {
        try {
            return this.bWW.queryBroadcastReceivers(intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public ResolveInfo resolveService(Intent intent, int i) {
        try {
            return this.bWW.resolveService(intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ResolveInfo> queryIntentServices(Intent intent, int i) {
        try {
            return this.bWW.queryIntentServices(intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    @TargetApi(19)
    public List<ResolveInfo> queryIntentContentProviders(Intent intent, int i) {
        try {
            return this.bWW.queryIntentContentProviders(intent, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo resolveContentProvider(String str, int i) {
        try {
            return this.bWW.resolveContentProvider(str, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<ProviderInfo> queryContentProviders(String str, int i, int i2) {
        try {
            return this.bWW.queryContentProviders(str, i, i2);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public InstrumentationInfo getInstrumentationInfo(ComponentName componentName, int i) {
        try {
            return this.bWW.getInstrumentationInfo(componentName, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public List<InstrumentationInfo> queryInstrumentation(String str, int i) {
        try {
            return this.bWW.queryInstrumentation(str, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDrawable(String str, int i, ApplicationInfo applicationInfo) {
        try {
            return this.bWW.getDrawable(str, i, applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityIcon(ComponentName componentName) {
        Drawable drawable;
        try {
            drawable = this.bWW.getActivityIcon(componentName);
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
            drawable = this.bWW.getActivityIcon(intent);
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
    @TargetApi(20)
    public Drawable getActivityBanner(ComponentName componentName) {
        try {
            return this.bWW.getActivityBanner(componentName);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    @TargetApi(20)
    public Drawable getActivityBanner(Intent intent) {
        try {
            return this.bWW.getActivityBanner(intent);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getDefaultActivityIcon() {
        try {
            return this.bWW.getDefaultActivityIcon();
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(ApplicationInfo applicationInfo) {
        try {
            return this.bWW.getApplicationIcon(applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationIcon(String str) {
        Drawable drawable;
        try {
            drawable = this.bWW.getApplicationIcon(str);
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
    @TargetApi(20)
    public Drawable getApplicationBanner(ApplicationInfo applicationInfo) {
        try {
            return this.bWW.getApplicationBanner(applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    @TargetApi(20)
    public Drawable getApplicationBanner(String str) {
        try {
            return this.bWW.getApplicationBanner(str);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getText(String str, int i, ApplicationInfo applicationInfo) {
        try {
            return this.bWW.getText(str, i, applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public XmlResourceParser getXml(String str, int i, ApplicationInfo applicationInfo) {
        try {
            return this.bWW.getXml(str, i, applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public CharSequence getApplicationLabel(ApplicationInfo applicationInfo) {
        try {
            return this.bWW.getApplicationLabel(applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Resources getResourcesForActivity(ComponentName componentName) {
        Resources resources;
        try {
            resources = this.bWW.getResourcesForActivity(componentName);
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
            resources = this.bWW.getResourcesForApplication(applicationInfo);
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
            resources = this.bWW.getResourcesForApplication(str);
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
            return this.bWW.getInstallerPackageName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public void addPackageToPreferred(String str) {
        try {
            this.bWW.addPackageToPreferred(str);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void removePackageFromPreferred(String str) {
        try {
            this.bWW.removePackageFromPreferred(str);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public List<PackageInfo> getPreferredPackages(int i) {
        try {
            return this.bWW.getPreferredPackages(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public void addPreferredActivity(IntentFilter intentFilter, int i, ComponentName[] componentNameArr, ComponentName componentName) {
        try {
            this.bWW.addPreferredActivity(intentFilter, i, componentNameArr, componentName);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void clearPackagePreferredActivities(String str) {
        try {
            this.bWW.clearPackagePreferredActivities(str);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public int getPreferredActivities(List<IntentFilter> list, List<ComponentName> list2, String str) {
        try {
            return this.bWW.getPreferredActivities(list, list2, str);
        } catch (Throwable th) {
            return -9999;
        }
    }

    @Override // android.content.pm.PackageManager
    public void setComponentEnabledSetting(ComponentName componentName, int i, int i2) {
        try {
            this.bWW.setComponentEnabledSetting(componentName, i, i2);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public int getComponentEnabledSetting(ComponentName componentName) {
        try {
            return this.bWW.getComponentEnabledSetting(componentName);
        } catch (Throwable th) {
            return -9999;
        }
    }

    @Override // android.content.pm.PackageManager
    public void setApplicationEnabledSetting(String str, int i, int i2) {
        try {
            this.bWW.setApplicationEnabledSetting(str, i, i2);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public int getApplicationEnabledSetting(String str) {
        try {
            return this.bWW.getApplicationEnabledSetting(str);
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
            return this.bWW.isSafeMode();
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // android.content.pm.PackageManager
    @NonNull
    @TargetApi(21)
    public PackageInstaller getPackageInstaller() {
        try {
            return this.bWW.getPackageInstaller();
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getActivityLogo(ComponentName componentName) {
        Drawable drawable;
        try {
            drawable = this.bWW.getActivityLogo(componentName);
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
            drawable = this.bWW.getActivityLogo(intent);
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
            return this.bWW.getApplicationLogo(applicationInfo);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public Drawable getApplicationLogo(String str) {
        Drawable drawable;
        try {
            drawable = this.bWW.getApplicationLogo(str);
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
    @TargetApi(21)
    public Drawable getUserBadgedIcon(Drawable drawable, UserHandle userHandle) {
        try {
            return this.bWW.getUserBadgedIcon(drawable, userHandle);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    @TargetApi(21)
    public Drawable getUserBadgedDrawableForDensity(Drawable drawable, UserHandle userHandle, Rect rect, int i) {
        try {
            return this.bWW.getUserBadgedDrawableForDensity(drawable, userHandle, rect, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    @TargetApi(21)
    public CharSequence getUserBadgedLabel(CharSequence charSequence, UserHandle userHandle) {
        try {
            return this.bWW.getUserBadgedLabel(charSequence, userHandle);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    public ProviderInfo getProviderInfo(ComponentName componentName, int i) {
        ProviderInfo providerInfo;
        try {
            providerInfo = this.bWW.getProviderInfo(componentName, i);
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

    /* renamed from: a */
    public boolean m4973a(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return this.bWW.getApplicationInfo(str, 0) != null;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // android.content.pm.PackageManager
    public PackageInfo getPackageArchiveInfo(String str, int i) {
        try {
            return this.bWW.getPackageArchiveInfo(str, i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.pm.PackageManager
    @TargetApi(14)
    public void verifyPendingInstall(int i, int i2) {
        try {
            if (Build.VERSION.SDK_INT >= 14) {
                this.bWW.verifyPendingInstall(i, i2);
            }
        } catch (Throwable th) {
        }
    }

    @Override // android.content.pm.PackageManager
    public void extendVerificationTimeout(int i, int i2, long j) {
    }

    @Override // android.content.pm.PackageManager
    public void setInstallerPackageName(String str, String str2) {
        try {
            if (Build.VERSION.SDK_INT >= 11) {
                this.bWW.setInstallerPackageName(str, str2);
            }
        } catch (Throwable th) {
        }
    }
}
