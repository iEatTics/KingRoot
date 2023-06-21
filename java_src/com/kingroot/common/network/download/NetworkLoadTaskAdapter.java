package com.kingroot.common.network.download;

import com.kingroot.common.network.download.INetworkLoadTaskCallback;
/* loaded from: classes.dex */
public class NetworkLoadTaskAdapter extends INetworkLoadTaskCallback.Stub {
    @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
    public void onWaiting(NetworkLoadTaskInfo networkLoadTaskInfo) {
    }

    @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
    public void onRunning(NetworkLoadTaskInfo networkLoadTaskInfo) {
    }

    @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
    public void onProgressChanged(NetworkLoadTaskInfo networkLoadTaskInfo) {
    }

    @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
    public void onFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
    }

    @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
    public void onFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
    }

    @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
    public void onPaused(NetworkLoadTaskInfo networkLoadTaskInfo) {
    }

    @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
    public void onDeleted(NetworkLoadTaskInfo networkLoadTaskInfo) {
    }

    @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
    public void onInstallFinished(NetworkLoadTaskInfo networkLoadTaskInfo) {
    }

    @Override // com.kingroot.common.network.download.INetworkLoadTaskCallback
    public void onInstallFailed(NetworkLoadTaskInfo networkLoadTaskInfo) {
    }
}
