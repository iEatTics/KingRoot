package com.tencent.securemodule.api;

import java.io.Serializable;
/* loaded from: classes.dex */
public class QScanResultEntity implements Serializable {
    public String officialCertMd5;
    public String officialPkgName;
    public String riskDescription;
    public String riskName;
    public int safeLevel;
    @Deprecated
    public int safeType;
    public int virusId;
    public int category = 0;
    public int official = 0;
    public boolean isInPayList = false;
    public boolean isInStealAccountList = false;
    public int product = 0;
}
