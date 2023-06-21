package com.kingroot.kinguser;

import android.content.Context;
import android.os.Message;
import android.view.View;
import android.widget.BaseAdapter;
import com.kingroot.kinguser.auc;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class axz extends axs {
    public axz(Context context) {
        super(context);
        this.alr = new ArrayList<>();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new bey(getActivity(), m1417V(2131165961L));
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
        m8076cp(0L);
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        super.mo1372i(obj);
        m8080Tv();
    }

    /* renamed from: cp */
    public void m8076cp(long j) {
        getHandler().sendMessageDelayed(getHandler().obtainMessage(0), j);
    }

    /* renamed from: Tw */
    public void m8079Tw() {
        getHandler().obtainMessage(0).sendToTarget();
    }

    /* renamed from: Tv */
    private void m8080Tv() {
        m8081TF();
        this.f4012Ve.notifyDataSetChanged();
    }

    /* renamed from: TF */
    private void m8081TF() {
        this.alr.clear();
        m8152ka(C3953zi.m1311pr().getString(R.string.setting_list_item_timeout));
        int i = 0;
        String[] strArr = null;
        try {
            i = m8078a(aks.m11143BP().m11141BR(), this.mContext.getResources().getIntArray(R.array.array_string_timeout));
            strArr = this.mContext.getResources().getStringArray(R.array.array_string_timeout_tip);
        } catch (Exception e) {
        }
        m8155a(strArr, i, new auc.InterfaceC1600a() { // from class: com.kingroot.kinguser.axz.1
            @Override // com.kingroot.kinguser.auc.InterfaceC1600a
            /* renamed from: x */
            public void mo8066x(View view) {
                Object tag = view.getTag();
                if (tag != null && (tag instanceof Integer)) {
                    try {
                        int intValue = ((Integer) tag).intValue();
                        int[] intArray = axz.this.mContext.getResources().getIntArray(R.array.array_string_timeout);
                        if (intArray != null && intArray.length - 1 >= intValue) {
                            aks.m11143BP().m10762ee(intArray[intValue]);
                            axz.this.m8079Tw();
                        }
                    } catch (Exception e2) {
                    }
                }
                axz.this.m8079Tw();
            }
        });
        m8161UF();
        m8152ka(C3953zi.m1311pr().getString(R.string.setting_list_item_default_response));
        m8155a(this.mContext.getResources().getStringArray(R.array.array_string_timeout_response), aks.m11143BP().m11140BS(), new auc.InterfaceC1600a() { // from class: com.kingroot.kinguser.axz.2
            @Override // com.kingroot.kinguser.auc.InterfaceC1600a
            /* renamed from: x */
            public void mo8066x(View view) {
                Object tag = view.getTag();
                if (tag != null && (tag instanceof Integer)) {
                    aks.m11143BP().m10761ef(((Integer) tag).intValue());
                    axz.this.m8079Tw();
                }
            }
        });
        m8161UF();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                m8080Tv();
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

    /* renamed from: a */
    private int m8078a(int i, int[] iArr) {
        if (iArr == null) {
            return -1;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= iArr.length) {
                i2 = -1;
                break;
            } else if (iArr[i2] == i) {
                break;
            } else {
                i2++;
            }
        }
        return i2;
    }
}
