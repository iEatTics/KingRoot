package com.kingroot.kinguser;

import android.os.Bundle;
import java.io.Serializable;
import java.util.HashMap;
/* loaded from: classes.dex */
public class bqe implements Serializable {

    /* renamed from: a */
    public final HashMap<String, String> f2012a = new HashMap<>();

    public bqe(Bundle bundle) {
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                this.f2012a.put(str, bundle.getString(str));
            }
        }
    }
}
