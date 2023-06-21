package oicq.wlogin_sdk.tools;

import oicq.wlogin_sdk.request.C4379u;
/* loaded from: classes.dex */
public class InternationMsg {

    /* renamed from: a */
    static C4389a[] f5319a = {new C4389a(2052, MSG_TYPE.MSG_0, "登录失败"), new C4389a(1028, MSG_TYPE.MSG_0, "登錄失敗"), new C4389a(1033, MSG_TYPE.MSG_0, "Unable to login"), new C4389a(2052, MSG_TYPE.MSG_1, "请你稍后重试。"), new C4389a(1028, MSG_TYPE.MSG_1, "請你稍後重試。"), new C4389a(1033, MSG_TYPE.MSG_1, "Please try again later."), new C4389a(2052, MSG_TYPE.MSG_2, "手机存储异常，请删除帐号重试。"), new C4389a(1028, MSG_TYPE.MSG_2, "手機存儲異常，請刪除帳號重試。"), new C4389a(1033, MSG_TYPE.MSG_2, "Phone memory error, please delete the account and try again."), new C4389a(2052, MSG_TYPE.MSG_3, "请求失败，请你稍后重试。"), new C4389a(1028, MSG_TYPE.MSG_3, "請求失敗，請你稍後重試。"), new C4389a(1033, MSG_TYPE.MSG_3, "Request failed, please try again later."), new C4389a(2052, MSG_TYPE.MSG_4, "网络超时，请你稍后重试。"), new C4389a(1028, MSG_TYPE.MSG_4, "網絡超時，請你稍後重試。"), new C4389a(1033, MSG_TYPE.MSG_4, "Network timeout, please try again later."), new C4389a(2052, MSG_TYPE.MSG_5, "登录设备保护"), new C4389a(1028, MSG_TYPE.MSG_5, "登錄設備保護"), new C4389a(1033, MSG_TYPE.MSG_5, "Device Protection")};

    /* loaded from: classes.dex */
    public enum MSG_TYPE {
        MSG_0,
        MSG_1,
        MSG_2,
        MSG_3,
        MSG_4,
        MSG_5
    }

    /* renamed from: oicq.wlogin_sdk.tools.InternationMsg$a */
    /* loaded from: classes.dex */
    static class C4389a {

        /* renamed from: a */
        int f5320a;

        /* renamed from: b */
        MSG_TYPE f5321b;

        /* renamed from: c */
        String f5322c;

        public C4389a(int i, MSG_TYPE msg_type, String str) {
            this.f5320a = i;
            this.f5321b = msg_type;
            this.f5322c = str;
        }
    }

    /* renamed from: a */
    public static String m49a(MSG_TYPE msg_type) {
        for (int i = 0; i < f5319a.length; i++) {
            if (msg_type == f5319a[i].f5321b && C4379u.f5289u == f5319a[i].f5320a) {
                return f5319a[i].f5322c;
            }
        }
        return "";
    }
}
