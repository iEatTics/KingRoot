package com.kingroot.kinguser;

import com.kingroot.kinguser.distribution.appsmarket.entity.AvailUpdateInfo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class amh implements amm {
    private List<AvailUpdateInfo> azK = new ArrayList();

    @Override // com.kingroot.kinguser.amm
    public int getType() {
        return 10;
    }

    public amh(List<AvailUpdateInfo> list) {
        this.azK.addAll(list);
    }

    /* renamed from: Iq */
    public List<AvailUpdateInfo> m10441Iq() {
        return this.azK;
    }
}
