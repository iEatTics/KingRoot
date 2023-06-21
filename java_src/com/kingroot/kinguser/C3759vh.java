package com.kingroot.kinguser;

import android.content.Context;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import com.kingroot.common.network.download.INetworkLoadTaskCallback;
import com.kingroot.common.network.download.NetworkLoadTaskInfo;
import com.kingroot.kinguser.C3784vj;
import java.io.File;
import java.io.IOException;
/* renamed from: com.kingroot.kinguser.vh */
/* loaded from: classes.dex */
public class C3759vh<T extends C3784vj> {

    /* renamed from: KB */
    private Context f3736KB;

    /* renamed from: KC */
    private T f3737KC;

    /* renamed from: KD */
    private C3761vi<T> f3738KD;

    /* renamed from: KF */
    private String f3740KF;

    /* renamed from: KE */
    private final Object f3739KE = new Object();

    /* renamed from: KG */
    private C3785vk<T> f3741KG = null;

    /* renamed from: KH */
    private final RemoteCallbackList<INetworkLoadTaskCallback> f3742KH = new RemoteCallbackList<>();

    /* renamed from: KI */
    C3785vk<T> f3743KI = (C3785vk<T>) new C3785vk<T>() { // from class: com.kingroot.kinguser.vh.1
        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: c */
        public void mo1795c(T t) {
            if (C3759vh.this.f3741KG != null) {
                C3759vh.this.f3741KG.mo1795c(t);
            }
            synchronized (C3759vh.this.f3742KH) {
                int beginBroadcast = C3759vh.this.f3742KH.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        ((INetworkLoadTaskCallback) C3759vh.this.f3742KH.getBroadcastItem(i)).onWaiting(NetworkLoadTaskInfo.C0516a.m13364h(t));
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                C3759vh.this.f3742KH.finishBroadcast();
            }
        }

        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: d */
        public void mo1794d(T t) {
            if (C3759vh.this.f3741KG != null) {
                C3759vh.this.f3741KG.mo1794d(t);
            }
            synchronized (C3759vh.this.f3742KH) {
                int beginBroadcast = C3759vh.this.f3742KH.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        ((INetworkLoadTaskCallback) C3759vh.this.f3742KH.getBroadcastItem(i)).onRunning(NetworkLoadTaskInfo.C0516a.m13364h(t));
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                C3759vh.this.f3742KH.finishBroadcast();
            }
        }

        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: e */
        public void mo1793e(T t) {
            if (C3759vh.this.f3741KG != null) {
                C3759vh.this.f3741KG.mo1793e(t);
            }
            synchronized (C3759vh.this.f3742KH) {
                int beginBroadcast = C3759vh.this.f3742KH.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        ((INetworkLoadTaskCallback) C3759vh.this.f3742KH.getBroadcastItem(i)).onProgressChanged(NetworkLoadTaskInfo.C0516a.m13364h(t));
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                C3759vh.this.f3742KH.finishBroadcast();
            }
        }

        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: f */
        public void mo1792f(T t) {
            if (C3759vh.this.f3741KG != null) {
                C3759vh.this.f3741KG.mo1792f(t);
            }
            synchronized (C3759vh.this.f3742KH) {
                int beginBroadcast = C3759vh.this.f3742KH.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        ((INetworkLoadTaskCallback) C3759vh.this.f3742KH.getBroadcastItem(i)).onPaused(NetworkLoadTaskInfo.C0516a.m13364h(t));
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                C3759vh.this.f3742KH.finishBroadcast();
            }
        }

        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: g */
        public void mo1791g(T t) {
            if (C3759vh.this.f3741KG != null) {
                C3759vh.this.f3741KG.mo1791g(t);
            }
            synchronized (C3759vh.this.f3742KH) {
                int beginBroadcast = C3759vh.this.f3742KH.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        ((INetworkLoadTaskCallback) C3759vh.this.f3742KH.getBroadcastItem(i)).onDeleted(NetworkLoadTaskInfo.C0516a.m13364h(t));
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                C3759vh.this.f3742KH.finishBroadcast();
            }
        }

        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: a */
        public void mo1797a(T t) {
            if (C3759vh.this.f3741KG != null) {
                C3759vh.this.f3741KG.mo1797a(t);
            }
            synchronized (C3759vh.this.f3742KH) {
                int beginBroadcast = C3759vh.this.f3742KH.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        ((INetworkLoadTaskCallback) C3759vh.this.f3742KH.getBroadcastItem(i)).onFailed(NetworkLoadTaskInfo.C0516a.m13364h(t));
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                C3759vh.this.f3742KH.finishBroadcast();
            }
        }

        @Override // com.kingroot.kinguser.C3785vk
        /* renamed from: b */
        public void mo1796b(T t) {
            C3759vh.this.m1878lp();
            if (C3759vh.this.f3741KG != null) {
                C3759vh.this.f3741KG.mo1796b(t);
            }
            synchronized (C3759vh.this.f3742KH) {
                int beginBroadcast = C3759vh.this.f3742KH.beginBroadcast();
                while (beginBroadcast > 0) {
                    int i = beginBroadcast - 1;
                    try {
                        ((INetworkLoadTaskCallback) C3759vh.this.f3742KH.getBroadcastItem(i)).onFinished(NetworkLoadTaskInfo.C0516a.m13364h(t));
                        beginBroadcast = i;
                    } catch (RemoteException e) {
                        beginBroadcast = i;
                    }
                }
                C3759vh.this.f3742KH.finishBroadcast();
            }
        }
    };

