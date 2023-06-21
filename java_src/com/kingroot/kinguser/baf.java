package com.kingroot.kinguser;

import com.kingroot.kinguser.plugin.upgrade.PluginUpgradeInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class baf extends C3785vk<C3754vf> {
    private PluginUpgradeInfo bdJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public baf(PluginUpgradeInfo pluginUpgradeInfo) {
        this.bdJ = pluginUpgradeInfo;
    }

    @Override // com.kingroot.kinguser.C3785vk
    /* renamed from: f */
    public void mo1793e(C3754vf c3754vf) {
        super.mo1793e(c3754vf);
    }

    @Override // com.kingroot.kinguser.C3785vk
    /* renamed from: g */
    public void mo1794d(C3754vf c3754vf) {
        super.mo1794d(c3754vf);
        bae.m7967a(this.bdJ, true, false);
        bag.m7956a(this.bdJ, 1, false);
    }

    @Override // com.kingroot.kinguser.C3785vk
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo1796b(C3754vf c3754vf) {
        super.mo1796b((baf) c3754vf);
        bae.m7968a(this.bdJ, true, c3754vf.mErrorCode, true, false);
        bag.m7953b(this.bdJ, true, 1, false);
        m7963dz(true);
    }

    @Override // com.kingroot.kinguser.C3785vk
    /* renamed from: b  reason: avoid collision after fix types in other method */
    public void mo1797a(C3754vf c3754vf) {
        super.mo1797a((baf) c3754vf);
        bae.m7968a(this.bdJ, false, c3754vf.mErrorCode, true, false);
        bag.m7953b(this.bdJ, false, 1, false);
        m7963dz(false);
    }

    /* renamed from: dz */
    private void m7963dz(boolean z) {
        bah m7932Vy = bak.m7933Vx().m7932Vy();
        PluginUpgradeInfo upgradeInfo = m7932Vy.getUpgradeInfo(this.bdJ.pluginId);
        if (upgradeInfo != null) {
            upgradeInfo.downloadCount++;
            m7932Vy.m7945b(upgradeInfo, true);
            if (z) {
                bak.m7933Vx().m7929a(upgradeInfo, 3);
            }
        }
    }
}
