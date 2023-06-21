package com.kingroot.kinguser;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import com.kingroot.loader.common.KlConst;
import java.io.File;
import tmsdk.common.BaseTMSReceiver;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public final class cgv {
    public static boolean ceA;
    private static final boolean ceB;
    private static int ceC;
    private static boolean ceD;
    private static Object ceE;
    private static InterfaceC2812a ceF;
    private static int ceG;
    private static byte ceH;
    private static boolean ceI;
    private static BroadcastReceiver ceJ;
    private static cgi ceK;
    private static final String cey = TMSDKContext.m13nG("athena_name");
    private static final String cez = TMSDKContext.akS().getPackageName() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + cey + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + Process.myUid();

    /* renamed from: com.kingroot.kinguser.cgv$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2812a {
        int ani();
    }

    static {
        ceA = cei.isFileExist("/system/bin/su") || cei.isFileExist("/system/xbin/su") || cei.isFileExist("/sbin/su");
        ceB = new File("/dev/socket/script_socket").exists();
        ceC = 2;
        ceD = false;
        ceE = new Object();
        ceF = null;
        ceG = Process.myPid();
        ceH = (byte) 0;
        ceI = false;
        ceJ = new BaseTMSReceiver() { // from class: com.kingroot.kinguser.cgv.1
            @Override // tmsdk.common.BaseTMSReceiver
            /* renamed from: f */
            public final void mo5f(Context context, Intent intent) {
                if (intent != null && intent.getIntExtra("pidky", -1) != cgv.ceG) {
                    String m13nG = TMSDKContext.m13nG("root_change_action");
                    String action = intent.getAction();
                    if (m13nG.equals(action)) {
                        int unused = cgv.ceC = intent.getIntExtra("rtstky", 2);
                    } else if ("tms.scripthelper.create".equals(action) && 2 == TMSDKContext.akT()) {
                        cgv.anh();
                    }
                }
            }
        };
        ceK = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void anh() {
        try {
            Intent intent = new Intent(TMSDKContext.m13nG("root_change_action"));
            intent.putExtra("rtstky", ceC);
            intent.putExtra("pidky", ceG);
            TMSDKContext.akS().sendBroadcast(intent, "com.tencent.qqsecure.INNER_BROCAST");
        } catch (Exception e) {
        }
    }

    public static int getRootState() {
        return ceF != null ? ceF.ani() : ceC;
    }
}
