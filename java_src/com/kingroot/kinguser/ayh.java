package com.kingroot.kinguser;
/* loaded from: classes.dex */
public class ayh extends Exception {
    public final int pluginId;

    public ayh(int i) {
        this.pluginId = i;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "Communicate with plugin fail, id : " + this.pluginId;
    }
}
