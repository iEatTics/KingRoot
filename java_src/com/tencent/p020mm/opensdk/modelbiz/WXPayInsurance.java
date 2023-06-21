package com.tencent.p020mm.opensdk.modelbiz;

import android.os.Bundle;
import com.tencent.p020mm.opensdk.modelbase.BaseReq;
import com.tencent.p020mm.opensdk.modelbase.BaseResp;
import com.tencent.p020mm.opensdk.utils.C4178d;
import com.tencent.p020mm.opensdk.utils.Log;
/* renamed from: com.tencent.mm.opensdk.modelbiz.WXPayInsurance */
/* loaded from: classes.dex */
public class WXPayInsurance {

    /* renamed from: com.tencent.mm.opensdk.modelbiz.WXPayInsurance$Req */
    /* loaded from: classes.dex */
    public static final class Req extends BaseReq {
        private static final String TAG = "MicroMsg.SDK.WXPayInsurance.Req";
        private static final int URL_LENGTH_LIMIT = 10240;
        public String url;

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public final boolean checkArgs() {
            if (C4178d.m486b(this.url)) {
                Log.m494i(TAG, "url should not be empty");
                return false;
            } else if (this.url.length() > URL_LENGTH_LIMIT) {
                Log.m495e(TAG, "url must be in 10k");
                return false;
            } else {
                return true;
            }
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public final void fromBundle(Bundle bundle) {
            super.fromBundle(bundle);
            this.url = bundle.getString("_wxapi_pay_insourance_req_url");
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public final int getType() {
            return 22;
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public final void toBundle(Bundle bundle) {
            super.fromBundle(bundle);
            bundle.putString("_wxapi_pay_insourance_req_url", this.url);
        }
    }

    /* renamed from: com.tencent.mm.opensdk.modelbiz.WXPayInsurance$Resp */
    /* loaded from: classes.dex */
    public static final class Resp extends BaseResp {
        public String wxOrderId;

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseResp
        public final boolean checkArgs() {
            return true;
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseResp
        public final void fromBundle(Bundle bundle) {
            super.fromBundle(bundle);
            this.wxOrderId = bundle.getString("_wxapi_pay_insourance_order_id");
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseResp
        public final int getType() {
            return 22;
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseResp
        public final void toBundle(Bundle bundle) {
            super.fromBundle(bundle);
            bundle.putString("_wxapi_pay_insourance_order_id", this.wxOrderId);
        }
    }
}
