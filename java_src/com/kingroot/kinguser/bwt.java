package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
import com.p019qq.taf.jce.JceInputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class bwt {
    private static final bzc<bwt> bRb = new bzc<bwt>() { // from class: com.kingroot.kinguser.bwt.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.bzc
        /* renamed from: aiZ */
        public bwt create() {
            return new bwt();
        }
    };
    private boolean bSF = false;
    private Context mContext;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bwt$a */
    /* loaded from: classes.dex */
    public static class C2654a {
        public byi bSH;
        public List<String> bSI;

        private C2654a() {
        }
    }

    public static bwt aiV() {
        return bRb.get();
    }

    public void init(Context context) {
        this.mContext = context;
        this.bSF = true;
    }

    public boolean aiW() {
        return this.bSF;
    }

    /* renamed from: b */
    public void m5285b(int i, int i2, byi byiVar) {
        byte[] m6230c = bnk.m6230c(bnj.compress(byiVar.toByteArray()), bnk.m6228pL());
        if (m6230c != null) {
            String m5287au = m5287au(i, i2);
            if (!TextUtils.isEmpty(m5287au)) {
                byy.m5165c(m5287au, m6230c);
                String m5288at = m5288at(i, i2);
                if (!TextUtils.isEmpty(m5288at)) {
                    new File(m5288at).delete();
                }
            }
        }
    }

    /* renamed from: at */
    private String m5288at(int i, int i2) {
        File dir;
        File[] listFiles;
        String m5286av = m5286av(i, i2);
        if (this.mContext.getDir("turingmm", 0) == null) {
            return "";
        }
        File file = new File(dir.getAbsolutePath() + File.separator + "1");
        if (!file.exists() || (listFiles = file.listFiles()) == null) {
            return "";
        }
        ArrayList<File> arrayList = new ArrayList();
        for (File file2 : listFiles) {
            if (file2.getName().startsWith(m5286av)) {
                arrayList.add(file2);
            }
        }
        if (arrayList.size() <= 5) {
            return "";
        }
        ArrayList arrayList2 = new ArrayList();
        for (File file3 : arrayList) {
            String[] split = file3.getName().split(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
            if (split.length == 2 && split[0].equals(m5286av)) {
                arrayList2.add(Long.valueOf(Long.parseLong(split[1])));
            }
        }
        if (arrayList2.size() <= 5) {
            return "";
        }
        Collections.sort(arrayList2);
        return file.getAbsolutePath() + File.separator + m5286av + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + arrayList2.get(0);
    }

    private Map<String, byi> aiX() {
        File dir;
        File[] listFiles;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (this.mContext.getDir("turingmm", 0) != null) {
            File file = new File(dir.getAbsolutePath() + File.separator + "1");
            if (file.exists() && (listFiles = file.listFiles()) != null) {
                Arrays.sort(listFiles, new Comparator<File>() { // from class: com.kingroot.kinguser.bwt.2
                    @Override // java.util.Comparator
                    /* renamed from: e */
                    public int compare(File file2, File file3) {
                        return (int) (bwt.m5290M(file3) - bwt.m5290M(file2));
                    }
                });
                for (File file2 : listFiles) {
                    try {
                        linkedHashMap.put(file2.getAbsolutePath(), m5282nv(file2.getAbsolutePath()));
                    } catch (Throwable th) {
                        file2.deleteOnExit();
                    }
                }
            }
        }
        return linkedHashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M */
    public static long m5290M(File file) {
        String[] split = file.getName().split(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
        if (split.length < 2) {
            return 0L;
        }
        try {
            return Long.valueOf(Long.parseLong(split[1])).longValue();
        } catch (Throwable th) {
            return 0L;
        }
    }

    public Map<byi, List<String>> aiY() {
        Map<String, byi> aiX = aiX();
        HashMap hashMap = new HashMap();
        if (aiX.size() != 0) {
            C2654a m5283b = m5283b(aiX, 0);
            if (m5283b != null) {
                hashMap.put(m5283b.bSH, m5283b.bSI);
            }
            C2654a m5283b2 = m5283b(aiX, 1);
            if (m5283b2 != null) {
                hashMap.put(m5283b2.bSH, m5283b2.bSI);
            }
            C2654a m5283b3 = m5283b(aiX, 2);
            if (m5283b3 != null) {
                hashMap.put(m5283b3.bSH, m5283b3.bSI);
            }
        }
        return hashMap;
    }

    /* renamed from: b */
    private C2654a m5283b(Map<String, byi> map, int i) {
        if (map == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        byi byiVar = null;
        for (String str : map.keySet()) {
            byi byiVar2 = map.get(str);
            if (byiVar2 != null && byiVar2.bQZ == i) {
                arrayList.add(str);
                if (byiVar == null) {
                    byiVar = byiVar2;
                } else if (m5284b(byiVar) < 120) {
                    byiVar.bTY.addAll(byiVar2.bTY);
                }
            }
        }
        if (byiVar != null) {
            C2654a c2654a = new C2654a();
            c2654a.bSH = byiVar;
            c2654a.bSI = arrayList;
            return c2654a;
        }
        return null;
    }

    /* renamed from: b */
    private static int m5284b(byi byiVar) {
        ArrayList<byr> arrayList;
        if (byiVar == null || (arrayList = byiVar.bTY) == null || arrayList.size() == 0) {
            return 0;
        }
        Iterator<byr> it = arrayList.iterator();
        int i = 0;
        while (it.hasNext()) {
            ArrayList<byt> arrayList2 = it.next().bUJ;
            if (arrayList2 != null) {
                Iterator<byt> it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    Map<Integer, ArrayList<bys>> map = it2.next().bUQ;
                    if (map != null && map.containsKey(0)) {
                        i++;
                    }
                }
            }
        }
        return i;
    }

    /* renamed from: nv */
    private byi m5282nv(String str) {
        byte[] m6234V = bnj.m6234V(bnk.m6229d(byy.readFile(str), bnk.m6228pL()));
        byi byiVar = new byi();
        byiVar.readFrom(new JceInputStream(m6234V));
        return byiVar;
    }

    /* renamed from: au */
    private String m5287au(int i, int i2) {
        File dir = this.mContext.getDir("turingmm", 0);
        if (dir == null) {
            return "";
        }
        File file = new File(dir.getAbsolutePath() + File.separator + "1");
        if (!file.exists() && !file.mkdirs()) {
            return "";
        }
        return file.getAbsolutePath() + File.separator + m5286av(i, i2) + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + System.currentTimeMillis();
    }

    /* renamed from: av */
    private String m5286av(int i, int i2) {
        return i + "00" + i2;
    }
}
