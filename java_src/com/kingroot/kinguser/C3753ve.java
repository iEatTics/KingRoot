package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
/* renamed from: com.kingroot.kinguser.ve */
/* loaded from: classes.dex */
public class C3753ve extends C3784vj {
    public C3753ve(String str, String str2) {
        if (!TextUtils.isEmpty(str) && !str.trim().endsWith(KlConst.PLUGIN_FILE_NAME_SUFFIX)) {
            this.mName = str + KlConst.PLUGIN_FILE_NAME_SUFFIX;
        } else {
            this.mName = str;
        }
        this.f3766ra = str2;
        this.mType = 1;
    }
}
