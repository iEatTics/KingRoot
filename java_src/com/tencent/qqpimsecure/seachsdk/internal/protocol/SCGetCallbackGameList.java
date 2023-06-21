package com.tencent.qqpimsecure.seachsdk.internal.protocol;

import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceOutputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class SCGetCallbackGameList extends JceStruct {
    static ArrayList<CallbackGame> bQl = new ArrayList<>();
    public int retCode = 0;
    public ArrayList<CallbackGame> callbackGameList = null;

    @Override // com.p019qq.taf.jce.JceStruct
    public JceStruct newInit() {
        return new SCGetCallbackGameList();
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void writeTo(JceOutputStream jceOutputStream) {
        jceOutputStream.write(this.retCode, 0);
        if (this.callbackGameList != null) {
            jceOutputStream.write((Collection) this.callbackGameList, 1);
        }
    }

    static {
        bQl.add(new CallbackGame());
    }

    @Override // com.p019qq.taf.jce.JceStruct
    public void readFrom(JceInputStream jceInputStream) {
        this.retCode = jceInputStream.read(this.retCode, 0, true);
        this.callbackGameList = (ArrayList) jceInputStream.read((JceInputStream) bQl, 1, false);
    }
}
