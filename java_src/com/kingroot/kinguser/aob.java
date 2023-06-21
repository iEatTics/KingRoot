package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import com.kingroot.kinguser.ame;
import com.kingroot.kinguser.and;
import com.kingroot.kinguser.aob;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppUpdateModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class aob extends anl {
    private List<AvailUpdateInfo> aEO;
    private bed aEP;
    private and.C1258a aEQ;
    private IRequestAvailUpdateListener aER;

    public aob(Context context) {
        super(context);
        this.aEO = new ArrayList();
        this.aEP = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aob.1
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                aob.this.aEO = alv.m10524Hq().mo10412Hy();
                if (aob.this.aEO.size() > 0) {
                    final ArrayList arrayList = new ArrayList();
                    for (AvailUpdateInfo availUpdateInfo : aob.this.aEO) {
                        arrayList.add(AppUpdateModel.m4163b(availUpdateInfo));
                    }
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aob.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (arrayList.size() > 0) {
                                aob.this.aBC.clear();
                                aob.this.aBC.addAll(arrayList);
                                alv.m10524Hq().mo10409a(aob.this.aER);
                            }
                        }
                    });
                    return;
                }
                aob.this.getHandler().obtainMessage(0).sendToTarget();
            }
        });
        this.aEQ = new and.C1258a() { // from class: com.kingroot.kinguser.aob.2
            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: b */
            public void mo9251b(View view, AppDownLoadModel appDownLoadModel) {
                super.mo9251b(view, appDownLoadModel);
                for (final AvailUpdateInfo availUpdateInfo : aob.this.aEO) {
                    if (availUpdateInfo.pkgName.equals(appDownLoadModel.pkgName)) {
                        beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aob.2.1
                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                            public void run() {
                                alv.m10524Hq().mo10410a(availUpdateInfo, false);
                            }
                        }));
                        return;
                    }
                }
            }

            @Override // com.kingroot.kinguser.and.C1258a
            /* renamed from: fF */
            public void mo10000fF(int i) {
                ady.m12308tK().mo1746bi(100732);
                if (i >= 0 && i <= aob.this.aBC.size()) {
                    final AvailUpdateInfo availUpdateInfo = (AvailUpdateInfo) aob.this.aEO.get(i);
                    aob.this.aBC.remove(i);
                    aob.this.aEO.remove(i);
                    aob.this.aBB.notifyDataSetChanged();
                    beg.m7461Zj().m7450c(new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.aob.2.2
                        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                        public void run() {
                            alv.m10524Hq().mo10410a(availUpdateInfo, false);
                        }
                    }));
                    C3954zj.m1310b(C3953zi.m1311pr().getString(R.string.notify_update_toast_tetx));
                }
            }
        };
        this.aER = new IRequestAvailUpdateListener.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.IgnoreUpdatePage$3
            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener
            public void onFetchResult(List<AvailUpdateInfo> list, boolean z) {
            }

            @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IRequestAvailUpdateListener
            public void onFetchDiffResult(List<AvailUpdateInfo> list, boolean z) {
                if (list != null && list.size() > 0) {
                    Iterator<ame> it = aob.this.aBC.iterator();
                    while (it.hasNext()) {
                        AppUpdateModel appUpdateModel = (AppUpdateModel) it.next();
                        Iterator<AvailUpdateInfo> it2 = list.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                AvailUpdateInfo next = it2.next();
                                if (appUpdateModel.pkgName.equals(next.pkgName)) {
                                    appUpdateModel.m4162c(next);
                                    break;
                                }
                            }
                        }
                    }
                }
                aob.this.getHandler().obtainMessage(0).sendToTarget();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.anl, com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.TAG = "ku_pageIgnoreUpdatePage";
        this.aBy = C3953zi.m1311pr().getString(R.string.ignore_update_page_title);
        this.aBo = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.anl, com.kingroot.kinguser.ans, com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.anl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        m10222Jg().m10170Jn().setVisibility(8);
        this.aBG.setLoadMoreListener(null);
        this.aBG.m4130Jt();
        ((TextView) this.mEmptyView.findViewById(R.id.nc_list_empty_desc)).setText(m1417V(2131166336L));
        this.aBB.m10639a(this.aEQ);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.anl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        switch (message.what) {
            case 0:
                this.aBB.notifyDataSetChanged();
                if (this.aiM.getVisibility() != 8) {
                    this.aiM.setVisibility(8);
                    this.aiO.m13556gT();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.kingroot.kinguser.anl
    /* renamed from: Ja */
    protected void mo9979Ja() {
        beg.m7461Zj().m7450c(this.aEP);
    }

    @Override // com.kingroot.kinguser.anl, android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
    }
}
