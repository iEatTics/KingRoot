package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class bdg extends bcz {
    private int aUI;
    private int akJ;
    private String biR;
    private String biS;
    private String biT;
    private String biU;
    private String biV;
    private boolean biW;
    private int biX = 0;
    private String title;

    public bdg(int i, String str, int i2, String str2, String str3, String str4, String str5, String str6, boolean z) {
        this.akJ = i;
        this.title = str;
        this.aUI = i2;
        this.biR = str2;
        this.biS = str3;
        this.biT = str4;
        this.biU = str5;
        this.biV = str6;
        this.biW = z;
    }

    /* renamed from: Yv */
    public int m7558Yv() {
        return this.biX;
    }

    /* renamed from: ik */
    public void m7553ik(int i) {
        this.biX = i;
    }

    public int getIconResId() {
        return this.akJ;
    }

    public String getTitle() {
        return this.title;
    }

    /* renamed from: Yw */
    public String m7557Yw() {
        return this.biR;
    }

    /* renamed from: Yx */
    public String m7556Yx() {
        return this.biS;
    }

    /* renamed from: Yy */
    public String m7555Yy() {
        return this.biT;
    }

    /* renamed from: Yz */
    public String m7554Yz() {
        return this.biU;
    }

    /* renamed from: YA */
    public String m7562YA() {
        return this.biV;
    }

    /* renamed from: YB */
    public boolean m7561YB() {
        return this.biW;
    }

    @Override // com.kingroot.kinguser.bcy
    /* renamed from: Yo */
    public int mo7560Yo() {
        return this.aUI + 1;
    }

    @Override // com.kingroot.kinguser.bcy
    /* renamed from: Yp */
    public int mo7559Yp() {
        return 3;
    }
}
