package com.kingroot.kinguser;

import android.os.Environment;
import java.io.File;
/* loaded from: classes.dex */
public class bfo {
    private static final String bmZ = Environment.getExternalStorageDirectory() + File.separator + "httproxy" + File.separator + "crash.dat";
    private static cce<bfo> bna = new cce<bfo>() { // from class: com.kingroot.kinguser.bfo.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: aax */
        public bfo create() {
            return new bfo();
        }
    };
    private bed bnb;

    private bfo() {
        this.bnb = new bed(new bek() { // from class: com.kingroot.kinguser.bfo.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                bfo.this.aaw();
            }
        });
    }

    public static bfo aau() {
        return bna.get();
    }

    public void aav() {
        beg.m7461Zj().m7450c(this.bnb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aaw() {
        if (acu.m12571g(bfw.aaS().abd(), 28800000L)) {
            bfw.aaS().m7207cx(System.currentTimeMillis());
            if (bfw.aaS().aaU()) {
                ady.m12308tK().mo1746bi(100690);
                if (bfp.aay().isEnable()) {
                    ady.m12308tK().mo1746bi(100701);
                }
            }
        }
    }
}
