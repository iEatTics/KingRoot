package com.kingroot.kinguser;

import android.content.Context;
import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
import com.p019qq.taf.jce.JceInputStream;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bya {
    private static final bzc<bya> bRb = new bzc<bya>() { // from class: com.kingroot.kinguser.bya.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.bzc
        /* renamed from: ajP */
        public bya create() {
            return new bya();
        }
    };

    bya() {
    }

    public static bya ajN() {
        return bRb.get();
    }

    /* renamed from: a */
    public void m5195a(Context context, int i, byu byuVar) {
        byte[] m6230c = bnk.m6230c(bnj.compress(byuVar.toByteArray()), bnk.m6228pL());
        if (m6230c != null) {
            String m5189p = m5189p(context, i);
            if (!TextUtils.isEmpty(m5189p)) {
                byy.m5165c(m5189p, m6230c);
                String m5190o = m5190o(context, i);
                if (!TextUtils.isEmpty(m5190o)) {
                    new File(m5190o).delete();
                }
            }
        }
    }

    /* renamed from: cm */
    public Map<byr, String> m5194cm(Context context) {
        File[] listFiles;
        File dir = context.getDir("turingmm", 0);
        HashMap hashMap = new HashMap();
        if (dir != null) {
            File file = new File(dir.getAbsolutePath() + File.separator + "2");
            if (file.exists() && (listFiles = file.listFiles()) != null) {
                for (File file2 : listFiles) {
                    byu m5192nA = m5192nA(file2.getAbsolutePath());
                    byr byrVar = new byr();
                    byrVar.bJE = m5191nB(file2.getName());
                    byrVar.action = 3;
                    byrVar.bUI = m5192nA.bUT;
                    ArrayList<byu> arrayList = new ArrayList<>();
                    arrayList.add(m5192nA);
                    byrVar.bUL = arrayList;
                    byrVar.bUJ = ajO();
                    hashMap.put(byrVar, file2.getAbsolutePath());
                }
            }
        }
        return hashMap;
    }

    private ArrayList<byt> ajO() {
        ArrayList<byt> arrayList = new ArrayList<>();
        byt bytVar = new byt();
        bytVar.bUQ = new HashMap();
        arrayList.add(bytVar);
        return arrayList;
    }

    /* renamed from: o */
    private String m5190o(Context context, int i) {
        File dir;
        File[] listFiles;
        String m5193kP = m5193kP(i);
        if (context.getDir("turingmm", 0) == null) {
            return "";
        }
        File file = new File(dir.getAbsolutePath() + File.separator + "2");
        if (!file.exists() || (listFiles = file.listFiles()) == null) {
            return "";
        }
        ArrayList<File> arrayList = new ArrayList();
        for (File file2 : listFiles) {
            if (file2.getName().startsWith(m5193kP)) {
                arrayList.add(file2);
            }
        }
        if (arrayList.size() <= 2) {
            return "";
        }
        ArrayList arrayList2 = new ArrayList();
        for (File file3 : arrayList) {
            String[] split = file3.getName().split(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
            if (split.length == 2 && split[0].equals(m5193kP)) {
                arrayList2.add(Long.valueOf(Long.parseLong(split[1])));
            }
        }
        if (arrayList2.size() <= 2) {
            return "";
        }
        Collections.sort(arrayList2);
        return file.getAbsolutePath() + File.separator + m5193kP + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + arrayList2.get(0);
    }

    /* renamed from: nA */
    private byu m5192nA(String str) {
        byte[] m6234V = bnj.m6234V(bnk.m6229d(byy.readFile(str), bnk.m6228pL()));
        byu byuVar = new byu();
        byuVar.readFrom(new JceInputStream(m6234V));
        return byuVar;
    }

    /* renamed from: p */
    private String m5189p(Context context, int i) {
        File dir = context.getDir("turingmm", 0);
        if (dir == null) {
            return "";
        }
        File file = new File(dir.getAbsolutePath() + File.separator + "2");
        if (!file.exists() && !file.mkdirs()) {
            return "";
        }
        return file.getAbsolutePath() + File.separator + m5193kP(i) + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + System.currentTimeMillis();
    }

    /* renamed from: kP */
    private String m5193kP(int i) {
        return "" + i;
    }

    /* renamed from: nB */
    private int m5191nB(String str) {
        String[] split = str.split(KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR);
        if (split.length < 2) {
            return -1;
        }
        return Integer.valueOf(split[0]).intValue();
    }
}
