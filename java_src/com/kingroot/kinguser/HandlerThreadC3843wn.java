package com.kingroot.kinguser;

import android.os.HandlerThread;
/* renamed from: com.kingroot.kinguser.wn */
/* loaded from: classes.dex */
public class HandlerThreadC3843wn extends HandlerThread {
    private static cce<HandlerThreadC3843wn> sInstance = new cce<HandlerThreadC3843wn>() { // from class: com.kingroot.kinguser.wn.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: nx */
        public HandlerThreadC3843wn create() {
            HandlerThreadC3843wn handlerThreadC3843wn = new HandlerThreadC3843wn("PublicHandlerThread");
            handlerThreadC3843wn.start();
            return handlerThreadC3843wn;
        }
    };

    /* renamed from: nw */
    public static HandlerThreadC3843wn m1547nw() {
        return sInstance.get();
    }

    public HandlerThreadC3843wn(String str) {
        super(str);
    }
}
