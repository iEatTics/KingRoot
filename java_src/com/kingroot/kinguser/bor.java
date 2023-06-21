package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.List;
/* loaded from: classes.dex */
public final class bor implements bol {
    private static bor bFI = new bor();

    private bor() {
        bot.agK();
        boi.agB().post(new bos(this));
    }

    public static bor agJ() {
        return bFI;
    }

    @Override // com.kingroot.kinguser.bol
    /* renamed from: a */
    public final bom mo6060a(int i, String str, String str2, String str3, String str4, boo booVar, long j) {
        return m6059a(i, str, str2, str3, str4, booVar, j, "");
    }

    /* renamed from: a */
    public final bom m6059a(int i, String str, String str2, String str3, String str4, boo booVar, long j, String str5) {
        String str6 = "";
        if (TextUtils.isEmpty(str2)) {
            str6 = "url is empty.";
        } else if (booVar == null) {
            str6 = "listener is null.";
        }
        String m6129e = bok.m6069a(str3) ? bnz.m6129e() : str3;
        if ("".equals(str6)) {
            return new bpi(i, str, new bph(str2), m6129e, str4, booVar, j);
        }
        throw new bnx(str6);
    }

    @Override // com.kingroot.kinguser.bol
    /* renamed from: a */
    public final void mo6058a(bom bomVar, boolean z) {
        bot.agK().m6050b(bomVar, z);
    }

    @Override // com.kingroot.kinguser.bol
    /* renamed from: a */
    public final void mo6057a(bon bonVar, int i) {
        bpr.ahd().m5884b(bonVar, i);
    }

    @Override // com.kingroot.kinguser.bol
    public final List agC() {
        return bot.agK().agL();
    }

    @Override // com.kingroot.kinguser.bol
    /* renamed from: o */
    public final void mo6056o(bom bomVar) {
        bot.agK().m6033p(bomVar);
    }
}
