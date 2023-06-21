package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.view.View;
import com.kingroot.kinguser.bxc;
import com.kingroot.loader.common.KlConst;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class bwy {
    private static final bzc<bwy> bRb = new bzc<bwy>() { // from class: com.kingroot.kinguser.bwy.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.bzc
        /* renamed from: ajk */
        public bwy create() {
            return new bwy();
        }
    };
    private boolean bST = false;
    private AtomicBoolean bSU = new AtomicBoolean(false);
    private Context mAppContext;

    public static bwy aji() {
        return bRb.get();
    }

    public void init(Context context) {
        if (Build.VERSION.SDK_INT >= 16 && !this.bSU.get()) {
            this.bSU.set(true);
            bwz bwzVar = new bwz();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.tencent.turingmm.msg105008");
            context.getApplicationContext().registerReceiver(bwzVar, intentFilter);
        }
    }

    /* renamed from: b */
    public boolean m5268b(Context context, int i, View view) {
        if (Build.VERSION.SDK_INT < 16) {
            return false;
        }
        if (!this.bST) {
            init(context);
            this.bST = true;
        }
        this.mAppContext = context.getApplicationContext();
        boolean m5260a = new bxc().m5260a(view, new bxc.InterfaceC2659a() { // from class: com.kingroot.kinguser.bwy.2
            @Override // com.kingroot.kinguser.bxc.InterfaceC2659a
            /* renamed from: a */
            public void mo5253a(int i2, View view2, int i3) {
                bwy.this.m5269ax(i3, i2);
            }
        }, i);
        if (m5260a) {
            m5269ax(i, 0);
        }
        return m5260a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ax */
    public void m5269ax(int i, int i2) {
        Intent intent = new Intent();
        intent.setAction("com.tencent.turingmm.msg105008");
        String str = "" + System.currentTimeMillis();
        String m5145B = bzd.m5145B(bnk.m6230c((i + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + i2).getBytes(), str.getBytes()));
        intent.putExtra("t", "c");
        intent.putExtra("m", str + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + m5145B);
        this.mAppContext.sendBroadcast(intent);
    }

    public byh ajj() {
        bwx aje = bwx.aje();
        byh byhVar = new byh();
        byhVar.bTT = aje.ajf();
        ArrayList<byj> arrayList = new ArrayList<>();
        Map<Integer, bxb> ajg = aje.ajg();
        synchronized (ajg) {
            for (bxb bxbVar : ajg.values()) {
                arrayList.addAll(bxbVar.ajl());
            }
        }
        byhVar.bTU = arrayList;
        aje.m5272gK();
        return byhVar;
    }
}
