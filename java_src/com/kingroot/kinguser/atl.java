package com.kingroot.kinguser;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.view.View;
import com.kingroot.kinguser.bid;
import com.kingroot.kinguser.gamebox.foreground.GameBoxShortcutActivity;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class atl extends AbstractC3922ym {
    private bih aOe;
    private bht aOf;
    private List<String> aOg;
    private int mType;

    public atl(Context context, int i, ArrayList<String> arrayList) {
        super(context);
        this.mType = 1;
        this.aOg = null;
        this.mType = i;
        this.aOg = arrayList;
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View view = new View(this.mContext);
        view.setBackgroundColor(C3953zi.m1311pr().getColor(R.color.transparent));
        return view;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        beg.m7461Zj().m7450c(new bed(bem.IMMEDIATE, bec.Light_Weight, false, new C15321()));
    }

    /* renamed from: com.kingroot.kinguser.atl$1 */
    /* loaded from: classes.dex */
    class C15321 extends bek {
        C15321() {
        }

        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            final Bitmap m9366bd = ast.m9366bd(atl.this.aOg);
            C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.atl.1.1
                @Override // java.lang.Runnable
                public void run() {
                    if (atl.this.mType != 1) {
                        if (atl.this.mType == 2) {
                            atl.this.aOf = new bht(atl.this.getActivity());
                            atl.this.aOf.show();
                            if (m9366bd == null) {
                                atl.this.aOf.m6960iS(R.drawable.icon_game_box_dialog);
                            } else {
                                atl.this.aOf.m6961g(ast.m9366bd(atl.this.aOg));
                            }
                            atl.this.aOf.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.kingroot.kinguser.atl.1.1.3
                                @Override // android.content.DialogInterface.OnDismissListener
                                public void onDismiss(DialogInterface dialogInterface) {
                                    atl.this.getActivity().finish();
                                }
                            });
                            atl.this.aOf.mo6683iY(8);
                            atl.this.aOf.setTitleText(C3953zi.m1311pr().getString(R.string.gamebox_shortcut_create_dialog_sucess_tip_1));
                            atl.this.aOf.mo6682lK(C3953zi.m1311pr().getString(R.string.dialog_btn_i_know));
                            atl.this.aOf.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.atl.1.1.4
                                @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                                /* renamed from: n */
                                public void mo1843n(View view) {
                                    atl.this.aOf.dismiss();
                                    atl.this.getActivity().finish();
                                }
                            });
                            aks.m11143BP().m11058DW();
                            return;
                        }
                        return;
                    }
                    atl.this.aOe = new bih(atl.this.getActivity());
                    atl.this.aOe.show();
                    if (m9366bd == null) {
                        atl.this.aOe.setIcon(R.drawable.icon_game_box_dialog);
                    } else {
                        atl.this.aOe.m6918h(m9366bd);
                    }
                    atl.this.aOe.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.kingroot.kinguser.atl.1.1.1
                        @Override // android.content.DialogInterface.OnDismissListener
                        public void onDismiss(DialogInterface dialogInterface) {
                            atl.this.getActivity().finish();
                        }
                    });
                    atl.this.aOe.m6933d(C3953zi.m1311pr().getString(R.string.gamebox_shortcut_create_dialog_tip));
                    atl.this.aOe.mo6683iY(8);
                    atl.this.aOe.setTitleText(C3953zi.m1311pr().getString(R.string.gamebox_shortcut_create_dialog_title));
                    atl.this.aOe.mo6682lK(C3953zi.m1311pr().getString(R.string.gamebox_shortcut_create_dialog_btn_open));
                    atl.this.aOe.m6937a(new bid.InterfaceC2303b() { // from class: com.kingroot.kinguser.atl.1.1.2
                        @Override // com.kingroot.kinguser.bid.InterfaceC2303b
                        /* renamed from: n */
                        public void mo1843n(View view) {
                            int m11065DP = aks.m11143BP().m11065DP();
                            if (m11065DP == 1) {
                                ady.m12308tK().mo1746bi(100273);
                            } else if (m11065DP == 2) {
                                ady.m12308tK().mo1746bi(100275);
                            }
                            GameBoxShortcutActivity.m3760c(atl.this.getActivity());
                            atl.this.aOe.dismiss();
                            atl.this.getActivity().finish();
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        m9243vd();
        super.onDestroy();
    }

    /* renamed from: vd */
    public void m9243vd() {
        if (this.aOe != null && this.aOe.isShowing()) {
            this.aOe.dismiss();
        }
        if (this.aOf != null && this.aOf.isShowing()) {
            this.aOf.dismiss();
        }
    }
}
