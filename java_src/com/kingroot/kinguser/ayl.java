package com.kingroot.kinguser;

import android.os.Bundle;
import com.kingroot.loader.common.KlServiceManager;
import com.kingroot.loader.common.protocol.AbsProtocol;
import com.kingroot.loader.sdk.service.IKlApplicationManager;
import com.kingroot.loader.sdk.service.IKlConnectionManager;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public class ayl implements ayf {
    private static final String TAG = aiq.ash + "_MiniQQPimPort";

    @Override // com.kingroot.kinguser.ayf
    public int getPluginId() {
        return 5003;
    }

    @Override // com.kingroot.kinguser.ayf
    /* renamed from: a */
    public Bundle mo7981a(Bundle bundle, boolean z) {
        switch (AbsProtocol.getCmdId(bundle)) {
            case 1:
                ayp aypVar = new ayp();
                if (aypVar.readFromBundle(bundle)) {
                    awn.m8629Ta().m8628a(aypVar.bcU, aypVar.bcV, aypVar.bcW, new cat() { // from class: com.kingroot.kinguser.ayl.1
                        @Override // com.kingroot.kinguser.cat
                        /* renamed from: a */
                        public void mo2689a(int i, int i2, int i3, int i4, JceStruct jceStruct) {
                            ayp aypVar2 = new ayp();
                            aypVar2.bcX = i;
                            aypVar2.bcY = i2;
                            aypVar2.bcZ = i3;
                            aypVar2.bda = i4;
                            aypVar2.bdb = jceStruct;
                            ((IKlConnectionManager) KlServiceManager.getKService(IKlConnectionManager.class)).talkWithPlugin(ayl.this.getPluginId(), aypVar2.transferToBundle());
                        }
                    });
                    return null;
                }
                return null;
            case 2:
                ayo ayoVar = new ayo();
                if (ayoVar.readFromBundle(bundle)) {
                    try {
                        ayoVar.bcT = C3736ux.m1945kT().getSharkGuid();
                    } catch (abn e) {
                        ayoVar.bcT = "";
                    }
                    return ayoVar.transferToBundle();
                }
                return null;
            case 3:
                ayq ayqVar = new ayq();
                if (ayqVar.readFromBundle(bundle)) {
                    aye.m8028UP().mo1746bi(ayqVar.bdc);
                    return null;
                }
                return null;
            case 4:
                ayr ayrVar = new ayr();
                if (ayrVar.readFromBundle(bundle)) {
                    akw.m10690Gx().m10685h(ayrVar.bdd);
                    return null;
                }
                return null;
            case 2001:
                ayn aynVar = new ayn();
                if (aynVar.readFromBundle(bundle)) {
                    aynVar.f1638lc = "30F06D5DF23EAE66";
                    return aynVar.transferToBundle();
                }
                return null;
            default:
                return null;
        }
    }

    /* renamed from: Ve */
    public static boolean m8008Ve() {
        IKlApplicationManager iKlApplicationManager = (IKlApplicationManager) KlServiceManager.getKService(IKlApplicationManager.class);
        if (iKlApplicationManager.getRunningPluginApplication(5003) == null && !iKlApplicationManager.launchPlugin(5003)) {
            throw new ayi(5003, 0);
        }
        aym aymVar = new aym();
        if (aymVar.readFromBundle(((IKlConnectionManager) KlServiceManager.getKService(IKlConnectionManager.class)).talkWithPlugin(5003, aymVar.transferToBundle()))) {
            switch (aymVar.bcS) {
                case 1:
                    return true;
                case 2:
                    return false;
                default:
                    throw new ayk();
            }
        }
        throw new ayh(5003);
    }
}
