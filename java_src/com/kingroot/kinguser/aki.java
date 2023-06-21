package com.kingroot.kinguser;

import android.app.INotificationManager;
import android.app.NotificationManager;
import android.support.annotation.NonNull;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
/* loaded from: classes.dex */
public class aki {
    private static final cce<aki> sInstance = new cce<aki>() { // from class: com.kingroot.kinguser.aki.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Az */
        public aki create() {
            try {
                aam.m12969a(NotificationManager.class, "getService", (Class<?>[]) null, (Object) null, (Object[]) null);
                aki akiVar = new aki((INotificationManager) aam.m12972a(NotificationManager.class, "sService", (Object) null));
                try {
                    aam.m12971a(NotificationManager.class, "sService", null, akiVar.m11289Ay());
                    return akiVar;
                } catch (Exception e) {
                    return akiVar;
                }
            } catch (Exception e2) {
                return null;
            }
        }
    };
    private INotificationManager avo;

    /* renamed from: Ax */
    public static aki m11290Ax() {
        return sInstance.get();
    }

    private aki(INotificationManager iNotificationManager) {
        this.avo = (INotificationManager) Proxy.newProxyInstance(C1038a.class.getClassLoader(), new Class[]{INotificationManager.class}, new C1038a(iNotificationManager));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Ay */
    public INotificationManager m11289Ay() {
        return this.avo;
    }

    /* renamed from: com.kingroot.kinguser.aki$a */
    /* loaded from: classes.dex */
    static class C1038a implements InvocationHandler {
        private Object avp;

        C1038a(Object obj) {
            this.avp = obj;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (!akh.m11295Au()) {
                return method.invoke(this.avp, objArr);
            }
            if (m11286b(method, objArr)) {
                return null;
            }
            return method.invoke(this.avp, objArr);
        }

        /* renamed from: b */
        private boolean m11286b(@NonNull Method method, Object[] objArr) {
            int i;
            String name = method.getName();
            if (name == null || objArr == null || objArr.length < 2 || !name.startsWith("enqueueNotification")) {
                return false;
            }
            int length = objArr.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i = -1;
                    break;
                }
                Object obj = objArr[i2];
                if (!(obj instanceof Integer)) {
                    i2++;
                } else {
                    i = ((Integer) obj).intValue();
                    break;
                }
            }
            return i != 21;
        }
    }
}
