package com.kingroot.kinguser.ai.fore;

interface IAntiInjectSwitcherOpObserver {
	
	oneway void onSwitcherOpen(int ret);
	
	oneway void onSwitcherClosed();

}