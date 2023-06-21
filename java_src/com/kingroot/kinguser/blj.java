package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.bed;
import java.util.ArrayList;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class blj extends AbstractC3634th {

    /* renamed from: MC */
    private static WeakHashMap<InterfaceC2503a, Integer> f1735MC = new WeakHashMap<>();
    private bed bzO = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.blj.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            blj.m6496mc((String) interfaceC2117a.mo7445nF().get(0));
        }
    });

    /* renamed from: com.kingroot.kinguser.blj$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2503a {
        void onPackageAdd(String str);
    }

    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        String dataString = intent.getDataString();
        String str = "";
        if (!TextUtils.isEmpty(dataString)) {
            str = dataString.substring(8);
        }
        if (!TextUtils.isEmpty(action) && !TextUtils.isEmpty(str) && "android.intent.action.PACKAGE_ADDED".equals(action)) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(str);
            beg.m7461Zj().m7456a(this.bzO, arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: mc */
    public static void m6496mc(String str) {
        InterfaceC2503a key;
        for (Map.Entry<InterfaceC2503a, Integer> entry : f1735MC.entrySet()) {
            if (entry.getValue() != null && (key = entry.getKey()) != null) {
                key.onPackageAdd(str);
            }
        }
    }

    /* renamed from: a */
    public static void m6498a(InterfaceC2503a interfaceC2503a) {
        f1735MC.put(interfaceC2503a, 1);
    }

    /* renamed from: b */
    public static void m6497b(InterfaceC2503a interfaceC2503a) {
        if (f1735MC.containsKey(interfaceC2503a)) {
            f1735MC.remove(interfaceC2503a);
        }
    }
}
