package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class baz extends AbstractC3634th {
    private static final Set<InterfaceC2050a> bew = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: com.kingroot.kinguser.baz$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2050a {
        /* renamed from: aE */
        void mo7295aE(String str, String str2);
    }

    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            String schemeSpecificPart = intent.getData().getSchemeSpecificPart();
            for (InterfaceC2050a interfaceC2050a : bew) {
                interfaceC2050a.mo7295aE(action, schemeSpecificPart);
            }
            if (action.equals("android.intent.action.PACKAGE_ADDED") || action.equals("android.intent.action.PACKAGE_REPLACED") || action.equals("android.intent.action.PACKAGE_REMOVED")) {
            }
        }
    }

    /* renamed from: a */
    public static void m7868a(InterfaceC2050a interfaceC2050a) {
        m7869Wb();
        if (interfaceC2050a != null) {
            bew.add(interfaceC2050a);
        }
    }

    /* renamed from: b */
    public static void m7867b(InterfaceC2050a interfaceC2050a) {
        m7869Wb();
        if (interfaceC2050a != null) {
            bew.remove(interfaceC2050a);
        }
    }

    /* renamed from: Wb */
    private static void m7869Wb() {
    }
}
