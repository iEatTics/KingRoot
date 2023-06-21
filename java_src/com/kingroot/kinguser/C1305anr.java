package com.kingroot.kinguser;

import android.view.View;
import android.view.ViewStub;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.view.AppListView;
import com.kingroot.kinguser.distribution.net.download.IAppDownloadListener;
import com.kingroot.kinguser.gamebox.common.IAppInstallListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.kingroot.kinguser.anr */
/* loaded from: classes.dex */
public class C1305anr extends anw implements AdapterView.OnItemClickListener, AppListView.InterfaceC2928a {
    private ald aBB;
    private AppListView aBG;
    private List<ame> aDu;
    private IAppDownloadListener.Stub aDv;
    private String aDw;
    private FrameLayout aiM;
    private IAppInstallListener.Stub akB;
    private and.C1258a akD;

    public C1305anr(View view, IAppDownloadListener.Stub stub, IAppInstallListener.Stub stub2, aoa aoaVar) {
        super(view, aoaVar);
        this.aDu = new ArrayList();
        this.aDw = "";
        this.akD = new and.C1258a();
        this.aDv = stub;
        this.akB = stub2;
        m10102gq();
    }

    /* renamed from: gq */
    public void m10102gq() {
        this.aBG = (AppListView) this.mView.findViewById(R.id.app_list_view);
        View inflate = ((ViewStub) this.mView.findViewById(R.id.list_empty)).inflate();
        inflate.setBackgroundResource(R.color.card_background);
        ((TextView) inflate.findViewById(R.id.nc_list_empty_desc)).setText(R.string.app_download_no_data);
        this.aBG.setEmptyView(inflate);
        this.aBG.setOnItemClickListener(this);
        this.aBG.setBackgroundResource(R.color.card_background);
        this.aBG.m13334b(C3935yr.m1374pb());
        this.aBG.setLoadMoreListener(this);
        this.aBB = new ald(this.mView.getContext(), this.aDu, this.aDv, this.akB);
        this.aBB.m10639a(this.akD);
        this.aBG.setAdapter((ListAdapter) this.aBB);
        this.aiM = (FrameLayout) this.mView.findViewById(R.id.loading_layout);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        if (i >= 0 && i < this.aDu.size()) {
            AppDetailActivity.m12647a(view.getContext(), (AppDownLoadModel) this.aDu.get(i));
        }
    }

    @Override // com.kingroot.kinguser.distribution.appsmarket.view.AppListView.InterfaceC2928a
    /* renamed from: Je */
    public void mo4128Je() {
        this.aEz.mo10009B(this.aDw, true);
    }

    /* renamed from: c */
    public void m10103c(String str, List<ame> list) {
        this.aDw = str;
        this.aDu.clear();
        this.aDu.addAll(list);
        this.aBB.notifyDataSetChanged();
        this.aBG.m4133Jq();
        this.aiM.setVisibility(8);
    }

    /* renamed from: JB */
    public void m10104JB() {
        this.aiM.setVisibility(0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    /* renamed from: i */
    public void m10101i(View view) {
        this.aBG.m4129i(view);
    }
}
