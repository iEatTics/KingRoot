package com.tencent.tauth;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.kingroot.kinguser.bnt;
import com.kingroot.kinguser.bpy;
import com.kingroot.kinguser.bqr;
import com.kingroot.kinguser.bqt;
import com.kingroot.kinguser.bwd;
import com.tencent.connect.common.AssistActivity;
/* loaded from: classes.dex */
public class AuthActivity extends Activity {

    /* renamed from: a */
    private static int f4932a = 0;

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent() == null) {
            bpy.m5841d("openSDK_LOG.AuthActivity", "-->onCreate, getIntent() return null");
            finish();
            return;
        }
        Uri uri = null;
        try {
            uri = getIntent().getData();
        } catch (Exception e) {
            bpy.m5840e("openSDK_LOG.AuthActivity", "-->onCreate, getIntent().getData() has exception! " + e.getMessage());
        }
        bpy.m5848a("openSDK_LOG.AuthActivity", "-->onCreate, uri: " + uri);
        m399d(uri);
    }

    /* renamed from: d */
    private void m399d(Uri uri) {
        bpy.m5845aT("openSDK_LOG.AuthActivity", "-->handleActionUri--start");
        if (uri == null || uri.toString() == null || uri.toString().equals("")) {
            bpy.m5841d("openSDK_LOG.AuthActivity", "-->handleActionUri, uri invalid");
            finish();
            return;
        }
        String uri2 = uri.toString();
        Bundle m5738mR = bqt.m5738mR(uri2.substring(uri2.indexOf("#") + 1));
        if (m5738mR == null) {
            bpy.m5841d("openSDK_LOG.AuthActivity", "-->handleActionUri, bundle is null");
            finish();
            return;
        }
        String string = m5738mR.getString("action");
        bpy.m5845aT("openSDK_LOG.AuthActivity", "-->handleActionUri, action: " + string);
        if (string == null) {
            finish();
        } else if (string.equals("shareToQQ") || string.equals("shareToQzone") || string.equals("sendToMyComputer") || string.equals("shareToTroopBar")) {
            if (string.equals("shareToQzone") && bqr.m5762a(this, "com.tencent.mobileqq") != null && bqr.m5759c(this, "5.2.0") < 0) {
                f4932a++;
                if (f4932a == 2) {
                    f4932a = 0;
                    finish();
                    return;
                }
            }
            bpy.m5845aT("openSDK_LOG.AuthActivity", "-->handleActionUri, most share action, start assistactivity");
            Intent intent = new Intent(this, AssistActivity.class);
            intent.putExtras(m5738mR);
            intent.setFlags(603979776);
            startActivity(intent);
            finish();
        } else if (string.equals("addToQQFavorites")) {
            Intent intent2 = getIntent();
            intent2.putExtras(m5738mR);
            intent2.putExtra("key_action", "action_share");
            bwd m6148mJ = bnt.agt().m6148mJ(string);
            if (m6148mJ != null) {
                bnt.agt().m6151a(intent2, m6148mJ);
            }
            finish();
        } else if (string.equals("sharePrize")) {
            Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
            String string2 = m5738mR.getString("response");
            String str = "";
            try {
                str = bqt.m5735mU(string2).getString("activityid");
            } catch (Exception e) {
                bpy.m5843b("openSDK_LOG.AuthActivity", "sharePrize parseJson has exception.", e);
            }
            if (!TextUtils.isEmpty(str)) {
                launchIntentForPackage.putExtra("sharePrize", true);
                Bundle bundle = new Bundle();
                bundle.putString("activityid", str);
                launchIntentForPackage.putExtras(bundle);
            }
            startActivity(launchIntentForPackage);
            finish();
        } else {
            finish();
        }
    }
}
