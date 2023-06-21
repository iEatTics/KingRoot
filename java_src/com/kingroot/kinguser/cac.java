package com.kingroot.kinguser;

import android.os.RemoteCallbackList;
import android.os.RemoteException;
import kingcom.core.network.download.InterfaceC4193f;
import kingcom.core.network.download.NetworkLoadTaskInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cac extends cah<T> {
    final /* synthetic */ cab bWf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cac(cab cabVar) {
        this.bWf = cabVar;
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    @Override // com.kingroot.kinguser.cah
    /* renamed from: d */
    public void mo5070d(caf cafVar) {
        cah cahVar;
        RemoteCallbackList remoteCallbackList;
        RemoteCallbackList remoteCallbackList2;
        RemoteCallbackList remoteCallbackList3;
        cah cahVar2;
        cahVar = this.bWf.bWc;
        if (cahVar != null) {
            cahVar2 = this.bWf.bWc;
            cahVar2.mo5070d(cafVar);
        }
        remoteCallbackList = this.bWf.bWd;
        int beginBroadcast = remoteCallbackList.beginBroadcast();
        while (beginBroadcast > 0) {
            int i = beginBroadcast - 1;
            try {
                remoteCallbackList3 = this.bWf.bWd;
                ((InterfaceC4193f) remoteCallbackList3.getBroadcastItem(i)).m394a(NetworkLoadTaskInfo.C4192a.m396c(cafVar));
                beginBroadcast = i;
            } catch (RemoteException e) {
                beginBroadcast = i;
            }
        }
        remoteCallbackList2 = this.bWf.bWd;
        remoteCallbackList2.finishBroadcast();
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    @Override // com.kingroot.kinguser.cah
    /* renamed from: e */
    public void mo5069e(caf cafVar) {
        cah cahVar;
        RemoteCallbackList remoteCallbackList;
        RemoteCallbackList remoteCallbackList2;
        RemoteCallbackList remoteCallbackList3;
        cah cahVar2;
        cahVar = this.bWf.bWc;
        if (cahVar != null) {
            cahVar2 = this.bWf.bWc;
            cahVar2.mo5069e(cafVar);
        }
        remoteCallbackList = this.bWf.bWd;
        int beginBroadcast = remoteCallbackList.beginBroadcast();
        while (beginBroadcast > 0) {
            int i = beginBroadcast - 1;
            try {
                remoteCallbackList3 = this.bWf.bWd;
                ((InterfaceC4193f) remoteCallbackList3.getBroadcastItem(i)).m393b(NetworkLoadTaskInfo.C4192a.m396c(cafVar));
                beginBroadcast = i;
            } catch (RemoteException e) {
                beginBroadcast = i;
            }
        }
        remoteCallbackList2 = this.bWf.bWd;
        remoteCallbackList2.finishBroadcast();
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    @Override // com.kingroot.kinguser.cah
    /* renamed from: f */
    public void mo5068f(caf cafVar) {
        cah cahVar;
        RemoteCallbackList remoteCallbackList;
        RemoteCallbackList remoteCallbackList2;
        RemoteCallbackList remoteCallbackList3;
        cah cahVar2;
        cahVar = this.bWf.bWc;
        if (cahVar != null) {
            cahVar2 = this.bWf.bWc;
            cahVar2.mo5068f(cafVar);
        }
        remoteCallbackList = this.bWf.bWd;
        int beginBroadcast = remoteCallbackList.beginBroadcast();
        while (beginBroadcast > 0) {
            int i = beginBroadcast - 1;
            try {
                remoteCallbackList3 = this.bWf.bWd;
                ((InterfaceC4193f) remoteCallbackList3.getBroadcastItem(i)).m392c(NetworkLoadTaskInfo.C4192a.m396c(cafVar));
                beginBroadcast = i;
            } catch (RemoteException e) {
                beginBroadcast = i;
            }
        }
        remoteCallbackList2 = this.bWf.bWd;
        remoteCallbackList2.finishBroadcast();
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    @Override // com.kingroot.kinguser.cah
    /* renamed from: a */
    public void mo5072a(caf cafVar) {
        cah cahVar;
        RemoteCallbackList remoteCallbackList;
        RemoteCallbackList remoteCallbackList2;
        RemoteCallbackList remoteCallbackList3;
        cah cahVar2;
        cahVar = this.bWf.bWc;
        if (cahVar != null) {
            cahVar2 = this.bWf.bWc;
            cahVar2.mo5072a(cafVar);
        }
        remoteCallbackList = this.bWf.bWd;
        int beginBroadcast = remoteCallbackList.beginBroadcast();
        while (beginBroadcast > 0) {
            int i = beginBroadcast - 1;
            try {
                remoteCallbackList3 = this.bWf.bWd;
                ((InterfaceC4193f) remoteCallbackList3.getBroadcastItem(i)).m390e(NetworkLoadTaskInfo.C4192a.m396c(cafVar));
                beginBroadcast = i;
            } catch (RemoteException e) {
                beginBroadcast = i;
            }
        }
        remoteCallbackList2 = this.bWf.bWd;
        remoteCallbackList2.finishBroadcast();
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    @Override // com.kingroot.kinguser.cah
    /* renamed from: b */
    public void mo5071b(caf cafVar) {
        cah cahVar;
        RemoteCallbackList remoteCallbackList;
        RemoteCallbackList remoteCallbackList2;
        RemoteCallbackList remoteCallbackList3;
        cah cahVar2;
        this.bWf.m5088b();
        cahVar = this.bWf.bWc;
        if (cahVar != null) {
            cahVar2 = this.bWf.bWc;
            cahVar2.mo5071b(cafVar);
        }
        remoteCallbackList = this.bWf.bWd;
        int beginBroadcast = remoteCallbackList.beginBroadcast();
        while (beginBroadcast > 0) {
            int i = beginBroadcast - 1;
            try {
                remoteCallbackList3 = this.bWf.bWd;
                ((InterfaceC4193f) remoteCallbackList3.getBroadcastItem(i)).m391d(NetworkLoadTaskInfo.C4192a.m396c(cafVar));
                beginBroadcast = i;
            } catch (RemoteException e) {
                beginBroadcast = i;
            }
        }
        remoteCallbackList2 = this.bWf.bWd;
        remoteCallbackList2.finishBroadcast();
    }
}
