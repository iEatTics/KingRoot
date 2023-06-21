package com.kingroot.kinguser;

import java.io.FileInputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.ne */
/* loaded from: classes.dex */
public final class C3340ne {

    /* renamed from: hO */
    private final String f3189hO;

    /* renamed from: wX */
    private final boolean f3191wX;

    /* renamed from: wW */
    private final Properties f3190wW = new Properties();

    /* renamed from: wY */
    private boolean f3192wY = false;

    public C3340ne(String str, boolean z) {
        this.f3189hO = str;
        this.f3191wX = z;
    }

    private Properties getProperties() {
        FileInputStream fileInputStream;
        synchronized (this.f3190wW) {
            if (!this.f3192wY) {
                try {
                    fileInputStream = new FileInputStream(this.f3189hO);
                } catch (Throwable th) {
                    fileInputStream = null;
                }
                try {
                    this.f3190wW.load(fileInputStream);
                    C3356nn.m2841a(fileInputStream);
                } catch (Throwable th2) {
                    this.f3190wW.clear();
                    C3356nn.m2841a(fileInputStream);
                    this.f3192wY = true;
                    return this.f3190wW;
                }
                this.f3192wY = true;
            }
        }
        return this.f3190wW;
    }

    public void setProperty(String str, String str2) {
        if (this.f3191wX) {
            str = m2901bF(str);
        }
        if (this.f3191wX) {
            str2 = m2901bF(str2);
        }
        synchronized (this.f3190wW) {
            getProperties().setProperty(str, str2);
            save();
        }
    }

    public String getProperty(String str) {
        if (this.f3191wX) {
            str = m2901bF(str);
        }
        String property = getProperties().getProperty(str);
        return this.f3191wX ? m2900bG(property) : property;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    private void save() {
        /*
            r4 = this;
            r1 = 0
            java.io.FileOutputStream r0 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L14
            java.lang.String r2 = r4.f3189hO     // Catch: java.lang.Throwable -> L14
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L14
            java.util.Properties r1 = r4.getProperties()     // Catch: java.lang.Throwable -> L24
            r2 = 0
            r1.store(r0, r2)     // Catch: java.lang.Throwable -> L24
            com.kingroot.kinguser.C3356nn.m2841a(r0)
        L13:
            return
        L14:
            r0 = move-exception
            r0 = r1
        L16:
            com.kingroot.kinguser.C3356nn.m2841a(r0)
            goto L13
        L1a:
            r0 = move-exception
        L1b:
            com.kingroot.kinguser.C3356nn.m2841a(r1)
            throw r0
        L1f:
            r1 = move-exception
            r3 = r1
            r1 = r0
            r0 = r3
            goto L1b
        L24:
            r1 = move-exception
            goto L16
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3340ne.save():void");
    }

    public Map<String, String> getAll() {
        HashMap hashMap = new HashMap();
        synchronized (this.f3190wW) {
            for (Map.Entry entry : getProperties().entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) entry.getValue();
                if (this.f3191wX) {
                    str = m2900bG(str);
                    str2 = m2900bG(str2);
                }
                hashMap.put(str, str2);
            }
        }
        return hashMap;
    }

    /* renamed from: a */
    public void m2904a(Map<String, String> map) {
        synchronized (this.f3190wW) {
            Properties properties = getProperties();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (this.f3191wX) {
                    key = m2901bF(key);
                    value = m2901bF(value);
                }
                properties.setProperty(key, value);
            }
            save();
        }
    }

    /* renamed from: a */
    public void m2903a(Set<String> set) {
        synchronized (this.f3190wW) {
            for (String str : set) {
                if (this.f3191wX) {
                    str = m2901bF(str);
                }
                getProperties().remove(str);
            }
            save();
        }
    }

    /* renamed from: bE */
    public final void m2902bE(String str) {
        if (this.f3191wX) {
            str = m2901bF(str);
        }
        synchronized (this.f3190wW) {
            getProperties().remove(str);
            save();
        }
    }

    /* renamed from: bF */
    private String m2901bF(String str) {
        if (str != null) {
            try {
                return C3221jo.m3378k("Uranus", str);
            } catch (Throwable th) {
                return str;
            }
        }
        return str;
    }

    /* renamed from: bG */
    private String m2900bG(String str) {
        if (str != null) {
            try {
                return C3221jo.m3377l("Uranus", str);
            } catch (Throwable th) {
                return str;
            }
        }
        return str;
    }
}
