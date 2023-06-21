package com.kingroot.kinguser;

import android.net.Uri;
import android.webkit.WebView;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public class bps {

    /* renamed from: a */
    protected HashMap<String, C2560b> f1971a = new HashMap<>();

    /* renamed from: com.kingroot.kinguser.bps$a */
    /* loaded from: classes.dex */
    public static class C2559a {

        /* renamed from: b */
        protected long f1972b;
        protected WeakReference<WebView> byQ;

        /* renamed from: c */
        protected String f1973c;

        public C2559a(WebView webView, long j, String str) {
            this.byQ = new WeakReference<>(webView);
            this.f1972b = j;
            this.f1973c = str;
        }

        /* renamed from: v */
        public void mo5724v(Object obj) {
            WebView webView = this.byQ.get();
            if (webView != null) {
                String str = "'undefined'";
                if (obj instanceof String) {
                    str = "'" + ((Object) ((String) obj).replace("\\", "\\\\").replace("'", "\\'")) + "'";
                } else if ((obj instanceof Number) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Double) || (obj instanceof Float)) {
                    str = obj.toString();
                } else if (obj instanceof Boolean) {
                    str = obj.toString();
                }
                webView.loadUrl("javascript:window.JsBridge&&JsBridge.callback(" + this.f1972b + ",{'r':0,'result':" + str + "});");
            }
        }

        /* renamed from: a */
        public void mo5727a() {
            WebView webView = this.byQ.get();
            if (webView != null) {
                webView.loadUrl("javascript:window.JsBridge&&JsBridge.callback(" + this.f1972b + ",{'r':1,'result':'no such method'})");
            }
        }

        /* renamed from: a */
        public void mo5726a(String str) {
            WebView webView = this.byQ.get();
            if (webView != null) {
                webView.loadUrl("javascript:" + str);
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.bps$b */
    /* loaded from: classes.dex */
    public static class C2560b {
        public void call(String str, List<String> list, C2559a c2559a) {
            Object invoke;
            Method[] declaredMethods = getClass().getDeclaredMethods();
            Method method = null;
            int length = declaredMethods.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                Method method2 = declaredMethods[i];
                if (method2.getName().equals(str) && method2.getParameterTypes().length == list.size()) {
                    method = method2;
                    break;
                }
                try {
                    i++;
                } catch (Exception e) {
                    bpy.m5843b("openSDK_LOG.JsBridge", "-->handler call mehtod ex. targetMethod: " + ((Object) null), e);
                    if (c2559a != null) {
                        c2559a.mo5727a();
                        return;
                    }
                    return;
                }
            }
            if (method != null) {
                switch (list.size()) {
                    case 0:
                        invoke = method.invoke(this, new Object[0]);
                        break;
                    case 1:
                        invoke = method.invoke(this, list.get(0));
                        break;
                    case 2:
                        invoke = method.invoke(this, list.get(0), list.get(1));
                        break;
                    case 3:
                        invoke = method.invoke(this, list.get(0), list.get(1), list.get(2));
                        break;
                    case 4:
                        invoke = method.invoke(this, list.get(0), list.get(1), list.get(2), list.get(3));
                        break;
                    case 5:
                        invoke = method.invoke(this, list.get(0), list.get(1), list.get(2), list.get(3), list.get(4));
                        break;
                    default:
                        invoke = method.invoke(this, list.get(0), list.get(1), list.get(2), list.get(3), list.get(4), list.get(5));
                        break;
                }
                Class<?> returnType = method.getReturnType();
                bpy.m5846aP("openSDK_LOG.JsBridge", "-->call, result: " + invoke + " | ReturnType: " + returnType.getName());
                if ("void".equals(returnType.getName()) || returnType == Void.class) {
                    if (c2559a != null) {
                        c2559a.mo5724v(null);
                    }
                } else if (c2559a != null && customCallback()) {
                    c2559a.mo5726a(invoke != null ? invoke.toString() : null);
                }
            } else if (c2559a != null) {
                c2559a.mo5727a();
            }
        }

        public boolean customCallback() {
            return false;
        }
    }

    /* renamed from: a */
    public void m5881a(C2560b c2560b, String str) {
        this.f1971a.put(str, c2560b);
    }

    /* renamed from: a */
    public void mo5728a(String str, String str2, List<String> list, C2559a c2559a) {
        bpy.m5848a("openSDK_LOG.JsBridge", "getResult---objName = " + str + " methodName = " + str2);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                list.set(i, URLDecoder.decode(list.get(i), "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        C2560b c2560b = this.f1971a.get(str);
        if (c2560b != null) {
            bpy.m5846aP("openSDK_LOG.JsBridge", "call----");
            c2560b.call(str2, list, c2559a);
            return;
        }
        bpy.m5846aP("openSDK_LOG.JsBridge", "not call----objName NOT FIND");
        if (c2559a != null) {
            c2559a.mo5727a();
        }
    }

    /* renamed from: a */
    public boolean mo5729a(WebView webView, String str) {
        bpy.m5848a("openSDK_LOG.JsBridge", "-->canHandleUrl---url = " + str);
        if (str != null && Uri.parse(str).getScheme().equals("jsbridge")) {
            ArrayList arrayList = new ArrayList(Arrays.asList((str + "/#").split("/")));
            if (arrayList.size() >= 6) {
                List<String> subList = arrayList.subList(4, arrayList.size() - 1);
                C2559a c2559a = new C2559a(webView, 4L, str);
                webView.getUrl();
                mo5728a((String) arrayList.get(2), (String) arrayList.get(3), subList, c2559a);
                return true;
            }
            return false;
        }
        return false;
    }
}
