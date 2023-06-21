package com.kingroot.kinguser.distribution.appsmarket.interfaces;
interface ILoadAppStatusListener {
	oneway void onShowDownloadCount(int downloadCount);
	oneway void onShowWaitDownloadCount(int downloadCount);
	oneway void onShowDot();
	oneway void onShowNormal();
}