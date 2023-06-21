package com.kingroot.kinguser;

import android.view.MotionEvent;
import android.view.View;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class byd {
    private static final bzc<byd> bRb = new bzc<byd>() { // from class: com.kingroot.kinguser.byd.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.bzc
        /* renamed from: ajT */
        public byd create() {
            return new byd();
        }
    };
    private final Map<Integer, Set<byf>> bTN = new HashMap();
    private final Map<Integer, Set<Object>> bTO = new HashMap();

    public static byd ajS() {
        return bRb.get();
    }

    /* renamed from: a */
    public boolean m5178a(View view, byf byfVar) {
        Object m5179S;
        Set<byf> set;
        if (view == null || byfVar == null || (m5179S = m5179S(view)) == null) {
            return false;
        }
        Object m5176a = m5176a(m5179S.getClass(), "mOnTouchListener", m5179S);
        if (m5176a == null || !(m5176a instanceof View$OnTouchListenerC2674a)) {
            view.setOnTouchListener(new View$OnTouchListenerC2674a((View.OnTouchListener) m5176a));
        }
        Set<byf> set2 = this.bTN.get(Integer.valueOf(view.getId()));
        if (set2 == null) {
            set = new HashSet<>();
            set.add(byfVar);
        } else {
            set = set2;
        }
        set.add(byfVar);
        this.bTN.put(Integer.valueOf(view.getId()), set);
        return true;
    }

    /* renamed from: com.kingroot.kinguser.byd$a */
    /* loaded from: classes.dex */
    class View$OnTouchListenerC2674a implements View.OnTouchListener {
        private final View.OnTouchListener bTP;

        public View$OnTouchListenerC2674a(View.OnTouchListener onTouchListener) {
            this.bTP = onTouchListener;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            for (byf byfVar : (Set) byd.this.bTN.get(Integer.valueOf(view.getId()))) {
                byfVar.onTouch(view, motionEvent);
            }
            if (this.bTP != null) {
                return this.bTP.onTouch(view, motionEvent);
            }
            return false;
        }
    }

    /* renamed from: a */
    private Object m5176a(Class<?> cls, String str, Object obj) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: S */
    private Object m5179S(View view) {
        try {
            Method declaredMethod = View.class.getDeclaredMethod("getListenerInfo", new Class[0]);
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(view, null);
        } catch (Throwable th) {
            return null;
        }
    }
}
