package com.tencent.securemodule.api;

import java.io.Serializable;
/* loaded from: classes.dex */
public class AppInfo implements Serializable {
    public String apkPath;
    public int appType;
    public String certMd5;
    public long fileSize;
    public boolean isUnInstalledApk = false;
    public String pkgName;
    public QScanResultEntity scanResultEntity;
    public String softName;
    public int versionCode;
    public String versionName;

    /* renamed from: Nx */
    public int m417Nx() {
        QScanResultEntity qScanResultEntity = this.scanResultEntity;
        if (qScanResultEntity == null) {
            return 0;
        }
        return qScanResultEntity.safeLevel;
    }

    public int aiE() {
        QScanResultEntity qScanResultEntity = this.scanResultEntity;
        if (qScanResultEntity == null || qScanResultEntity.safeLevel == 0) {
            return 1;
        }
        if (qScanResultEntity.safeLevel == 4) {
            return 0;
        }
        if (qScanResultEntity.official != 2) {
            if ((qScanResultEntity.category & 512) != 0 || (qScanResultEntity.safeLevel != 0 && qScanResultEntity.isInPayList)) {
                return 3;
            }
            if (qScanResultEntity.safeLevel != 1 || qScanResultEntity.virusId == 0) {
                if (qScanResultEntity.safeLevel != 0) {
                    return qScanResultEntity.isInStealAccountList ? 5 : 6;
                }
                return 1;
            }
            return 4;
        }
        return 2;
    }

    public String aiF() {
        QScanResultEntity qScanResultEntity = this.scanResultEntity;
        if (qScanResultEntity == null) {
            return null;
        }
        return qScanResultEntity.riskDescription != null ? qScanResultEntity.riskDescription : "";
    }
}
