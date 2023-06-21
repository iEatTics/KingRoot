package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes.dex */
public class cfm {
    private static cge<Integer, cfm> ccX = new cge<>(50);
    public String ccK = "";
    public String ccL = "";
    public int ccM = 0;
    public String ccN = "";
    private String ccO = "";
    public long ccP = -1;
    public int errorCode = 0;
    public String bQX = "";
    public String ccQ = "";
    public String ccR = "";
    public String ccS = "";
    public boolean ccT = false;
    public boolean ccU = false;
    private long ccV = 0;
    private long ccW = 0;

    /* renamed from: J */
    public void m4464J(ArrayList<String> arrayList) {
        if (arrayList != null && arrayList.size() > 0) {
            StringBuilder sb = new StringBuilder();
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next != null) {
                    sb.append(next);
                    sb.append(";");
                }
            }
        }
    }

    /* renamed from: d */
    public void m4462d(ceu ceuVar) {
        if (ceuVar != null) {
            this.ccO = "1";
            ceuVar.mo2740a(amr());
        }
    }

    /* renamed from: e */
    public void m4461e(ceu ceuVar) {
    }

    /* renamed from: f */
    public void m4460f(ceu ceuVar) {
    }

    /* renamed from: g */
    public void m4459g(ceu ceuVar) {
    }

    /* renamed from: lo */
    public void m4458lo(int i) {
        this.ccS += String.valueOf(i) + ";";
    }

    /* renamed from: a */
    public static void m4463a(cfm cfmVar, int i) {
        if (cfmVar != null) {
            cfmVar.ccV = System.currentTimeMillis();
            ccX.put(Integer.valueOf(i), cfmVar);
        }
    }

    /* renamed from: lp */
    public static cfm m4457lp(int i) {
        cfm cfmVar = ccX.get(Integer.valueOf(i));
        if (cfmVar != null) {
            cfmVar.ccW = System.currentTimeMillis();
        }
        ccX.m4343z(Integer.valueOf(i));
        return cfmVar;
    }

    private HashMap<String, String> amr() {
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("B4", this.ccN);
        hashMap.put("B20", this.ccS);
        hashMap.put("B7", String.valueOf(this.errorCode));
        hashMap.put("B8", this.bQX);
        hashMap.put("B10", this.ccR);
        hashMap.put("B9", this.ccQ);
        hashMap.put("B6", String.valueOf(this.ccP));
        hashMap.put("B5", this.ccO);
        hashMap.put("B3", this.ccK);
        hashMap.put("B11", this.ccL);
        hashMap.put("B12", String.valueOf(this.ccM));
        hashMap.put("B21", String.valueOf(this.ccT));
        hashMap.put("B22", String.valueOf(this.ccU));
        return hashMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("|ip|" + this.ccK);
        sb.append("|port|" + this.ccL);
        sb.append("|tryTimes|" + this.ccM);
        sb.append("|apn|" + this.ccN);
        sb.append("|requestType|" + this.ccO);
        sb.append("|requestTime|" + this.ccP);
        sb.append("|errorCode|" + this.errorCode);
        sb.append("|cmdids|" + this.ccS);
        sb.append("|iplist|" + this.ccR);
        sb.append("|lastRequest|" + this.ccQ);
        sb.append("|errorDetail|" + this.bQX);
        sb.append("|isDetect|" + this.ccT);
        sb.append("|isConnect|" + this.ccU);
        return sb.toString();
    }
}
