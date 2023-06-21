package com.kingroot.kinguser;

import android.content.Context;
import android.os.Message;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Toast;
import com.kingroot.kinguser.auc;
import com.kingroot.kinguser.bhu;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class aya extends axs {
    private AdapterView.OnItemClickListener aVh;
    private big bcy;

    public aya(Context context) {
        super(context);
        this.bcy = null;
        this.aVh = new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.aya.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                switch (aya.this.alr.get(i).aQX) {
                    case 7:
                        aya.this.bcy = new big(aya.this.getContext());
                        aya.this.bcy.show();
                        aya.this.bcy.setTitleText(C3953zi.m1311pr().getString(R.string.log_clear_note));
                        aya.this.bcy.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_cancel));
                        aya.this.bcy.m6930lL(C3953zi.m1311pr().getString(R.string.dialog_btn_clear));
                        aya.this.bcy.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.aya.2.1
                            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                            /* renamed from: n */
                            public void mo1843n(View view2) {
                                bbo.m7795Wv().clearAllLogs();
                                aya.this.m8068hE(R.string.log_has_cleaned);
                            }
                        });
                        return;
                    default:
                        return;
                }
            }
        };
        this.alr = new ArrayList<>();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new bey(getActivity(), m1417V(2131165698L));
    }

    @Override // com.kingroot.kinguser.axs, com.kingroot.kinguser.AbstractC3921yl
    protected BaseAdapter getAdapter() {
        this.f4012Ve = new agg(this.mContext, this.alr);
        return this.f4012Ve;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.axs, com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        this.f4011Vd.setClickable(true);
        setOnItemClickListener(this.aVh);
        this.f4011Vd.setDivider(null);
        m8069cp(0L);
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        super.mo1372i(obj);
        m8074Tv();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        super.onDestroy();
        m8067vd();
    }

    /* renamed from: cp */
    public void m8069cp(long j) {
        getHandler().sendMessageDelayed(getHandler().obtainMessage(0), j);
    }

    /* renamed from: Tw */
    public void m8073Tw() {
        getHandler().obtainMessage(0).sendToTarget();
    }

    /* renamed from: vd */
    private void m8067vd() {
        if (this.bcy != null && this.bcy.isShowing()) {
            this.bcy.dismiss();
        }
    }

    /* renamed from: Tv */
    private void m8074Tv() {
        m8075TF();
        this.f4012Ve.notifyDataSetChanged();
    }

    /* renamed from: TF */
    private void m8075TF() {
        this.alr.clear();
        m8152ka(C3953zi.m1311pr().getString(R.string.setting_list_item_title_record_limit_time));
        m8155a(this.mContext.getResources().getStringArray(R.array.array_string_log_time_limit), aks.m11143BP().m11138BU(), new auc.InterfaceC1600a() { // from class: com.kingroot.kinguser.aya.1
            @Override // com.kingroot.kinguser.auc.InterfaceC1600a
            /* renamed from: x */
            public void mo8066x(View view) {
                Object tag = view.getTag();
                if (tag != null && (tag instanceof Integer)) {
                    aks.m11143BP().m10760eg(((Integer) tag).intValue());
                    aya.this.m8073Tw();
                }
                aya.this.m8073Tw();
            }
        });
        m8161UF();
        m8152ka(C3953zi.m1311pr().getString(R.string.log_title));
        m8161UF();
        m8156a(7, C3953zi.m1311pr().getString(R.string.log_clear), "", (String[]) null, 0, (bhu.InterfaceC2291a) null);
        m8161UF();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                m8074Tv();
                return;
            case 1:
                Toast.makeText(this.mContext, message.arg1, 0).show();
                return;
            default:
                return;
        }
    }

    @Override // com.kingroot.kinguser.axs, com.kingroot.kinguser.AbstractC3921yl
    /* renamed from: oJ */
    protected int mo1419oJ() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hE */
    public void m8068hE(int i) {
        Message obtainMessage = getHandler().obtainMessage(1);
        obtainMessage.arg1 = i;
        getHandler().sendMessage(obtainMessage);
    }
}
