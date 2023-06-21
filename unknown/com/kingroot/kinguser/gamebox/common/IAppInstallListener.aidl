package com.kingroot.kinguser.gamebox.common;
interface IAppInstallListener {
	oneway void onState(String pkg, int state, String extraInfo);
}