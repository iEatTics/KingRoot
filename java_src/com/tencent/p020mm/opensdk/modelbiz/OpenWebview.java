package com.tencent.p020mm.opensdk.modelbiz;

import android.os.Bundle;
import com.tencent.p020mm.opensdk.modelbase.BaseReq;
import com.tencent.p020mm.opensdk.modelbase.BaseResp;
import java.net.URLEncoder;
/* renamed from: com.tencent.mm.opensdk.modelbiz.OpenWebview */
/* loaded from: classes.dex */
public class OpenWebview {

    /* renamed from: com.tencent.mm.opensdk.modelbiz.OpenWebview$Req */
    /* loaded from: classes.dex */
    public static class Req extends BaseReq {
        private static final int MAX_URL_LENGHT = 10240;
        public String url;

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public boolean checkArgs() {
            return this.url != null && this.url.length() >= 0 && this.url.length() <= MAX_URL_LENGHT;
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public void fromBundle(Bundle bundle) {
            super.fromBundle(bundle);
            this.url = bundle.getString("_wxapi_jump_to_webview_url");
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public int getType() {
            return 12;
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public void toBundle(Bundle bundle) {
            super.toBundle(bundle);
            bundle.putString("_wxapi_jump_to_webview_url", URLEncoder.encode(this.url));
        }
    }

    /* renamed from: com.tencent.mm.opensdk.modelbiz.OpenWebview$Resp */
    /* loaded from: classes.dex */
    public static class Resp extends BaseResp {
        public String result;

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
        public void fromBundle(Bundle bundle) {
            super.fromBundle(bundle);
            this.result = bundle.getString("_wxapi_open_webview_result");
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseResp
        public int getType() {
            return 12;
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseResp
        public void toBundle(Bundle bundle) {
            super.toBundle(bundle);
            bundle.putString("_wxapi_open_webview_result", this.result);
        }
    }
}
