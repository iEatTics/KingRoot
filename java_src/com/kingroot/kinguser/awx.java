package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.annotation.UiThread;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.aue;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class awx extends AbstractC3922ym implements aue.InterfaceC1604b {
    private C3953zi aDg;
    private List<C1750a> aVA;
    private ImageView aVR;
    private TextView aVS;
    private aue.InterfaceC1603a aVT;
    private View aVU;
    private boolean aVV;
    private C1750a aVW;
    private final ArrayList<View> aVX;

    public awx(Context context) {
        super(context);
        this.aVA = new ArrayList();
        this.aDg = C3953zi.m1311pr();
        this.aVV = true;
        this.aVX = new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStart() {
        super.onStart();
        if (this.aVW != null) {
            this.aVW.m8555do(bbv.m7771WK().m7766WP() && akt.m10713Gj().m10712Gk());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ady.m12308tK().mo1746bi(100478);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        ada adaVar = new ada(getActivity(), C3953zi.m1311pr().getString(R.string.advance_perm_main_page_title));
        View wholeView = adaVar.getWholeView();
        if (wholeView != null) {
            wholeView.findViewById(R.id.title_bar_divider).setVisibility(8);
        }
        return adaVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
        this.aVT.mo9091PJ();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.page_advance_perm_main, (ViewGroup) null);
        this.aVU = inflate.findViewById(R.id.top_panel);
        this.aVU.setClickable(false);
        this.aVU.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.awx.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                awx.this.aVT.mo9093PH();
            }
        });
        this.aVR = (ImageView) inflate.findViewById(R.id.topImage);
        this.aVS = (TextView) inflate.findViewById(R.id.topPrimaryText);
        this.aVT.start();
        View findViewById = inflate.findViewById(R.id.menu_panel);
        this.aVA.add(new C1750a(1, findViewById.findViewById(R.id.item_root_auth)).m8554g(this.aDg.getDrawable(R.drawable.advance_perm_main_rootauth_item)).m8553jV(this.aDg.getString(R.string.advance_perm_root_unroot_auth_title)));
        this.aVA.add(new C1750a(2, findViewById.findViewById(R.id.item_silent_install)).m8554g(this.aDg.getDrawable(R.drawable.advance_perm_main_silentinstall_item)).m8553jV(this.aDg.getString(R.string.advance_perm_main_page_title_silentinstall)));
        this.aVX.add(findViewById.findViewById(R.id.divider_1));
        this.aVA.add(new C1750a(3, findViewById.findViewById(R.id.item_auto_boot)).m8554g(this.aDg.getDrawable(R.drawable.advance_perm_main_autoboot_item)).m8553jV(this.aDg.getString(R.string.advance_perm_root_unroot_auto_title)));
        this.aVX.add(findViewById.findViewById(R.id.divider_2));
        this.aVW = new C1750a(5, findViewById.findViewById(R.id.item_default_settings)).m8554g(this.aDg.getDrawable(R.drawable.advance_perm_main_default_settings_item)).m8553jV(this.aDg.getString(R.string.advance_perm_root_unroot_default_settings_title));
        this.aVA.add(this.aVW);
        this.aVX.add(findViewById.findViewById(R.id.divider_3));
        inflate.findViewById(R.id.root_button).setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.awx.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                awx.this.aVT.mo9092PI();
            }
        });
        return inflate;
    }

    @Override // com.kingroot.kinguser.aue.InterfaceC1604b
    /* renamed from: u */
    public void mo8557u(final int i, final boolean z) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.awx.3
            @Override // java.lang.Runnable
            public void run() {
                C3953zi m1311pr = C3953zi.m1311pr();
                if (z) {
                    awx.this.aVR.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.advance_perm_main));
                    awx.this.aVS.setTextColor(C3953zi.m1311pr().getColor(R.color.blue_1));
                    if (i < 1) {
                        awx.this.aVU.setClickable(false);
                        awx.this.aVS.setText(m1311pr.getString(R.string.advance_perm_main_page_desc_warning));
                        return;
                    }
                    awx.this.aVU.setClickable(true);
                    awx.this.aVS.setText(String.format(m1311pr.getString(R.string.advance_perm_main_page_desc_normal), Integer.valueOf(i)));
                    return;
                }
                awx.this.aVU.setClickable(false);
                awx.this.aVR.setImageDrawable(C3953zi.m1311pr().getDrawable(R.drawable.per_main_noroot));
                awx.this.aVS.setTextColor(C3953zi.m1311pr().getColor(R.color.black_1));
                awx.this.aVS.setText(m1311pr.getString(R.string.advance_perm_module_has_been_disabled));
            }
        });
    }

    @Override // com.kingroot.kinguser.aue.InterfaceC1604b
    /* renamed from: N */
    public void mo8569N(int i, String str) {
        mo8566b(i, str, false);
    }

    @Override // com.kingroot.kinguser.aue.InterfaceC1604b
    /* renamed from: b */
    public void mo8566b(final int i, final String str, final boolean z) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.awx.4
            @Override // java.lang.Runnable
            public void run() {
                if (!C3942yy.m1352c(awx.this.aVA)) {
                    for (C1750a c1750a : awx.this.aVA) {
                        if (i == c1750a.type) {
                            c1750a.m8552jW(str);
                            c1750a.m8556dn(z);
                        }
                    }
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.aue.InterfaceC1604b
    /* renamed from: cM */
    public void mo8563cM(boolean z) {
        this.aVV = z;
        View findViewById = getContentView().findViewById(R.id.menu_panel);
        if (z) {
            C3857ws.m1497h(findViewById);
        } else {
            findViewById.setBackgroundColor(0);
        }
        getContentView().findViewById(R.id.main_divider).setVisibility(z ? 8 : 0);
        Iterator<View> it = this.aVX.iterator();
        while (it.hasNext()) {
            it.next().setVisibility(z ? 0 : 8);
        }
        for (C1750a c1750a : this.aVA) {
            m8559e(z, c1750a.ajG.getId());
        }
    }

    @Override // com.kingroot.kinguser.aue.InterfaceC1604b
    /* renamed from: cN */
    public void mo8562cN(final boolean z) {
        getHandler().post(new Runnable() { // from class: com.kingroot.kinguser.awx.5
            @Override // java.lang.Runnable
            public void run() {
                awx.this.getContentView().findViewById(R.id.root_button_panel).setVisibility(z ? 0 : 8);
            }
        });
    }

    /* renamed from: e */
    private void m8559e(boolean z, int i) {
        View findViewById = getContentView().findViewById(i);
        findViewById.findViewById(R.id.right_arrow).setVisibility(z ? 0 : 8);
        if (z) {
            findViewById.setBackgroundResource(R.drawable.selector_card_style_bg);
        } else {
            findViewById.setBackgroundColor(0);
        }
    }

    /* renamed from: a */
    public void m8568a(aue.InterfaceC1603a interfaceC1603a) {
        this.aVT = (aue.InterfaceC1603a) C3948zd.m1327k(interfaceC1603a);
    }

    /* renamed from: com.kingroot.kinguser.awx$a */
    /* loaded from: classes.dex */
    class C1750a {
        ImageView aWe;
        int aWf;
        int aWg = C3953zi.m1311pr().getColor(R.color.red_1);
        View ajG;
        ImageView ajH;
        TextView ajI;
        TextView ajJ;
        int type;

        public C1750a(int i, View view) {
            this.type = i;
            this.ajG = view;
            this.ajH = (ImageView) this.ajG.findViewById(R.id.icon);
            this.ajI = (TextView) this.ajG.findViewById(R.id.main_text);
            this.ajJ = (TextView) this.ajG.findViewById(R.id.sub_text);
            this.aWe = (ImageView) this.ajG.findViewById(R.id.suggestion_tag);
            this.aWf = this.ajJ.getTextColors().getDefaultColor();
            this.ajG.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.awx.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (awx.this.aVV) {
                        awx.this.aVT.mo9076gJ(C1750a.this.type);
                    }
                }
            });
        }

        /* renamed from: g */
        public C1750a m8554g(Drawable drawable) {
            this.ajH.setImageDrawable(drawable);
            return this;
        }

        /* renamed from: jV */
        public C1750a m8553jV(String str) {
            this.ajI.setText(str);
            return this;
        }

        /* renamed from: jW */
        public C1750a m8552jW(String str) {
            this.ajJ.setText(str);
            return this;
        }

        /* renamed from: dn */
        public C1750a m8556dn(boolean z) {
            this.ajJ.setTextColor(z ? this.aWg : this.aWf);
            return this;
        }

        @UiThread
        /* renamed from: do */
        C1750a m8555do(boolean z) {
            this.aWe.setVisibility(z ? 0 : 8);
            return this;
        }
    }
}
