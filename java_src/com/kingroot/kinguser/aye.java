package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingroot.common.app.KApplication;
import java.util.List;
/* loaded from: classes.dex */
public class aye extends AbstractC3792vn {
    private static final cce<aye> sInstance = new cce<aye>() { // from class: com.kingroot.kinguser.aye.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: UQ */
        public aye create() {
            return new aye();
        }
    };

    /* renamed from: UP */
    public static aye m8028UP() {
        return sInstance.get();
    }

    private aye() {
    }

    @Override // com.kingroot.kinguser.AbstractC3789vm
    /* renamed from: lA */
    protected String mo1721lA() {
        return "External";
    }

    @Override // com.kingroot.kinguser.AbstractC3789vm
    /* renamed from: lL */
    protected int[] mo1720lL() {
        akw m10690Gx = akw.m10690Gx();
        return C3939yv.m1362c(m10690Gx.m10689Gy(), m10690Gx.m10688Gz());
    }

    @Override // com.kingroot.kinguser.AbstractC3789vm
    /* renamed from: lM */
    protected int[] mo1719lM() {
        return new int[0];
    }

    @Override // com.kingroot.kinguser.AbstractC3789vm
    /* renamed from: lN */
    protected int[] mo1718lN() {
        return new int[0];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3789vm
    @NonNull
    public String getChannel() {
        return KApplication.m13442ib();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3789vm
    public int getProductId() {
        return KApplication.m13445hY();
    }

    @Override // com.kingroot.kinguser.AbstractC3789vm
    /* renamed from: B */
    protected boolean mo1722B(@NonNull List<C2037b> list) {
        return awn.m8629Ta().m8626bG(list);
    }
}
