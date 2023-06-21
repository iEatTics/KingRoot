package com.kingroot.kinguser;

import android.os.Bundle;
import android.support.annotation.NonNull;
import com.kingroot.loader.common.protocol.AbsProtocol;
import com.p019qq.taf.jce.JceStruct;
/* loaded from: classes.dex */
public class ayp extends AbsProtocol {
    public int bcU;
    public JceStruct bcV;
    public JceStruct bcW;
    public int bcX;
    public int bcY;
    public int bcZ;
    public int bda;
    public JceStruct bdb;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void readArgvFromBundle(@NonNull Bundle bundle) {
        this.bcU = bundle.getInt("req_cmd_id");
        this.bcV = (JceStruct) bundle.getSerializable("req_req_jce");
        this.bcW = (JceStruct) bundle.getSerializable("req_resp_jce");
        this.bcX = bundle.getInt("resp_seq_no");
        this.bcY = bundle.getInt("resp_cmd_id");
        this.bcZ = bundle.getInt("resp_ret_code");
        this.bda = bundle.getInt("resp_data_ret_code");
        this.bdb = (JceStruct) bundle.getSerializable("resp_jce");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public void writeArgvToBundle(@NonNull Bundle bundle) {
        bundle.putInt("req_cmd_id", this.bcU);
        bundle.putSerializable("req_req_jce", this.bcV);
        bundle.putSerializable("req_resp_jce", this.bcW);
        bundle.putInt("resp_seq_no", this.bcX);
        bundle.putInt("resp_cmd_id", this.bcY);
        bundle.putInt("resp_ret_code", this.bcZ);
        bundle.putInt("resp_data_ret_code", this.bda);
        bundle.putSerializable("resp_jce", this.bdb);
    }

    @Override // com.kingroot.loader.common.protocol.AbsProtocol
    public int getCmdId() {
        return 1;
    }
}
