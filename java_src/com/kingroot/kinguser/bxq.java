package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.kinguser.bxv;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
class bxq implements bxn {
    private final List<bxv.C2664a> bTv = new ArrayList();
    private final Pattern bTw = Pattern.compile("^/system/xbin/ku\\.sud$|^daemonsu:|^k_worker/[1-9]\\d*:[1-9]\\d*$|^kr_worker/[1-9]\\d*:[1-9]\\d*$|^km_worker/[1-9]\\d*:[1-9]\\d*$|^tworker/[1-9]\\d*:[1-9]\\d*$|^tu_worker/[1-9]\\d*:[1-9]\\d*$|^tq_worker/[1-9]\\d*:[1-9]\\d*$|^kworker/[1-9]\\d{2}$|^permmgrd$|^360sguard$|^/data/data/[\\w\\-\\.]+/|^/system/bin/\\.|^/system/xbin/\\.|^\\.");

    @Override // com.kingroot.kinguser.bxn
    /* renamed from: a */
    public void mo5227a(@NonNull bxv.C2664a c2664a) {
        if (c2664a.uid == 0 && c2664a.ppid == 1) {
            this.bTv.add(c2664a);
        }
    }

    @Override // com.kingroot.kinguser.bxn
    public boolean ajG() {
        for (bxv.C2664a c2664a : this.bTv) {
            if (c2664a.name != null && this.bTw.matcher(c2664a.name).find()) {
                return true;
            }
        }
        return false;
    }
}
