package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class bhs {
    protected C2288b bqV;

    protected abstract void acF();

    protected abstract C2288b acG();

    public bhs() {
        this.bqV = null;
        this.bqV = acG();
        acF();
    }

    public void refresh() {
        acF();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void clearAll() {
        this.bqV.bqW.clear();
    }

    /* renamed from: iR */
    public boolean m6965iR(int i) {
        refresh();
        C2287a m6967a = m6967a(this.bqV, i);
        if (m6967a == null) {
            return false;
        }
        return m6967a.acK();
    }

    @Nullable
    /* renamed from: a */
    public C2287a m6967a(@NonNull C2287a c2287a, int i) {
        if (c2287a.mId != i) {
            if (c2287a instanceof C2288b) {
                for (C2287a c2287a2 : ((C2288b) c2287a).bqW) {
                    C2287a m6967a = m6967a(c2287a2, i);
                    if (m6967a != null) {
                        return m6967a;
                    }
                }
            }
            return null;
        }
        return c2287a;
    }

    /* renamed from: a */
    public void m6968a(int i, @NonNull C2287a c2287a) {
        m6966a(this.bqV, i, c2287a);
    }

    /* renamed from: a */
    private void m6966a(@NonNull C2288b c2288b, int i, @NonNull C2287a c2287a) {
        if (c2288b.mId == i) {
            c2288b.m6963a(c2287a);
            return;
        }
        for (C2287a c2287a2 : c2288b.bqW) {
            if (c2287a2.mId == i && (c2287a2 instanceof C2288b)) {
                ((C2288b) c2287a2).m6963a(c2287a);
                return;
            } else if (c2287a2 instanceof C2288b) {
                m6966a((C2288b) c2287a2, i, c2287a);
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.bhs$b */
    /* loaded from: classes.dex */
    public static class C2288b extends C2287a {
        private List<C2287a> bqW;

        public C2288b(int i) {
            super(i);
            this.bqW = new ArrayList();
        }

        /* renamed from: a */
        public void m6963a(C2287a c2287a) {
            this.bqW.add(c2287a);
        }

        @Override // com.kingroot.kinguser.bhs.C2287a
        public boolean acK() {
            for (C2287a c2287a : this.bqW) {
                if (c2287a.acK()) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: com.kingroot.kinguser.bhs$a */
    /* loaded from: classes.dex */
    public static class C2287a {
        private boolean abs = false;
        protected int mId;

        public C2287a(int i) {
            this.mId = i;
        }

        public boolean acK() {
            return this.abs;
        }

        /* renamed from: ed */
        public C2287a m6964ed(boolean z) {
            this.abs = z;
            return this;
        }
    }
}
