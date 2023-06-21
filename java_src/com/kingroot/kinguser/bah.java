package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.SparseArray;
import com.kingroot.kinguser.plugin.upgrade.PluginUpgradeInfo;
import com.kingroot.master.app.KUApplication;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes.dex */
public class bah {
    private final SparseArray<PluginUpgradeInfo> bdM = new SparseArray<>();
    private final HashSet<PluginUpgradeInfo> bdN = new HashSet<>();
    private bai bdL = new bai(KUApplication.m13453ge());

    public bah() {
        m7950Vr();
    }

    /* renamed from: Vr */
    private synchronized void m7950Vr() {
        for (PluginUpgradeInfo pluginUpgradeInfo : m7949Vs()) {
            if (pluginUpgradeInfo != null) {
                this.bdN.add(pluginUpgradeInfo);
                this.bdM.put(pluginUpgradeInfo.pluginId, pluginUpgradeInfo);
            }
        }
    }

    public synchronized PluginUpgradeInfo getUpgradeInfo(int i) {
        return this.bdM.get(i);
    }

    @NonNull
    public synchronized List<PluginUpgradeInfo> getUpgradeInfoList() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        arrayList.addAll(this.bdN);
        return arrayList;
    }

    /* renamed from: a */
    public synchronized boolean m7947a(PluginUpgradeInfo pluginUpgradeInfo) {
        boolean z;
        if (this.bdM.get(pluginUpgradeInfo.pluginId) != null) {
            z = false;
        } else {
            this.bdM.put(pluginUpgradeInfo.pluginId, pluginUpgradeInfo);
            this.bdN.add(pluginUpgradeInfo);
            m7946b(pluginUpgradeInfo);
            z = true;
        }
        return z;
    }

    /* renamed from: hH */
    public synchronized boolean m7943hH(int i) {
        boolean z;
        PluginUpgradeInfo pluginUpgradeInfo = this.bdM.get(i);
        if (pluginUpgradeInfo != null) {
            this.bdM.delete(i);
            this.bdN.remove(pluginUpgradeInfo);
            delete(i);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: Z */
    public synchronized boolean m7948Z(int i, int i2) {
        boolean z;
        PluginUpgradeInfo pluginUpgradeInfo = this.bdM.get(i);
        if (pluginUpgradeInfo != null) {
            pluginUpgradeInfo.bdR |= i2;
            m7944c(pluginUpgradeInfo);
            z = true;
        } else {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    public synchronized boolean m7945b(PluginUpgradeInfo pluginUpgradeInfo, boolean z) {
        boolean z2;
        PluginUpgradeInfo pluginUpgradeInfo2 = this.bdM.get(pluginUpgradeInfo.pluginId);
        if (pluginUpgradeInfo2 == null || (pluginUpgradeInfo.versionCode < pluginUpgradeInfo2.versionCode && !z)) {
            z2 = false;
        } else {
            this.bdM.put(pluginUpgradeInfo.pluginId, pluginUpgradeInfo);
            this.bdN.remove(pluginUpgradeInfo2);
            this.bdN.add(pluginUpgradeInfo);
            if (pluginUpgradeInfo.versionCode != pluginUpgradeInfo2.versionCode) {
                m7942kj(pluginUpgradeInfo2.bdO);
            }
            m7944c(pluginUpgradeInfo);
            z2 = true;
        }
        return z2;
    }

    /* renamed from: b */
    private void m7946b(PluginUpgradeInfo pluginUpgradeInfo) {
        this.bdL.m7937c("plugin_upgrade_3", pluginUpgradeInfo.transferToContentValues());
    }

    private void delete(int i) {
        this.bdL.m7938b("plugin_upgrade_3", "xa = ?", new String[]{"" + i});
    }

    /* renamed from: c */
    private void m7944c(PluginUpgradeInfo pluginUpgradeInfo) {
        this.bdL.m7939b("plugin_upgrade_3", pluginUpgradeInfo.transferToContentValues(), "xa = ?", new String[]{"" + pluginUpgradeInfo.pluginId});
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: Vs */
    private java.util.List<com.kingroot.kinguser.plugin.upgrade.PluginUpgradeInfo> m7949Vs() {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bah.m7949Vs():java.util.List");
    }

    /* renamed from: kj */
    private void m7942kj(String str) {
        if (!TextUtils.isEmpty(str)) {
            new File(str).delete();
            new File(str + ".tmp").delete();
        }
    }
}
