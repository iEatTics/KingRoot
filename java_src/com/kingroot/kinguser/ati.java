package com.kingroot.kinguser;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class ati {
    private static volatile ati aNR;
    private bol aGX;
    private Map<bom, Map<AbstractC1523a, Object>> aGY = new HashMap();
    private Map<bom, Set<C1524b>> axW = new HashMap();
    private boo aNS = new boo() { // from class: com.kingroot.kinguser.ati.1
        @Override // com.kingroot.kinguser.boo
        /* renamed from: a */
        public void mo6054a(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.m9271a(bomVar);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.boo
        /* renamed from: b */
        public void mo6051b(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.mo9122b(bomVar);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.boo
        /* renamed from: c */
        public void mo6049c(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.m9270c(bomVar);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.boo
        /* renamed from: d */
        public void mo6047d(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.m9269d(bomVar);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.boo
        /* renamed from: e */
        public void mo6046e(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.mo9121e(bomVar);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.boo
        /* renamed from: f */
        public void mo6044f(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.m9268f(bomVar);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.boo
        /* renamed from: g */
        public void mo6042g(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.m9267g(bomVar);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.boo
        /* renamed from: h */
        public void mo6040h(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.m9266h(bomVar);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.boo
        /* renamed from: i */
        public void mo6039i(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.m9265i(bomVar);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.boo
        /* renamed from: j */
        public void mo6037j(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.m9264j(bomVar);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.boo
        /* renamed from: k */
        public void mo6036k(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.m9263k(bomVar);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.boo
        /* renamed from: l */
        public void mo6035l(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.m9262l(bomVar);
                    }
                }
            }
        }

        @Override // com.kingroot.kinguser.boo
        /* renamed from: m */
        public void mo6034m(bom bomVar) {
            Map map = (Map) ati.this.aGY.get(bomVar);
            if (!C3942yy.m1349e(map)) {
                for (AbstractC1523a abstractC1523a : map.keySet()) {
                    if (abstractC1523a != null) {
                        abstractC1523a.m9261m(bomVar);
                    }
                }
            }
        }
    };

    /* renamed from: com.kingroot.kinguser.ati$b */
    /* loaded from: classes.dex */
    public static class C1524b {
        public String aNU;
        public String savePath;
        public String url;
    }

    private ati() {
        this.aGX = null;
        this.aGX = bnu.agu();
    }

    /* renamed from: Pb */
    public static ati m9278Pb() {
        if (aNR == null) {
            synchronized (ati.class) {
                if (aNR == null) {
                    aNR = new ati();
                }
            }
        }
        return aNR;
    }

    /* renamed from: hX */
    public bom m9273hX(String str) {
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

    /* renamed from: n */
    public void m9272n(bom bomVar) {
        this.aGX.mo6058a(bomVar, false);
    }

    /* renamed from: a */
    public void m9277a(C1524b c1524b, AbstractC1523a abstractC1523a) {
        try {
            bom m9273hX = m9273hX(c1524b.url);
            if (m9273hX == null) {
                bom mo6060a = this.aGX.mo6060a(-1, null, c1524b.url, c1524b.savePath, c1524b.aNU, this.aNS, -1L);
                mo6060a.mo5946a(bop.NORMAL);
                mo6060a.mo5947a(bon.Cate_DefaultEase);
                m9275a(mo6060a, abstractC1523a);
                m9274a(mo6060a, c1524b);
                this.aGX.mo6056o(mo6060a);
                return;
            }
            if (!m9273hX.isRunning() && !m9273hX.isCompleted()) {
                m9273hX.agF();
            }
            m9274a(m9273hX, c1524b);
            m9275a(m9273hX, abstractC1523a);
        } catch (bnx e) {
        }
    }

    /* renamed from: a */
    private void m9274a(bom bomVar, C1524b c1524b) {
        if (bomVar != null && c1524b != null) {
            Set<C1524b> set = this.axW.get(bomVar);
            if (set == null) {
                set = new HashSet<>();
            }
            set.add(c1524b);
            this.axW.put(bomVar, set);
        }
    }

    /* renamed from: a */
    public void m9275a(bom bomVar, AbstractC1523a abstractC1523a) {
        if (bomVar != null && abstractC1523a != null) {
            Map<AbstractC1523a, Object> map = this.aGY.get(bomVar);
            if (map == null) {
                map = new WeakHashMap<>();
            }
            map.put(abstractC1523a, null);
            this.aGY.put(bomVar, map);
        }
    }

    /* renamed from: com.kingroot.kinguser.ati$a */
    /* loaded from: classes.dex */
    public static abstract class AbstractC1523a {
        /* renamed from: e */
        public void mo9121e(bom bomVar) {
        }

        /* renamed from: m */
        public void m9261m(bom bomVar) {
        }

        /* renamed from: c */
        public void m9270c(bom bomVar) {
        }

        /* renamed from: l */
        public void m9262l(bom bomVar) {
        }

        /* renamed from: g */
        public void m9267g(bom bomVar) {
        }

        /* renamed from: k */
        public void m9263k(bom bomVar) {
        }

        /* renamed from: f */
        public void m9268f(bom bomVar) {
        }

        /* renamed from: j */
        public void m9264j(bom bomVar) {
        }

        /* renamed from: b */
        public void mo9122b(bom bomVar) {
        }

        /* renamed from: d */
        public void m9269d(bom bomVar) {
        }

        /* renamed from: i */
        public void m9265i(bom bomVar) {
        }

        /* renamed from: a */
        public void m9271a(bom bomVar) {
        }

        /* renamed from: h */
        public void m9266h(bom bomVar) {
        }
    }
}
