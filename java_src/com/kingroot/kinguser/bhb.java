package com.kingroot.kinguser;

import android.content.Context;
import android.provider.Settings;
import android.text.TextUtils;
/* loaded from: classes.dex */
public class bhb {
    /* renamed from: aD */
    public static String m7062aD(Context context) {
        String charSequence;
        try {
            String str = "" + Settings.Secure.getString(context.getContentResolver(), "default_input_method");
            int lastIndexOf = str.lastIndexOf("/");
            charSequence = str.subSequence(0, lastIndexOf >= 0 ? lastIndexOf : 0).toString();
        } catch (Throwable th) {
        }
        return !TextUtils.isEmpty(charSequence) ? charSequence : "";
    }

    public static String abV() {
        return bgs.abU().abV();
    }
}
