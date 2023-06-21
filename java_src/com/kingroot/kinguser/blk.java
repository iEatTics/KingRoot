package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.kingroot.kinguser.bed;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
/* loaded from: classes.dex */
public class blk extends AbstractC3634th {
    private static ConcurrentLinkedQueue<WeakReference<InterfaceC2505a>> bzQ = new ConcurrentLinkedQueue<>();
    private bed bzO = new bed(bem.HIGH, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.blk.1
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            String str = (String) interfaceC2117a.mo7445nF().get(0);
            boolean z = true;
            int i = -1;
            try {
                i = C3952zh.m1312pq().getApplicationEnabledSetting(str);
            } catch (IllegalArgumentException e) {
            }
            if (i < 0 || i == 2) {
                z = false;
            }
            blk.m6494E(str, z);
        }
    });

    /* renamed from: com.kingroot.kinguser.blk$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2505a {
        /* renamed from: G */
        void m6492G(String str, boolean z);
    }

    @Override // com.kingroot.kinguser.AbstractC3634th
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        String dataString = intent.getDataString();
        if (!TextUtils.isEmpty(dataString)) {
            String substring = dataString.substring(8);
            if (!TextUtils.isEmpty(action) && !TextUtils.isEmpty(substring) && "android.intent.action.PACKAGE_CHANGED".equals(action)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(substring);
                beg.m7461Zj().m7456a(this.bzO, arrayList);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E */
    public static void m6494E(String str, boolean z) {
        Iterator<WeakReference<InterfaceC2505a>> it = bzQ.iterator();
        while (it.hasNext()) {
            WeakReference<InterfaceC2505a> next = it.next();
            if (next != null) {
                InterfaceC2505a interfaceC2505a = next.get();
                if (interfaceC2505a != null) {
                    try {
                        interfaceC2505a.m6492G(str, z);
                    } catch (Throwable th) {
                    }
                } else {
                    bzQ.remove(next);
                }
            }
        }
    }
}
