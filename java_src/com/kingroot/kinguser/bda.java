package com.kingroot.kinguser;

import com.kingroot.kinguser.xmod.cloud.CveCloudListManager;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class bda extends bcz {
    private List<CveCloudListManager.CveInfo> biI;
    private int biJ;

    @Override // com.kingroot.kinguser.bcy
    /* renamed from: Yo */
    public int mo7560Yo() {
        return 1;
    }

    public bda(List<CveCloudListManager.CveInfo> list, int i) {
        this.biI = new ArrayList();
        this.biI = list;
        this.biJ = i;
    }

    /* renamed from: Mq */
    public List<CveCloudListManager.CveInfo> m7569Mq() {
        return this.biI;
    }

    public int getCount() {
        return this.biJ;
    }

    @Override // com.kingroot.kinguser.bcy
    /* renamed from: Yp */
    public int mo7559Yp() {
        return 8;
    }
}
