package com.kingroot.kinguser;

import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.p019qq.taf.jce.JceStruct;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import tmsdk.common.TMSDKContext;
/* loaded from: classes.dex */
public class awm {
    public static String getPath() {
        return TMSDKContext.akS().getFilesDir().getAbsolutePath() + File.separator + "d_163";
    }

    /* renamed from: SX */
    public static synchronized void m8632SX() {
        boolean z;
        JSONArray jSONArray;
        boolean z2;
        synchronized (awm.class) {
            try {
                awi.m8651cl(System.currentTimeMillis() / 1000);
                Map<Integer, Long> m8630SZ = m8630SZ();
                if (!m8630SZ.isEmpty()) {
                    ArrayList<String> m8639jL = awj.m8639jL(getPath());
                    if (m8639jL.size() > 0) {
                        z = false;
                        jSONArray = new JSONArray(m8639jL.get(0));
                    } else {
                        z = true;
                        jSONArray = new JSONArray();
                    }
                    boolean m8643SU = awj.m8643SU();
                    if (awi.m8657SP() > 0) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    for (Integer num : m8630SZ.keySet()) {
                        int intValue = num.intValue();
                        long longValue = m8630SZ.get(num).longValue();
                        int i = 0;
                        if (!z) {
                            int i2 = 0;
                            while (true) {
                                if (i2 >= jSONArray.length()) {
                                    i = i2;
                                    break;
                                }
                                JSONObject jSONObject = (JSONObject) jSONArray.get(i2);
                                if (jSONObject.getInt("uid") != intValue) {
                                    i2++;
                                } else {
                                    long j = jSONObject.getLong("total_traffic");
                                    long j2 = jSONObject.getLong("curr_traffic");
                                    jSONObject.put("total_traffic", longValue);
                                    if (m8643SU) {
                                        jSONObject.put("curr_traffic", j2 + longValue);
                                        i = i2;
                                    } else {
                                        jSONObject.put("curr_traffic", (j2 + longValue) - j);
                                        i = i2;
                                    }
                                }
                            }
                        }
                        if (z || i >= jSONArray.length()) {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("uid", intValue);
                            jSONObject2.put("total_traffic", longValue);
                            if (z2) {
                                jSONObject2.put("curr_traffic", 0);
                            } else {
                                jSONObject2.put("curr_traffic", longValue);
                            }
                            jSONArray.put(jSONObject2);
                        }
                    }
                    if (jSONArray.length() > 0) {
                        awj.m8640f(jSONArray.toString(), getPath(), 163);
                    }
                }
            } catch (Throwable th) {
            }
        }
    }

    /* renamed from: SY */
    public static synchronized void m8631SY() {
        boolean z;
        synchronized (awm.class) {
            try {
                m8632SX();
                ArrayList<String> m8639jL = awj.m8639jL(getPath());
                if (m8639jL == null || m8639jL.isEmpty()) {
                    awj.m8641f(163, 1002, "");
                } else {
                    JSONArray jSONArray = new JSONArray(m8639jL.get(0));
                    final JSONArray jSONArray2 = new JSONArray();
                    if (jSONArray.length() <= 0) {
                        awj.m8641f(163, 1002, "");
                    } else {
                        List<ApplicationInfo> installedApplications = C3952zh.m1312pq().getInstalledApplications(0);
                        if (installedApplications == null || installedApplications.size() <= 0) {
                            awj.m8641f(163, 1001, "");
                        } else {
                            C3235k c3235k = new C3235k();
                            c3235k.f2922ev = 163;
                            c3235k.f2923ew = new ArrayList<>();
                            for (int i = 0; i < jSONArray.length(); i++) {
                                try {
                                    JSONObject jSONObject = (JSONObject) jSONArray.get(i);
                                    int i2 = jSONObject.getInt("uid");
                                    long j = jSONObject.getLong("curr_traffic");
                                    String str = "";
                                    Iterator<ApplicationInfo> it = installedApplications.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            z = false;
                                            break;
                                        }
                                        ApplicationInfo next = it.next();
                                        if (next.uid == i2) {
                                            str = next.packageName;
                                            z = (next.flags & 1) != 0;
                                        }
                                    }
                                    if (!TextUtils.isEmpty(str)) {
                                        jSONObject.put("curr_traffic", 0);
                                        if (j > 0) {
                                            jSONArray2.put(jSONObject);
                                            C3267l c3267l = new C3267l();
                                            c3267l.f2988ey = new HashMap();
                                            c3267l.f2988ey.put(8, String.valueOf(System.currentTimeMillis()));
                                            c3267l.f2988ey.put(9, String.valueOf(j));
                                            c3267l.f2988ey.put(10, str);
                                            c3267l.f2988ey.put(11, z ? "1" : "0");
                                            c3235k.f2923ew.add(c3267l);
                                        }
                                    }
                                } catch (Throwable th) {
                                }
                            }
                            cav.akt().m5033a(4060, c3235k, null, new cat() { // from class: com.kingroot.kinguser.awm.1
                                @Override // com.kingroot.kinguser.cat
                                /* renamed from: a */
                                public void mo2689a(int i3, int i4, int i5, int i6, JceStruct jceStruct) {
                                    if (i5 == 0 && i6 == 0) {
                                        awj.m8640f(jSONArray2.toString(), awm.getPath(), 163);
                                        awi.m8650cm(System.currentTimeMillis() / 1000);
                                    }
                                }
                            });
                        }
                    }
                }
            } catch (Throwable th2) {
            }
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: SZ */
    private static synchronized java.util.Map<java.lang.Integer, java.lang.Long> m8630SZ() {
        /*
            Method dump skipped, instructions count: 601
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.awm.m8630SZ():java.util.Map");
    }
}
