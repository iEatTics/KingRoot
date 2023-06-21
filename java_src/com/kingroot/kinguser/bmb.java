package com.kingroot.kinguser;

import android.content.Context;
import android.content.SharedPreferences;
import cloudsdk.CloudSdk;
import java.util.Map;
/* loaded from: classes.dex */
public class bmb {
    private static volatile bmb bBc;
    private Context mContext = CloudSdk.getInstance().getContext();

    public static synchronized bmb afF() {
        bmb bmbVar;
        synchronized (bmb.class) {
            if (bBc == null) {
                synchronized (bmb.class) {
                    if (bBc == null) {
                        bBc = new bmb();
                    }
                }
            }
            bmbVar = bBc;
        }
        return bmbVar;
    }

    private bmb() {
    }

    private SharedPreferences afG() {
        SharedPreferences sharedPreferences;
        synchronized ("CTP_ReportData_Common") {
            sharedPreferences = this.mContext.getSharedPreferences("CTP_ReportData_Common", 0);
        }
        return sharedPreferences;
    }

    public final Map<String, String> afH() {
        Map all;
        synchronized ("CTP_ReportData_Common") {
            all = afG().getAll();
        }
        return all;
    }

    /* renamed from: aP */
    public final void m6411aP(String str, String str2) {
        synchronized ("CTP_ReportData_Common") {
            afG().edit().putString(str, str2).commit();
        }
    }

    /* renamed from: l */
    public final String m6410l(String str) {
        String string;
        synchronized ("CTP_ReportData_Common") {
            string = afG().getString(str, "");
        }
        return string;
    }
}
