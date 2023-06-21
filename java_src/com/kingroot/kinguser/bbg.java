package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.bed;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class bbg extends AbstractC3634th {
    private static final bed bfc = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bbg.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            if (interfaceC2117a.mo7445nF() != null && interfaceC2117a.mo7445nF().size() != 0) {
                ass.m9368l((Intent) interfaceC2117a.mo7445nF().get(0));
            }
        }
    });
    private static final bed bfd = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.bbg.2
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            if (interfaceC2117a.mo7445nF() != null && interfaceC2117a.mo7445nF().size() != 0) {
                bfy.m7190n((Intent) interfaceC2117a.mo7445nF().get(0));
            }
        }
    });

    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, Intent intent) {
        String str = "";
        if (intent != null) {
            str = intent.getAction();
        }
        if (!"com.kingroot.common.ACTION_NEW_APP_STARTED".equals(str)) {
            if ("com.kingroot.common.ACTION_SWITCH_IN_DESKTOP".equals(str)) {
                alx.m10508HB().mo10404cy(true);
            } else if ("com.kingroot.common.ACTION_SWITCH_OUT_DESKTOP".equals(str)) {
                alx.m10508HB().mo10404cy(false);
            } else if ("com.kingroot.common.ACTION_TOP_APP_CHANGED".equals(str)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(intent);
                beg.m7461Zj().m7456a(bfc, arrayList);
                if (bfw.aaS().aaU() && bfw.aaS().aaW()) {
                    beg.m7461Zj().m7456a(bfd, arrayList);
                }
                atd.m9307m(intent);
            } else if (!"com.kingroot.common.ACTION_TOP_ACTIVITY_CHANGED".equals(str)) {
                if ("com.kingroot.common.ACTION_NOTIFY_IN_SELF_APP_MAIN".equals(str)) {
                    abr.m12763rk().m12767aj(true);
                } else if ("com.kingroot.common.ACTION_NOTIFY_OUT_SELF_APP_BY_MAIN".equals(str)) {
                    abr.m12763rk().m12767aj(false);
                    String m12911qf = aav.m12911qf();
                    if (abd.m12839qb() < 23 || (TextUtils.isEmpty(m12911qf) && !m12911qf.contains("meizu"))) {
                        amz.m10365II().m10367IF();
                    }
                }
            }
        }
    }
}
