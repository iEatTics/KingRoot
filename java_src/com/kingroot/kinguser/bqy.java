package com.kingroot.kinguser;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import com.kingroot.kinguser.bps;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes.dex */
public class bqy extends bps {
    @Override // com.kingroot.kinguser.bps
    /* renamed from: a */
    public void mo5728a(String str, String str2, List<String> list, bps.C2559a c2559a) {
        bpy.m5848a("openSDK_LOG.SecureJsBridge", "-->getResult, objectName: " + str + " | methodName: " + str2);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                list.set(i, URLDecoder.decode(list.get(i), "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        bps.C2560b c2560b = this.f1971a.get(str);
        if (c2560b != null) {
            bpy.m5846aP("openSDK_LOG.SecureJsBridge", "-->handler != null");
            c2560b.call(str2, list, c2559a);
            return;
        }
        bpy.m5846aP("openSDK_LOG.SecureJsBridge", "-->handler == null");
        if (c2559a != null) {
            c2559a.mo5727a();
        }
    }

    @Override // com.kingroot.kinguser.bps
    /* renamed from: a */
    public boolean mo5729a(WebView webView, String str) {
        bpy.m5848a("openSDK_LOG.SecureJsBridge", "-->canHandleUrl---url = " + str);
        if (str != null && Uri.parse(str).getScheme().equals("jsbridge")) {
            ArrayList arrayList = new ArrayList(Arrays.asList((str + "/#").split("/")));
            if (arrayList.size() < 7) {
                return false;
            }
            String str2 = (String) arrayList.get(2);
            String str3 = (String) arrayList.get(3);
            String str4 = (String) arrayList.get(4);
            String str5 = (String) arrayList.get(5);
            bpy.m5848a("openSDK_LOG.SecureJsBridge", "-->canHandleUrl, objectName: " + str2 + " | methodName: " + str3 + " | snStr: " + str4);
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4)) {
                return false;
            }
            try {
                mo5728a(str2, str3, arrayList.subList(6, arrayList.size() - 1), new bqz(webView, Long.parseLong(str4), str, str5));
                return true;
            } catch (Exception e) {
                return false;
            }
        }
        return false;
    }
}
