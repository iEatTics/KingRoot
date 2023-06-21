package com.tencent.p020mm.opensdk.modelbiz;

import android.os.Bundle;
import com.tencent.p020mm.opensdk.modelbase.BaseReq;
import com.tencent.p020mm.opensdk.modelbase.BaseResp;
import com.tencent.p020mm.opensdk.utils.C4178d;
import com.tencent.p020mm.opensdk.utils.Log;
/* renamed from: com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram */
/* loaded from: classes.dex */
public class WXLaunchMiniProgram {

    /* renamed from: com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Req */
    /* loaded from: classes.dex */
    public static final class Req extends BaseReq {
        public static final int MINIPROGRAM_TYPE_PREVIEW = 2;
        public static final int MINIPROGRAM_TYPE_TEST = 1;
        public static final int MINIPTOGRAM_TYPE_RELEASE = 0;
        private static final String TAG = "MicroMsg.SDK.WXLaunchMiniProgram.Req";
        public String userName;
        public String path = "";
        public int miniprogramType = 0;
        public String extData = "";

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public final boolean checkArgs() {
            if (C4178d.m486b(this.userName)) {
                Log.m495e(TAG, "userName is null");
                return false;
            } else if (this.miniprogramType < 0 || this.miniprogramType > 2) {
                Log.m495e(TAG, "miniprogram type should between MINIPTOGRAM_TYPE_RELEASE and MINIPROGRAM_TYPE_PREVIEW");
                return false;
            } else {
                return true;
            }
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public final int getType() {
            return 19;
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseReq
        public final void toBundle(Bundle bundle) {
            super.toBundle(bundle);
            bundle.putString("_launch_wxminiprogram_username", this.userName);
            bundle.putString("_launch_wxminiprogram_path", this.path);
            bundle.putString("_launch_wxminiprogram_extData", this.extData);
            bundle.putInt("_launch_wxminiprogram_type", this.miniprogramType);
        }
    }

    /* renamed from: com.tencent.mm.opensdk.modelbiz.WXLaunchMiniProgram$Resp */
    /* loaded from: classes.dex */
    public static final class Resp extends BaseResp {
        public String extMsg;

        public Resp() {
        }

        public Resp(Bundle bundle) {
            fromBundle(bundle);
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseResp
        public final boolean checkArgs() {
            return true;
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseResp
        public final void fromBundle(Bundle bundle) {
            super.fromBundle(bundle);
            this.extMsg = bundle.getString("_launch_wxminiprogram_ext_msg");
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseResp
        public final int getType() {
            return 19;
        }

        @Override // com.tencent.p020mm.opensdk.modelbase.BaseResp
        public final void toBundle(Bundle bundle) {
            super.toBundle(bundle);
            bundle.putString("_launch_wxminiprogram_ext_msg", this.extMsg);
        }
    }
}
