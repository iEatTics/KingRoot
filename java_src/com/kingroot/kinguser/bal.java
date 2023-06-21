package com.kingroot.kinguser;

import android.text.TextUtils;
import cloudsdk.ext.p008kr.RootConst;
import com.kingroot.loader.common.KlConst;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
class bal {
    private static String bej = KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR;
    private static String bek = "id";
    private static String bel = RootConst.KEY_PROGRESS_COUNT;
    private static String bem = "time";
    private static String ben = "result";
    private static String beo = "extend";
    private static String bep = "source";
    private static String beq = "filterIdList";

    /* renamed from: aa */
    private static String m7913aa(int i, int i2) {
        return String.valueOf(i) + bej + i2;
    }

    /* renamed from: kk */
    private static Integer[] m7910kk(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split(bej);
        Integer[] numArr = new Integer[split.length];
        for (int i = 0; i < split.length; i++) {
            try {
                numArr[i] = Integer.valueOf(Integer.parseInt(split[i]));
            } catch (NumberFormatException e) {
                return null;
            }
        }
        return numArr;
    }

    /* renamed from: a */
    public static void m7915a(int i, int i2, C3023ek c3023ek) {
        m7916a(i, i2, c3023ek.f2601id, c3023ek.f2600gv, c3023ek.f2602pi, c3023ek.f2603pj, c3023ek.f2604pk);
    }

    /* renamed from: a */
    private static synchronized void m7916a(int i, int i2, int i3, int i4, String str, String str2, ArrayList<Long> arrayList) {
        JSONArray jSONArray;
        synchronized (bal.class) {
            String m13016dH = aab.m13016dH(str);
            String m13016dH2 = aab.m13016dH(str2);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            long currentTimeMillis = System.currentTimeMillis();
            HashMap hashMap = new HashMap();
            hashMap.put(bek, String.valueOf(i3));
            hashMap.put(bem, String.valueOf(currentTimeMillis));
            hashMap.put(bel, "1");
            hashMap.put(ben, String.valueOf(i4));
            hashMap.put(beo, m13016dH);
            hashMap.put(bep, m13016dH2);
            if (!C3947zc.m1329f(arrayList)) {
                String m7911f = m7911f(arrayList, ",");
                if (!TextUtils.isEmpty(m7911f)) {
                    hashMap.put(beq, m7911f);
                }
            }
            JSONObject jSONObject = new JSONObject(hashMap);
            String m7913aa = m7913aa(i, i2);
            String m7905kl = bam.m7909VA().m7905kl(m7913aa);
            if (TextUtils.isEmpty(m7905kl)) {
                jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
            } else {
                try {
                    jSONArray = new JSONArray(m7905kl);
                    jSONArray.put(jSONObject);
                } catch (JSONException e) {
                }
            }
            bam.m7909VA().m7906aI(m7913aa, jSONArray.toString());
        }
    }

    /* renamed from: Vz */
    public static synchronized ArrayList<C3024el> m7917Vz() {
        ArrayList<C3024el> arrayList;
        String value;
        synchronized (bal.class) {
            ArrayList<C3024el> arrayList2 = new ArrayList<>();
            Map<String, String> m7907VC = bam.m7909VA().m7907VC();
            if (C3947zc.m1328g(m7907VC)) {
                arrayList = arrayList2;
            } else {
                for (Map.Entry<String, String> entry : m7907VC.entrySet()) {
                    String key = entry.getKey();
                    if (entry.getValue() != null) {
                        if (!(entry.getValue() instanceof String)) {
                            value = String.valueOf(entry.getValue());
                        } else {
                            value = entry.getValue();
                        }
                        if (TextUtils.isEmpty(value)) {
                            continue;
                        } else {
                            ArrayList<C3023ek> arrayList3 = new ArrayList<>();
                            try {
                                JSONArray jSONArray = new JSONArray(value);
                                for (int i = 0; i < jSONArray.length(); i++) {
                                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                                    C3023ek c3023ek = new C3023ek();
                                    c3023ek.f2601id = jSONObject.getInt(bek);
                                    c3023ek.count = jSONObject.optInt(bel);
                                    c3023ek.time = jSONObject.getLong(bem);
                                    c3023ek.f2600gv = jSONObject.optInt(ben);
                                    c3023ek.f2602pi = jSONObject.optString(beo, "");
                                    c3023ek.f2603pj = jSONObject.optString(bep, "");
                                    c3023ek.f2604pk = m7914aH(jSONObject.optString(beq, ""), ",");
                                    arrayList3.add(c3023ek);
                                }
                                Integer[] m7910kk = m7910kk(key);
                                if (m7910kk != null && m7910kk.length >= 2) {
                                    C3024el c3024el = new C3024el();
                                    c3024el.f2607id = m7910kk[0].intValue();
                                    c3024el.version = m7910kk[1].intValue();
                                    c3024el.f2608pm = arrayList3;
                                    arrayList2.add(c3024el);
                                }
                            } catch (NullPointerException e) {
                                arrayList = arrayList2;
                            } catch (JSONException e2) {
                                arrayList = arrayList2;
                            }
                        }
                    }
                }
                arrayList = arrayList2;
            }
        }
        return arrayList;
    }

    /* renamed from: bK */
    public static synchronized void m7912bK(List<C3024el> list) {
        synchronized (bal.class) {
            for (C3024el c3024el : list) {
                bam.m7909VA().m7906aI(m7913aa(c3024el.f2607id, c3024el.version), "");
            }
        }
    }

    /* renamed from: f */
    private static String m7911f(List<Long> list, String str) {
        if (C3942yy.m1351d(list) || TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (Long l : list) {
            sb.append(l);
            sb.append(str);
        }
        String sb2 = sb.toString();
        if (!TextUtils.isEmpty(sb2)) {
            return sb2.substring(0, sb2.length() - 1);
        }
        return sb2;
    }

    /* renamed from: aH */
    private static ArrayList<Long> m7914aH(String str, String str2) {
        ArrayList<Long> arrayList = null;
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            String[] split = str.split(str2);
            if (split.length > 0) {
                arrayList = new ArrayList<>();
                for (String str3 : split) {
                    try {
                        arrayList.add(Long.valueOf(Long.parseLong(str3)));
                    } catch (NumberFormatException e) {
                    }
                }
            }
        }
        return arrayList;
    }
}
