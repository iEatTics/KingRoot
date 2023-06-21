package com.kingroot.kinguser.net.shark;

interface IKSharkRemoteListener {
   oneway void onFinish(int seqNo, int reqCmdId , int retCode , int dataRetCode , in String respClassName, in byte[] respDate);
}
