package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.kingroot.kinguser.activitys.AntiInjectAboutActivity;
import com.kingroot.kinguser.activitys.SoftwareProtectListActivity;
import com.kingroot.kinguser.aic;
import com.kingroot.kinguser.ber;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver;
import com.kingroot.kinguses.R;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class ber extends ada {
    private InterfaceC2145a blt;
    private boolean blu;
    private boolean blv;
    private bed blw;

    /* renamed from: com.kingroot.kinguser.ber$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2145a {
        /* renamed from: UE */
        void m7389UE();
    }

    /* renamed from: com.kingroot.kinguser.ber$1 */
    /* loaded from: classes.dex */
    public class C21371 extends bek {
        C21371() {
        }

        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            ahl.m11725xm().m11734a(false, new IAntiInjectSwitcherOpObserver.Stub() { // from class: com.kingroot.kinguser.tmplate.AntiInjectTemplate$1$1
                @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                public void onSwitcherOpen(int i) {
                }

                @Override // com.kingroot.kinguser.p015ai.fore.IAntiInjectSwitcherOpObserver
                public void onSwitcherClosed() {
                    ber.InterfaceC2145a interfaceC2145a;
                    ber.InterfaceC2145a interfaceC2145a2;
                    interfaceC2145a = ber.this.blt;
                    if (interfaceC2145a != null) {
                        interfaceC2145a2 = ber.this.blt;
                        interfaceC2145a2.m7389UE();
                    }
                }
            });
        }
    }

    public ber(Activity activity, String str) {
        super(activity, str);
        this.blt = null;
        this.blu = false;
        this.blv = false;
        this.blw = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new C21371());
    }

    @Override // com.kingroot.kinguser.acw, com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oY */
    protected View mo1368oY() {
        try {
            return getLayoutInflater().inflate(R.layout.template_immersive, (ViewGroup) null);
        } catch (Throwable th) {
            return new View(getContext());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ada, com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oI */
    public void mo1375oI() {
        super.mo1375oI();
        m12561c(new View.OnClickListener() { // from class: com.kingroot.kinguser.ber.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!ber.this.blu) {
                    ((Activity) ber.this.getContext()).finish();
                }
            }
        });
        m12562c(C3953zi.m1311pr().getDrawable(R.drawable.anti_inject_page_menu_white));
        getWholeView().findViewById(R.id.right_btn).setBackgroundResource(R.drawable.title_button_selector);
        m12563b(new View.OnClickListener() { // from class: com.kingroot.kinguser.ber.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ber.this.m7390r(ber.this.abC);
            }
        });
        getWholeView().findViewById(R.id.title_bar_divider).setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m7390r(View view) {
        final aic aicVar = new aic(getContext(), view);
        if (this.blv) {
            List<String> asList = Arrays.asList(C3953zi.m1311pr().getStringArray(R.array.anti_inject_main_menu));
            aic.C0981b c0981b = new aic.C0981b(getContext(), asList, true, new aic.InterfaceC0980a() { // from class: com.kingroot.kinguser.ber.4
                @Override // com.kingroot.kinguser.aic.InterfaceC0980a
                /* renamed from: dv */
                public boolean mo7354dv(int i) {
                    switch (i) {
                        case 0:
                            return bhq.acE().m6965iR(1);
                        case 1:
                        default:
                            return false;
                    }
                }
            });
            aicVar.m11674Y(asList);
            aicVar.m11673a(c0981b);
            aicVar.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.ber.5
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                    aicVar.dismiss();
                    switch (i) {
                        case 0:
                            ber.this.m7403Zv();
                            return;
                        case 1:
                            ady.m12308tK().mo1746bi(100217);
                            ber.this.m7397bo(ber.this.getContext());
                            return;
                        case 2:
                            ber.this.m7402Zw();
                            return;
                        default:
                            return;
                    }
                }
            });
            aicVar.show();
            this.abC.setShowDot(bhq.acE().m6965iR(0));
            return;
        }
        List<String> asList2 = Arrays.asList(C3953zi.m1311pr().getStringArray(R.array.anti_inject_sub_menu));
        aic.C0981b c0981b2 = new aic.C0981b(getContext(), asList2, false, null);
        aicVar.m11674Y(asList2);
        aicVar.m11673a(c0981b2);
        aicVar.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.ber.6
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                aicVar.dismiss();
                switch (i) {
                    case 0:
                        ber.this.m7402Zw();
                        return;
                    default:
                        return;
                }
            }
        });
        aicVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: bo */
    public void m7397bo(Context context) {
        C3953zi m1311pr = C3953zi.m1311pr();
        bid bidVar = new bid(context);
        bidVar.show();
        bidVar.setTitleText(m1311pr.getString(R.string.anti_inject_stop_engine_dialog_title));
        bidVar.m6933d(m1311pr.getString(R.string.anti_inject_stop_engine_dialog_content));
        bidVar.m6930lL(m1311pr.getString(R.string.anti_inject_stop_engine_dialog_confirm));
        bidVar.mo6682lK(m1311pr.getString(R.string.anti_inject_stop_engine_dialog_dimiss));
        bidVar.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.ber.7
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ady.m12308tK().mo1746bi(100258);
            }
        });
        bidVar.m6935b(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.ber.8
            @Override // com.kingroot.kinguser.bid.InterfaceC2303b
            /* renamed from: n */
            public void mo1843n(View view) {
                ady.m12308tK().mo1746bi(100259);
                beg.m7461Zj().m7450c(ber.this.blw);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Zv */
    public void m7403Zv() {
        ady.m12308tK().mo1746bi(100218);
        Context context = getContext();
        Intent intent = new Intent(context, SoftwareProtectListActivity.class);
        intent.putExtra("setting_title", C3953zi.m1311pr().getString(R.string.setting_soft_protect_list));
        intent.putExtra("software.protect_list.page", 0);
        context.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Zw */
    public void m7402Zw() {
        ady.m12308tK().mo1746bi(100222);
        Context context = getContext();
        context.startActivity(new Intent(context, AntiInjectAboutActivity.class));
    }

    /* renamed from: dI */
    public void m7394dI(boolean z) {
        this.blu = z;
    }

    /* renamed from: dJ */
    public void m7393dJ(boolean z) {
        this.blv = z;
    }
}
