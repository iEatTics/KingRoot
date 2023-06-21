package com.kingroot.kinguser;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
/* renamed from: com.kingroot.kinguser.lu */
/* loaded from: classes.dex */
public class C3291lu implements InterfaceC3282ln {

    /* renamed from: vg */
    public static C3291lu f3027vg = new C3291lu();

    /* renamed from: ej */
    public static C3291lu m3140ej() {
        return f3027vg;
    }

    @Override // com.kingroot.kinguser.InterfaceC3282ln
    /* renamed from: bd */
    public synchronized Object mo3142bd(String str) {
        ObjectInputStream objectInputStream;
        Throwable th;
        Object obj = null;
        synchronized (this) {
            try {
                objectInputStream = new ObjectInputStream(new FileInputStream(new File(str)));
            } catch (Exception e) {
                objectInputStream = null;
            } catch (Throwable th2) {
                objectInputStream = null;
                th = th2;
            }
            try {
                obj = objectInputStream.readObject();
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e2) {
                    }
                }
            } catch (Exception e3) {
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e4) {
                    }
                }
                return obj;
            } catch (Throwable th3) {
                th = th3;
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e5) {
                    }
                }
                throw th;
            }
        }
        return obj;
    }

    @Override // com.kingroot.kinguser.InterfaceC3282ln
    /* renamed from: c */
    public synchronized boolean mo3141c(String str, Object obj) {
        boolean z;
        ObjectOutputStream objectOutputStream;
        z = true;
        ObjectOutputStream objectOutputStream2 = null;
        try {
            objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(str)));
        } catch (IOException e) {
            objectOutputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            objectOutputStream.writeObject(obj);
            objectOutputStream.flush();
            C3356nn.m2841a(objectOutputStream);
        } catch (IOException e2) {
            z = false;
            C3356nn.m2841a(objectOutputStream);
            return z;
        } catch (Throwable th2) {
            th = th2;
            objectOutputStream2 = objectOutputStream;
            C3356nn.m2841a(objectOutputStream2);
            throw th;
        }
        return z;
    }
}
