package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class ayi extends Exception {
    public final int errCode;
    public final int pluginId;

    public ayi(int i, int i2) {
        this.pluginId = i;
        this.errCode = i2;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "Launch plugin fail, id : " + this.pluginId + ", error code : " + this.errCode;
    }
}
