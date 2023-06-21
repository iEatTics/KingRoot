package com.kingroot.kinguser;

import android.content.Intent;
import android.os.IBinder;
import com.kingroot.kinguser.root.mgr.RootManagerService;
/* loaded from: classes.dex */
public class bbr extends C3657tp {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.C3657tp, com.kingroot.kinguser.AbstractC3642to
    public IBinder onBind(Intent intent) {
        return RootManagerService.getInstance();
    }
}