    public C3759vh(Context context, T t) {
        this.f3736KB = context;
        this.f3737KC = t;
    }

    /* renamed from: dc */
    public void m1883dc(String str) {
        this.f3740KF = str;
        File file = new File(this.f3740KF);
        if (!file.exists()) {
            file.mkdirs();
        }
    }

    /* renamed from: a */
    public void m1887a(C3785vk<T> c3785vk) {
        this.f3741KG = c3785vk;
    }

    /* renamed from: a */
    public void m1889a(INetworkLoadTaskCallback iNetworkLoadTaskCallback) {
        if (iNetworkLoadTaskCallback != null) {
            this.f3742KH.register(iNetworkLoadTaskCallback);
        }
    }

    public int getStatus() {
        return this.f3737KC.mState;
    }

    /* renamed from: bd */
    private void m1885bd(int i) {
        this.f3737KC.mState = i;
    }

    /* renamed from: ll */
    public void m1882ll() {
        this.f3743KI.mo1795c(this.f3737KC);
        synchronized (this.f3739KE) {
            if (this.f3738KD != null) {
                this.f3738KD.m1865lt();
                this.f3738KD = null;
            }
        }
        String str = this.f3740KF + File.separator + this.f3737KC.mName;
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        String str2 = str + ".tmp";
        File file2 = new File(str2);
        if (file2.exists()) {
            file2.delete();
        }
        try {
            file2.createNewFile();
        } catch (IOException e) {
        }
        synchronized (this.f3739KE) {
            this.f3738KD = new C3761vi<>(this.f3736KB, this.f3737KC, str2);
            this.f3738KD.m1874a(this.f3743KI);
            this.f3737KC.f3764KV = this.f3738KD;
            this.f3737KC.f3762KT = this.f3740KF;
            this.f3738KD.m1544X(true);
        }
    }

    /* renamed from: lm */
    public void m1881lm() {
        synchronized (this.f3739KE) {
            if (this.f3738KD != null) {
                this.f3738KD.m1865lt();
                this.f3738KD = null;
            }
        }
        m1885bd(1);
        this.f3743KI.mo1792f(this.f3737KC);
    }

    /* renamed from: ln */
    public void m1880ln() {
        String str;
        synchronized (this.f3739KE) {
            if (this.f3738KD != null) {
                this.f3738KD.m1865lt();
                this.f3738KD = null;
            }
        }
        String str2 = this.f3737KC.f3762KT + File.separator + this.f3737KC.mName;
        File file = new File(str2);
        String str3 = str2 + ".tmp";
        File file2 = new File(str3);
        if (file.exists() && file.length() == this.f3737KC.mSize && this.f3737KC.mSize > 0) {
            str = str2;
        } else {
            file = file2;
            str = str3;
        }
        this.f3737KC.f3763KU = file.length();
        if (this.f3737KC.mSize > 0) {
            this.f3737KC.f3760BH = ((float) this.f3737KC.f3763KU) / ((float) this.f3737KC.mSize);
        } else {
            this.f3737KC.f3760BH = 0.0f;
        }
        synchronized (this.f3739KE) {
            this.f3738KD = new C3761vi<>(this.f3736KB, this.f3737KC, str);
            this.f3738KD.m1874a(this.f3743KI);
            this.f3737KC.f3764KV = this.f3738KD;
            this.f3738KD.m1544X(true);
        }
    }

    /* renamed from: lo */
    public void m1879lo() {
        synchronized (this.f3739KE) {
            if (this.f3738KD != null) {
                this.f3738KD.m1865lt();
                this.f3738KD = null;
            }
        }
        String str = this.f3737KC.f3762KT + File.separator + this.f3737KC.mName;
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        File file2 = new File(str + ".tmp");
        if (file2.exists()) {
            file2.delete();
        }
        m1885bd(4);
        this.f3743KI.mo1791g(this.f3737KC);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: lp */
    public void m1878lp() {
        m1877lq();
    }

    /* renamed from: lq */
    private void m1877lq() {
        String str = this.f3737KC.f3762KT + File.separator + this.f3737KC.mName;
        File file = new File(str + ".tmp");
        File file2 = new File(str);
        if (file.exists()) {
            if (file2.exists()) {
                file2.delete();
            }
            file.renameTo(file2);
        }
    }
}
