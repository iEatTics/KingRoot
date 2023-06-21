package com.kingroot.processwall.server;

interface IProcWallManager {
	
	int getVersionCode();
	void setEnable(boolean enable);
	boolean isEnable();

	void initPackageConfigMap(in Bundle configMap);
	
	void setPackageConfig(String packageName, int configState);
	void setPackageConfigMap(in Bundle configMap);
	
	//add开头的接口，仅添加名单
	void addPackageConfig(String packageName, int configState);
	
	int getPackageConfig(String pakageName);
	
	Map getPackageConfigMap();
	
	void setAutoForceStopEnable(boolean enable);
	
	void initCloudMap(in Bundle configMap ,boolean needClear);
	
	long getInjectTime();

	String getTopActivityPackageName();

	void initForceConfigMag(in Bundle allowMap, in Bundle stopMap);
	//5.1.1适配接口
    List getRunningAppProcesses();
}