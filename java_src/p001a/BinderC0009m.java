package p001a;

import android.content.Context;
import com.kingroot.kinguser.C3036ex;
import com.kingroot.kinguser.C3116gb;
import com.tencent.tps.client.AbsTPSClientBase;
import com.tencent.tps.client.p024kr.AbsTPSClientKR;
import com.tencent.tps.client.p024kr.OnQuerySupportedListener;
/* renamed from: a.m */
/* loaded from: classes.dex */
public final class BinderC0009m extends AbstractBinderC0003ap {

    /* renamed from: l */
    private static volatile BinderC0009m f70l = null;

    /* renamed from: m */
    private AbsTPSClientBase f71m;

    /* renamed from: n */
    private OnQuerySupportedListener f72n;

    private BinderC0009m() {
    }

    /* renamed from: i */
    public static BinderC0009m m13742i() {
        if (f70l == null) {
            synchronized (BinderC0009m.class) {
                if (f70l == null) {
                    f70l = new BinderC0009m();
                }
            }
        }
        return f70l;
    }

    @Override // p001a.InterfaceC0002ao
    /* renamed from: a */
    public void mo13749a(C0008av c0008av) {
        if (c0008av != null && !m13746b(c0008av) && !m13745c(c0008av) && !m13743d(c0008av)) {
            m13750a(19002, "invalid eventID", -1);
        }
    }

    /* renamed from: b */
    private boolean m13746b(C0008av c0008av) {
        boolean z = true;
        try {
            switch (c0008av.f66as) {
                case 20003:
                    if (this.f72n != null) {
                        this.f72n.onGetResult(c0008av.arg1 == 1);
                        this.f72n = null;
                        m13750a(c0008av.f67pE, c0008av.f65I, c0008av.f66as);
                        break;
                    } else {
                        m13750a(-1, "listener no exists", c0008av.f66as);
                        break;
                    }
                default:
                    z = false;
                    break;
            }
        } catch (Throwable th) {
            m13750a(-1, "listener no exists", c0008av.f66as);
        }
        return z;
    }

    /* renamed from: c */
    private boolean m13745c(C0008av c0008av) {
        if (this.f71m == null) {
            m13750a(-1, "client no exists", c0008av.f66as);
            return true;
        }
        switch (c0008av.f66as) {
            case 20002:
                String m13748a = m13748a(AbsTPSClientBase.getContext(), c0008av.arg2);
                m13750a(0, null, 1);
                this.f71m.onExploitDenied(c0008av.arg1, m13748a, c0008av.f68pW);
                return true;
            default:
                return false;
        }
    }

    /* renamed from: d */
    private boolean m13743d(C0008av c0008av) {
        if (AbsTPSClientKR.class.isInstance(this.f71m)) {
            m13750a(-1, "client for kr no exists", c0008av.f66as);
            return true;
        }
        switch (c0008av.f66as) {
            case 20001:
                String m13748a = m13748a(AbsTPSClientBase.getContext(), c0008av.arg2);
                m13750a(0, null, 0);
                this.f71m.onExploitDenied(c0008av.arg1, m13748a, c0008av.f68pW);
                return true;
            default:
                return false;
        }
    }

    /* renamed from: c */
    public void m13744c(AbsTPSClientBase absTPSClientBase) {
        this.f71m = absTPSClientBase;
    }

    /* renamed from: a */
    public void m13747a(OnQuerySupportedListener onQuerySupportedListener) {
        this.f72n = onQuerySupportedListener;
    }

    /* renamed from: a */
    private void m13750a(int i, String str, int i2) {
        C3116gb.m3729d(new C3036ex(i, str, 3, i2, ""));
    }

    /* renamed from: a */
    private String m13748a(Context context, int i) {
        String str = null;
        if (context != null) {
            str = context.getPackageManager().getNameForUid(i);
        }
        return str == null ? "" : str;
    }
}
