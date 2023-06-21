package com.kingroot.common.filesystem.storage;

import com.kingroot.common.app.KApplication;
import com.kingroot.common.framework.provider.KBaseProvider;
import com.kingroot.kinguser.AbstractC3639tl;
import com.kingroot.kinguser.C3597sj;
import com.kingroot.kinguser.C3601sn;
import com.kingroot.kinguser.C3609st;
import com.kingroot.kinguser.C3617ta;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class MpStorageProvider extends KBaseProvider {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.common.framework.provider.KBaseProvider
    /* renamed from: jb */
    public List<AbstractC3639tl> mo13387jb() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C3609st());
        arrayList.add(new C3601sn());
        arrayList.add(new C3597sj());
        arrayList.add(new C3617ta());
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.common.framework.provider.KBaseProvider
    public String getAuthority() {
        return KApplication.m13429ip();
    }
}
