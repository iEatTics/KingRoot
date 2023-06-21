package com.kingroot.kinguser;
/* loaded from: classes.dex */
public final class bnf {
    private static bnf[] bCQ;
    public static final bnf bCT;
    private int bCR;
    private String bCS;

    static {
        bnf.class.desiredAssertionStatus();
        bCQ = new bnf[20];
        new bnf(0, 0, "ESP_NONE");
        new bnf(1, 101, "ESP_Symbian_V3");
        new bnf(2, 102, "ESP_Symbian_V5");
        new bnf(3, 103, "ESP_Symbian_V2");
        new bnf(4, 104, "ESP_Symbian_3");
        bCT = new bnf(5, 201, "ESP_Android_General");
        new bnf(6, 202, "ESP_Android_Pad");
        new bnf(7, 203, "ESP_Android_HD");
        new bnf(8, 301, "ESP_Iphone_General");
        new bnf(9, 302, "ESP_Ipad");
        new bnf(10, 303, "ESP_Ipod");
        new bnf(11, 401, "ESP_Kjava_General");
        new bnf(12, 402, "ESP_NK_Kjava_General");
        new bnf(13, 501, "ESP_Server_General");
        new bnf(14, 601, "ESP_WinPhone_General");
        new bnf(15, 602, "ESP_WinPhone_Tablet");
        new bnf(16, 701, "ESP_MTK_General");
        new bnf(17, 801, "ESP_BB_General");
        new bnf(18, 901, "ESP_PC_WindowsGeneral");
        new bnf(19, 902, "ESP_END");
    }

    public final int value() {
        return this.bCR;
    }

    public final String toString() {
        return this.bCS;
    }

    private bnf(int i, int i2, String str) {
        this.bCS = new String();
        this.bCS = str;
        this.bCR = i2;
        bCQ[i] = this;
    }
}
