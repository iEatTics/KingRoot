package com.kingroot.kinguser;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.gamebox.foreground.GameBoxShortcutActivity;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class asv {
    private static String TAG = "ku_utils__GameBoxShortCut";
    private static bed aNE = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.asv.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            asv.m9361Oz();
        }
    });
    private static bed aAy = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.asv.2
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            List<Object> mo7445nF = interfaceC2117a.mo7445nF();
            if (mo7445nF != null && mo7445nF.size() != 0 && !asv.m9362Oy()) {
                asv.m9361Oz();
                try {
                    Thread.sleep(2000L);
                } catch (InterruptedException e) {
                }
                asv.m9359cK(((Boolean) mo7445nF.get(0)).booleanValue());
            }
        }
    });

    /* renamed from: cJ */
    public static void m9360cJ(boolean z) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Boolean.valueOf(z));
        beg.m7461Zj().m7456a(aAy, arrayList);
        aks.m11143BP().m11060DU();
    }

    /* renamed from: Oy */
    public static boolean m9362Oy() {
        return bgx.m7080aL(C3953zi.m1311pr().getString(R.string.game_box_shortcut_name), KUApplication.m13453ge().getApplicationInfo().packageName);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: cK */
    public static void m9359cK(boolean z) {
        Bitmap m9366bd;
        String string = C3953zi.m1311pr().getString(R.string.game_box_shortcut_name);
        if (z) {
            List<String> m9351OF = asw.m9351OF();
            if (m9351OF == null || m9351OF.size() == 0) {
                m9366bd = BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.gamebox_shortcut);
            } else {
                m9366bd = ast.m9366bd(m9351OF);
            }
        } else if (C3942yy.m1352c(asw.m9349OH())) {
            m9366bd = BitmapFactory.decodeResource(C3953zi.m1311pr(), R.drawable.gamebox_shortcut);
        } else {
            m9366bd = ast.m9366bd(null);
        }
        bgx.m7081a("com.android.launcher.action.INSTALL_SHORTCUT", string, GameBoxShortcutActivity.class, m9366bd);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Oz */
    public static void m9361Oz() {
        bgx.m7081a("com.android.launcher.action.UNINSTALL_SHORTCUT", C3953zi.m1311pr().getString(R.string.game_box_shortcut_name), GameBoxShortcutActivity.class, ast.m9366bd(null));
    }
}
