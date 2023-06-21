package com.kingroot.kinguser;

import com.kingroot.common.utils.system.ProcessUtils;
import java.io.File;
import java.io.IOException;
/* loaded from: classes.dex */
public class aka {
    private String auI = "";
    private int auJ = 0;
    private int auK = -1;
    private int mGroup = -1;
    private int auL = -1;
    private long mSize = -1;
    private String auM = "";
    private ProcessUtils.ProcessInfo auN = null;
    private String auO = "";

    /* renamed from: KW */
    private String f1462KW = "";
    private String mVersionName = "";
    private boolean auP = false;
    private boolean auQ = false;
    private boolean auR = false;
    private boolean auS = false;
    private boolean auT = false;
    private int auU = -1;
    private int auV = -1;
    private int auW = -1;
    private int auX = -1;
    private String auY = "";

    public aka(String str, int i, int i2, int i3, int i4, String str2) {
        m11342a(str, i, i2, i3, i4, -1, str2);
    }

    public aka(String str, int i, int i2, int i3, int i4, int i5, String str2) {
        m11342a(str, i, i2, i3, i4, i5, str2);
    }

    /* renamed from: a */
    private void m11342a(String str, int i, int i2, int i3, int i4, int i5, String str2) {
        boolean z = true;
        this.auI = str;
        this.auJ = i;
        this.auU = i2;
        this.auV = i3;
        this.auW = i4;
        this.auX = i5;
        this.auY = str2;
        this.auT = i == 4;
        if (!this.auT) {
            try {
                File file = new File(this.auI);
                if (i == 5) {
                    if (!file.exists() || !file.isDirectory()) {
                        z = false;
                    }
                    this.auS = z;
                    return;
                }
                if (!file.exists() || !file.isFile()) {
                    z = false;
                }
                this.auS = z;
                if (this.auS) {
                    this.auR = C3563rs.m2344s(file);
                    this.f1462KW = C3563rs.getFileMD5(file);
                }
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: a */
    public void m11344a(int i, int i2, int i3, long j, String str, boolean z, boolean z2) {
        this.auK = i;
        this.mGroup = i2;
        this.auL = i3;
        this.mSize = j;
        this.auM = str;
        this.auQ = z2;
        this.auP = z;
    }

    /* renamed from: a */
    public void m11345a(int i, int i2, int i3, long j, String str) {
        m11344a(i, i2, i3, j, str, false, false);
    }

    /* renamed from: zN */
    public boolean m11338zN() {
        return this.auS;
    }

    /* renamed from: zO */
    public boolean m11337zO() {
        return this.auR;
    }

    /* renamed from: zP */
    public int m11336zP() {
        return this.auJ;
    }

    /* renamed from: zQ */
    public String m11335zQ() {
        return this.auI;
    }

    /* renamed from: zR */
    public String m11334zR() {
        if (this.auS && !this.auR && this.auQ && this.auJ == 1) {
            try {
                this.auO = new String(C3563rs.m2355cy(this.auI));
            } catch (Exception e) {
            }
        }
        return this.auO;
    }

    /* renamed from: zS */
    public int m11333zS() {
        return this.auK;
    }

    /* renamed from: zT */
    public int m11332zT() {
        return this.mGroup;
    }

    public int getMode() {
        return this.auL;
    }

    public long getSize() {
        return this.mSize;
    }

    /* renamed from: zU */
    public String m11331zU() {
        return this.auM;
    }

    /* renamed from: zV */
    public int m11330zV() {
        return this.auU;
    }

    /* renamed from: zW */
    public int m11329zW() {
        return this.auV;
    }

    /* renamed from: zX */
    public int m11328zX() {
        return this.auW;
    }

    /* renamed from: zY */
    public int m11327zY() {
        return this.auX;
    }

    /* renamed from: zZ */
    public String m11326zZ() {
        return this.auY;
    }

    /* renamed from: gE */
    public void m11340gE(String str) {
        this.mVersionName = str;
    }

    /* renamed from: lk */
    public String m11339lk() {
        return this.f1462KW;
    }

    /* renamed from: dG */
    public String m11341dG() {
        return this.mVersionName;
    }

    /* renamed from: Aa */
    public boolean m11348Aa() {
        return this.auQ;
    }

    /* renamed from: Ab */
    public boolean m11347Ab() {
        return this.auT;
    }

    /* renamed from: a */
    public void m11343a(ProcessUtils.ProcessInfo processInfo) {
        this.auN = processInfo;
    }

    /* renamed from: Ac */
    public ProcessUtils.ProcessInfo m11346Ac() {
        return this.auN;
    }
}
