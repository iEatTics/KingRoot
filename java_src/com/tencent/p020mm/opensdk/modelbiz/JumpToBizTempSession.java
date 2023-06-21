package com.tencent.p020mm.opensdk.modelbiz;

import android.os.Bundle;
import com.tencent.p020mm.opensdk.modelbase.BaseReq;
import com.tencent.p020mm.opensdk.utils.Log;
/* renamed from: com.tencent.mm.opensdk.modelbiz.JumpToBizTempSession */
/* loaded from: classes.dex */
public final class JumpToBizTempSession {
    public static final int SHOW_CHAT = 1;
    public static final int SHOW_MENU = 0;

    /* renamed from: com.tencent.mm.opensdk.modelbiz.JumpToBizTempSession$Req */
    /* loaded from: classes.dex */
    public static class Req extends BaseReq {
        private static final int MAX_SESSION_FROM_LENGTH = 1024;
        private static final String TAG = "MicroMsg.SDK.JumpToBizTempSession.Req";
        public String sessionFrom;
        public int showType;
        public String toUserName;

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public boolean checkArgs() {
            if (this.toUserName == null || this.toUserName.length() <= 0) {
                Log.m495e(TAG, "checkArgs fail, toUserName is invalid");
                return false;
            } else if (this.sessionFrom == null || this.sessionFrom.length() > 1024) {
                Log.m495e(TAG, "checkArgs fail, sessionFrom is invalid");
                return false;
            } else {
                return true;
            }
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public int getType() {
            return 10;
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public void toBundle(Bundle bundle) {
            super.toBundle(bundle);
            bundle.putString("_wxapi_jump_to_biz_webview_req_to_user_name", this.toUserName);
            bundle.putString("_wxapi_jump_to_biz_webview_req_session_from", this.sessionFrom);
            bundle.putInt("_wxapi_jump_to_biz_webview_req_show_type", this.showType);
        }
    }
}
