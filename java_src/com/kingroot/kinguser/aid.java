package com.kingroot.kinguser;

import com.kingroot.loader.common.KlConst;
import java.io.File;
import java.io.FileFilter;
/* loaded from: classes.dex */
public class aid implements FileFilter {
    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return file.isDirectory() || file.getName().endsWith(KlConst.PLUGIN_FILE_NAME_SUFFIX);
    }
}
