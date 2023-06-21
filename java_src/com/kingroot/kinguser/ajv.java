package com.kingroot.kinguser;

import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ajv extends AbstractC3704uo {
    private static final cce<ajv> sInstance = new cce<ajv>() { // from class: com.kingroot.kinguser.ajv.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: zH */
        public ajv create() {
            return new ajv();
        }
    };

    /* renamed from: zD */
    public static ajv m11387zD() {
        return sInstance.get();
    }

    private ajv() {
    }

    /* renamed from: zE */
    public int m11386zE() {
        return new ajw().m11374zE();
    }

    /* renamed from: gC */
    public void m11388gC(String str) {
        m2022a(1, new ArgsPack(str));
    }

    /* renamed from: zF */
    public void m11385zF() {
        m2020aX(2);
    }

    /* renamed from: zG */
    public void m11384zG() {
        m2020aX(4);
    }

    /* renamed from: a */
    public void m11391a(List<String> list, Map<String, Boolean> map) {
        HashMap m13376kF = m2018b(5, new ArgsPack(list)).m13376kF();
        if (m13376kF != null && map != null) {
            map.putAll(m13376kF);
        }
    }

    /* renamed from: d */
    public void m11389d(int i, int i2, String str) {
        m2022a(9, new ArgsPack(Integer.valueOf(i), Integer.valueOf(i2), str));
    }

    /* renamed from: c */
    public void m11390c(List<String> list, Map<String, Boolean> map) {
        HashMap m13376kF = m2018b(6, new ArgsPack(list)).m13376kF();
        if (m13376kF != null) {
            map.putAll(m13376kF);
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C1026a.class;
    }

    /* renamed from: com.kingroot.kinguser.ajv$a */
    /* loaded from: classes.dex */
    public static class C1026a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            if (argsPack == null) {
                argsPack = new ArgsPack(new Object[0]);
            }
            switch (i) {
                case 1:
                    new ajw().m11377gC((String) argsPack.next());
                    return;
                case 2:
                    new ajw().m11373zF();
                    return;
                case 3:
                case 5:
                case 6:
                case 7:
                case 8:
                default:
                    return;
                case 4:
                    new ajw().m11372zG();
                    return;
                case 9:
                    new ajw().m11378d(((Integer) argsPack.next()).intValue(), ((Integer) argsPack.next()).intValue(), (String) argsPack.next());
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            if (argsPack == null) {
                argsPack = new ArgsPack(new Object[0]);
            }
            switch (i) {
                case 5:
                    HashMap hashMap = new HashMap();
                    new ajw().m11380a((List) argsPack.next(), hashMap);
                    return hashMap;
                case 6:
                    HashMap hashMap2 = new HashMap();
                    new ajw().m11379c((List) argsPack.next(), hashMap2);
                    return hashMap2;
                case 7:
                    return Boolean.valueOf(new ajw().m11376gD((String) argsPack.next()));
                case 8:
                    return new ajw().m11371zI();
                default:
                    return null;
            }
        }
    }
}
