package com.kingroot.kinguser;

import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.NonNull;
import com.kingroot.loader.common.protocol.AbsProtocol;
/* loaded from: classes.dex */
public class azv extends AbsProtocol {
    public int bdA;
    public String bdB;
    public String bdC;
    public String bdD;
    public Intent bdE;
    public String bdF;
    public boolean bdG;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(@NonNull Bundle bundle) {
        this.bdB = bundle.getString("req_ticker");
        this.bdC = bundle.getString("req_title");
        this.bdD = bundle.getString("req_message");
        this.bdE = (Intent) bundle.getParcelable("req_intent");
        this.bdF = bundle.getString("req_btn");
        this.bdA = bundle.getInt("req_id");
        this.bdG = bundle.getBoolean("req_on_going");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(@NonNull Bundle bundle) {
        bundle.putString("req_ticker", this.bdB);
        bundle.putString("req_title", this.bdC);
        bundle.putString("req_message", this.bdD);
        bundle.putParcelable("req_intent", this.bdE);
        bundle.putString("req_btn", this.bdF);
        bundle.putInt("req_id", this.bdA);
        bundle.putBoolean("req_on_going", this.bdG);
    }

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return 13;
    }
}
