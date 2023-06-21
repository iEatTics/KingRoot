package com.kingroot.kinguser;

import android.text.TextUtils;
import com.kingroot.kinguser.RunnableC3845wo;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aaq {

    /* renamed from: It */
    private static RunnableC3845wo f1247It = new RunnableC3845wo() { // from class: com.kingroot.kinguser.aaq.1
        /* JADX WARN: Removed duplicated region for block: B:16:0x003a  */
        /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
        @Override // com.kingroot.kinguser.RunnableC3845wo
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void mo1543a(RunnableC3845wo.InterfaceC3847a interfaceC3847a) {
            InterfaceC0617a interfaceC0617a;
            super.mo1543a(interfaceC3847a);
            List<Object> mo1527nF = interfaceC3847a.mo1527nF();
            String str = "";
            if (!C3942yy.m1351d(mo1527nF) && mo1527nF.size() >= 1) {
                Object obj = mo1527nF.get(0);
                if (obj instanceof String) {
                    str = (String) obj;
                }
                if (mo1527nF.size() == 2) {
                    Object obj2 = mo1527nF.get(1);
                    if (obj2 instanceof InterfaceC0617a) {
                        interfaceC0617a = (InterfaceC0617a) obj2;
                        boolean m12950dN = aaq.m12950dN(str);
                        if (interfaceC0617a == null) {
                            interfaceC0617a.mo8518ab(m12950dN);
                            return;
                        }
                        return;
                    }
                }
                interfaceC0617a = null;
                boolean m12950dN2 = aaq.m12950dN(str);
                if (interfaceC0617a == null) {
                }
            }
        }
    };

    /* renamed from: com.kingroot.kinguser.aaq$a */
    /* loaded from: classes.dex */
    public interface InterfaceC0617a {
        /* renamed from: ab */
        void mo8518ab(boolean z);
    }

    /* renamed from: a */
    public static void m12952a(String str, InterfaceC0617a interfaceC0617a) {
        if (TextUtils.isEmpty(str)) {
            if (interfaceC0617a != null) {
                interfaceC0617a.mo8518ab(false);
                return;
            }
            return;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        if (interfaceC0617a != null) {
            arrayList.add(interfaceC0617a);
        }
        f1247It.m1545I(arrayList);
    }

    /* renamed from: dM */
    public static void m12951dM(String str) {
        m12952a(str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: dN */
    public static boolean m12950dN(String str) {
        return abc.m12845qK().m12846el(aba.m12855qF() + " a2t " + str).success();
    }
}
