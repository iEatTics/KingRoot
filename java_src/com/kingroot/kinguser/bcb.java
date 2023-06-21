package com.kingroot.kinguser;

import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class bcb implements InterfaceC3705up {
    private static final String TAG = aiq.asa + "_RootRecycleCloudListStub";

    @Override // com.kingroot.kinguser.InterfaceC3705up
    /* renamed from: a */
    public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
    }

    @Override // com.kingroot.kinguser.InterfaceC3705up
    /* renamed from: c */
    public Object mo1955c(int i, ArgsPack argsPack) {
        avt m8765RZ = avt.m8765RZ();
        switch (i) {
            case 1:
                return m8765RZ.m8762hf(((Integer) argsPack.next()).intValue());
            case 2:
                return m8765RZ.m8761hg(((Integer) argsPack.next()).intValue());
            case 3:
                return m8765RZ.m8760hh(((Integer) argsPack.next()).intValue());
            case 4:
                return m7732Xb();
            default:
                return new Object();
        }
    }

    /* renamed from: Xb */
    private List<String> m7732Xb() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Integer> entry : avr.m8787RV().m8785RX().entrySet()) {
            if (m7731hX(entry.getValue().intValue())) {
                arrayList.add(entry.getKey());
            }
        }
        return arrayList;
    }

    /* renamed from: hX */
    private static boolean m7731hX(int i) {
        switch (i) {
            case 1:
            case 3:
            case 4:
            case 5:
                return true;
            case 2:
            default:
                return false;
        }
    }
}
