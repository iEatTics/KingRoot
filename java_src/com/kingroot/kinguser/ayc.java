package com.kingroot.kinguser;

import android.content.Context;
import android.os.Message;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.kingroot.kinguser.agg;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class ayc extends AbstractC3921yl {
    private AdapterView.OnItemClickListener aVh;
    private aks aXl;
    private agg aXm;
    private ArrayList<auc> alr;

    public ayc(Context context) {
        super(context);
        this.aVh = new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.ayc.3
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            }
        };
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new bey(getActivity(), m1417V(2131165971L));
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
        this.aXl = aks.m11143BP();
        this.f4011Vd.setClickable(true);
        setOnItemClickListener(this.aVh);
        this.f4011Vd.setDivider(null);
        m8036cp(0L);
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        super.mo1372i(obj);
        m8040Tv();
    }

    /* renamed from: cp */
    public void m8036cp(long j) {
        getHandler().sendMessageDelayed(getHandler().obtainMessage(0), j);
    }

    /* renamed from: Tv */
    private void m8040Tv() {
        m8041TF();
        this.aXm.notifyDataSetChanged();
    }

    /* renamed from: TF */
    private void m8041TF() {
        this.alr.clear();
        m8038a(15, C3953zi.m1311pr().getString(R.string.setting_list_item_wifi_auto_download), this.aXl.m11128CE(), new agg.InterfaceC0882a() { // from class: com.kingroot.kinguser.ayc.1
            @Override // com.kingroot.kinguser.agg.InterfaceC0882a
            /* renamed from: p */
            public void mo8035p(View view) {
                boolean z = !ayc.this.aXl.m11128CE();
                if (z) {
                    ady.m12308tK().m1782bj(100159);
                    ady.m12308tK().m1781bk(100160);
                } else {
                    ady.m12308tK().m1782bj(100160);
                    ady.m12308tK().m1781bk(100159);
                }
                ayc.this.aXl.m10822bq(z);
                ayc.this.aXl.m10888bB(z);
                ayc.this.mo1402oR();
            }
        });
        m8039UF();
        if (this.aXl.m11128CE() && aks.m11143BP().m11049Df()) {
            m8038a(21, C3953zi.m1311pr().getString(R.string.setting_list_item_wifi_auto_update_to_latest_version), this.aXl.m11048Dg(), new agg.InterfaceC0882a() { // from class: com.kingroot.kinguser.ayc.2
                @Override // com.kingroot.kinguser.agg.InterfaceC0882a
                /* renamed from: p */
                public void mo8035p(View view) {
                    boolean z = !ayc.this.aXl.m11048Dg();
                    if (z) {
                        ady.m12308tK().m1782bj(100191);
                        ady.m12308tK().m1781bk(100192);
                    } else {
                        ady.m12308tK().m1782bj(100192);
                        ady.m12308tK().m1781bk(100191);
                    }
                    ayc.this.aXl.m10888bB(z);
                }
            });
            m8039UF();
        }
    }

    /* renamed from: UF */
    private void m8039UF() {
        auc aucVar = new auc();
        aucVar.mType = 6;
        this.alr.add(aucVar);
    }

    /* renamed from: a */
    private void m8038a(int i, String str, boolean z, agg.InterfaceC0882a interfaceC0882a) {
        auc aucVar = new auc();
        aucVar.mType = 3;
        aucVar.aQX = i;
        aucVar.aQY = str;
        aucVar.aRa = "";
        aucVar.aRh = z;
        aucVar.aRj = interfaceC0882a;
        this.alr.add(aucVar);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                m8040Tv();
                return;
            default:
                return;
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    /* renamed from: oJ */
    protected int mo1419oJ() {
        return 0;
    }
}
