package com.tencent.p020mm.opensdk.modelmsg;

import android.os.Bundle;
import com.tencent.p020mm.opensdk.modelbase.BaseReq;
import com.tencent.p020mm.opensdk.modelbase.BaseResp;
import com.tencent.p020mm.opensdk.utils.Log;
/* renamed from: com.tencent.mm.opensdk.modelmsg.LaunchFromWX */
/* loaded from: classes.dex */
public class LaunchFromWX {

    /* renamed from: com.tencent.mm.opensdk.modelmsg.LaunchFromWX$Req */
    /* loaded from: classes.dex */
    public static class Req extends BaseReq {
        private static final int MESSAGE_ACTION_LENGTH_LIMIT = 2048;
        private static final int MESSAGE_EXT_LENGTH_LIMIT = 2048;
        private static final String TAG = "MicroMsg.SDK.LaunchFromWX.Req";
        public String country;
        public String lang;
        public String messageAction;
        public String messageExt;

        public Req() {
        }

        public Req(Bundle bundle) {
            fromBundle(bundle);
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public boolean checkArgs() {
            if (this.messageAction != null && this.messageAction.length() > 2048) {
                Log.m495e(TAG, "checkArgs fail, messageAction is too long");
                return false;
            } else if (this.messageExt == null || this.messageExt.length() <= 2048) {
                return true;
            } else {
                Log.m495e(TAG, "checkArgs fail, messageExt is too long");
                return false;
            }
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public void fromBundle(Bundle bundle) {
            super.fromBundle(bundle);
            this.messageAction = bundle.getString("_wxobject_message_action");
            this.messageExt = bundle.getString("_wxobject_message_ext");
            this.lang = bundle.getString("_wxapi_launch_req_lang");
            this.country = bundle.getString("_wxapi_launch_req_country");
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public int getType() {
            return 6;
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public void toBundle(Bundle bundle) {
            super.toBundle(bundle);
            bundle.putString("_wxobject_message_action", this.messageAction);
            bundle.putString("_wxobject_message_ext", this.messageExt);
            bundle.putString("_wxapi_launch_req_lang", this.lang);
            bundle.putString("_wxapi_launch_req_country", this.country);
        }
    }

    /* renamed from: com.tencent.mm.opensdk.modelmsg.LaunchFromWX$Resp */
    /* loaded from: classes.dex */
    public static class Resp extends BaseResp {
        public Resp() {
        }

        public Resp(Bundle bundle) {
            fromBundle(bundle);
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseResp
        public boolean checkArgs() {
            return true;
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseResp
        public int getType() {
            return 6;
        }
    }

    private LaunchFromWX() {
    }
}
