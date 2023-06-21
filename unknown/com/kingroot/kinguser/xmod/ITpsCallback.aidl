// ITpsCallback.aidl
package com.kingroot.kinguser.xmod;
import com.kingroot.kinguser.xmod.TpsEvent;

interface ITpsCallback {
    oneway void onEvent(in TpsEvent event);
}
