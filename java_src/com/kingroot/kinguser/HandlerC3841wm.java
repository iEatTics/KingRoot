package com.kingroot.kinguser;

import android.os.Handler;
import android.os.Looper;
/* renamed from: com.kingroot.kinguser.wm */
/* loaded from: classes.dex */
public class HandlerC3841wm extends Handler {
    private static cce<HandlerC3841wm> sInstance = new cce<HandlerC3841wm>() { // from class: com.kingroot.kinguser.wm.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: nv */
        public HandlerC3841wm create() {
            Looper looper = HandlerThreadC3843wn.m1547nw().getLooper();
            if (looper == null) {
                return null;
            }
            return new HandlerC3841wm(looper);
        }
    };

    /* renamed from: nu */
    public static HandlerC3841wm m1549nu() {
        return sInstance.get();
    }

    private HandlerC3841wm(Looper looper) {
        super(looper);
    }
}
