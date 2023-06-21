package com.kingroot.kinguser;

import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import java.io.File;
import java.util.Locale;
/* loaded from: classes.dex */
public class ahc {
    public String anE = "0";
    public String anF = "0";
    public String anG = "0";
    public String anH = "0";
    public String anI = "0";
    public String anJ = "0";
    public String anK = "0";
    public String anL = "0";
    public String anM = "0";
    public String anN = "0";
    public String anO = "0";
    public String anP = "0";

    private ahc() {
    }

    /* renamed from: d */
    public static ahc m11836d(SilentInstallLogInfo silentInstallLogInfo) {
        if (silentInstallLogInfo == null) {
            return null;
        }
        ahc ahcVar = new ahc();
        ahcVar.anE = silentInstallLogInfo.anE;
        if (!"unknown".equals(ahcVar.anE) && !"com.android.shell".equals(ahcVar.anE)) {
            ahcVar.anF = aaz.m12872dZ(ahcVar.anE);
            try {
                ahcVar.anG = String.format(Locale.ENGLISH, "%d", Long.valueOf(new File(C3952zh.m1312pq().getApplicationInfo(ahcVar.anE, 0).publicSourceDir).length()));
            } catch (PackageManager.NameNotFoundException e) {
            }
        }
        ahcVar.anH = silentInstallLogInfo.anH;
        ahcVar.anI = silentInstallLogInfo.anI;
        ahcVar.anJ = silentInstallLogInfo.anJ;
        ahcVar.anK = silentInstallLogInfo.anK;
        if (!TextUtils.isEmpty(ahcVar.anK)) {
            File file = new File(ahcVar.anK);
            if (file.exists()) {
                ahcVar.anN = String.format(Locale.ENGLISH, "%d", Long.valueOf(file.length()));
                ahcVar.anM = C3563rs.getFileMD5(file);
            }
        } else {
            ahcVar.anK = "0";
        }
        ahcVar.anL = TextUtils.isEmpty(silentInstallLogInfo.anL) ? "0" : silentInstallLogInfo.anL;
        ahcVar.anO = silentInstallLogInfo.mState == 1 ? "2" : "1";
        try {
            ahcVar.anP = String.valueOf(silentInstallLogInfo.apM);
        } catch (Exception e2) {
        }
        return ahcVar;
    }
}
