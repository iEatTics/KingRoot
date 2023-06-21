package com.kingroot.kinguser;

import android.content.Context;
import android.os.Build;
import android.util.SparseArray;
import com.kingroot.kinguser.C3749vc;
import com.p019qq.jce.wup.UniPacket;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class aju {
    public static final String auu = AbstractC3976zt.get("wf15");
    public static final String auv = AbstractC3976zt.get("wf4");
    public static final String auw = AbstractC3976zt.get("wf17");
    private static SparseArray<C3749vc.C3751a> aux = null;

    /* renamed from: bc */
    private static C3749vc.C3751a m11394bc(int i) {
        try {
            if (aux == null) {
                aux = new SparseArray<>();
                aux.put(2, new C3749vc.C3751a(2, auu));
                aux.put(3, new C3749vc.C3751a(3, auv));
                aux.put(0, new C3749vc.C3751a(0, "pluginreport|reportPluginData"));
                aux.put(1, new C3749vc.C3751a(1, "pluginv2|getPluginInfos"));
                aux.put(4, new C3749vc.C3751a(4, auw));
                aux.put(5, new C3749vc.C3751a(5, "appmonitor|getAppPermission"));
                aux.put(6, new C3749vc.C3751a(6, "uninstall|getSoftClearType"));
                aux.put(7, new C3749vc.C3751a(7, "KuRootDesc|getRootDesc"));
                aux.put(11, new C3749vc.C3751a(11, "securedownload|DownloadCmdRequest"));
                aux.put(8, new C3749vc.C3751a(8, "game|getGame"));
                aux.put(9, new C3749vc.C3751a(9, "softinfo|getSoftList"));
                aux.put(10, new C3749vc.C3751a(10, "softinfo|getSoftInfo"));
                aux.put(12, new C3749vc.C3751a(12, "securereport|reportDownSoft"));
                aux.put(13, new C3749vc.C3751a(13, "securereport|reportInfo"));
                aux.put(15, new C3749vc.C3751a(15, "rootCheck|reqAdapterRank"));
            }
            return aux.get(i);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    private static void m11407a(int i, UniPacket uniPacket, UniPacket uniPacket2) {
        C3749vc.C3751a m11394bc = m11394bc(i);
        if (m11394bc != null) {
            C3752vd.m1903a(i, m11394bc.f3729Ku, m11394bc.f3730Kv, uniPacket, uniPacket2);
        }
    }

    /* renamed from: a */
    public static int m11402a(Context context, C3007dv c3007dv, AtomicReference<C3018ef> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        m11407a(1, uniPacket, uniPacket2);
        try {
            uniPacket.put("fin", C3736ux.m1951Q(true));
            uniPacket.put("req", c3007dv);
            int m1902a = C3752vd.m1902a(context, uniPacket, uniPacket2, false);
            if (m1902a == 0) {
                Object byClass = uniPacket2.getByClass("resp", new C3018ef());
                if (byClass != null && atomicReference != null) {
                    atomicReference.set((C3018ef) byClass);
                }
                return 0;
            }
            return m1902a;
        } catch (abn e) {
            return -8;
        }
    }

    /* renamed from: a */
    public static int m11401a(Context context, C3021ei c3021ei, AtomicReference<C3025em> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        m11407a(0, uniPacket, uniPacket2);
        try {
            uniPacket.put("fin", C3736ux.m1951Q(true));
            uniPacket.put("req", c3021ei);
            int m1902a = C3752vd.m1902a(context, uniPacket, uniPacket2, false);
            if (m1902a == 0) {
                Object byClass = uniPacket2.getByClass("resp", new C3025em());
                if (byClass != null && atomicReference != null) {
                    atomicReference.set((C3025em) byClass);
                }
                return 0;
            }
            return m1902a;
        } catch (abn e) {
            return -8;
        }
    }

    /* renamed from: a */
    public static int m11400a(Context context, C3029eq c3029eq, AtomicReference<C2995dj> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        m11407a(2, uniPacket, uniPacket2);
        uniPacket.put(C3749vc.PHONE_TYPE, C3752vd.m1899lh());
        try {
            uniPacket.put(C3749vc.f3691JI, C3752vd.m1905T(context));
            uniPacket.put(C3749vc.f3698JP, c3029eq);
            int m1902a = C3752vd.m1902a(context, uniPacket, uniPacket2, false);
            if (m1902a == 0) {
                C2995dj c2995dj = (C2995dj) uniPacket2.getByClass(C3749vc.f3699JQ, new C2995dj());
                if (c2995dj != null) {
                    atomicReference.set(c2995dj);
                }
                return 0;
            }
            return m1902a;
        } catch (abn e) {
            return -8;
        }
    }

    /* renamed from: a */
    public static int m11404a(Context context, C2516bn c2516bn, AtomicReference<C2852cz> atomicReference) {
        try {
            UniPacket uniPacket = new UniPacket(true);
            UniPacket uniPacket2 = new UniPacket(true);
            m11407a(6, uniPacket, uniPacket2);
            uniPacket.put(C3749vc.PHONE_TYPE, C3752vd.m1899lh());
            uniPacket.put(C3749vc.f3691JI, C3752vd.m1905T(context));
            uniPacket.put("req", c2516bn);
            int m1902a = C3752vd.m1902a(context, uniPacket, uniPacket2, false);
            if (m1902a == 0) {
                Object byClass = uniPacket2.getByClass("resp", new C2852cz());
                if (byClass != null) {
                    atomicReference.set((C2852cz) byClass);
                }
                return 0;
            }
            return m1902a;
        } catch (Exception e) {
            return -3000;
        }
    }

    /* renamed from: a */
    public static int m11399a(Context context, C3030er c3030er, AtomicReference<C3033eu> atomicReference) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        m11407a(7, uniPacket, uniPacket2);
        try {
            uniPacket.put("userInfo", C3752vd.m1905T(context));
            uniPacket.put("req", c3030er);
            int m1902a = C3752vd.m1902a(context, uniPacket, uniPacket2, false);
            if (m1902a == 0) {
                Object byClass = uniPacket2.getByClass("resp", new C3033eu());
                if (byClass != null && atomicReference != null) {
                    atomicReference.set((C3033eu) byClass);
                }
                return 0;
            }
            return m1902a;
        } catch (abn e) {
            return -8;
        }
    }

    /* renamed from: a */
    public static int m11398a(Context context, String str, AtomicReference<C2861dh> atomicReference, ArrayList<C2862di> arrayList) {
        if (arrayList == null) {
            return -6;
        }
        try {
            UniPacket uniPacket = new UniPacket(true);
            UniPacket uniPacket2 = new UniPacket(true);
            UniPacket uniPacket3 = new UniPacket(true);
            m11407a(9, uniPacket, uniPacket2);
            uniPacket.put(C3749vc.PHONE_TYPE, C3752vd.m1899lh());
            uniPacket.put(C3749vc.f3691JI, C3752vd.m1905T(context));
            uniPacket.put("request", str);
            int m1902a = C3752vd.m1902a(context, uniPacket, uniPacket2, false);
            if (m1902a == 0) {
                Object byClass = uniPacket2.getByClass("serverinfo", new C2861dh());
                if (byClass != null) {
                    atomicReference.set((C2861dh) byClass);
                }
                int m1902a2 = C3752vd.m1902a(context, uniPacket, uniPacket3, false);
                if (m1902a2 == 0) {
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(new C2862di());
                    uniPacket3.setEncodeName("utf-8");
                    ArrayList arrayList3 = (ArrayList) uniPacket3.getByClass("softs", arrayList2);
                    if (!C3942yy.m1352c(arrayList3)) {
                        arrayList.clear();
                        arrayList.addAll(arrayList3);
                    }
                    return 0;
                }
                return m1902a2;
            }
            return m1902a;
        } catch (Exception e) {
            return -3000;
        }
    }

    /* renamed from: a */
    public static int m11397a(Context context, ArrayList<C2859df> arrayList, ArrayList<C2858de> arrayList2) {
        if (arrayList2 == null) {
            return -6;
        }
        try {
            UniPacket uniPacket = new UniPacket(true);
            UniPacket uniPacket2 = new UniPacket(true);
            m11407a(10, uniPacket, uniPacket2);
            uniPacket.put(C3749vc.PHONE_TYPE, C3752vd.m1899lh());
            uniPacket.put(C3749vc.f3691JI, C3752vd.m1905T(context));
            uniPacket.put("vecsoftkey", arrayList);
            int m1902a = C3752vd.m1902a(context, uniPacket, uniPacket2, false);
            if (m1902a == 0) {
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(new C2858de());
                ArrayList arrayList4 = (ArrayList) uniPacket2.getByClass("vecsoftinfo", arrayList3);
                arrayList2.clear();
                if (!C3942yy.m1352c(arrayList4)) {
                    arrayList2.clear();
                    arrayList2.addAll(arrayList4);
                }
                return 0;
            }
            return m1902a;
        } catch (Exception e) {
            return -3000;
        }
    }

    /* renamed from: a */
    public static int m11403a(Context context, C3004ds c3004ds) {
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        m11407a(12, uniPacket, uniPacket2);
        uniPacket.put(C3749vc.PHONE_TYPE, C3752vd.m1899lh());
        try {
            uniPacket.put(C3749vc.f3691JI, C3752vd.m1905T(context));
            uniPacket.put("downinfo", c3004ds);
            int m1902a = C3752vd.m1902a(context, uniPacket, uniPacket2, false);
            if (m1902a != 0) {
                return m1902a;
            }
            return 0;
        } catch (abn e) {
            return -8;
        }
    }

    /* renamed from: a */
    public static int m11405a(Context context, C2508bm c2508bm, AtomicReference<C2851cy> atomicReference) {
        try {
            UniPacket uniPacket = new UniPacket(true);
            UniPacket uniPacket2 = new UniPacket(true);
            m11407a(8, uniPacket, uniPacket2);
            C2856dc m1951Q = C3736ux.m1951Q(true);
            uniPacket.put(C3749vc.PHONE_TYPE, C3752vd.m1899lh());
            uniPacket.put(C3749vc.f3691JI, C3752vd.m1905T(context));
            uniPacket.put(C3749vc.f3710Kb, m1951Q);
            uniPacket.put("req", c2508bm);
            int m1902a = C3752vd.m1902a(context, uniPacket, uniPacket2, false);
            if (m1902a == 0) {
                Object byClass = uniPacket2.getByClass("resp", new C2851cy());
                if (byClass != null && atomicReference != null) {
                    atomicReference.set((C2851cy) byClass);
                }
                return 0;
            }
            return m1902a;
        } catch (Exception e) {
            return -3000;
        }
    }

    /* renamed from: aR */
    public static C2475bk m11396aR(Context context) {
        return m11392g(context, false);
    }

    /* renamed from: g */
    public static C2475bk m11392g(Context context, boolean z) {
        if (z) {
            return m11395aS(context);
        }
        UniPacket uniPacket = new UniPacket(true);
        UniPacket uniPacket2 = new UniPacket(true);
        C2367bj c2367bj = new C2367bj();
        c2367bj.f1692ko = Build.MODEL;
        c2367bj.f1693kp = Build.BRAND;
        c2367bj.f1694ks = Build.FINGERPRINT;
        String[] split = aav.m12921dI().split(" ");
        String str = "-1";
        if (split != null && split.length > 2) {
            str = split[2];
        }
        c2367bj.f1695kt = str;
        c2367bj.f1696ku = C3752vd.m1899lh();
        m11407a(15, uniPacket, uniPacket2);
        try {
            uniPacket.put("user", C3752vd.m1905T(context));
            uniPacket.put("req", c2367bj);
            if (C3752vd.m1902a(context, uniPacket, uniPacket2, false) != 0) {
                return m11395aS(context);
            }
            Object byClass = uniPacket2.getByClass("resp", new C2475bk());
            if (byClass != null) {
                C2475bk c2475bk = (C2475bk) byClass;
                m11406a(context, c2475bk);
                return c2475bk;
            }
            return m11395aS(context);
        } catch (abn e) {
            return m11395aS(context);
        }
    }

    /* renamed from: a */
    private static void m11406a(Context context, C2475bk c2475bk) {
        File file = new File(context.getFilesDir(), "adapter_rank.json");
        file.delete();
        if (c2475bk != null && c2475bk.f1707kw != null && c2475bk.f1708kx != null) {
            C2295bi c2295bi = c2475bk.f1707kw.f2420mS;
            C2701cc c2701cc = c2475bk.f1707kw.f2421mT;
            if (c2295bi != null && c2701cc != null) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    JSONObject jSONObject2 = new JSONObject();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("model", c2295bi.f1680ko);
                    jSONObject3.put("brand", c2295bi.f1681kp);
                    jSONObject3.put("adapterNum", c2295bi.f1682kq);
                    jSONObject3.put("rank", c2295bi.f1683kr);
                    jSONObject2.put("rankItem", jSONObject3);
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("succDay", c2701cc.f2245lx);
                    jSONObject4.put("platform", c2701cc.f2244iI);
                    jSONObject2.put("dateInfo", jSONObject4);
                    jSONObject.put("selfRankItem", jSONObject2);
                    JSONArray jSONArray = new JSONArray();
                    for (int i = 0; i < c2475bk.f1708kx.size(); i++) {
                        C2295bi c2295bi2 = c2475bk.f1708kx.get(i);
                        JSONObject jSONObject5 = new JSONObject();
                        jSONObject5.put("model", c2295bi2.f1680ko);
                        jSONObject5.put("brand", c2295bi2.f1681kp);
                        jSONObject5.put("adapterNum", c2295bi2.f1682kq);
                        jSONObject5.put("rank", c2295bi2.f1683kr);
                        jSONArray.put(i, jSONObject5);
                    }
                    jSONObject.put("rankItemList", jSONArray);
                    bbl.m7808a(file, jSONObject.toString());
                } catch (Exception e) {
                    e.printStackTrace();
                    file.delete();
                }
            }
        }
    }

    /* renamed from: aS */
    private static C2475bk m11395aS(Context context) {
        return m11393d(context, new File(context.getFilesDir(), "adapter_rank.json"));
    }

    /* renamed from: d */
    private static C2475bk m11393d(Context context, File file) {
        if (file == null || !file.exists()) {
            return null;
        }
        String m2361cA = C3563rs.m2361cA(file.getAbsolutePath());
        if (m2361cA == null || m2361cA.trim().length() == 0) {
            return null;
        }
        C2475bk c2475bk = new C2475bk();
        try {
            JSONObject jSONObject = new JSONObject(m2361cA);
            JSONObject jSONObject2 = jSONObject.getJSONObject("selfRankItem");
            JSONObject jSONObject3 = jSONObject2.getJSONObject("rankItem");
            JSONObject jSONObject4 = jSONObject2.getJSONObject("dateInfo");
            C2855db c2855db = new C2855db();
            C2295bi c2295bi = new C2295bi();
            c2295bi.f1680ko = jSONObject3.getString("model");
            c2295bi.f1681kp = jSONObject3.getString("brand");
            c2295bi.f1682kq = jSONObject3.getLong("adapterNum");
            c2295bi.f1683kr = jSONObject3.getLong("rank");
            c2855db.f2420mS = c2295bi;
            C2701cc c2701cc = new C2701cc();
            c2701cc.f2245lx = jSONObject4.getInt("succDay");
            c2701cc.f2244iI = jSONObject4.getInt("platform");
            c2855db.f2421mT = c2701cc;
            c2475bk.f1707kw = c2855db;
            ArrayList<C2295bi> arrayList = new ArrayList<>();
            JSONArray jSONArray = jSONObject.getJSONArray("rankItemList");
            for (int i = 0; i < jSONArray.length(); i++) {
                C2295bi c2295bi2 = new C2295bi();
                JSONObject jSONObject5 = jSONArray.getJSONObject(i);
                c2295bi2.f1680ko = jSONObject5.getString("model");
                c2295bi2.f1681kp = jSONObject5.getString("brand");
                c2295bi2.f1682kq = jSONObject5.getLong("adapterNum");
                c2295bi2.f1683kr = jSONObject5.getLong("rank");
                arrayList.add(c2295bi2);
            }
            c2475bk.f1708kx = arrayList;
            return c2475bk;
        } catch (Exception e) {
            e.printStackTrace();
            file.delete();
            return null;
        }
    }
}
