package com.kingroot.kinguser;

import com.kingroot.loader.common.KlConst;
import com.kingroot.loader.sdk.KlInfo;
import java.io.File;
import java.io.FilenameFilter;
/* loaded from: classes.dex */
public class bkh implements FilenameFilter {

    /* renamed from: a */
    private String f1715a;

    /* renamed from: b */
    private String f1716b;

    /* renamed from: c */
    private String f1717c;

    public bkh(KlInfo klInfo) {
        this.f1715a = klInfo.packageName;
        this.f1716b = this.f1715a + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR;
        this.f1717c = this.f1715a + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + klInfo.packageMd5;
    }

    @Override // java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return str.equals(this.f1715a) || str.startsWith(this.f1716b) || str.startsWith(this.f1717c);
    }
}
