package com.kingroot.kinguser;

import android.content.Context;
import android.support.p004v4.view.PointerIconCompat;
import android.util.SparseArray;
import cloudsdk.CloudSdk;
import cloudsdk.ILoadResult;
import cloudsdk.KError;
import com.kingroot.kinguser.blt;
import com.kingx.cloudsdk.C4016aq;
import com.kingx.cloudsdk.C4032d;
import com.kingx.cloudsdk.C4035g;
import com.kingx.cloudsdk.C4040l;
import com.kingx.cloudsdk.C4042n;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* loaded from: classes.dex */
public class blz {
    private static volatile blz bAV;
    private final SparseArray<C4016aq> bAW = new SparseArray<>();
    private final Object bAX = new Object();
    private final Object bAY = new Object();
    private Context bAZ = CloudSdk.getInstance().getContext();

    private blz() {
        m6426cN();
    }

    public static blz afA() {
        if (bAV == null) {
            synchronized (blz.class) {
                if (bAV == null) {
                    bAV = new blz();
                }
            }
        }
        return bAV;
    }

    /* renamed from: x */
    private boolean m6421x(int i, boolean z) {
        String str;
        boolean z2;
        boolean z3 = true;
        boolean z4 = false;
        synchronized (this.bAY) {
            C4016aq m6424jL = m6424jL(i);
            if (m6424jL != null) {
                int i2 = m6424jL.f4143xD;
                byte m6326bJ = bmu.m6326bJ(CloudSdk.getInstance().getContext());
                if (!z && m6326bJ != 0) {
                    if (!((i2 & 16) > 0)) {
                        z3 = false;
                    }
                }
                if (z3) {
                    bly blyVar = new bly(m6424jL);
                    blx blxVar = new blx(blyVar, CloudSdk.getInstance().getContext());
                    bmu.m6339a(m6424jL, 1, false);
                    try {
                        boolean afy = blxVar.afy();
                        if (!blxVar.m6438mi(blyVar.bAE)) {
                            str = "verify fail.";
                            z2 = true;
                        } else {
                            z2 = false;
                            z4 = afy;
                            str = "";
                        }
                    } catch (Exception e) {
                        str = "down_e_" + e.toString();
                        z2 = true;
                    }
                    bmu.m6338a(m6424jL, z4, 1, false, str);
                    if (!z2) {
                        m6424jL.bAI = 0;
                    } else {
                        m6424jL.bAI++;
                        File file = new File(blyVar.bAE);
                        if (file.exists()) {
                            file.delete();
                        }
                    }
                    m6430b(m6424jL);
                }
            }
        }
        return z4;
    }

    /* renamed from: a */
    public final ILoadResult m6434a(bme bmeVar, boolean z) {
        boolean z2;
        if (bmeVar == null) {
            return m6425g(1, -5, "插件信息异常");
        }
        int i = bmeVar.bBq;
        boolean z3 = m6424jL(i) != null ? m6437D() : true;
        int afC = z3 ? afC() : 0;
        if (z3 && afC != 0 && afC != 1) {
            return m6425g(1, afC, "拉取生效单失败");
        }
        C4016aq m6424jL = m6424jL(i);
        if (m6424jL == null) {
            bmeVar.bAL = 0L;
            return m6425g(1, -9, "拉取生效单失败");
        }
        bmeVar.bAL = m6424jL.bAL;
        if (i == 8101 && m6424jL.versionCode <= bmg.f1752vC) {
            if (new File(bmeVar.bBu).exists()) {
                z2 = !m6436a(bmeVar) || bmg.f1752vC > bmeVar.versionCode;
            } else {
                z2 = true;
            }
            if (z2) {
                return m6425g(1, 2, "需要释放内置插件");
            }
            return m6425g(0, 1, "插件无更新无需下载");
        } else if (m6435a(bmeVar, m6424jL)) {
            return m6425g(0, 1, "插件无更新无需下载");
        } else {
            if (m6428c(i, z, 2)) {
                if (m6436a(bmeVar)) {
                    bmeVar.f1751xu = m6424jL.f4144xu;
                    return m6425g(0, 0, "插件下载成功");
                }
                return m6425g(1, -6, "解析插件内部信息异常");
            }
            return m6425g(1, -3, "插件下载失败");
        }
    }

