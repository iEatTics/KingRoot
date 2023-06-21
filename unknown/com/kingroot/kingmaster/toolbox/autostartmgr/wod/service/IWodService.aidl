package com.kingroot.kingmaster.toolbox.autostartmgr.wod.service;

interface IWodService {
	boolean isWodAvailible();
	boolean isServiceExist();
	
	void setConfigMap(in Bundle configMap);
	void initConfigMap(in Bundle configMap);
	void setWodEnable(boolean enable);
}