package com.kingroot.kinguser;

import com.kingroot.kinguser.common.check.CommonFileCheckUnit;
import com.swift.sandhook.utils.FileUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class ajk {
    /* renamed from: zo */
    public static List<ajf> m11466zo() {
        ArrayList arrayList = new ArrayList();
        String str = bha.bpy;
        String str2 = bha.bpz;
        if (!new File(str2).exists()) {
            str2 = bha.bpA;
        }
        arrayList.add(new CommonFileCheckUnit(new CommonFileCheckUnit.FileDetailInfo(0, 0, FileUtils.FileMode.MODE_755, -1, -1, 2, false, false, "u:object_r:system_file:s0", !new File(str2).exists() ? bha.bpB : str2, str)));
        arrayList.add(new CommonFileCheckUnit(new CommonFileCheckUnit.FileDetailInfo(0, 0, FileUtils.FileMode.MODE_755, -1, -1, 2, false, false, "u:object_r:system_file:s0", bha.bpr, bha.bpp)));
        arrayList.add(new CommonFileCheckUnit(new CommonFileCheckUnit.FileDetailInfo(0, 0, FileUtils.FileMode.MODE_755, -1, -1, 2, false, false, "u:object_r:system_file:s0", bha.bpq, bha.bpm)));
        arrayList.add(new CommonFileCheckUnit(new CommonFileCheckUnit.FileDetailInfo(0, 0, FileUtils.FileMode.MODE_755, -1, -1, 2, false, false, "u:object_r:system_file:s0", bha.bps, bha.bpn)));
        arrayList.add(new CommonFileCheckUnit(new CommonFileCheckUnit.FileDetailInfo(0, 0, FileUtils.FileMode.MODE_755, -1, -1, 2, false, false, "u:object_r:system_file:s0", bha.bpt, bha.bpo)));
        String str3 = bha.bpE;
        if (!new File(str3).exists()) {
            str3 = bha.bpG;
        }
        arrayList.add(new CommonFileCheckUnit(new CommonFileCheckUnit.FileDetailInfo(0, 0, FileUtils.FileMode.MODE_755, -1, -1, 2, false, false, "u:object_r:system_file:s0", !new File(str3).exists() ? bha.bpI : str3, bha.bpC)));
        String str4 = bha.bpF;
        if (!new File(str4).exists()) {
            str4 = bha.bpH;
        }
        arrayList.add(new CommonFileCheckUnit(new CommonFileCheckUnit.FileDetailInfo(0, 0, FileUtils.FileMode.MODE_755, -1, -1, 2, false, false, "u:object_r:system_file:s0", !new File(str4).exists() ? bha.bpJ : str4, bha.bpD)));
        return arrayList;
    }
}
