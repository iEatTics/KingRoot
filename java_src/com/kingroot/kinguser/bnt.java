package com.kingroot.kinguser;

import android.content.Intent;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class bnt {
    private static bnt bEY = null;

    /* renamed from: b */
    private Map<String, C2535a> f1787b;

    public static bnt agt() {
        if (bEY == null) {
            bEY = new bnt();
        }
        return bEY;
    }

    private bnt() {
        this.f1787b = Collections.synchronizedMap(new HashMap());
        if (this.f1787b == null) {
            this.f1787b = Collections.synchronizedMap(new HashMap());
        }
    }

    /* renamed from: a */
    public Object m6152a(int i, bwd bwdVar) {
        C2535a put;
        String m5764a = bqr.m5764a(i);
        if (m5764a == null) {
            bpy.m5840e("openSDK_LOG.UIListenerManager", "setListener action is null! rquestCode=" + i);
            return null;
        }
        synchronized (this.f1787b) {
            put = this.f1787b.put(m5764a, new C2535a(i, bwdVar));
        }
        if (put == null) {
            return null;
        }
        return put.bFa;
    }

    /* renamed from: jZ */
    public bwd m6149jZ(int i) {
        String m5764a = bqr.m5764a(i);
        if (m5764a == null) {
            bpy.m5840e("openSDK_LOG.UIListenerManager", "getListner action is null! rquestCode=" + i);
            return null;
        }
        return m6148mJ(m5764a);
    }

    /* renamed from: mJ */
    public bwd m6148mJ(String str) {
        C2535a c2535a;
        if (str == null) {
            bpy.m5840e("openSDK_LOG.UIListenerManager", "getListnerWithAction action is null!");
            return null;
        }
        synchronized (this.f1787b) {
            c2535a = this.f1787b.get(str);
            this.f1787b.remove(str);
        }
        if (c2535a == null) {
            return null;
        }
        return c2535a.bFa;
    }

    /* renamed from: a */
    public void m6151a(Intent intent, bwd bwdVar) {
        bpy.m5845aT("openSDK_LOG.UIListenerManager", "handleDataToListener");
        if (intent == null) {
            bwdVar.onCancel();
            return;
        }
        String stringExtra = intent.getStringExtra("key_action");
        if ("action_login".equals(stringExtra)) {
            int intExtra = intent.getIntExtra("key_error_code", 0);
            if (intExtra == 0) {
                String stringExtra2 = intent.getStringExtra("key_response");
                if (stringExtra2 != null) {
                    try {
                        bwdVar.onComplete(bqt.m5735mU(stringExtra2));
                        return;
                    } catch (JSONException e) {
                        bwdVar.onError(new bwf(-4, "服务器返回数据格式有误!", stringExtra2));
                        bpy.m5843b("openSDK_LOG.UIListenerManager", "OpenUi, onActivityResult, json error", e);
                        return;
                    }
                }
                bpy.m5846aP("openSDK_LOG.UIListenerManager", "OpenUi, onActivityResult, onComplete");
                bwdVar.onComplete(new JSONObject());
                return;
            }
            bpy.m5840e("openSDK_LOG.UIListenerManager", "OpenUi, onActivityResult, onError = " + intExtra + "");
            bwdVar.onError(new bwf(intExtra, intent.getStringExtra("key_error_msg"), intent.getStringExtra("key_error_detail")));
        } else if ("action_share".equals(stringExtra)) {
            String stringExtra3 = intent.getStringExtra("result");
            String stringExtra4 = intent.getStringExtra("response");
            if ("cancel".equals(stringExtra3)) {
                bwdVar.onCancel();
            } else if ("error".equals(stringExtra3)) {
                bwdVar.onError(new bwf(-6, "unknown error", stringExtra4 + ""));
            } else if ("complete".equals(stringExtra3)) {
                try {
                    bwdVar.onComplete(new JSONObject(stringExtra4 == null ? "{\"ret\": 0}" : stringExtra4));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                    bwdVar.onError(new bwf(-4, "json error", stringExtra4 + ""));
                }
            }
        }
    }

    /* renamed from: b */
    private bwd m6150b(int i, bwd bwdVar) {
        if (i == 11101) {
            bpy.m5840e("openSDK_LOG.UIListenerManager", "登录的接口回调不能重新构建，暂时无法提供，先记录下来这种情况是否存在");
        } else if (i == 11105) {
            bpy.m5840e("openSDK_LOG.UIListenerManager", "Social Api 的接口回调需要使用param来重新构建，暂时无法提供，先记录下来这种情况是否存在");
        } else if (i == 11106) {
            bpy.m5840e("openSDK_LOG.UIListenerManager", "Social Api 的H5接口回调需要使用param来重新构建，暂时无法提供，先记录下来这种情况是否存在");
        }
        return bwdVar;
    }

    /* renamed from: a */
    public boolean m6153a(int i, int i2, Intent intent, bwd bwdVar) {
        bwd bwdVar2;
        bpy.m5845aT("openSDK_LOG.UIListenerManager", "onActivityResult req=" + i + " res=" + i2);
        bwd m6149jZ = m6149jZ(i);
        if (m6149jZ != null) {
            bwdVar2 = m6149jZ;
        } else if (bwdVar != null) {
            bwdVar2 = m6150b(i, bwdVar);
        } else {
            bpy.m5840e("openSDK_LOG.UIListenerManager", "onActivityResult can't find the listener");
            return false;
        }
        if (i2 == -1) {
            if (intent == null) {
                bwdVar2.onError(new bwf(-6, "onActivityResult intent data is null.", "onActivityResult intent data is null."));
                return true;
            }
            String stringExtra = intent.getStringExtra("key_action");
            if ("action_login".equals(stringExtra)) {
                int intExtra = intent.getIntExtra("key_error_code", 0);
                if (intExtra == 0) {
                    String stringExtra2 = intent.getStringExtra("key_response");
                    if (stringExtra2 != null) {
                        try {
                            bwdVar2.onComplete(bqt.m5735mU(stringExtra2));
                        } catch (JSONException e) {
                            bwdVar2.onError(new bwf(-4, "服务器返回数据格式有误!", stringExtra2));
                            bpy.m5843b("openSDK_LOG.UIListenerManager", "OpenUi, onActivityResult, json error", e);
                        }
                    } else {
                        bpy.m5846aP("openSDK_LOG.UIListenerManager", "OpenUi, onActivityResult, onComplete");
                        bwdVar2.onComplete(new JSONObject());
                    }
                } else {
                    bpy.m5840e("openSDK_LOG.UIListenerManager", "OpenUi, onActivityResult, onError = " + intExtra + "");
                    bwdVar2.onError(new bwf(intExtra, intent.getStringExtra("key_error_msg"), intent.getStringExtra("key_error_detail")));
                }
            } else if ("action_share".equals(stringExtra)) {
                String stringExtra3 = intent.getStringExtra("result");
                String stringExtra4 = intent.getStringExtra("response");
                if ("cancel".equals(stringExtra3)) {
                    bwdVar2.onCancel();
                } else if ("error".equals(stringExtra3)) {
                    bwdVar2.onError(new bwf(-6, "unknown error", stringExtra4 + ""));
                } else if ("complete".equals(stringExtra3)) {
                    try {
                        bwdVar2.onComplete(new JSONObject(stringExtra4 == null ? "{\"ret\": 0}" : stringExtra4));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                        bwdVar2.onError(new bwf(-4, "json error", stringExtra4 + ""));
                    }
                }
            } else {
                int intExtra2 = intent.getIntExtra("key_error_code", 0);
                if (intExtra2 == 0) {
                    String stringExtra5 = intent.getStringExtra("key_response");
                    if (stringExtra5 != null) {
                        try {
                            bwdVar2.onComplete(bqt.m5735mU(stringExtra5));
                        } catch (JSONException e3) {
                            bwdVar2.onError(new bwf(-4, "服务器返回数据格式有误!", stringExtra5));
                        }
                    } else {
                        bwdVar2.onComplete(new JSONObject());
                    }
                } else {
                    bwdVar2.onError(new bwf(intExtra2, intent.getStringExtra("key_error_msg"), intent.getStringExtra("key_error_detail")));
                }
            }
        } else {
            bwdVar2.onCancel();
        }
        return true;
    }

    /* renamed from: com.kingroot.kinguser.bnt$a */
    /* loaded from: classes.dex */
    public class C2535a {
        public int bEZ;
        public bwd bFa;

        public C2535a(int i, bwd bwdVar) {
            this.bEZ = i;
            this.bFa = bwdVar;
        }
    }
}
