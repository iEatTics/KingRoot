package com.kingroot.kinguser;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class aci {
    private List<abw> aah;

    /* renamed from: com.kingroot.kinguser.aci$a */
    /* loaded from: classes.dex */
    public enum EnumC0652a {
        TYPE_ROOT_ALL_PATH_SU,
        TYPE_ROOT_GLOBAL_SU,
        TYPE_ROOT_KM_DAEMON,
        TYPE_ROOT_KM_BACKUP,
        TYPE_ROOT_KU_BACKUP,
        TYPE_ROOT_KU_BACKUP_2,
        TYPE_ROOT_KU_DAEMON,
        TYPE_ROOT_SELF_DAEMON,
        TYPE_ROOT_KU_SU,
        TYPE_ROOT_SUPER_SU,
        TYPE_ROOT_QQSECURITY,
        TYPE_KU_DEV_SUD
    }

    public aci() {
        this.aah = null;
        this.aah = new ArrayList();
        this.aah.add(m12732b(EnumC0652a.TYPE_ROOT_KM_DAEMON));
        this.aah.add(m12732b(EnumC0652a.TYPE_ROOT_KM_BACKUP));
        this.aah.add(m12732b(EnumC0652a.TYPE_ROOT_KU_DAEMON));
        this.aah.add(m12732b(EnumC0652a.TYPE_ROOT_KU_SU));
        this.aah.add(m12732b(EnumC0652a.TYPE_KU_DEV_SUD));
        this.aah.add(m12732b(EnumC0652a.TYPE_ROOT_SUPER_SU));
        this.aah.add(m12732b(EnumC0652a.TYPE_ROOT_GLOBAL_SU));
        this.aah.add(m12732b(EnumC0652a.TYPE_ROOT_ALL_PATH_SU));
        this.aah.add(m12732b(EnumC0652a.TYPE_ROOT_KU_BACKUP));
        this.aah.add(m12732b(EnumC0652a.TYPE_ROOT_QQSECURITY));
        m12733T(this.aah);
    }

    public aci(EnumC0652a[] enumC0652aArr) {
        this.aah = null;
        this.aah = new ArrayList();
        for (EnumC0652a enumC0652a : enumC0652aArr) {
            this.aah.add(m12732b(enumC0652a));
        }
        m12733T(this.aah);
    }

    /* renamed from: T */
    private void m12733T(List<abw> list) {
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 + 1 < list.size()) {
                abw abwVar = list.get(i2 + 1);
                list.get(i2).m12745a(abwVar);
                abwVar.m12745a((abw) null);
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    /* renamed from: rE */
    public abw m12731rE() {
        if (this.aah.size() > 0) {
            return this.aah.get(0);
        }
        return null;
    }

    /* renamed from: b */
    private static abw m12732b(EnumC0652a enumC0652a) {
        switch (enumC0652a) {
            case TYPE_ROOT_ALL_PATH_SU:
                return new abx();
            case TYPE_ROOT_GLOBAL_SU:
                return new aby();
            case TYPE_ROOT_KM_DAEMON:
                return new acb();
            case TYPE_ROOT_KM_BACKUP:
                return new aca();
            case TYPE_ROOT_KU_BACKUP:
                return new acd();
            case TYPE_ROOT_KU_BACKUP_2:
                return new acc();
            case TYPE_ROOT_KU_DAEMON:
                return new ace();
            case TYPE_ROOT_KU_SU:
                return new acg();
            case TYPE_ROOT_SUPER_SU:
                return new ack();
            case TYPE_ROOT_QQSECURITY:
                return new ach();
            case TYPE_ROOT_SELF_DAEMON:
                return new acj();
            case TYPE_KU_DEV_SUD:
                return new acf();
            default:
                return null;
        }
    }
}