    /* renamed from: D */
    private static boolean m6437D() {
        return bmu.m6323d(bln.afn().afo(), System.currentTimeMillis(), 86400000L);
    }

    /* renamed from: a */
    private boolean m6435a(bme bmeVar, C4016aq c4016aq) {
        boolean z = true;
        File file = new File(bmeVar.bBu);
        if (file.exists()) {
            if (m6436a(bmeVar)) {
                if (c4016aq.versionCode >= bmeVar.versionCode) {
                    if (c4016aq.versionCode == bmeVar.versionCode) {
                        String lowerCase = bmu.m6325c(file).toLowerCase(Locale.US);
                        if (lowerCase.equals(c4016aq.f4144xu)) {
                            bmeVar.f1751xu = lowerCase;
                        }
                    }
                }
                return z;
            }
            z = false;
            return z;
        }
        return false;
    }

    /* renamed from: c */
    private boolean m6428c(int i, boolean z, int i2) {
        boolean z2;
        do {
            i2--;
            if (m6421x(i, z)) {
                z2 = true;
                i2 = 0;
                continue;
            } else {
                z2 = false;
                continue;
            }
        } while (i2 != 0);
        m6433a(m6424jL(i));
        return z2;
    }

    /* renamed from: a */
    private static boolean m6436a(bme bmeVar) {
        return bmu.m6319f(bmeVar) == 0;
    }

    public final ILoadResult afB() {
        if (!m6437D()) {
            return m6425g(1, -2, "还没到拉单时间");
        }
        int afC = afC();
        if (afC != 0) {
            if (afC == 1) {
                return m6425g(0, afC, "拉取生效但成功但不需要处理");
            }
            return m6425g(1, afC, "拉取生效单失败");
        }
        ArrayList<C4016aq> arrayList = new ArrayList<>();
        if (!m6423v(arrayList)) {
            return m6425g(0, 1, "拉取生效但成功但不需要处理");
        }
        return m6422w(arrayList);
    }

    /* renamed from: v */
    private boolean m6423v(ArrayList<C4016aq> arrayList) {
        synchronized (this.bAW) {
            int size = this.bAW.size();
            for (int i = 0; i < size; i++) {
                int keyAt = this.bAW.keyAt(i);
                C4016aq c4016aq = this.bAW.get(keyAt);
                if (keyAt != 8101 || c4016aq.versionCode > bmg.f1752vC) {
                    bme bmeVar = new bme();
                    bmeVar.bBu = c4016aq.f4146xy;
                    if (c4016aq.f4140bZ == 2 && !m6435a(bmeVar, c4016aq)) {
                        arrayList.add(c4016aq);
                    }
                }
            }
        }
        return !arrayList.isEmpty();
    }

    /* renamed from: w */
    private ILoadResult m6422w(ArrayList<C4016aq> arrayList) {
        String str;
        int i;
        int i2;
        Iterator<C4016aq> it = arrayList.iterator();
        String str2 = "插件下载成功";
        int i3 = 0;
        int i4 = 0;
        while (it.hasNext()) {
            C4016aq next = it.next();
            int i5 = next.f4138aH;
            int i6 = next.f4138aH;
            if (next.bAI > 3) {
                i3 = -4;
                i4 = 1;
                str2 = "标志时间内下载失败次数超出限制";
            } else {
                if (m6428c(i5, false, 1)) {
                    str = str2;
                    i = i3;
                    i2 = i4;
                } else {
                    str = "插件下载失败";
                    i = -3;
                    i2 = -3;
                }
                i4 = i2;
                i3 = i;
                str2 = str;
            }
        }
        return m6425g(i4, i3, str2);
    }

