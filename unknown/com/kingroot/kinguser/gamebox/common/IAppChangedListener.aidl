package com.kingroot.kinguser.gamebox.common;
interface IAppChangedListener {
	oneway void onPackageAdd(String pkg);
	oneway void onPackageReplace(String pkg);
	oneway void onPackageDelete(String pkg);
}