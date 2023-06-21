package com.kingroot.kinguser.common.check;

interface ICheckUnitListener {
     oneway void onCheckEvent(in Bundle data, int msg);
}
