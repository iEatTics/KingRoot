package com.kingroot.kinguser.net.shark;

import com.kingroot.kinguser.awn;
import com.kingroot.kinguser.cat;
import com.kingroot.kinguser.net.shark.IKSharkRemoteListener;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public class KuSharkManager$2 extends IKSharkRemoteListener.Stub {
    final /* synthetic */ awn this$0;
    final /* synthetic */ cat val$listener;

    KuSharkManager$2(awn awnVar, cat catVar) {
        this.this$0 = awnVar;
        this.val$listener = catVar;
    }

    @Override // com.kingroot.kinguser.net.shark.IKSharkRemoteListener
    public void onFinish(int i, int i2, int i3, int i4, String str, byte[] bArr) {
        if (this.val$listener != null) {
            try {
                JceStruct jceStruct = (JceStruct) Class.forName(str).newInstance();
                jceStruct.readFrom(new JceInputStream(bArr));
                this.val$listener.mo2689a(i, i2, i3, i4, jceStruct);
            } catch (Throwable th) {
            }
        }
    }
}
