package com.kingroot.kinguser.distribution.net.download;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;

interface IAppDownloadListener {
    oneway void onProgress(int progress, in DownloaderTaskInfo info);
    oneway void onStartDownload(in DownloaderTaskInfo info);
    oneway void onComplete(in DownloaderTaskInfo info);
    oneway void onFailed(in DownloaderTaskInfo info);
    oneway void onPaused(in DownloaderTaskInfo info);
    oneway void onPending(in DownloaderTaskInfo task);
    oneway void onRemove(in DownloaderTaskInfo task);
}
