// IPluginDownloadCallback.aidl
package com.kingroot.kinguser.plugin.upgrade;

interface PluginDownloadCallback {

    /**
    * 当任务由等待列队进入下载列队开始下载时回调
    */
    void onRunning();

    /**
    * 当下载进度发生变化时回调
    */
    void onProgressChanged(float progress);

    /**
    * 当下载完成时回调
    */
    void onFinished(String path, int errCode);

    /**
    * 当下载发生错误时回调
    */
    void onFailed(String path, int errCode);

    /**
    * 当用户取消一个下载任务时回调
    */
	void onDeleted();
}
