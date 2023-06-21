package com.kingroot.puremode.servicemgr;

interface IPureModeManager {
	void addService(String name, IBinder service);
	IBinder getService(String name);
	String getHostPkgName();
	int getVersion();
	void setPerformLogEnable(boolean isEnable);
}