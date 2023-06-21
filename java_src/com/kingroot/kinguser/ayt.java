package com.kingroot.kinguser;

import android.support.annotation.NonNull;
import com.kingplugin.qqpim.softdownload.download.task.obj.AppDownloadTask;
import com.kingplugin.qqpim.softdownload.download.task.obj.TaskStatus;
import com.kingroot.kinguser.distribution.base.QQPimAppDownloadRequest;
import com.kingroot.kinguser.distribution.net.download.DownloaderTaskInfo;
/* loaded from: classes.dex */
public class ayt {
    /* renamed from: a */
    public static QQPimAppDownloadRequest m7996a(AppDownloadTask appDownloadTask) {
        QQPimAppDownloadRequest qQPimAppDownloadRequest = new QQPimAppDownloadRequest();
        qQPimAppDownloadRequest.apkUrl = appDownloadTask.orignalUrl;
        qQPimAppDownloadRequest.apkMd5 = appDownloadTask.fileMd5;
        qQPimAppDownloadRequest.pkgName = appDownloadTask.packageName;
        qQPimAppDownloadRequest.appName = appDownloadTask.appName;
        qQPimAppDownloadRequest.channelId = appDownloadTask.channelId;
        qQPimAppDownloadRequest.businessStream = appDownloadTask.businessStream;
        qQPimAppDownloadRequest.cmsCategoryId = appDownloadTask.cmsCategoryId;
        qQPimAppDownloadRequest.versionName = appDownloadTask.versionName;
        return qQPimAppDownloadRequest;
    }

    /* renamed from: b */
    public static DownloaderTaskInfo m7993b(@NonNull AppDownloadTask appDownloadTask) {
        DownloaderTaskInfo downloaderTaskInfo = new DownloaderTaskInfo();
        downloaderTaskInfo.m4027hT(appDownloadTask.uniqueKey);
        downloaderTaskInfo.m4025hV(appDownloadTask.savePath);
        downloaderTaskInfo.setUrl(appDownloadTask.orignalUrl);
        downloaderTaskInfo.m4046a(m7995a(appDownloadTask.state));
        downloaderTaskInfo.m4036bS(appDownloadTask.currentSize);
        downloaderTaskInfo.m4037bR(appDownloadTask.fileSize);
        downloaderTaskInfo.m4024hW(appDownloadTask.fileName);
        downloaderTaskInfo.setPercentage(appDownloadTask.progress);
        downloaderTaskInfo.m4026hU(appDownloadTask.orignalUrl);
        return downloaderTaskInfo;
    }

    /* renamed from: a */
    public static AppDownloadTask m7994a(@NonNull DownloaderTaskInfo downloaderTaskInfo, @NonNull QQPimAppDownloadRequest qQPimAppDownloadRequest) {
        AppDownloadTask appDownloadTask = new AppDownloadTask();
        appDownloadTask.uniqueKey = downloaderTaskInfo.m4054KH();
        appDownloadTask.savePath = downloaderTaskInfo.m4053KI();
        appDownloadTask.url = downloaderTaskInfo.getUrl();
        appDownloadTask.state = m7992b(downloaderTaskInfo.m4052KJ());
        appDownloadTask.currentSize = downloaderTaskInfo.m4055KG();
        appDownloadTask.fileSize = downloaderTaskInfo.m4056KF();
        appDownloadTask.fileName = downloaderTaskInfo.m4051KK();
        appDownloadTask.progress = downloaderTaskInfo.m4050KL();
        appDownloadTask.orignalUrl = downloaderTaskInfo.getOriginalUrl();
        appDownloadTask.packageName = qQPimAppDownloadRequest.pkgName;
        appDownloadTask.appName = qQPimAppDownloadRequest.appName;
        appDownloadTask.channelId = qQPimAppDownloadRequest.channelId;
        appDownloadTask.businessStream = qQPimAppDownloadRequest.businessStream;
        appDownloadTask.cmsCategoryId = qQPimAppDownloadRequest.cmsCategoryId;
        appDownloadTask.versionName = qQPimAppDownloadRequest.versionName;
        return appDownloadTask;
    }

    /* renamed from: f */
    public static AppDownloadTask m7991f(@NonNull DownloaderTaskInfo downloaderTaskInfo) {
        AppDownloadTask appDownloadTask = new AppDownloadTask();
        appDownloadTask.uniqueKey = downloaderTaskInfo.m4054KH();
        appDownloadTask.savePath = downloaderTaskInfo.m4053KI();
        appDownloadTask.url = downloaderTaskInfo.getUrl();
        appDownloadTask.state = m7992b(downloaderTaskInfo.m4052KJ());
        appDownloadTask.currentSize = downloaderTaskInfo.m4055KG();
        appDownloadTask.fileSize = downloaderTaskInfo.m4056KF();
        appDownloadTask.fileName = downloaderTaskInfo.m4051KK();
        appDownloadTask.progress = downloaderTaskInfo.m4050KL();
        appDownloadTask.orignalUrl = downloaderTaskInfo.getOriginalUrl();
        return appDownloadTask;
    }

    /* renamed from: a */
    public static boq m7995a(TaskStatus taskStatus) {
        switch (taskStatus) {
            case PENDING:
                return boq.PENDING;
            case STARTED:
                return boq.STARTED;
            case DOWNLOADING:
                return boq.DOWNLOADING;
            case COMPLETE:
                return boq.COMPLETE;
            case FAILED:
                return boq.FAILED;
            case PAUSED:
                return boq.PAUSED;
            case DELETED:
                return boq.DELETED;
            default:
                throw new RuntimeException(taskStatus + "covert to DownloaderTaskStatus failed");
        }
    }

    /* renamed from: b */
    public static TaskStatus m7992b(boq boqVar) {
        switch (boqVar) {
            case PENDING:
                return TaskStatus.PENDING;
            case STARTED:
                return TaskStatus.STARTED;
            case DOWNLOADING:
                return TaskStatus.DOWNLOADING;
            case COMPLETE:
                return TaskStatus.COMPLETE;
            case FAILED:
                return TaskStatus.FAILED;
            case PAUSED:
                return TaskStatus.PAUSED;
            case DELETED:
                return TaskStatus.DELETED;
            default:
                throw new RuntimeException(boqVar + "covert to TaskStatus failed");
        }
    }
}
