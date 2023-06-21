package com.kingroot.kinguser;

import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import com.kingroot.common.app.KApplication;
import com.kingroot.kingmaster.network.updatalist.CommonList;
import com.kingroot.kingmaster.toolbox.autostartmgr.wod.service.IWodService;
import com.kingroot.kingmaster.toolbox.autostartmgr.wod.service.WodService;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class aeu {
    private static IBinder afu = null;
    private static final byte[] afv = new byte[0];
    private static List<String> afw = new ArrayList();
    private static List<String> afx = new ArrayList();
    private static final byte[] afy = new byte[0];
    private static final cce<CommonList.InterfaceC0599a> afz = new cce<CommonList.InterfaceC0599a>() { // from class: com.kingroot.kinguser.aeu.2
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: uK */
        public CommonList.InterfaceC0599a create() {
            return new CommonList.InterfaceC0599a() { // from class: com.kingroot.kinguser.aeu.2.1
                @Override // com.kingroot.kingmaster.network.updatalist.CommonList.InterfaceC0599a
                /* renamed from: uA */
                public void mo8829uA() {
                    aeu.m12157Y(bja.adx());
                }
            };
        }
    };

    /* JADX WARN: Type inference failed for: r3v1, types: [com.kingroot.kinguser.aeu$1] */
    /* renamed from: uF */
    private static IWodService m12154uF() {
        if (KApplication.m13450hT() == 2) {
            return WodService.m13062uL();
        }
        if (afu == null || !afu.isBinderAlive()) {
            synchronized (afv) {
                if (afu == null || !afu.isBinderAlive()) {
                    final AtomicBoolean atomicBoolean = new AtomicBoolean();
                    atomicBoolean.set(true);
                    new Thread() { // from class: com.kingroot.kinguser.aeu.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            try {
                                Thread.sleep(300L);
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                            }
                            C3636tj.m2173a(new Intent(C3636tj.m2169ge(), WodService.class), new ServiceConnection() { // from class: com.kingroot.kinguser.aeu.1.1
                                @Override // android.content.ServiceConnection
                                public void onServiceDisconnected(ComponentName componentName) {
                                }

                                @Override // android.content.ServiceConnection
                                public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                                    synchronized (aeu.afv) {
                                        IBinder unused = aeu.afu = iBinder;
                                        atomicBoolean.set(false);
                                        aeu.afv.notify();
                                    }
                                }
                            });
                        }
                    }.start();
                    while (atomicBoolean.get()) {
                        try {
                            afv.wait(10000L);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
        if (afu == null || !afu.isBinderAlive()) {
            return null;
        }
        return IWodService.Stub.asInterface(afu);
    }

    /* renamed from: w */
    public static void m12149w(String str, boolean z) {
        synchronized (afy) {
            if (z) {
                if (afx.contains(str)) {
                    afx.remove(str);
                } else {
                    afw.add(str);
                }
            } else if (afw.contains(str)) {
                afw.remove(str);
            } else {
                afx.add(str);
            }
        }
    }

    /* renamed from: a */
    private static void m12156a(List<String> list, Bundle bundle, int i) {
        if (list != null && bundle != null) {
            for (String str : list) {
                bundle.putInt(str, i);
            }
        }
    }

    /* renamed from: uG */
    public static void m12153uG() {
        ArrayList arrayList;
        ArrayList arrayList2 = null;
        synchronized (afy) {
            Bundle bundle = new Bundle();
            if (afw.size() > 0) {
                m12156a(afw, bundle, 0);
                afw.clear();
            }
            int size = afx.size();
            if (size > 0) {
                CommonList m12186a = aem.m12183ux().m12186a(null);
                if (m12186a != null) {
                    int i = size - 1;
                    while (i >= 0) {
                        String str = afx.get(i);
                        if (bja.m6799d(C3636tj.getPackageManager(), str)) {
                            afx.remove(str);
                            arrayList = arrayList2;
                        } else {
                            if (m12186a.m13063eQ(str) == 4 || bja.m6798lV(str)) {
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList();
                                }
                                arrayList2.add(str);
                                afx.remove(str);
                            }
                            arrayList = arrayList2;
                        }
                        i--;
                        arrayList2 = arrayList;
                    }
                }
                m12156a(afx, bundle, 1);
                m12156a(arrayList2, bundle, 2);
                afx.clear();
            }
            setConfigMap(bundle);
        }
    }

    /* renamed from: uH */
    public static void m12152uH() {
        synchronized (afy) {
            if (afw.size() > 0) {
                afw.clear();
            }
            if (afx.size() > 0) {
                afx.clear();
            }
        }
    }

    /* renamed from: uI */
    public static boolean m12151uI() {
        boolean z;
        synchronized (afy) {
            z = afx.size() > 0 || afw.size() > 0;
        }
        return z;
    }

    public static boolean isWodAvailible() {
        try {
            IWodService m12154uF = m12154uF();
            if (m12154uF == null) {
                return false;
            }
            return m12154uF.isWodAvailible();
        } catch (Throwable th) {
            return false;
        }
    }

    public static void setConfigMap(Bundle bundle) {
        try {
            IWodService m12154uF = m12154uF();
            if (m12154uF != null) {
                m12154uF.setConfigMap(bundle);
            }
        } catch (Throwable th) {
        }
    }

    /* renamed from: Y */
    public static void m12157Y(List<String> list) {
        Bundle bundle = new Bundle();
        if (list != null) {
            CommonList m12186a = aem.m12183ux().m12186a(afz.get());
            ArrayList arrayList = null;
            if (m12186a != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    String str = list.get(size);
                    if (bja.m6799d(C3636tj.getPackageManager(), str)) {
                        list.remove(str);
                    } else if (m12186a.m13063eQ(str) == 4 || bja.m6798lV(str)) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(str);
                        list.remove(str);
                    }
                }
            }
            m12156a(list, bundle, 1);
            m12156a(arrayList, bundle, 2);
        }
        try {
            IWodService m12154uF = m12154uF();
            if (m12154uF != null) {
                m12154uF.initConfigMap(bundle);
            }
        } catch (Throwable th) {
        }
    }
}