    private int afC() {
        ArrayList<C4040l> arrayList = new ArrayList<>();
        int m6420x = m6420x(arrayList);
        if (m6420x == 0) {
            if (arrayList.isEmpty()) {
                return 1;
            }
            return m6432a(arrayList, bln.afn().afp());
        }
        return m6420x;
    }

    /* renamed from: x */
    private int m6420x(ArrayList<C4040l> arrayList) {
        synchronized (this.bAX) {
            if (-1 == bmu.m6326bJ(this.bAZ)) {
                return PointerIconCompat.TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW;
            }
            ArrayList<C4035g> arrayList2 = new ArrayList<>();
            m6419y(arrayList2);
            C4032d c4032d = new C4032d();
            c4032d.f4225aC = blo.afs();
            c4032d.f4226aD = blo.aft();
            c4032d.f4227aE = arrayList2;
            c4032d.f4228aF = bln.afn().afp();
            AtomicReference atomicReference = new AtomicReference();
            if (bls.m6463a(this.bAZ, c4032d, atomicReference) != 0) {
                return -7;
            }
            C4042n c4042n = (C4042n) atomicReference.get();
            if (c4042n == null) {
                return -8;
            }
            if (c4042n.f4283bG != 0) {
                bmu.m6337a(null, 2302, String.valueOf(c4042n.f4283bG), false);
                return -1;
            }
            bln.afn().m6475b(System.currentTimeMillis());
            bln.afn().m6474c(c4042n.f4291bO);
            if (c4042n.f4280bD == null || c4042n.f4280bD.isEmpty()) {
                return 1;
            }
            Iterator<C4040l> it = c4042n.f4280bD.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            return 0;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x008b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x000b A[SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int m6432a(ArrayList<C4040l> arrayList, long j) {
        C4016aq c4016aq;
        if (arrayList == null) {
            return 1;
        }
        Iterator<C4040l> it = arrayList.iterator();
        int i = 1;
        while (it.hasNext()) {
            C4040l next = it.next();
            if (next == null) {
                return 1;
            }
            bmu.m6337a(next, 2300, null, false);
            C4016aq c4016aq2 = new C4016aq();
            c4016aq2.bAK = System.currentTimeMillis();
            c4016aq2.f4138aH = next.f4271id;
            c4016aq2.versionCode = next.version;
            c4016aq2.f4144xu = next.f4252ba;
            c4016aq2.size = next.f4253bb;
            c4016aq2.f4145xv = next.f4254bc;
            c4016aq2.size = next.f4253bb;
            c4016aq2.bAL = j;
            c4016aq2.f4139aM = next.f4246aM;
            c4016aq2.f4141bj = next.f4261bj;
            if (next.f4260bi != null && next.f4260bi.f4244aU.size() > 0) {
                String[] split = next.f4260bi.f4244aU.get(0).split("\n|\r\n");
                if (split.length > 0) {
                    c4016aq2.f4142xA = split[0];
                }
                if (split.length > 1) {
                    c4016aq2.bAJ = split[1];
                }
            }
            if (next.f4256be) {
                c4016aq2.f4140bZ = 2;
                if (next.f4257bf == 0) {
                    c4016aq2.f4143xD |= 16;
                }
            } else {
                if (next.f4267bp != null) {
                    if (next.f4247aN == 0) {
                        c4016aq2.f4143xD |= 7;
                    }
                    if (next.f4267bp.f4292bZ == 0) {
                        c4016aq2.f4140bZ = 0;
                    } else if (next.f4267bp.f4292bZ == 1) {
                        c4016aq2.f4140bZ = 1;
                    } else {
                        c4016aq = null;
                    }
                } else {
                    c4016aq = null;
                }
                if (c4016aq != null) {
                    C4016aq m6424jL = m6424jL(c4016aq.f4138aH);
                    if (m6424jL != null) {
                        if (c4016aq.versionCode >= m6424jL.versionCode) {
                            if (c4016aq.versionCode == m6424jL.versionCode) {
                                c4016aq.bAI = m6424jL.bAI;
                                bme bmeVar = new bme();
                                bmeVar.bBu = m6424jL.f4146xy;
                                if (!m6435a(bmeVar, c4016aq)) {
                                }
                            }
                        }
                    }
                    C4016aq.afz();
                    c4016aq.f4146xy = CloudSdk.getInstance().getWorkingDir() + "/modules/app" + File.separator + c4016aq.f4138aH + ".jar";
                    m6430b(c4016aq);
                    m6433a(c4016aq);
                    i = 0;
                }
            }
            c4016aq = c4016aq2;
            if (c4016aq != null) {
            }
        }
        return i;
    }

    /* renamed from: a */
    private static void m6433a(C4016aq c4016aq) {
        if (c4016aq != null) {
            HashMap hashMap = new HashMap();
            hashMap.put(C4016aq.AbstractC4018a.f4154xH, String.valueOf(c4016aq.f4138aH));
            hashMap.put(C4016aq.AbstractC4018a.f4153vp, String.valueOf(c4016aq.versionCode));
            hashMap.put(C4016aq.AbstractC4018a.bAN, c4016aq.f4144xu);
            hashMap.put(C4016aq.AbstractC4018a.bAO, String.valueOf(c4016aq.size));
            hashMap.put(C4016aq.AbstractC4018a.bAP, c4016aq.f4145xv);
            hashMap.put(C4016aq.AbstractC4018a.bAQ, String.valueOf(c4016aq.bAI));
            hashMap.put(C4016aq.AbstractC4018a.bAR, c4016aq.f4146xy);
            hashMap.put(C4016aq.AbstractC4018a.f4148sV, c4016aq.f4142xA);
            hashMap.put(C4016aq.AbstractC4018a.bAS, c4016aq.bAJ);
            hashMap.put(C4016aq.AbstractC4018a.f4149sX, String.valueOf(c4016aq.f4140bZ));
            hashMap.put(C4016aq.AbstractC4018a.f4150sY, String.valueOf(c4016aq.f4143xD));
            hashMap.put(C4016aq.AbstractC4018a.f4151sZ, String.valueOf(c4016aq.bAK));
            hashMap.put(C4016aq.AbstractC4018a.f4152ta, String.valueOf(c4016aq.bAL));
            hashMap.put(C4016aq.AbstractC4018a.bAT, String.valueOf(c4016aq.bAM));
            hashMap.put(C4016aq.AbstractC4018a.bAU, c4016aq.f4139aM);
            hashMap.put(C4016aq.AbstractC4018a.f4147ff, String.valueOf(c4016aq.f4141bj));
            JSONObject jSONObject = new JSONObject(hashMap);
            String str = CloudSdk.getInstance().getWorkingDir() + "/modules/appconf";
            File file = new File(str);
            if (!file.exists()) {
                file.mkdirs();
            }
            String str2 = str + File.separator + c4016aq.f4138aH + ".json";
            try {
                byte[] bytes = jSONObject.toString().getBytes();
                CloudSdk.getInstance().getContext();
                bmu.m6329b(bmu.m6314l(bytes), str2);
            } catch (Throwable th) {
                KError.set(1005, "存储插件单异常_exception:", th);
            }
        }
    }

    /* renamed from: a */
    private void m6431a(List<bme> list, ArrayList<C4035g> arrayList) {
        for (bme bmeVar : list) {
            C4035g c4035g = new C4035g();
            if (bmeVar != null) {
                c4035g.f4236id = bmeVar.bBq;
                c4035g.level = 10;
                c4035g.f4235aM = bmeVar.packageName;
                c4035g.version = bmeVar.versionCode;
            }
            arrayList.add(c4035g);
        }
    }

    /* renamed from: cN */
    private void m6426cN() {
        ArrayList<C4016aq> afD = afD();
        ArrayList arrayList = new ArrayList();
        Iterator<C4016aq> it = afD.iterator();
        while (it.hasNext()) {
            C4016aq next = it.next();
            arrayList.add(next);
            m6430b(next);
        }
    }

    public final ArrayList<C4016aq> afD() {
        Context context = CloudSdk.getInstance().getContext();
        ArrayList<C4016aq> arrayList = new ArrayList<>();
        File[] listFiles = new File(CloudSdk.getInstance().getWorkingDir() + "/modules/appconf").listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                C4016aq m6429b = m6429b(file.getAbsolutePath(), context);
                if (m6429b != null) {
                    arrayList.add(m6429b);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    public static C4016aq m6429b(String str, Context context) {
        C4016aq c4016aq = new C4016aq();
        JSONObject m6427c = m6427c(str, context);
        if (m6427c != null) {
            try {
                c4016aq.f4138aH = m6427c.getInt(C4016aq.AbstractC4018a.f4154xH);
                c4016aq.versionCode = m6427c.getInt(C4016aq.AbstractC4018a.f4153vp);
                c4016aq.f4144xu = m6427c.getString(C4016aq.AbstractC4018a.bAN);
                c4016aq.size = m6427c.getInt(C4016aq.AbstractC4018a.bAO);
                c4016aq.f4145xv = m6427c.getString(C4016aq.AbstractC4018a.bAP);
                c4016aq.bAI = m6427c.getInt(C4016aq.AbstractC4018a.bAQ);
                c4016aq.f4146xy = m6427c.getString(C4016aq.AbstractC4018a.bAR);
                c4016aq.f4142xA = m6427c.getString(C4016aq.AbstractC4018a.f4148sV);
                c4016aq.bAJ = m6427c.getString(C4016aq.AbstractC4018a.bAS);
                c4016aq.f4140bZ = m6427c.getInt(C4016aq.AbstractC4018a.f4149sX);
                c4016aq.f4143xD = m6427c.getInt(C4016aq.AbstractC4018a.f4150sY);
                c4016aq.bAK = m6427c.getLong(C4016aq.AbstractC4018a.f4151sZ);
                c4016aq.bAL = m6427c.getLong(C4016aq.AbstractC4018a.f4152ta);
                c4016aq.bAM = m6427c.getInt(C4016aq.AbstractC4018a.bAT);
                c4016aq.f4139aM = m6427c.getString(C4016aq.AbstractC4018a.bAU);
                c4016aq.f4141bj = m6427c.getBoolean(C4016aq.AbstractC4018a.f4147ff);
            } catch (JSONException e) {
                KError.set((int) PointerIconCompat.TYPE_CELL, "获取插件单数据异常_exception:", e);
            }
        }
        return c4016aq;
    }

    /* renamed from: c */
    private static JSONObject m6427c(String str, Context context) {
        try {
            try {
                return (JSONObject) new JSONTokener(new String(bmu.m6346S(blt.C2506a.m6451mg(str)))).nextValue();
            } catch (JSONException e) {
                KError.set((int) PointerIconCompat.TYPE_CELL, "构造插件单数据异常_exception:", e);
                return null;
            }
        } catch (Exception e2) {
            KError.set((int) PointerIconCompat.TYPE_CELL, "获取插件单内容异常_exception:", e2);
            return null;
        }
    }

    /* renamed from: y */
    private void m6419y(ArrayList<C4035g> arrayList) {
        ArrayList arrayList2 = new ArrayList();
        File[] listFiles = new File(CloudSdk.getInstance().getWorkingDir() + "/modules/app").listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                arrayList2.add(file.getAbsolutePath());
            }
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            bme bmeVar = new bme();
            bmeVar.bBu = (String) it.next();
            if (m6436a(bmeVar)) {
                arrayList3.add(bmeVar);
            }
        }
        m6431a(arrayList3, arrayList);
    }

    /* renamed from: jL */
    private C4016aq m6424jL(int i) {
        C4016aq c4016aq;
        synchronized (this.bAW) {
            c4016aq = this.bAW.get(i);
        }
        return c4016aq;
    }

    /* renamed from: b */
    private void m6430b(C4016aq c4016aq) {
        synchronized (this.bAW) {
            this.bAW.put(c4016aq.f4138aH, c4016aq);
        }
    }

    /* renamed from: g */
    private static bmh m6425g(int i, int i2, String str) {
        return new bmh(i, i2, str, null);
    }
}
