package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.activitys.AppsMarketMainActivity;
import com.kingroot.kinguser.activitys.ToolboxAppCardDistActivity;
import com.kingroot.kinguser.gamebox.foreground.GameBoxMainActivity;
import com.kingroot.kinguser.ztool.uninstall.SoftwareUninstallActivity;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bfb extends bfa {
    protected ImageView blU;
    protected ProgressBar blV;
    private boolean blW;

    /* renamed from: dL */
    public bfb m7344dL(boolean z) {
        this.blW = z;
        return this;
    }

    @Override // com.kingroot.kinguser.bez
    /* renamed from: ZD */
    protected int mo7287ZD() {
        return R.layout.tool_box_list_item_priority;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bfa, com.kingroot.kinguser.bez
    /* renamed from: ZE */
    public void mo7286ZE() {
        super.mo7286ZE();
        this.blU = (ImageView) this.mView.findViewById(R.id.expand_icon);
        this.blV = (ProgressBar) this.mView.findViewById(R.id.circle_progress_bar);
        this.blR.setVisibility(8);
        this.blV.setVisibility(8);
        this.blQ.setVisibility(8);
        this.blU.setVisibility(0);
        this.mView.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bfb.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                switch (bfb.this.blN.aQX) {
                    case 1:
                        Intent intent = new Intent();
                        ady.m12308tK().mo1746bi(100053);
                        intent.setClass(bfb.this.mContext, SoftwareUninstallActivity.class);
                        bfb.this.mContext.startActivity(intent);
                        return;
                    case 2:
                        Activity m12026vt = aft.m12026vt();
                        if (m12026vt != null) {
                            if (aks.m11143BP().m11055DZ()) {
                                ady.m12308tK().mo1746bi(100276);
                            }
                            ady.m12308tK().mo1746bi(100281);
                            GameBoxMainActivity.m3762c(m12026vt);
                            return;
                        }
                        return;
                    case 3:
                        if (bfb.this.blW) {
                            AppsMarketMainActivity.m12636aN(bfb.this.mContext);
                        } else {
                            AppsMarketMainActivity.m12637aL(bfb.this.mContext);
                        }
                        akl m11257AS = akl.m11257AS();
                        if (!m11257AS.m11252AX()) {
                            m11257AS.m11253AW();
                        }
                        ady.m12308tK().mo1746bi(100586);
                        return;
                    case 4:
                    case 5:
                        akl.m11257AS().m11176gV(bfb.this.blN.pkgName);
                        if (bfb.this.blN.aQX == 4) {
                            atu.m9137t(bfb.this.mContext, bfb.this.blN.pkgName);
                        } else if (bfb.this.blN.aQX == 5) {
                            if (bfb.this.blN.jumpType == 1) {
                                AppDetailActivity.m12645a(bfb.this.mContext, bfb.this.blN.bmK, bfb.this.blN.bmK.ifSelected, 2);
                            } else if (bfb.this.blN.jumpType == 3) {
                                ToolboxAppCardDistActivity.m12576b(bfb.this.mContext, bfb.this.blN.bmK);
                            }
                        }
                        als.m10538Hi().mo10419C(bfb.this.blN.pkgName, 2);
                        ana.m10352IO().mo10331a(bfb.this.blN.bmK.reportInfo, 80);
                        ana.m10352IO().mo10337H(bfb.this.blN.bmK.categoryId, bfb.this.blN.bmK.pkgName);
                        return;
                    default:
                        atu.m9137t(bfb.this.mContext, bfb.this.blN.pkgName);
                        return;
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bfa, com.kingroot.kinguser.bez
    /* renamed from: s */
    public void mo7284s(Object obj) {
        super.mo7284s(obj);
        mo7285r(obj);
        switch (this.blN.aQX) {
            case 1:
                this.ahP.setImageResource(R.drawable.icon_software_uninstall_pressed);
                return;
            case 2:
                this.ahP.setImageResource(R.drawable.more_tool_gamebox_logo);
                return;
            case 3:
                this.ahP.setImageResource(R.drawable.ic_apps_market);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bez
    public void onResume() {
    }
}
