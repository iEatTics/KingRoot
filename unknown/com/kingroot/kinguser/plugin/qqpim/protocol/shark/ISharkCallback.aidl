// ISharkCallback.aidl
package com.kingroot.kinguser.plugin.qqpim.protocol.shark;

import com.kingroot.loader.common.protocol.SerializableParcel;

interface ISharkCallback {

    void onFinish(int seqNo, int cmdId, int retCode, int dataRetCode, in SerializableParcel resp);
}
