package com.kingroot.kinguser;

import android.os.Bundle;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.common.network.download.NetworkLoadTaskAdapter;
import com.kingroot.kingmaster.network.updata.CheckResult;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public class bdy extends AbstractC3704uo {
    private static final String TAG = "ku_test" + bdy.class.getSimpleName();
    private static boolean bke = true;

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C2113a.class;
    }

    /* renamed from: com.kingroot.kinguser.bdy$a */
    /* loaded from: classes.dex */
    public static class C2113a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            Object next;
            switch (i) {
                case 1:
                    System.out.println(bdy.TAG + " TransactCode_testAgrs");
                    do {
                        next = argsPack.next();
                        if (next != null) {
                        }
                    } while (next != null);
                    break;
                case 2:
                    break;
                case 3:
                    return bdy.bke ? 10L : null;
                case 4:
                    if (bdy.bke) {
                        return Float.valueOf(10.0f);
                    }
                    return null;
                case 5:
                    return bdy.bke ? 10 : null;
                case 6:
                    return bdy.bke ? true : null;
                case 7:
                    return bdy.bke ? 10 : null;
                case 8:
                    return "xx";
                case 9:
                    return new ArrayList();
                case 10:
                    return new CheckResult();
                case 11:
                    return new byte[10];
                case 12:
                    return new String[10];
                case 13:
                    return new NetworkLoadTaskAdapter();
                case 14:
                    return new Object[10];
                case 15:
                    return new int[10];
                case 16:
                    return new long[10];
                case 17:
                    return new Byte("1");
                case 18:
                    return new CheckResult[10];
                case 19:
                    return new Bundle();
                case 20:
                    return new HashMap();
                case 21:
                default:
                    return new Object();
                case 22:
                    return new HashMap();
            }
            return bdy.bke ? 10 : null;
        }
    }
}
