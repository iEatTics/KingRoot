package com.kingroot.kinguser;

import android.os.IBinder;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.advance.manager.IPermChangedListener;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import com.kingroot.kinguser.advance.model.SilentInstallPermInfo;
import com.kingroot.kinguser.root.log.ILogsChangeListener;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class agy extends AbstractC3704uo {
    private static cce<agy> sInstance = new cce<agy>() { // from class: com.kingroot.kinguser.agy.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: wm */
        public agy create() {
            return new agy();
        }
    };

    private agy() {
    }

    /* renamed from: wk */
    public static agy m11867wk() {
        return sInstance.get();
    }

    /* renamed from: ah */
    public List<SilentInstallLogInfo> m11873ah(long j) {
        return (List) m2018b(2, new ArgsPack(Long.valueOf(j))).getResult();
    }

    /* renamed from: wl */
    public void m11866wl() {
        m2020aX(9);
    }

    /* renamed from: p */
    public void m11868p(String str, int i) {
        m11870d(str, i, 0L);
    }

    /* renamed from: d */
    public void m11870d(String str, int i, long j) {
        m2022a(10, new ArgsPack(str, Integer.valueOf(i), Long.valueOf(j)));
    }

    /* renamed from: b */
    public void m11871b(List<String> list, int i) {
        m11874a(list, i, 0L);
    }

    /* renamed from: a */
    public void m11874a(List<String> list, int i, long j) {
        m2022a(12, new ArgsPack(list, Integer.valueOf(i), Long.valueOf(j)));
    }

    /* renamed from: ai */
    public Map<String, List<SilentInstallLogInfo>> m11872ai(long j) {
        return (Map) m2018b(8, new ArgsPack(Long.valueOf(j))).getResult();
    }

    /* renamed from: fG */
    public SilentInstallPermInfo m11869fG(String str) {
        return (SilentInstallPermInfo) m2018b(3, new ArgsPack(str)).getResult();
    }

    /* renamed from: a */
    public void m11876a(SilentInstallLogInfo silentInstallLogInfo) {
        m2022a(4, new ArgsPack(silentInstallLogInfo));
    }

    /* renamed from: a */
    public void m11877a(IPermChangedListener iPermChangedListener) {
        m2022a(5, new ArgsPack(iPermChangedListener));
    }

    /* renamed from: a */
    public void m11875a(ILogsChangeListener iLogsChangeListener) {
        m2022a(14, new ArgsPack(iLogsChangeListener));
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C0919a.class;
    }

    /* renamed from: com.kingroot.kinguser.agy$a */
    /* loaded from: classes.dex */
    public static class C0919a implements InterfaceC3705up {
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 4:
                    agz.m11851wn().m11863a((SilentInstallLogInfo) argsPack.next());
                    return;
                case 5:
                    agz.m11851wn().m11864a(IPermChangedListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 6:
                    agz.m11851wn().m11858b(IPermChangedListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 7:
                case 8:
                case 11:
                case 13:
                default:
                    return;
                case 9:
                    agz.m11851wn().m11852wl();
                    return;
                case 10:
                    agz.m11851wn().m11856d((String) argsPack.next(), ((Integer) argsPack.next()).intValue(), ((Long) argsPack.next()).longValue());
                    return;
                case 12:
                    agz.m11851wn().m11861a((List) argsPack.next(), ((Integer) argsPack.next()).intValue(), ((Long) argsPack.next()).longValue());
                    return;
                case 14:
                    agz.m11851wn().m11862a(ILogsChangeListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                case 15:
                    agz.m11851wn().m11857b(ILogsChangeListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
            }
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 2:
                    return agz.m11851wn().m11860ah(((Long) argsPack.next()).longValue());
                case 3:
                    return agz.m11851wn().m11854fG((String) argsPack.next());
                case 4:
                case 5:
                case 6:
                case 9:
                case 10:
                case 12:
                default:
                    return null;
                case 7:
                    return agz.m11851wn().m11853fH((String) argsPack.next());
                case 8:
                    return agz.m11851wn().m11859ai(((Long) argsPack.next()).longValue());
                case 11:
                    return agz.m11851wn().m11855dj(((Integer) argsPack.next()).intValue());
                case 13:
                    return agz.m11851wn().m11850wo();
            }
        }
    }
}
