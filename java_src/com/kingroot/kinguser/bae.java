package com.kingroot.kinguser;

import com.kingroot.kinguser.plugin.upgrade.PluginUpgradeInfo;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bae {
    /* renamed from: c */
    public static void m7966c(int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        ady.m12308tK().mo1748a(100266, 0, arrayList, z);
    }

    /* renamed from: a */
    public static void m7971a(C3016ed c3016ed, int i, int i2, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(c3016ed != null ? c3016ed.f2541id : -1));
        arrayList.add(Integer.valueOf(c3016ed != null ? c3016ed.version : -1));
        arrayList.add(Long.valueOf(c3016ed != null ? c3016ed.f2561ox : -1L));
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(i2));
        ady.m12308tK().mo1748a(100224, c3016ed != null ? 0 : 1, arrayList, z);
    }

    /* renamed from: a */
    public static void m7967a(PluginUpgradeInfo pluginUpgradeInfo, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(pluginUpgradeInfo != null ? pluginUpgradeInfo.pluginId : -1));
        arrayList.add(Integer.valueOf(pluginUpgradeInfo != null ? pluginUpgradeInfo.versionCode : -1));
        arrayList.add(Long.valueOf(pluginUpgradeInfo != null ? pluginUpgradeInfo.bdT : -1L));
        arrayList.add(Integer.valueOf(z ? 0 : 1));
        ady.m12308tK().mo1748a(100267, 0, arrayList, z2);
    }

    /* renamed from: a */
    public static void m7968a(PluginUpgradeInfo pluginUpgradeInfo, boolean z, int i, boolean z2, boolean z3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(pluginUpgradeInfo != null ? pluginUpgradeInfo.pluginId : -1));
        arrayList.add(Integer.valueOf(pluginUpgradeInfo != null ? pluginUpgradeInfo.versionCode : -1));
        arrayList.add(Long.valueOf(pluginUpgradeInfo != null ? pluginUpgradeInfo.bdT : -1L));
        arrayList.add(Integer.valueOf(i));
        arrayList.add(Integer.valueOf(z2 ? 0 : 1));
        ady.m12308tK().mo1748a(100225, z ? 0 : 1, arrayList, z3);
    }

    /* renamed from: a */
    public static void m7970a(PluginUpgradeInfo pluginUpgradeInfo, boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(pluginUpgradeInfo != null ? pluginUpgradeInfo.pluginId : -1));
        arrayList.add(Integer.valueOf(pluginUpgradeInfo != null ? pluginUpgradeInfo.versionCode : -1));
        arrayList.add(Long.valueOf(pluginUpgradeInfo != null ? pluginUpgradeInfo.bdT : -1L));
        ady.m12308tK().mo1748a(100268, 0, arrayList, z);
    }

    /* renamed from: a */
    public static void m7969a(PluginUpgradeInfo pluginUpgradeInfo, boolean z, int i, boolean z2) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(pluginUpgradeInfo != null ? pluginUpgradeInfo.pluginId : -1));
        arrayList.add(Integer.valueOf(pluginUpgradeInfo != null ? pluginUpgradeInfo.versionCode : -1));
        arrayList.add(Long.valueOf(pluginUpgradeInfo != null ? pluginUpgradeInfo.bdT : -1L));
        arrayList.add(Integer.valueOf(i));
        ady.m12308tK().mo1748a(100226, z ? 0 : 1, arrayList, z2);
    }
}
