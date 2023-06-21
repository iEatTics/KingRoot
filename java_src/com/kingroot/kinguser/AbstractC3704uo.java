package com.kingroot.kinguser;

import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IIpcCallback;
import com.kingroot.common.ipc.IpcResult;
/* renamed from: com.kingroot.kinguser.uo */
/* loaded from: classes.dex */
public abstract class AbstractC3704uo {
    /* renamed from: kD */
    public abstract Class<? extends InterfaceC3705up> mo2017kD();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m2022a(int i, ArgsPack argsPack) {
        m2021a(i, argsPack, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: aX */
    public final void m2020aX(int i) {
        m2021a(i, null, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m2021a(int i, ArgsPack argsPack, IIpcCallback iIpcCallback) {
        C3706uq.m2008kH().m2015a(mo2017kD(), i, argsPack, iIpcCallback);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: aY */
    public final IpcResult m2019aY(int i) {
        return m2018b(i, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public final IpcResult m2018b(int i, ArgsPack argsPack) {
        return C3706uq.m2008kH().m2014b(mo2017kD(), i, argsPack);
    }
}
