package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bgj {
    private static bgj boM = null;
    private int boN;

    private bgj() {
    }

    public static synchronized bgj abB() {
        bgj bgjVar;
        synchronized (bgj.class) {
            if (boM == null) {
                boM = new bgj();
            }
            bgjVar = boM;
        }
        return bgjVar;
    }

    public int abC() {
        if (this.boN == 0) {
            this.boN = m7112ln("cpuinfo_max_freq");
        }
        return this.boN;
    }

    /* renamed from: ln */
    private static int m7112ln(String str) {
        for (int i = 0; i < 8; i++) {
            String trim = C3563rs.m2361cA(String.format("/sys/devices/system/cpu/cpu%d/cpufreq/", Integer.valueOf(i)) + str).trim();
            if (trim != null && trim.length() > 0) {
                return Integer.valueOf(trim).intValue();
            }
        }
        return 0;
    }

    public int abD() {
        return m7112ln("scaling_cur_freq");
    }
}
