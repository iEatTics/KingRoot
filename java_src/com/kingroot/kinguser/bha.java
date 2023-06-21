package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import com.kingroot.kinguser.C3956zk;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class bha {
    public static final String bpm = AbstractC3976zt.get("p7");
    public static final String bpn = AbstractC3976zt.get("p18");
    public static final String bpo = AbstractC3976zt.get("p19");
    public static final String bpp = AbstractC3976zt.get("p20");
    public static final String bpq = AbstractC3976zt.get("p21");
    public static final String bpr = AbstractC3976zt.get("p22");
    public static final String bps = AbstractC3976zt.get("p23");
    public static final String bpt = AbstractC3976zt.get("p24");
    public static final String bpu = AbstractC3976zt.get("p1");
    public static final String bpv = AbstractC3976zt.get("p2");
    public static final String bpw = AbstractC3976zt.get("p6");
    public static final String bpx = AbstractC3976zt.get("p13");
    public static final String bpy = AbstractC3976zt.get("p14");
    public static final String bpz = AbstractC3976zt.get("p15");
    public static final String bpA = AbstractC3976zt.get("p16");
    public static final String bpB = AbstractC3976zt.get("p17");
    public static final String bpC = AbstractC3976zt.get("p25");
    public static final String bpD = AbstractC3976zt.get("p26");
    public static final String bpE = AbstractC3976zt.get("p27");
    public static final String bpF = AbstractC3976zt.get("p29");
    public static final String bpG = AbstractC3976zt.get("p28");
    public static final String bpH = AbstractC3976zt.get("p30");
    public static final String bpI = AbstractC3976zt.get("p32");
    public static final String bpJ = AbstractC3976zt.get("p31");

    /* renamed from: d */
    public static boolean m7065d(final List<String> list, final Map map) {
        if (list == null || list.size() == 0) {
            return true;
        }
        boolean booleanValue = ((Boolean) C3956zk.m1302a(new C3956zk.InterfaceC3957a<Boolean>() { // from class: com.kingroot.kinguser.bha.1
            @Override // com.kingroot.kinguser.C3956zk.InterfaceC3957a
            /* renamed from: N */
            public Boolean execute(List<Object> list2) {
                boolean z = false;
                abc m12845qK = abc.m12845qK();
                if (m12845qK.isRootPermition(true)) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(aas.f1256XR);
                    for (String str : list) {
                        if (!TextUtils.isEmpty(str)) {
                            int i = -1;
                            if (bha.m7064lt(str)) {
                                arrayList.addAll(aar.m12944r(str, false));
                                arrayList.add(aas.f1260XV + "-r " + str);
                                i = 0;
                            }
                            if (map != null) {
                                map.put(str, Integer.valueOf(i));
                            }
                        }
                    }
                    arrayList.add(aas.f1257XS);
                    List<VTCmdResult> runRootCommands = m12845qK.runRootCommands(arrayList);
                    if (runRootCommands != null && runRootCommands.size() == arrayList.size()) {
                        int i2 = 0;
                        while (true) {
                            if (i2 >= runRootCommands.size()) {
                                z = true;
                                break;
                            }
                            if (!runRootCommands.get(i2).success()) {
                                String str2 = runRootCommands.get(i2).mCmdFlag;
                                if (!str2.startsWith(aas.f1260XV) && !str2.startsWith(aas.f1255XQ) && !str2.startsWith(aar.m12946pQ())) {
                                    break;
                                }
                            }
                            i2++;
                        }
                    }
                }
                return Boolean.valueOf(z);
            }
        }, new Object[0])).booleanValue();
        if (map != null) {
            for (String str : list) {
                if (!TextUtils.isEmpty(str) && m7064lt(str)) {
                    map.put(str, 1);
                }
            }
        }
        return booleanValue;
    }

    /* renamed from: lt */
    public static boolean m7064lt(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        VTCmdResult m12846el = abc.m12845qK().m12846el("ls " + str);
        return (m12846el == null || !m12846el.success() || m12846el.mStdOut.contains("Failure")) ? false : true;
    }
}
