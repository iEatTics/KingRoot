package com.kingroot.kinguser;

import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.common.utils.system.VTCommand;
import com.kingroot.kinguser.C3956zk;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aau {
    /* renamed from: b */
    public static boolean m12934b(String str, String str2, int i) {
        return ((Boolean) C3956zk.m1302a(new C3956zk.InterfaceC3957a<Boolean>() { // from class: com.kingroot.kinguser.aau.1
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            /* renamed from: N */
            public Boolean execute(List<Object> list) {
                int i2;
                boolean z = false;
                String str3 = (String) list.get(0);
                String str4 = (String) list.get(1);
                int intValue = ((Integer) list.get(2)).intValue();
                abc m12845qK = abc.m12845qK();
                if (m12845qK.isRootPermition(true)) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(aar.m12947c("IgnoredFlag", str4, false));
                    if (str4.length() > 1 && str4.endsWith(File.separator)) {
                        str4 = str4.substring(0, str4.length() - 1);
                    }
                    int i3 = 0;
                    while (true) {
                        i3 = str4.indexOf(File.separatorChar, i3 + 1);
                        if (i3 == -1) {
                            break;
                        }
                        File file = new File(str4.substring(0, i3));
                        if (!file.getAbsolutePath().equals("/data")) {
                            if (!file.exists()) {
                                arrayList.add(new VTCommand("CommonCmdFlag", aas.f1263XY + file.getAbsolutePath()));
                                arrayList.add(new VTCommand("CommonCmdFlag", aas.f1261XW + file.getAbsolutePath()));
                                arrayList.add(new VTCommand("CommonCmdFlag", aas.f1262XX + file.getAbsolutePath()));
                                arrayList.add(new VTCommand("CommonCmdFlag", String.format("chcon u:object_r:system_data_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_data_file:s0 %1$s", file.getAbsolutePath())));
                            } else if (!file.isDirectory()) {
                                arrayList.addAll(aar.m12947c("IgnoredFlag", file.getAbsolutePath(), false));
                                arrayList.add(new VTCommand("IgnoredFlag", aas.f1260XV + file.getAbsolutePath()));
                                arrayList.add(new VTCommand("CommonCmdFlag", aas.f1263XY + file.getAbsolutePath()));
                                arrayList.add(new VTCommand("CommonCmdFlag", aas.f1261XW + file.getAbsolutePath()));
                                arrayList.add(new VTCommand("CommonCmdFlag", aas.f1262XX + file.getAbsolutePath()));
                                arrayList.add(new VTCommand("CommonCmdFlag", String.format("chcon u:object_r:system_data_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_data_file:s0 %1$s", file.getAbsolutePath())));
                            } else {
                                arrayList.add(new VTCommand("CommonCmdFlag", aas.f1261XW + file.getAbsolutePath()));
                                arrayList.add(new VTCommand("CommonCmdFlag", aas.f1262XX + file.getAbsolutePath()));
                                arrayList.add(new VTCommand("CommonCmdFlag", String.format("chcon u:object_r:system_data_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_data_file:s0 %1$s", file.getAbsolutePath())));
                            }
                        }
                    }
                    if (C3941yx.m1356B(intValue, 4)) {
                        arrayList.add(new VTCommand("IgnoredFlag", aas.f1260XV + str4));
                        arrayList.add(new VTCommand("CommonCmdFlag", String.format("cat %s > %s", str3, str4)));
                    }
                    if (C3941yx.m1356B(intValue, 1)) {
                        arrayList.add(new VTCommand("CommonCmdFlag", aas.f1261XW + str4));
                        i2 = intValue | 2;
                    } else {
                        i2 = intValue;
                    }
                    if (C3941yx.m1356B(i2, 2)) {
                        arrayList.add(new VTCommand("CommonCmdFlag", aas.f1262XX + str4));
                    }
                    if (C3941yx.m1356B(i2, 8)) {
                        arrayList.add(new VTCommand("CommonCmdFlag", String.format("chcon u:object_r:system_file:s0 %1$s;/system/bin/toolbox chcon u:object_r:system_file:s0 %1$s", str4)));
                    }
                    List<VTCmdResult> mo4995q = m12845qK.mo4995q(arrayList);
                    int i4 = 0;
                    while (true) {
                        if (i4 >= mo4995q.size()) {
                            z = true;
                            break;
                        } else if (!mo4995q.get(i4).success() && mo4995q.get(i4).mCmdFlag.contentEquals("CommonCmdFlag")) {
                            break;
                        } else {
                            i4++;
                        }
                    }
                }
                return Boolean.valueOf(z);
            }
        }, str, str2, Integer.valueOf(i))).booleanValue();
    }
}
