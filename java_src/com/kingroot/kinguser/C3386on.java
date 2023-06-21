package com.kingroot.kinguser;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.kingroot.kinguser.on */
/* loaded from: classes.dex */
public class C3386on implements cdy {
    @Override // com.kingroot.kinguser.cdy
    /* renamed from: d */
    public HashMap<String, String> mo2694d(Map<String, String> map) {
        C3383ol m2703fZ = C3383ol.m2703fZ();
        cas m2700gd = m2703fZ.m2700gd();
        Context m2699ge = m2703fZ.m2699ge();
        if (m2700gd == null || m2699ge == null) {
            return (HashMap) map;
        }
        map.put("build", "" + m2700gd.mo5048Tg());
        map.put("channel", m2700gd.getChannel());
        map.put("lc", m2700gd.mo5049Tf());
        map.put("product", "" + m2700gd.getProductId());
        String mo5039dG = m2700gd.mo5039dG();
        map.put("softversion", mo5039dG);
        if (mo5039dG != null && mo5039dG.matches("\\d\\.\\d\\.\\d(\\..+)*")) {
            String[] split = mo5039dG.split("\\.");
            if (split.length >= 3) {
                map.put("pversion", split[0]);
                map.put("cversion", split[1]);
                map.put("hotfix", split[2]);
            }
        }
        map.put("sub_platform", String.valueOf(201));
        map.put("pkgkey", m2699ge.getPackageName());
        map.put("app_build_type", Integer.toString(0));
        return (HashMap) map;
    }
}
