package com.kingroot.kinguser;

import android.os.IBinder;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.net.shark.IKSharkRemoteListener;
import com.p019qq.taf.jce.JceInputStream;
import com.p019qq.taf.jce.JceStruct;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class awn extends AbstractC3704uo {
    private static final cce<awn> sInstance = new cce<awn>() { // from class: com.kingroot.kinguser.awn.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: Tb */
        public awn create() {
            return new awn();
        }
    };

    /* renamed from: Ta */
    public static awn m8629Ta() {
        return sInstance.get();
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C1718a.class;
    }

    public void init() {
        m2020aX(1);
    }

    /* renamed from: a */
    public void m8628a(int i, @NonNull JceStruct jceStruct, @NonNull JceStruct jceStruct2, final cat catVar) {
        m2022a(3, new ArgsPack(Integer.valueOf(i), jceStruct.getClass().getName(), jceStruct.toByteArray(), jceStruct2.getClass().getName(), jceStruct2.toByteArray(), new IKSharkRemoteListener.Stub() { // from class: com.kingroot.kinguser.net.shark.KuSharkManager$3
            @Override // com.kingroot.kinguser.net.shark.IKSharkRemoteListener
            public void onFinish(int i2, int i3, int i4, int i5, String str, byte[] bArr) {
                if (catVar != null) {
                    JceStruct jceStruct3 = null;
                    try {
                        if (!TextUtils.isEmpty(str) && bArr != null) {
                            JceStruct jceStruct4 = (JceStruct) Class.forName(str).newInstance();
                            jceStruct4.readFrom(new JceInputStream(bArr));
                            jceStruct3 = jceStruct4;
                        }
                        catVar.mo2689a(i2, i3, i4, i5, jceStruct3);
                    } catch (Throwable th) {
                    }
                }
            }
        }.asBinder()));
    }

    /* renamed from: bG */
    public boolean m8626bG(@NonNull List<C2037b> list) {
        return m8627b(list, (C2687c) null);
    }

    /* renamed from: b */
    public boolean m8627b(@NonNull List<C2037b> list, @Nullable C2687c c2687c) {
        if (C3942yy.m1351d(list)) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        for (C2037b c2037b : list) {
            if (c2037b != null) {
                arrayList.add(c2037b.toByteArray());
            }
        }
        IpcResult b = m2018b(4, new ArgsPack(arrayList, c2687c));
        return b.getResult() == null ? false : ((Boolean) b.getResult()).booleanValue();
    }

    /* renamed from: com.kingroot.kinguser.awn$a */
    /* loaded from: classes.dex */
    public static class C1718a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 1:
                    awo.m8624Tc().init();
                    return;
                case 2:
                    awo.m8624Tc().m8622a(((Integer) argsPack.next()).intValue(), (String) argsPack.next(), (byte[]) argsPack.next(), IKSharkRemoteListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 3:
                    awo.m8624Tc().m8621a(((Integer) argsPack.next()).intValue(), (String) argsPack.next(), (byte[]) argsPack.next(), (String) argsPack.next(), (byte[]) argsPack.next(), IKSharkRemoteListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                default:
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 4:
                    return Boolean.valueOf(awo.m8624Tc().m8619b((List) argsPack.next(), (C2687c) argsPack.next()));
                default:
                    return null;
            }
        }
    }
}
