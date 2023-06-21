package com.kingroot.kinguser.filesystem.storage;

import com.kingroot.common.filesystem.storage.MpStorageProvider;
/* loaded from: classes.dex */
public class KuMpStorageProvider extends MpStorageProvider {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.common.filesystem.storage.MpStorageProvider, com.kingroot.common.framework.provider.KBaseProvider
    public String getAuthority() {
        return "com.kingroot.kingusesr.mpstorage";
    }
}
