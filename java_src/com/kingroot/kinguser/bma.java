package com.kingroot.kinguser;

import android.text.TextUtils;
import cloudsdk.ext.p008kr.RootConst;
import com.kingroot.loader.common.KlConst;
import com.kingx.cloudsdk.C4047s;
import com.kingx.cloudsdk.C4048t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class bma {

    /* renamed from: uT */
    private static String f1742uT = KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR;

    /* renamed from: uU */
    private static String f1743uU = "id";

    /* renamed from: uV */
    private static String f1744uV = RootConst.KEY_PROGRESS_COUNT;
    private static String bBa = "time";

    /* renamed from: ks */
    private static String f1741ks = "result";

    /* renamed from: uX */
    private static String f1745uX = "extend";

    /* renamed from: fr */
    private static String f1740fr = "source";
    private static String bBb = "filterIdList";

    public static synchronized ArrayList<C4048t> afE() {
        ArrayList<C4048t> arrayList;
        String value;
        boolean z = true;
        synchronized (bma.class) {
            ArrayList<C4048t> arrayList2 = new ArrayList<>();
            Map<String, String> afH = bmb.afF().afH();
            if (afH != null && afH.size() != 0) {
                z = false;
            }
            if (z) {
                arrayList = arrayList2;
            } else {
                for (Map.Entry<String, String> entry : afH.entrySet()) {
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
                            ArrayList<C4047s> arrayList3 = new ArrayList<>();
                            try {
                                JSONArray jSONArray = new JSONArray(value);
                                for (int i = 0; i < jSONArray.length(); i++) {
                                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                                    C4047s c4047s = new C4047s();
                                    c4047s.f4302id = jSONObject.getInt(f1743uU);
                                    c4047s.count = jSONObject.optInt(f1744uV);
                                    c4047s.time = jSONObject.getLong(bBa);
                                    c4047s.f4298cd = jSONObject.optInt(f1741ks);
                                    c4047s.f4299ce = jSONObject.optString(f1745uX, "");
                                    c4047s.f4300cf = jSONObject.optString(f1740fr, "");
                                    c4047s.f4301cg = m6416aO(jSONObject.optString(bBb, ""), ",");
                                    arrayList3.add(c4047s);
                                }
                                C4048t c4048t = new C4048t();
                                Integer[] m6412mj = m6412mj(key);
                                c4048t.f4305id = m6412mj[0].intValue();
                                c4048t.version = m6412mj[1].intValue();
                                c4048t.f4303ci = arrayList3;
                                arrayList2.add(c4048t);
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

    /* renamed from: a */
    public static synchronized void m6417a(List<C4048t> list) {
        synchronized (bma.class) {
            for (C4048t c4048t : list) {
                bmb.afF().m6411aP(m6415ao(c4048t.f4305id, c4048t.version), "");
            }
        }
    }

    /* renamed from: a */
    public static void m6418a(int i, int i2, C4047s c4047s) {
        m6414b(i, i2, c4047s.f4302id, c4047s.f4298cd, c4047s.f4299ce, c4047s.f4300cf, c4047s.f4301cg);
    }

    /* renamed from: b */
    private static synchronized void m6414b(int i, int i2, int i3, int i4, String str, String str2, ArrayList<Long> arrayList) {
        JSONArray jSONArray;
        synchronized (bma.class) {
            String m6310mn = bmu.m6310mn(str);
            String m6310mn2 = bmu.m6310mn(str2);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
            }
            long currentTimeMillis = System.currentTimeMillis();
            HashMap hashMap = new HashMap();
            hashMap.put(f1743uU, String.valueOf(i3));
            hashMap.put(bBa, String.valueOf(currentTimeMillis));
            hashMap.put(f1744uV, "1");
            hashMap.put(f1741ks, String.valueOf(i4));
            hashMap.put(f1745uX, m6310mn);
            hashMap.put(f1740fr, m6310mn2);
            if (!bmu.m6333a(arrayList)) {
                String m6413i = m6413i(arrayList, ",");
                if (!TextUtils.isEmpty(m6413i)) {
                    hashMap.put(bBb, m6413i);
                }
            }
            JSONObject jSONObject = new JSONObject(hashMap);
            String m6415ao = m6415ao(i, i2);
            String m6410l = bmb.afF().m6410l(m6415ao);
            if (TextUtils.isEmpty(m6410l)) {
                jSONArray = new JSONArray();
                jSONArray.put(jSONObject);
            } else {
                try {
                    jSONArray = new JSONArray(m6410l);
                    jSONArray.put(jSONObject);
                } catch (JSONException e) {
                }
            }
            bmb.afF().m6411aP(m6415ao, jSONArray.toString());
        }
    }

    /* renamed from: aO */
    private static ArrayList<Long> m6416aO(String str, String str2) {
        String[] split;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || (split = str.split(str2)) == null || split.length <= 0) {
            return null;
        }
        ArrayList<Long> arrayList = new ArrayList<>();
        for (String str3 : split) {
            try {
                arrayList.add(Long.valueOf(Long.parseLong(str3)));
            } catch (NumberFormatException e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    /* renamed from: i */
    private static String m6413i(List<Long> list, String str) {
        if (bmu.m6333a(list) || TextUtils.isEmpty(str)) {
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

    /* renamed from: mj */
    private static Integer[] m6412mj(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split(f1742uT);
        Integer[] numArr = new Integer[split.length];
        for (int i = 0; i < split.length; i++) {
            numArr[i] = Integer.valueOf(Integer.parseInt(split[i]));
        }
        return numArr;
    }

    /* renamed from: ao */
    private static String m6415ao(int i, int i2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(i).append(f1742uT);
        stringBuffer.append(i2);
        return stringBuffer.toString();
    }
}
