package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.common.utils.system.VTCmdResult;
import java.util.ArrayList;
/* renamed from: com.kingroot.kinguser.rl */
/* loaded from: classes.dex */
public class C3525rl {
    private static final cce<C3525rl> sInstance = new cce<C3525rl>() { // from class: com.kingroot.kinguser.rl.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: iF */
        public C3525rl create() {
            return new C3525rl();
        }
    };

    /* renamed from: iD */
    public static C3525rl m2446iD() {
        return sInstance.get();
    }

    private C3525rl() {
    }

    /* renamed from: iE */
    public int m2445iE() {
        if (abc.m12845qK().isRootPermition(true)) {
            String m12911qf = aav.m12911qf();
            if (TextUtils.isEmpty(m12911qf)) {
                return 4;
            }
            String lowerCase = m12911qf.toLowerCase();
            if (lowerCase.contains("xiaomi")) {
                return C3531ro.m2434iM().m2433k(C3636tj.getPackageName(), true);
            }
            if (lowerCase.contains("meizu")) {
                return !C3530rn.m2436cp(C3636tj.getPackageName()) ? 2 : 0;
            } else if (lowerCase.contains("huawei")) {
                return !m2448cn(C3636tj.getPackageName()) ? 2 : 0;
            } else if (lowerCase.contains("vivo")) {
                return !m2447co(C3636tj.getPackageName()) ? 2 : 0;
            } else if (lowerCase.contains("oppo")) {
                return !C3559rp.m2380iN().m2379iO() ? 2 : 0;
            } else if (lowerCase.contains("lenovo")) {
                return !C3527rm.m2442iG().m2441iH() ? 2 : 0;
            } else {
                return -1;
            }
        }
        return 1;
    }

    /* renamed from: cn */
    private boolean m2448cn(String str) {
        ArrayList arrayList = new ArrayList(3);
        String format = String.format("content delete --uri content://com.huawei.android.batteryspriteprovider/startupallowapps --where \"package_name='%s'\"", str);
        String format2 = String.format("content insert --uri content://com.huawei.android.batteryspriteprovider/startupallowapps --bind package_name:s:%s  --bind app_type:i:1", str, 1);
        String format3 = String.format("content delete --uri content://com.huawei.android.batteryspriteprovider/forbiddenapps --where \"package_name='%s'\"", str);
        arrayList.add(format);
        arrayList.add(format2);
        arrayList.add(format3);
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            for (VTCmdResult vTCmdResult : m12845qK.runRootCommands(arrayList)) {
                if (!vTCmdResult.success()) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: co */
    private boolean m2447co(String str) {
        String format = String.format("content delete --uri content://com.iqoo.secure.provider.secureprovider/forbidbgstartappslist --where \"pkgname='%s'\"", str);
        abc m12845qK = abc.m12845qK();
        if (m12845qK.isRootPermition(true)) {
            return m12845qK.m12846el(format).success();
        }
        return false;
    }
}
