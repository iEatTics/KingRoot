package com.tencent.p020mm.opensdk.modelpay;

import android.os.Bundle;
import com.tencent.p020mm.opensdk.modelbase.BaseReq;
import com.tencent.p020mm.opensdk.utils.C4173a;
import com.tencent.p020mm.opensdk.utils.Log;
/* renamed from: com.tencent.mm.opensdk.modelpay.PayReq */
/* loaded from: classes.dex */
public class PayReq extends BaseReq {
    private static final int EXTDATA_MAX_LENGTH = 1024;
    private static final String TAG = "MicroMsg.PaySdk.PayReq";
    public String appId;
    public String extData;
    public String nonceStr;
    public Options options;
    public String packageValue;
    public String partnerId;
    public String prepayId;
    public String sign;
    public String signType;
    public String timeStamp;

    /* renamed from: com.tencent.mm.opensdk.modelpay.PayReq$Options */
    /* loaded from: classes.dex */
    public static class Options {
        public static final int INVALID_FLAGS = -1;
        public String callbackClassName;
        public int callbackFlags = -1;

        public void fromBundle(Bundle bundle) {
            this.callbackClassName = C4173a.m490b(bundle, "_wxapi_payoptions_callback_classname");
            this.callbackFlags = C4173a.m491a(bundle, "_wxapi_payoptions_callback_flags");
        }

        public void toBundle(Bundle bundle) {
            bundle.putString("_wxapi_payoptions_callback_classname", this.callbackClassName);
            bundle.putInt("_wxapi_payoptions_callback_flags", this.callbackFlags);
        }
    }

    @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
    public boolean checkArgs() {
        if (this.appId == null || this.appId.length() == 0) {
            Log.m495e(TAG, "checkArgs fail, invalid appId");
            return false;
        } else if (this.partnerId == null || this.partnerId.length() == 0) {
            Log.m495e(TAG, "checkArgs fail, invalid partnerId");
            return false;
        } else if (this.prepayId == null || this.prepayId.length() == 0) {
            Log.m495e(TAG, "checkArgs fail, invalid prepayId");
            return false;
        } else if (this.nonceStr == null || this.nonceStr.length() == 0) {
            Log.m495e(TAG, "checkArgs fail, invalid nonceStr");
            return false;
        } else if (this.timeStamp == null || this.timeStamp.length() == 0) {
            Log.m495e(TAG, "checkArgs fail, invalid timeStamp");
            return false;
        } else if (this.packageValue == null || this.packageValue.length() == 0) {
            Log.m495e(TAG, "checkArgs fail, invalid packageValue");
            return false;
        } else if (this.sign == null || this.sign.length() == 0) {
            Log.m495e(TAG, "checkArgs fail, invalid sign");
            return false;
        } else if (this.extData == null || this.extData.length() <= 1024) {
            return true;
        } else {
            Log.m495e(TAG, "checkArgs fail, extData length too long");
            return false;
        }
    }

    @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
    public void fromBundle(Bundle bundle) {
        super.fromBundle(bundle);
        this.appId = C4173a.m490b(bundle, "_wxapi_payreq_appid");
        this.partnerId = C4173a.m490b(bundle, "_wxapi_payreq_partnerid");
        this.prepayId = C4173a.m490b(bundle, "_wxapi_payreq_prepayid");
        this.nonceStr = C4173a.m490b(bundle, "_wxapi_payreq_noncestr");
        this.timeStamp = C4173a.m490b(bundle, "_wxapi_payreq_timestamp");
        this.packageValue = C4173a.m490b(bundle, "_wxapi_payreq_packagevalue");
        this.sign = C4173a.m490b(bundle, "_wxapi_payreq_sign");
        this.extData = C4173a.m490b(bundle, "_wxapi_payreq_extdata");
        this.signType = C4173a.m490b(bundle, "_wxapi_payreq_sign_type");
        this.options = new Options();
        this.options.fromBundle(bundle);
    }

    @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
    public int getType() {
        return 5;
    }

    @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
    public void toBundle(Bundle bundle) {
        super.toBundle(bundle);
        bundle.putString("_wxapi_payreq_appid", this.appId);
        bundle.putString("_wxapi_payreq_partnerid", this.partnerId);
        bundle.putString("_wxapi_payreq_prepayid", this.prepayId);
        bundle.putString("_wxapi_payreq_noncestr", this.nonceStr);
        bundle.putString("_wxapi_payreq_timestamp", this.timeStamp);
        bundle.putString("_wxapi_payreq_packagevalue", this.packageValue);
        bundle.putString("_wxapi_payreq_sign", this.sign);
        bundle.putString("_wxapi_payreq_extdata", this.extData);
        bundle.putString("_wxapi_payreq_sign_type", this.signType);
        if (this.options != null) {
            this.options.toBundle(bundle);
        }
    }
}
