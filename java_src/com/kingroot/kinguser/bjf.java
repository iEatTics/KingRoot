package com.kingroot.kinguser;

import android.app.Activity;
import android.view.View;
import android.widget.AdapterView;
import com.kingroot.kinguser.aic;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class bjf extends ada {
    private WeakReference<InterfaceC2396a> akz;
    private int bwx;

    /* renamed from: com.kingroot.kinguser.bjf$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2396a {
        /* renamed from: K */
        void mo6737K(View view);
    }

    public bjf(Activity activity, String str, InterfaceC2396a interfaceC2396a) {
        super(activity, str);
        this.bwx = 0;
        this.akz = new WeakReference<>(interfaceC2396a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ada, com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oI */
    public void mo1375oI() {
        super.mo1375oI();
        m12566ar(true);
        m12562c(C3953zi.m1311pr().getDrawable(R.drawable.common_more));
        m12567aq(false);
        m12563b(new View.OnClickListener() { // from class: com.kingroot.kinguser.bjf.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                bjf.this.m6738r(bjf.this.abC);
            }
        });
        getWholeView().findViewById(R.id.title_bar_divider).setVisibility(0);
    }

    /* renamed from: jn */
    public void m6739jn(int i) {
        this.bwx = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m6738r(View view) {
        final aic aicVar = new aic(getContext(), view);
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(this.bwx == 0 ? C3953zi.m1311pr().getString(R.string.auto_start_batch_opt_disable) : C3953zi.m1311pr().getString(R.string.auto_start_batch_opt_enable));
        aic.C0981b c0981b = new aic.C0981b(getContext(), arrayList, false, null);
        aicVar.m11674Y(arrayList);
        aicVar.m11673a(c0981b);
        aicVar.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.bjf.2
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                InterfaceC2396a interfaceC2396a;
                aicVar.dismiss();
                switch (i) {
                    case 0:
                        if (bjf.this.akz != null && (interfaceC2396a = (InterfaceC2396a) bjf.this.akz.get()) != null) {
                            interfaceC2396a.mo6737K(view2);
                            return;
                        }
                        return;
                    default:
                        return;
                }
            }
        });
        aicVar.show();
    }
}
