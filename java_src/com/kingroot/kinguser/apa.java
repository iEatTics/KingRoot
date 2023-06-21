package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public abstract class apa implements boo {
    protected bol aGX;
    protected final Map<bom, Map<AbstractC1401a, Object>> aGY = Collections.synchronizedMap(new HashMap());
    protected final Map<bom, Set<C1402b>> axW = Collections.synchronizedMap(new HashMap());

    /* renamed from: Kv */
    protected abstract boolean mo9867Kv();

    /* renamed from: hJ */
    protected abstract String mo9859hJ(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public apa() {
        this.aGX = null;
        this.aGX = bnu.agu();
    }

    @Nullable
    /* renamed from: hX */
    public bom m9856hX(String str) {
        List agC;
        if (!TextUtils.isEmpty(str) && (agC = this.aGX.agC()) != null) {
            for (Object obj : agC) {
                if ((obj instanceof bom) && str.equals(((bom) obj).getUrl())) {
                    return (bom) obj;
                }
            }
            return null;
        }
        return null;
    }

    @NonNull
    /* renamed from: hY */
    public List<bom> m9855hY(String str) {
        ArrayList arrayList = new ArrayList();
        for (bom bomVar : this.axW.keySet()) {
            Iterator it = C3942yy.m1350e(this.axW.get(bomVar)).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C1402b c1402b = (C1402b) it.next();
                if (c1402b != null && TextUtils.equals(str, c1402b.tag)) {
                    arrayList.add(bomVar);
                    break;
                }
            }
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: KP */
    public List<bom> m9868KP() {
        return new ArrayList(this.axW.keySet());
    }

    /* renamed from: hK */
    public void m9858hK(String str) {
        bom m9856hX = m9856hX(str);
        if (m9856hX != null && !m9856hX.isPaused()) {
            m9856hX.pause();
        }
    }

    /* renamed from: hL */
    public void m9857hL(String str) {
        bom m9856hX = m9856hX(str);
        if (m9856hX != null && m9856hX.isPaused()) {
            m9856hX.agF();
        }
    }

    /* renamed from: z */
    public void m9852z(String str, boolean z) {
        List agC;
        if (!TextUtils.isEmpty(str) && (agC = this.aGX.agC()) != null) {
            for (Object obj : agC) {
                if ((obj instanceof bom) && str.equals(((bom) obj).getUrl())) {
                    this.aGX.mo6058a((bom) obj, z);
                    this.axW.remove((bom) obj);
                }
            }
        }
    }

    /* renamed from: a */
    protected bom m9866a(C1402b c1402b) {
        bom mo6060a = this.aGX.mo6060a(-1, null, c1402b.url, m9862b(c1402b), mo9859hJ(c1402b.aGZ), this, -1L);
        mo6060a.mo5946a(bop.NORMAL);
        mo6060a.mo5947a(mo9867Kv() ? bon.Cate_DefaultEase : bon.Cate_DefaultMass);
        return mo6060a;
    }

    @Nullable
    /* renamed from: b */
    private String m9862b(C1402b c1402b) {
        if (TextUtils.isEmpty(c1402b.aHa)) {
            return null;
        }
        return c1402b.aHa;
    }

    /* renamed from: c */
    private String m9861c(C1402b c1402b) {
        String m13016dH = aab.m13016dH(m9862b(c1402b));
        return m13016dH + File.separator + aab.m13016dH(mo9859hJ(c1402b.aGZ));
    }

    /* renamed from: a */
    public bom mo9865a(@NonNull C1402b c1402b, @Nullable AbstractC1401a abstractC1401a) {
        if (c1402b == null || TextUtils.isEmpty(c1402b.url)) {
            return null;
        }
        try {
            bom m9856hX = m9856hX(c1402b.url);
            if (m9856hX == null) {
                m9856hX = m9854hZ(m9861c(c1402b));
            }
            if (m9856hX == null) {
                m9856hX = m9860d(c1402b);
            } else {
                if (!m9856hX.isRunning() && !m9856hX.isCompleted()) {
                    m9856hX.agF();
                }
                if (!m9856hX.isRunning() && m9856hX.isCompleted()) {
                    this.aGX.mo6058a(m9856hX, true);
                    m9856hX = m9860d(c1402b);
                }
            }
            m9864a(m9856hX, abstractC1401a);
            m9863a(m9856hX, c1402b);
            return m9856hX;
        } catch (bnx e) {
            return null;
        }
    }

    /* renamed from: d */
    private bom m9860d(C1402b c1402b) {
        bom m9866a = m9866a(c1402b);
        this.aGX.mo6056o(m9866a);
        return m9866a;
    }

    /* renamed from: hZ */
    public bom m9854hZ(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (Object obj : this.aGX.agC()) {
            if ((obj instanceof bom) && str.equals(((bom) obj).mo5956KI())) {
                return (bom) obj;
            }
        }
        return null;
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: a */
    public void mo6054a(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo4069a(bomVar);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: b */
    public void mo6051b(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo4068b(bomVar);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: c */
    public void mo6049c(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo9851c(bomVar);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: d */
    public void mo6047d(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo4067d(bomVar);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: e */
    public void mo6046e(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo4066e(bomVar);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: f */
    public void mo6044f(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo4065f(bomVar);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: g */
    public void mo6042g(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo4064g(bomVar);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: h */
    public void mo6040h(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo9850h(bomVar);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: i */
    public void mo6039i(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo9849i(bomVar);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: j */
    public void mo6037j(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo9848j(bomVar);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: k */
    public void mo6036k(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo9711k(bomVar);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: l */
    public void mo6035l(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo9847l(bomVar);
                }
            }
        }
    }

    @Override // com.kingroot.kinguser.boo
    /* renamed from: m */
    public void mo6034m(bom bomVar) {
        Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
        if (!C3942yy.m1349e(map)) {
            for (AbstractC1401a abstractC1401a : map.keySet()) {
                if (abstractC1401a != null) {
                    abstractC1401a.mo9710m(bomVar);
                }
            }
        }
    }

    /* renamed from: a */
    synchronized void m9863a(bom bomVar, C1402b c1402b) {
        if (bomVar != null && c1402b != null) {
            Set<C1402b> set = this.axW.get(bomVar);
            if (set == null) {
                set = new HashSet<>();
            }
            set.add(c1402b);
            this.axW.put(bomVar, set);
        }
    }

    /* renamed from: a */
    private synchronized void m9864a(bom bomVar, AbstractC1401a abstractC1401a) {
        if (bomVar != null && abstractC1401a != null) {
            Map<AbstractC1401a, Object> map = this.aGY.get(bomVar);
            if (map == null) {
                map = new WeakHashMap<>();
            }
            map.put(abstractC1401a, null);
            this.aGY.put(bomVar, map);
        }
    }

    /* renamed from: k */
    public synchronized void m9853k(Collection<bom> collection) {
        for (bom bomVar : C3942yy.m1350e(collection)) {
            if (bomVar.isPaused()) {
                try {
                    bomVar.agF();
                } catch (bnx e) {
                }
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.apa$b */
    /* loaded from: classes.dex */
    public static class C1402b {
        public String url = "";
        public String version = "";
        public String aGZ = "";
        public String aHa = "";
        public String tag = "";

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("【url】" + this.url + "\n");
            sb.append("【version】" + this.version + "\n");
            sb.append("【fileName】" + this.aGZ + "\n");
            sb.append("【downloadDir】" + this.aHa + "\n");
            return sb.toString();
        }
    }

    /* renamed from: com.kingroot.kinguser.apa$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC1401a {
        /* renamed from: e */
        public void mo4066e(bom bomVar) {
        }

        /* renamed from: m */
        public void mo9710m(bom bomVar) {
        }

        /* renamed from: c */
        public void mo9851c(bom bomVar) {
        }

        /* renamed from: l */
        public void mo9847l(bom bomVar) {
        }

        /* renamed from: g */
        public void mo4064g(bom bomVar) {
        }

        /* renamed from: k */
        public void mo9711k(bom bomVar) {
        }

        /* renamed from: f */
        public void mo4065f(bom bomVar) {
        }

        /* renamed from: j */
        public void mo9848j(bom bomVar) {
        }

        /* renamed from: b */
        public void mo4068b(bom bomVar) {
        }

        /* renamed from: d */
        public void mo4067d(bom bomVar) {
        }

        /* renamed from: i */
        public void mo9849i(bom bomVar) {
        }

        /* renamed from: a */
        public void mo4069a(bom bomVar) {
        }

        /* renamed from: h */
        public void mo9850h(bom bomVar) {
        }
    }
}
