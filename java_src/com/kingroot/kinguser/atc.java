package com.kingroot.kinguser;

import android.os.IBinder;
import android.support.annotation.NonNull;
import com.kingroot.common.ipc.ArgsPack;
import com.kingroot.common.ipc.IpcResult;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDetailModel;
import com.kingroot.kinguser.gamebox.dao.ILoadRecommendedSoftDetailListener;
import com.kingroot.kinguser.gamebox.foreground.model.IGameFreshListener;
import java.util.List;
/* loaded from: classes.dex */
public class atc extends AbstractC3704uo {
    private static final cce<atc> aNI = new cce<atc>() { // from class: com.kingroot.kinguser.atc.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: OT */
        public atc create() {
            return new atc();
        }
    };

    /* renamed from: OS */
    public static atc m9313OS() {
        return aNI.get();
    }

    /* renamed from: iU */
    public List<AppBaseModel> m9312iU(@NonNull String str) {
        return (List) m2018b(3, new ArgsPack(str)).getResult();
    }

    /* renamed from: iV */
    public List<AppBaseModel> m9311iV(@NonNull String str) {
        return (List) m2018b(4, new ArgsPack(str)).getResult();
    }

    /* renamed from: m */
    public AppDetailModel m9310m(@NonNull AppBaseModel appBaseModel) {
        return (AppDetailModel) m2018b(5, new ArgsPack(appBaseModel)).getResult();
    }

    @Override // com.kingroot.kinguser.AbstractC3704uo
    /* renamed from: kD */
    public Class<? extends InterfaceC3705up> mo2017kD() {
        return C1513a.class;
    }

    /* renamed from: com.kingroot.kinguser.atc$a */
    /* loaded from: classes.dex */
    public static class C1513a implements InterfaceC3705up {
        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: c */
        public Object mo1955c(int i, ArgsPack argsPack) {
            switch (i) {
                case 2:
                    if (argsPack != null) {
                        atb.m9322OR().m9318a((String) argsPack.next(), IGameFreshListener.Stub.asInterface((IBinder) argsPack.next()));
                        break;
                    }
                    break;
                case 3:
                    return atb.m9322OR().m9317iU((String) argsPack.next());
                case 4:
                    return atb.m9322OR().m9316iV((String) argsPack.next());
                case 5:
                    return atb.m9322OR().m9314m((AppBaseModel) argsPack.next());
            }
            return null;
        }

        @Override // com.kingroot.kinguser.InterfaceC3705up
        /* renamed from: a */
        public void mo1957a(int i, ArgsPack argsPack, IpcResult ipcResult) {
            switch (i) {
                case 6:
                    atb.m9322OR().m9319a((AppBaseModel) argsPack.next(), ILoadRecommendedSoftDetailListener.Stub.asInterface((IBinder) argsPack.next()));
                    return;
                default:
                    return;
            }
        }
    }
}
