package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import com.kingroot.kinguser.activitys.AntiInjectAboutActivity;
import com.kingroot.kinguser.activitys.AntiInjectActivity;
import com.kingroot.kinguser.aic;
import com.kingroot.kinguser.bex;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.kinguser.urlcheck.p017ui.UrlCheckMainActivity;
import com.kingroot.kinguser.xmod.p018ui.CveInfoActivity;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class bex extends ada {
    private InterfaceC2164a blK;
    private bed blw;

    /* renamed from: com.kingroot.kinguser.bex$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2164a {
        /* renamed from: UE */
        void mo7353UE();
    }

    /* renamed from: com.kingroot.kinguser.bex$1 */
    /* loaded from: classes.dex */
    public class C21571 extends bek {
        C21571() {
        }

        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            ahl.m11725xm().m11734a(false, new IAntiInjectSwitcherOpObserver.Stub() { // from class: com.kingroot.kinguser.tmplate.SecurityProtectTemplate$1$1
                @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                public void onSwitcherOpen(int i) {
                }

                @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                public void onSwitcherClosed() {
                    bex.InterfaceC2164a interfaceC2164a;
                    bex.InterfaceC2164a interfaceC2164a2;
                    interfaceC2164a = bex.this.blK;
                    if (interfaceC2164a != null) {
                        interfaceC2164a2 = bex.this.blK;
                        interfaceC2164a2.mo7353UE();
                    }
                }
            });
        }
    }

    public bex(Activity activity, String str) {
        super(activity, str);
        this.blK = null;
        this.blw = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new C21571());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ada, com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oI */
    public void mo1375oI() {
        super.mo1375oI();
        m12561c(new View.OnClickListener() { // from class: com.kingroot.kinguser.bex.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((Activity) bex.this.getContext()).finish();
            }
        });
        m12562c(C3953zi.m1311pr().getDrawable(R.drawable.common_more));
        getWholeView().findViewById(R.id.right_btn).setBackgroundResource(R.drawable.title_button_selector);
        m12563b(new View.OnClickListener() { // from class: com.kingroot.kinguser.bex.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                bex.this.m7355r(bex.this.abC);
            }
        });
        getWholeView().findViewById(R.id.title_bar_divider).setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m7355r(View view) {
        ady.m12308tK().mo1746bi(100469);
        final aic aicVar = new aic(getContext(), view);
        ahl m11725xm = ahl.m11725xm();
        final C3953zi m1311pr = C3953zi.m1311pr();
        final ArrayList arrayList = new ArrayList();
        if (aii.m11642xL().m11639xO() && abc.m12845qK().isRootPermition()) {
            if (m11725xm.m11723xo()) {
                arrayList.add(m1311pr.getString(R.string.security_protect_stop_engine));
            } else {
                arrayList.add(m1311pr.getString(R.string.security_protect_open_engine));
            }
        }
        if (biq.ada().adb()) {
            arrayList.add(m1311pr.getString(R.string.cve_info_page_title));
        }
        if (abc.m12845qK().isRootPermition(false) && bfw.aaS().abe()) {
            arrayList.add(m1311pr.getString(R.string.urlcheck_info_page_title));
        }
        arrayList.add(m1311pr.getString(R.string.security_protect_about));
        aic.C0981b c0981b = new aic.C0981b(getContext(), arrayList, true, new aic.InterfaceC0980a() { // from class: com.kingroot.kinguser.bex.4
            @Override // com.kingroot.kinguser.aic.InterfaceC0980a
            /* renamed from: dv */
            public boolean mo7354dv(int i) {
                if (i < 0 || i >= arrayList.size()) {
                    return false;
                }
                if (TextUtils.equals((String) arrayList.get(i), m1311pr.getString(R.string.urlcheck_info_page_title))) {
                    return bfw.aaS().aaV();
                }
                return false;
            }
        });
        aicVar.m11674Y(arrayList);
        aicVar.m11673a(c0981b);
        aicVar.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.bex.5
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                aicVar.dismiss();
                String str = (String) arrayList.get(i);
                if (str.equals(m1311pr.getString(R.string.security_protect_about))) {
                    bex.this.m7366Zw();
                } else if (str.equals(m1311pr.getString(R.string.security_protect_stop_engine))) {
                    ady.m12308tK().mo1746bi(100471);
                    bex.this.m7360bo(bex.this.getContext());
                } else if (str.equals(m1311pr.getString(R.string.security_protect_open_engine))) {
                    ady.m12308tK().mo1746bi(100470);
                    AntiInjectActivity.m12649b((Activity) bex.this.getContext());
                } else if (str.equals(m1311pr.getString(R.string.cve_info_page_title))) {
                    bex.this.m7367ZB();
                } else if (str.equals(m1311pr.getString(R.string.urlcheck_info_page_title))) {
                    bex.this.m7368ZA();
                }
            }
        });
        aicVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ZA */
    public void m7368ZA() {
        UrlCheckMainActivity.m1990aL(getContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ZB */
    public void m7367ZB() {
        Context context = getContext();
        context.startActivity(new Intent(context, CveInfoActivity.class));
        ady.m12308tK().mo1746bi(100576);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bo */
    public void m7360bo(Context context) {
        C3953zi m1311pr = C3953zi.m1311pr();
        bid bidVar = new bid(context);
        bidVar.show();
        bidVar.setTitleText(m1311pr.getString(R.string.anti_inject_stop_engine_dialog_title));
        bidVar.m6933d(m1311pr.getString(R.string.anti_inject_stop_engine_dialog_content));
        bidVar.m6930lL(m1311pr.getString(R.string.anti_inject_stop_engine_dialog_confirm));
        bidVar.mo6682lK(m1311pr.getString(R.string.anti_inject_stop_engine_dialog_dimiss));
        bidVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bex.6
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ady.m12308tK().mo1746bi(100258);
            }
        });
        bidVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.bex.7
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ady.m12308tK().mo1746bi(100259);
                beg.m7461Zj().m7450c(bex.this.blw);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Zw */
    public void m7366Zw() {
        ady.m12308tK().mo1746bi(100472);
        Context context = getContext();
        context.startActivity(new Intent(context, AntiInjectAboutActivity.class));
    }

    /* renamed from: a */
    public void m7365a(InterfaceC2164a interfaceC2164a) {
        this.blK = interfaceC2164a;
    }
}
