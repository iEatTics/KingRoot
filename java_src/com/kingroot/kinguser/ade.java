package com.kingroot.kinguser;

import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
/* loaded from: classes.dex */
public class ade {
    /* renamed from: a */
    public static CharSequence m12551a(C0711a... c0711aArr) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        for (C0711a c0711a : c0711aArr) {
            spannableStringBuilder.append((CharSequence) c0711a.m12550si());
        }
        return spannableStringBuilder;
    }

    /* renamed from: com.kingroot.kinguser.ade$a */
    /* loaded from: classes.dex */
    public static class C0711a {
        final int acg;
        final int ach;
        final String content;

        public C0711a(String str, int i, int i2) {
            this.content = str;
            this.acg = i;
            this.ach = i2;
        }

        /* renamed from: si */
        public SpannableString m12550si() {
            SpannableString spannableString = new SpannableString(this.content);
            spannableString.setSpan(new ForegroundColorSpan(this.ach), 0, spannableString.length(), 33);
            spannableString.setSpan(new AbsoluteSizeSpan(this.acg, true), 0, spannableString.length(), 33);
            return spannableString;
        }
    }
}
