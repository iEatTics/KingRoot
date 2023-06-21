package com.kingroot.kinguser;

import android.content.ComponentName;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.kingroot.kinguser.receiver.DeviceOwnerReceiver;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public class ain {
    private static String TAG = "commonDevicePolicyManager";
    private static int arN = 41;
    private static int arO = 42;
    private static int arP = 43;
    private static int arQ = 40;
    private static volatile ain arR;

    /* renamed from: Hf */
    private IBinder f1455Hf;
    private bed arS = new bed(bem.LOW, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.ain.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (ain.this.m11612ga(KUApplication.m13453ge().getPackageName()) || !ain.this.m11607xY()) {
            }
        }
    });

    /* renamed from: xW */
    public static ain m11609xW() {
        if (arR == null) {
            synchronized (ain.class) {
                if (arR == null) {
                    arR = new ain();
                }
            }
        }
        return arR;
    }

    private ain() {
        if (abb.m12851ek("android.app.admin.IDevicePolicyManager$Stub")) {
            arN = abb.m12850l("TRANSACTION_packageHasActiveAdmins", 41);
            arO = abb.m12850l("TRANSACTION_setActiveAdmin", 42);
            arP = abb.m12850l("TRANSACTION_removeActiveAdmin", 43);
            arQ = abb.m12850l("TRANSACTION_getActiveAdmins", 40);
            this.f1455Hf = aan.getService("device_policy");
        }
    }

    /* renamed from: ga */
    public boolean m11612ga(String str) {
        if (this.f1455Hf != null) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("android.app.admin.IDevicePolicyManager");
                obtain.writeString(str);
                this.f1455Hf.transact(arN, obtain, obtain2, 0);
                obtain2.readException();
                r0 = obtain2.readInt() != 0;
            } catch (RemoteException e) {
            } finally {
                obtain.recycle();
                obtain2.recycle();
            }
        }
        return r0;
    }

    /* renamed from: gb */
    public boolean m11611gb(String str) {
        ComponentName m11610gc;
        String format;
        if (this.f1455Hf != null && (m11610gc = m11610gc(str)) != null) {
            String className = m11610gc.getClassName();
            if (className.contains("$")) {
                className = className.replaceAll("\\$", "'\\$'");
            }
            if (abd.m12839qb() < 17) {
                format = String.format("service call %s %d i32 1 s16 %s s16 %s", "device_policy", Integer.valueOf(arP), m11610gc.getPackageName(), className);
            } else {
                format = String.format("service call %s %d i32 1 s16 %s s16 %s i32 0", "device_policy", Integer.valueOf(arP), m11610gc.getPackageName(), className);
            }
            abc m12845qK = abc.m12845qK();
            if (m12845qK.isRootPermition(true)) {
                return m12845qK.m12846el(format).success();
            }
        }
        return false;
    }

    /* renamed from: xX */
    public void m11608xX() {
        if (bap.m7901VG()) {
            beg.m7461Zj().m7450c(this.arS);
        }
    }

    /* renamed from: gc */
    private ComponentName m11610gc(String str) {
        ArrayList arrayList;
        if (this.f1455Hf != null) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("android.app.admin.IDevicePolicyManager");
                this.f1455Hf.transact(arQ, obtain, obtain2, 0);
                obtain2.readException();
                arrayList = obtain2.createTypedArrayList(ComponentName.CREATOR);
                obtain.recycle();
                obtain2.recycle();
            } catch (RemoteException e) {
                obtain.recycle();
                obtain2.recycle();
                arrayList = null;
            } catch (Throwable th) {
                obtain.recycle();
                obtain2.recycle();
                throw th;
            }
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ComponentName componentName = (ComponentName) it.next();
                    if (componentName.getPackageName().equals(str)) {
                        return componentName;
                    }
                }
            }
        }
        return null;
    }

    /* renamed from: xY */
    protected boolean m11607xY() {
        String format;
        if (this.f1455Hf != null) {
            String packageName = KUApplication.m13453ge().getPackageName();
            String name = DeviceOwnerReceiver.class.getName();
            if (abd.m12839qb() < 17) {
                format = String.format("service call %s %d i32 1 s16 %s s16 %s", "device_policy", Integer.valueOf(arO), packageName, name);
            } else {
                format = String.format("service call %s %d i32 1 s16 %s s16 %s i32 0", "device_policy", Integer.valueOf(arO), packageName, name);
            }
            abc m12845qK = abc.m12845qK();
            if (m12845qK.isRootPermition(true)) {
                return m12845qK.m12846el(format).success();
            }
        }
        return false;
    }
}
