package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.kingroot.kinguser.C3956zk;
import java.util.List;
/* loaded from: classes.dex */
public class att extends AbstractC3634th {
    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, final Intent intent) {
        C3956zk.m1302a(new C3956zk.InterfaceC3957a<Object>() { // from class: com.kingroot.kinguser.att.1
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            public Object execute(List<Object> list) {
                String action = intent.getAction();
                String dataString = intent.getDataString();
                if (!TextUtils.isEmpty(dataString)) {
                    final String substring = dataString.substring(8);
                    if ("android.intent.action.PACKAGE_ADDED".equals(action)) {
                        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.att.1.1
                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                            public void run() {
                                super.run();
                                asw.m9344iQ(substring);
                            }
                        }));
                        aso.m9417Ol().m9413iB(substring);
                    } else if ("android.intent.action.PACKAGE_REPLACED".equals(action)) {
                        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Normal, false, new bek() { // from class: com.kingroot.kinguser.att.1.2
                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                            public void run() {
                                super.run();
                                asw.m9344iQ(substring);
                            }
                        }));
                        aso.m9417Ol().m9410iz(substring);
                    } else if ("android.intent.action.PACKAGE_REMOVED".equals(action)) {
                        beg.m7461Zj().m7450c(new bed(bem.LOW, bec.Light_Weight, false, new bek() { // from class: com.kingroot.kinguser.att.1.3
                            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
                            public void run() {
                                super.run();
                                asw.m9341iT(substring);
                            }
                        }));
                        aso.m9417Ol().m9414iA(substring);
                    }
                }
                return null;
            }
        }, new Object[0]);
    }
}
