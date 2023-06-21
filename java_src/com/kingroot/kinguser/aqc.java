package com.kingroot.kinguser;

import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
/* loaded from: classes.dex */
public class aqc {
    public String aKV;
    public String aKW;
    public String aKX;
    @Nullable
    public String aKY;
    public String description;
    public String name;
    public String title;
    public int type;
    public Drawable akK = null;
    public boolean akd = false;
    public aqb aKZ = null;

    /* renamed from: gw */
    public int f1540gw = -1;
    public Drawable aLa = null;

    private aqc() {
    }

    /* renamed from: a */
    public static aqc m9606a(String str, String str2, String str3, String str4, aqb aqbVar, boolean z) {
        aqc aqcVar = new aqc();
        if (z) {
            aqcVar.type = 3;
        } else {
            aqcVar.type = 0;
        }
        aqcVar.title = str;
        aqcVar.description = str2;
        aqcVar.aKX = str3;
        aqcVar.name = str4;
        aqcVar.aKZ = aqbVar;
        return aqcVar;
    }

    /* renamed from: a */
    public static aqc m9607a(String str, String str2, String str3, String str4, aqb aqbVar) {
        aqc aqcVar = new aqc();
        aqcVar.type = 1;
        aqcVar.title = str;
        aqcVar.description = str2;
        aqcVar.aKV = str3;
        aqcVar.name = str4;
        aqcVar.aKZ = aqbVar;
        return aqcVar;
    }

    /* renamed from: b */
    public static aqc m9605b(String str, String str2, String str3, String str4, aqb aqbVar) {
        aqc aqcVar = new aqc();
        aqcVar.type = 4;
        aqcVar.title = str;
        aqcVar.description = str2;
        aqcVar.aKV = str3;
        aqcVar.name = str4;
        aqcVar.aKZ = aqbVar;
        return aqcVar;
    }

    /* renamed from: a */
    public static aqc m9609a(String str, String str2, String str3, aqb aqbVar, String str4, int i) {
        aqc aqcVar = new aqc();
        aqcVar.type = 2;
        aqcVar.title = str;
        aqcVar.aKV = str2;
        aqcVar.name = str3;
        aqcVar.aKZ = aqbVar;
        aqcVar.aKY = str4;
        aqcVar.f1540gw = i;
        return aqcVar;
    }

    /* renamed from: Mz */
    public static aqc m9611Mz() {
        aqc aqcVar = new aqc();
        aqcVar.type = 5;
        aqcVar.name = "header";
        return aqcVar;
    }

    /* renamed from: a */
    public static aqc m9608a(String str, String str2, String str3, aqj aqjVar) {
        aqc aqcVar = new aqc();
        aqcVar.type = 6;
        aqcVar.title = str;
        aqcVar.description = str2;
        aqcVar.name = str3;
        aqcVar.aLa = aqjVar.m9588MO();
        aqcVar.aKZ = aqjVar;
        return aqcVar;
    }

    /* renamed from: a */
    public static boolean m9610a(aqc aqcVar, aqc aqcVar2) {
        if (aqcVar == null || aqcVar.name == null || aqcVar2 == null || aqcVar2.name == null) {
            return false;
        }
        return aqcVar.name.contentEquals(aqcVar2.name);
    }

    /* renamed from: e */
    public void m9604e(aqc aqcVar) {
        if (m9610a(this, aqcVar)) {
            if (aqcVar.title != null) {
                this.title = aqcVar.title;
            }
            if (aqcVar.description != null) {
                this.description = aqcVar.description;
            }
            if (aqcVar.aKV != null) {
                this.aKV = aqcVar.aKV;
            }
            if (aqcVar.aKX != null) {
                this.aKX = aqcVar.aKX;
            }
            if (aqcVar.akK != null) {
                this.akK = aqcVar.akK;
            }
            if (aqcVar.aKY != null) {
                this.aKY = aqcVar.aKY;
            }
            this.f1540gw = aqcVar.f1540gw;
        }
    }
}
