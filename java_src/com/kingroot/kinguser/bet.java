package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.kingcore.uilib.RootStatusView;
import com.kingroot.kinguser.activitys.AboutActivity;
import com.kingroot.kinguser.activitys.AppsMarketMainActivity;
import com.kingroot.kinguser.activitys.AppsMarketWellChosenAppsActivity;
import com.kingroot.kinguser.activitys.DeviceActivity;
import com.kingroot.kinguser.activitys.KUCommonSettingActivity;
import com.kingroot.kinguser.aib;
import com.kingroot.kinguser.anx;
import com.kingroot.kinguses.R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bet extends acw {
    private static final int bly = C3953zi.m1311pr().getColor(R.color.transparent);
    private WeakReference<axm> blA;
    private RootStatusView blB;
    private ImageView blC;
    private anx blD;
    private aib blz;

    public bet(Context context, String str, axm axmVar) {
        super(context, str);
        this.blA = new WeakReference<>(axmVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Zx */
    public axm m7387Zx() {
        if (this.blA != null) {
            return this.blA.get();
        }
        return null;
    }

    @Override // com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oI */
    protected void mo1375oI() {
        m12560ck(0);
        this.abE = getWholeView().findViewById(R.id.title_bar_wrapper);
        this.abC.setImageDrawable(C3906xy.m1431ox().getDrawable(R.drawable.skin_main_right_menu));
        this.aby.setTextColor(C3906xy.m1431ox().getColor(R.color.skin_main_center_title));
        m12567aq(bhv.acN().m6965iR(0));
        m12563b(new View.OnClickListener() { // from class: com.kingroot.kinguser.bet.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                bet.this.m7376r(bet.this.abC);
            }
        });
        this.abE.setClickable(true);
        this.blB = (RootStatusView) getWholeView().findViewById(R.id.left_button_device);
        this.blB.setVisibility(0);
        this.blB.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bet.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100539);
                DeviceActivity.m12628aL(aft.m12026vt());
            }
        });
        if (anf.m10297IU()) {
            this.blD = new anx(getContext());
            ((FrameLayout) getWholeView().findViewById(R.id.right_button_entrance)).addView(this.blD.getWholeView());
            this.blD.m10027JP();
            this.blD.m10024Jm().setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bet.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ady.m12308tK().mo1746bi(100621);
                    AppsMarketMainActivity.m12637aL(bet.this.getContext());
                }
            });
        }
        this.blC = (ImageView) getWholeView().findViewById(R.id.bg_iv_1);
        this.blC.setVisibility(0);
        C3867wx.m1488a(this.abA, C3906xy.m1431ox().getDrawable(R.drawable.skin_main_template_menu_selector));
    }

    /* renamed from: j */
    public void m7377j(String str, boolean z) {
        this.blB.m13532j(str, z);
    }

    /* renamed from: Jo */
    public anx m7388Jo() {
        return this.blD;
    }

    /* renamed from: dK */
    public void m7379dK(boolean z) {
        this.blB.setIcon(z);
    }

    @Override // com.kingroot.kinguser.acw, com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oY */
    protected View mo1368oY() {
        return getLayoutInflater().inflate(R.layout.template_main_page, (ViewGroup) null);
    }

    /* renamed from: Zy */
    private List<aib.C0977c> m7386Zy() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new aib.C0977c(1, C3953zi.m1311pr().getString(R.string.setting_common)));
        arrayList.add(new aib.C0977c(4, C3953zi.m1311pr().getString(R.string.setting_feedback)));
        arrayList.add(new aib.C0977c(2, C3953zi.m1311pr().getString(R.string.setting_about)));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m7376r(View view) {
        this.blz = new aib(getContext(), view);
        aib.C0976b c0976b = new aib.C0976b(getContext(), m7386Zy(), true, new aib.InterfaceC0975a() { // from class: com.kingroot.kinguser.bet.4
            @Override // com.kingroot.kinguser.aib.InterfaceC0975a
            /* renamed from: dv */
            public boolean mo7374dv(int i) {
                switch (i) {
                    case 1:
                        return bhv.acN().m6965iR(1);
                    case 2:
                        return bhv.acN().m6965iR(2);
                    case 3:
                    case 4:
                    default:
                        return false;
                }
            }
        });
        this.blz.init();
        this.blz.m11676a(c0976b);
        this.blz.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.bet.5
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view2, int i, long j) {
                bet.this.blz.dismiss();
                switch ((int) adapterView.getItemIdAtPosition(i)) {
                    case 1:
                        axm m7387Zx = bet.this.m7387Zx();
                        if (m7387Zx != null) {
                            m7387Zx.m8315Un();
                        }
                        Intent intent = new Intent();
                        intent.setClass(bet.this.getContext(), KUCommonSettingActivity.class);
                        bet.this.getContext().startActivity(intent);
                        return;
                    case 2:
                        AboutActivity.m12653aK(bet.this.getContext());
                        return;
                    case 3:
                    default:
                        return;
                    case 4:
                        bgn.abM();
                        ady.m12308tK().mo1746bi(100165);
                        return;
                }
            }
        });
        this.blz.show();
        ady.m12308tK().mo1746bi(100256);
    }

    /* renamed from: vd */
    public void m7375vd() {
        if (this.blz != null) {
            this.blz.dismiss();
        }
    }

    /* renamed from: hz */
    public void m7378hz(int i) {
        C3857ws.m1501a(this.abE, i, bly);
    }

    /* renamed from: b */
    public void m7383b(anx.InterfaceC1346a interfaceC1346a) {
        if (!anf.m10297IU()) {
            interfaceC1346a.mo8249xr();
        } else {
            beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new C21516(interfaceC1346a)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bet$6 */
    /* loaded from: classes.dex */
    public class C21516 extends bek {
        final /* synthetic */ anx.InterfaceC1346a blF;

        C21516(anx.InterfaceC1346a interfaceC1346a) {
            this.blF = interfaceC1346a;
        }

        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            final boolean m12634vs = AppsMarketWellChosenAppsActivity.m12634vs();
            alx.m10508HB().mo10407HD().intValue();
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.bet.6.1
                @Override // java.lang.Runnable
                public void run() {
                    bet.this.blD.getWholeView().setVisibility(0);
                    bet.this.blD.m10023a(C21516.this.blF);
                    if (m12634vs) {
                        bet.this.blD.m10024Jm().setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bet.6.1.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                ady.m12308tK().mo1746bi(100599);
                                AppsMarketMainActivity.m12636aN(bet.this.getContext());
                            }
                        });
                        bet.this.blD.m10020aV(bet.this.getContext());
                        return;
                    }
                    long m11239Bd = akl.m11257AS().m11239Bd();
                    long currentTimeMillis = System.currentTimeMillis();
                    if (acu.m12573b(m11239Bd, currentTimeMillis, 86400000L)) {
                        bet.this.blD.m10027JP();
                        bet.this.blD.m10024Jm().setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.bet.6.1.2
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                ady.m12308tK().mo1746bi(100621);
                                AppsMarketMainActivity.m12637aL(bet.this.getContext());
                            }
                        });
                        bet.this.blD.m10013l(bet.this.getContext(), 2);
                        akl.m11257AS().m11207aq(currentTimeMillis);
                        return;
                    }
                    C21516.this.blF.mo8249xr();
                }
            });
        }
    }
}
