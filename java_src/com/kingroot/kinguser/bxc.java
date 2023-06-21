package com.kingroot.kinguser;

import android.view.MotionEvent;
import android.view.View;
import java.io.File;
import java.math.BigDecimal;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
public class bxc {
    private static final bxa<Long, String> bSX = new bxa<>(2);
    private String bSY = null;
    private InterfaceC2659a bSZ;

    /* renamed from: id */
    private int f2141id;

    /* renamed from: com.kingroot.kinguser.bxc$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2659a {
        /* renamed from: a */
        void mo5253a(int i, View view, int i2);
    }

    /* renamed from: a */
    public boolean m5260a(View view, InterfaceC2659a interfaceC2659a, int i) {
        this.bSZ = interfaceC2659a;
        this.f2141id = i;
        this.bSY = bwo.m5296k(bwo.bSp);
        return m5261Q(view);
    }

    /* renamed from: Q */
    private boolean m5261Q(View view) {
        if (view == null) {
            return false;
        }
        return byd.ajS().m5178a(view, new C2660b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m5256b(int i, View view, int i2) {
        if (this.bSZ != null) {
            this.bSZ.mo5253a(i, view, i2);
        }
    }

    /* renamed from: com.kingroot.kinguser.bxc$b */
    /* loaded from: classes.dex */
    public class C2660b implements byf {
        private boolean bTa = false;
        private boolean bTb = false;
        private boolean pressed = false;

        public C2660b() {
        }

        public boolean ajo() {
            return this.bTb;
        }

        public boolean ajp() {
            return this.bTa;
        }

        public void reset() {
            this.bTb = false;
        }

        @Override // com.kingroot.kinguser.byf
        public boolean onTouch(View view, MotionEvent motionEvent) {
            this.bTa = motionEvent.getDeviceId() <= 0;
            switch (motionEvent.getAction()) {
                case 0:
                    this.pressed = true;
                    break;
                case 1:
                case 3:
                    bxc.this.m5254f(motionEvent);
                    if (this.pressed) {
                        this.pressed = false;
                        this.bTb = true;
                    }
                    m5252R(view);
                    break;
            }
            return false;
        }

        /* renamed from: R */
        private void m5252R(View view) {
            if (!ajo()) {
                bxc.this.m5256b(3, view, bxc.this.f2141id);
            } else if (ajp() || bxc.this.ajn()) {
                bxc.this.m5256b(2, view, bxc.this.f2141id);
            } else {
                bxc.this.m5256b(1, view, bxc.this.f2141id);
            }
            reset();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m5254f(MotionEvent motionEvent) {
        if (ajm()) {
            BigDecimal scale = new BigDecimal(motionEvent.getRawX()).setScale(0, 4);
            BigDecimal scale2 = new BigDecimal(motionEvent.getRawY()).setScale(0, 4);
            float pressure = motionEvent.getPressure();
            bSX.put(Long.valueOf(System.currentTimeMillis()), scale.toPlainString() + scale2.toPlainString() + pressure);
        }
    }

    private boolean ajm() {
        File[] listFiles;
        File file = new File(this.bSY);
        if (file == null || !file.exists() || (listFiles = file.listFiles()) == null || listFiles.length == 0) {
            return false;
        }
        for (File file2 : listFiles) {
            if (file2.canWrite()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ajn() {
        String str;
        if (bSX.size() < 2) {
            return false;
        }
        String str2 = null;
        Iterator<Map.Entry<Long, String>> it = bSX.entrySet().iterator();
        while (true) {
            str = str2;
            if (!it.hasNext()) {
                break;
            }
            str2 = it.next().getValue();
        }
        if (str != null) {
            int i = 0;
            for (String str3 : bSX.values()) {
                i = str3.equals(str) ? i + 1 : i;
            }
            return i >= 2;
        }
        return false;
    }
}
