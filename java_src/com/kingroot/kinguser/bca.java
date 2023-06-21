package com.kingroot.kinguser;

import com.kingroot.common.ipc.ArgsPack;
import java.util.List;
/* loaded from: classes.dex */
public class bca extends AbstractC3704uo {
    private static final cce<bca> sInstance = new cce<bca>() { // from class: com.kingroot.kinguser.bca.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Xc */
        public bca create() {
            return new bca();
        }
    };

    /* renamed from: Xa */
    public static bca m7738Xa() {
        return sInstance.get();
    }

    private bca() {
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return bcb.class;
    }

    /* renamed from: hf */
    public List<String> m7736hf(int i) {
        return (List) m2018b(1, new ArgsPack(Integer.valueOf(i))).getResult();
    }

    /* renamed from: hg */
    public List<String> m7735hg(int i) {
        return (List) m2018b(2, new ArgsPack(Integer.valueOf(i))).getResult();
    }

    /* renamed from: hh */
    public List<String> m7734hh(int i) {
        return (List) m2018b(3, new ArgsPack(Integer.valueOf(i))).getResult();
    }

    /* renamed from: Xb */
    public List<String> m7737Xb() {
        return (List) m2019aY(4).getResult();
    }
}
