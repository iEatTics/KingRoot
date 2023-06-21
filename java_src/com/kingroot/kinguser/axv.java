package com.kingroot.kinguser;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.BaseAdapter;
import com.kingroot.kinguser.agg;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class axv extends AbstractC3921yl {
    private agg aXm;
    private ArrayList<auc> alr;

    public axv(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100490);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new bey(getActivity(), m1417V(2131166028L));
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    protected BaseAdapter getAdapter() {
        this.alr = new ArrayList<>();
        this.aXm = new agg(this.mContext, this.alr);
        return this.aXm;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        this.f4011Vd.setClickable(true);
        this.f4011Vd.setDivider(null);
        m8106Tv();
    }

    /* renamed from: Tv */
    private void m8106Tv() {
        m8107TF();
        this.aXm.notifyDataSetChanged();
    }

    /* renamed from: TF */
    private void m8107TF() {
        this.alr.clear();
        m8103ka(C3953zi.m1311pr().getString(R.string.silent_install_setting_page_setting_item_title));
        m8105UF();
        m8104a(C3953zi.m1311pr().getString(R.string.silent_install_setting_page_setting_item_main), C3953zi.m1311pr().getString(R.string.silent_install_setting_page_setting_item_sub), aks.m11143BP().m10947Fd(), new agg.InterfaceC0882a() { // from class: com.kingroot.kinguser.axv.1
            @Override // com.kingroot.kinguser.agg.InterfaceC0882a
            /* renamed from: p */
            public void mo8035p(View view) {
                boolean z = !aks.m11143BP().m10947Fd();
                if (z) {
                    ady.m12308tK().mo1746bi(100493);
                } else {
                    ady.m12308tK().mo1746bi(100492);
                }
                aks.m11143BP().m10802ca(z);
            }
        });
        m8105UF();
        m8103ka(C3953zi.m1311pr().getString(R.string.silent_install_setting_page_notify_item_title));
        m8105UF();
        m8104a(C3953zi.m1311pr().getString(R.string.silent_install_setting_page_notify_item_main), C3953zi.m1311pr().getString(R.string.silent_install_setting_page_notify_item_sub), aks.m11143BP().m10946Fe(), new agg.InterfaceC0882a() { // from class: com.kingroot.kinguser.axv.2
            @Override // com.kingroot.kinguser.agg.InterfaceC0882a
            /* renamed from: p */
            public void mo8035p(View view) {
                boolean z = !aks.m11143BP().m10946Fe();
                if (z) {
                    ady.m12308tK().mo1746bi(100495);
                } else {
                    ady.m12308tK().mo1746bi(100494);
                }
                aks.m11143BP().m10801cb(z);
            }
        });
        m8105UF();
    }

    /* renamed from: ka */
    protected void m8103ka(String str) {
        auc aucVar = new auc();
        aucVar.mType = 0;
        aucVar.aQY = str;
        aucVar.aRa = "";
        this.alr.add(aucVar);
    }

    /* renamed from: UF */
    private void m8105UF() {
        auc aucVar = new auc();
        aucVar.mType = 6;
        this.alr.add(aucVar);
    }

    /* renamed from: a */
    private void m8104a(String str, String str2, boolean z, agg.InterfaceC0882a interfaceC0882a) {
        auc aucVar = new auc();
        aucVar.mType = 13;
        aucVar.aRi = true;
        aucVar.aRb = str;
        aucVar.aRc = str2;
        aucVar.aRh = z;
        aucVar.aRj = interfaceC0882a;
        this.alr.add(aucVar);
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    /* renamed from: oJ */
    protected int mo1419oJ() {
        return 0;
    }
}
