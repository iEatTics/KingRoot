package com.kingroot.kinguser;

import android.support.p007v7.internal.widget.ActivityChooserView;
import android.text.TextUtils;
import java.util.Arrays;
/* loaded from: classes.dex */
public class avx {
    public final String aUp;
    public final int[] aUq;
    public final int aUr;
    public final String aUs;
    public final int aUt;
    private final Object aUu = new Object();
    private volatile String aUv = null;
    public final String pkgName;

    /* renamed from: jC */
    private int[] m8722jC(String str) {
        if (TextUtils.isEmpty(str)) {
            return new int[0];
        }
        String[] split = str.split(",");
        int[] iArr = new int[split.length];
        int i = 0;
        for (String str2 : split) {
            iArr[i] = Integer.parseInt(str2);
            i++;
        }
        return iArr;
    }

    public avx(String str, String str2, String str3, String str4, String str5, String str6) {
        this.aUp = str;
        this.pkgName = str2;
        this.aUq = m8722jC(str3);
        this.aUr = TextUtils.isEmpty(str4) ? -1 : Integer.parseInt(str4);
        this.aUs = str5;
        this.aUt = TextUtils.isEmpty(str6) ? ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED : Integer.parseInt(str6);
    }

    /* renamed from: Sq */
    public String m8723Sq() {
        String str = this.aUv;
        if (str == null) {
            synchronized (this.aUu) {
                str = this.aUv;
                if (str == null) {
                    String str2 = "" + this.aUp + this.pkgName + Arrays.toString(this.aUq) + this.aUr + this.aUs + this.aUt;
                    str = str2.length() + aah.m13002cO(str2);
                    this.aUv = str;
                }
            }
        }
        return str;
    }
}
