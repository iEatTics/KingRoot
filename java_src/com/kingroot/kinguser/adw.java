package com.kingroot.kinguser;

import android.os.IBinder;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.common.network.download.INetworkLoadTaskCallback;
import com.kingroot.kingmaster.network.download.KmDownloadEnginerImpl;
import com.kingroot.kingmaster.network.download.KuDownloadInfo;
/* loaded from: classes.dex */
public class adw extends AbstractC3704uo {
    private static volatile adw adE = null;

    private adw() {
    }

    /* renamed from: tb */
    public static adw m12388tb() {
        if (adE == null) {
            synchronized (adw.class) {
                if (adE == null) {
                    adE = new adw();
                }
            }
        }
        return adE;
    }

    /* renamed from: a */
    public int m12394a(String str, String str2, String str3, int i) {
        return m2018b(2, new ArgsPack(str, str2, str3, Integer.valueOf(i))).readInt();
    }

    /* renamed from: b */
    public void m12393b(INetworkLoadTaskCallback iNetworkLoadTaskCallback) {
        m2022a(3, new ArgsPack(iNetworkLoadTaskCallback.asBinder()));
    }

    /* renamed from: tc */
    public boolean m12387tc() {
        return m2019aY(1).readBoolean();
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C0754a.class;
    }

    /* renamed from: td */
    public int m12386td() {
        return m2019aY(10).readInt();
    }

    /* renamed from: cC */
    public void m12392cC(int i) {
        m2022a(11, new ArgsPack(Integer.valueOf(i)));
    }

    /* renamed from: te */
    public int m12385te() {
        return m2019aY(12).readInt();
    }

    /* renamed from: eF */
    public boolean m12389eF(String str) {
        return m2018b(13, new ArgsPack(str)).readBoolean();
    }

    /* renamed from: tf */
    public KuDownloadInfo m12384tf() {
        return (KuDownloadInfo) m2019aY(14).m13375kG();
    }

    /* renamed from: cD */
    public void m12391cD(int i) {
        m2022a(20, new ArgsPack(Integer.valueOf(i)));
    }

    /* renamed from: tg */
    public int m12383tg() {
        return m2019aY(21).readInt();
    }

    /* renamed from: cE */
    public void m12390cE(int i) {
        m2022a(22, new ArgsPack(Integer.valueOf(i)));
    }

    /* renamed from: th */
    public int m12382th() {
        return m2019aY(23).readInt();
    }

    /* renamed from: ti */
    public int m12381ti() {
        return m2019aY(15).readInt();
    }

    /* renamed from: tj */
    public String m12380tj() {
        return m2019aY(16).readString();
    }

    /* renamed from: tk */
    public boolean m12379tk() {
        return m2019aY(17).readBoolean();
    }

    /* renamed from: tl */
    public String m12378tl() {
        return m2019aY(18).readString();
    }

    /* renamed from: tm */
    public int m12377tm() {
        return m2019aY(19).readInt();
    }

    /* renamed from: tn */
    public String m12376tn() {
        if (bgr.m7092iZ()) {
            return C3565ru.m2318ja() + "/Download";
        }
        return C3958zl.m1298dx("download").getAbsolutePath();
    }

    /* renamed from: com.kingroot.kinguser.adw$a */
    /* loaded from: classes.dex */
    public static class C0754a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 3:
                    KmDownloadEnginerImpl.m13081tp().m13094b(INetworkLoadTaskCallback.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 4:
                    KmDownloadEnginerImpl.m13081tp().m13093c(INetworkLoadTaskCallback.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 7:
                    KmDownloadEnginerImpl.m13081tp().m13078ts();
                    return;
                case 8:
                    KmDownloadEnginerImpl.m13081tp().m13077tt();
                    return;
                case 9:
                    KmDownloadEnginerImpl.m13081tp().m13076tu();
                    return;
                case 11:
                    KmDownloadEnginerImpl.m13081tp().m13092cC(((Integer) argsPack.next()).intValue());
                    return;
                case 20:
                    KmDownloadEnginerImpl.m13081tp().mo12368cD(((Integer) argsPack.next()).intValue());
                    return;
                case 22:
                    KmDownloadEnginerImpl.m13081tp().mo12367cE(((Integer) argsPack.next()).intValue());
                    return;
                default:
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 1:
                    return Boolean.valueOf(KmDownloadEnginerImpl.m13081tp().m13088tc());
                case 2:
                    return Integer.valueOf(KmDownloadEnginerImpl.m13081tp().m13095a((String) argsPack.next(), (String) argsPack.next(), (String) argsPack.next(), ((Integer) argsPack.next()).intValue()));
                case 3:
                case 4:
                case 7:
                case 8:
                case 9:
                case 11:
                case 20:
                case 22:
                default:
                    return null;
                case 5:
                    return KmDownloadEnginerImpl.m13081tp().m13080tq();
                case 6:
                    return Boolean.valueOf(KmDownloadEnginerImpl.m13081tp().m13079tr());
                case 10:
                    return Integer.valueOf(KmDownloadEnginerImpl.m13081tp().m13087td());
                case 12:
                    return Integer.valueOf(KmDownloadEnginerImpl.m13081tp().m13086te());
                case 13:
                    return Boolean.valueOf(KmDownloadEnginerImpl.m13081tp().m13091eF((String) argsPack.next()));
                case 14:
                    return KmDownloadEnginerImpl.m13081tp().m13085tf();
                case 15:
                    return Integer.valueOf(KmDownloadEnginerImpl.m13081tp().m13084ti());
                case 16:
                    return KmDownloadEnginerImpl.m13081tp().m13083tj();
                case 17:
                    return Boolean.valueOf(KmDownloadEnginerImpl.m13081tp().m13074tw());
                case 18:
                    return KmDownloadEnginerImpl.m13081tp().m13082tl();
                case 19:
                    return 1;
                case 21:
                    return Integer.valueOf(KmDownloadEnginerImpl.m13081tp().mo12352tg());
                case 23:
                    return Integer.valueOf(KmDownloadEnginerImpl.m13081tp().mo12351th());
            }
        }
    }
}
