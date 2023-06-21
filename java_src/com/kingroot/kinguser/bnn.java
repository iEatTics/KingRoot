package com.kingroot.kinguser;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.NinePatch;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.graphics.drawable.PaintDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.p004v4.app.Fragment;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.CookieSyncManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.mms.pdu.PduHeaders;
import com.kingroot.loader.common.KlConst;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.URLDecoder;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class bnn extends bns {
    public static String bEk;
    public static String bEl;
    private bwd bEm;
    private WeakReference<Activity> bEn;

    /* renamed from: d */
    private String f1760d;

    static {
        bEk = "libwbsafeedit";
        bEl = bEk + ".so";
        String str = Build.CPU_ABI;
        if (str != null && !str.equals("")) {
            if (str.equalsIgnoreCase("arm64-v8a")) {
                bEk = "libwbsafeedit_64";
                bEl = bEk + ".so";
                bpy.m5845aT("openSDK_LOG.AuthAgent", "is arm64-v8a architecture");
                return;
            } else if (str.equalsIgnoreCase("x86")) {
                bEk = "libwbsafeedit_x86";
                bEl = bEk + ".so";
                bpy.m5845aT("openSDK_LOG.AuthAgent", "is x86 architecture");
                return;
            } else if (str.equalsIgnoreCase("x86_64")) {
                bEk = "libwbsafeedit_x86_64";
                bEl = bEk + ".so";
                bpy.m5845aT("openSDK_LOG.AuthAgent", "is x86_64 architecture");
                return;
            } else {
                bEk = "libwbsafeedit";
                bEl = bEk + ".so";
                bpy.m5845aT("openSDK_LOG.AuthAgent", "is arm(default) architecture");
                return;
            }
        }
        bEk = "libwbsafeedit";
        bEl = bEk + ".so";
        bpy.m5845aT("openSDK_LOG.AuthAgent", "is arm(default) architecture");
    }

    public bnn(bno bnoVar) {
        super(bnoVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bnn$b */
    /* loaded from: classes.dex */
    public class C2525b implements bwd {
        private final bwd bEo;
        private final Context bEw;

        /* renamed from: c */
        private final boolean f1766c;

        public C2525b(Context context, bwd bwdVar, boolean z, boolean z2) {
            this.bEw = context;
            this.bEo = bwdVar;
            this.f1766c = z;
            bpy.m5846aP("openSDK_LOG.AuthAgent", "OpenUi, TokenListener()");
        }

        @Override // com.kingroot.kinguser.bwd
        public void onComplete(Object obj) {
            bpy.m5846aP("openSDK_LOG.AuthAgent", "OpenUi, TokenListener() onComplete");
            JSONObject jSONObject = (JSONObject) obj;
            try {
                String string = jSONObject.getString("access_token");
                String string2 = jSONObject.getString("expires_in");
                String string3 = jSONObject.getString("openid");
                if (string != null && bnn.this.bEQ != null && string3 != null) {
                    bnn.this.bEQ.m6202aS(string, string2);
                    bnn.this.bEQ.m6201mH(string3);
                    bnm.m6219d(this.bEw, bnn.this.bEQ);
                }
                String string4 = jSONObject.getString("pf");
                if (string4 != null) {
                    try {
                        this.bEw.getSharedPreferences("pfStore", 0).edit().putString("pf", string4).commit();
                    } catch (Exception e) {
                        e.printStackTrace();
                        bpy.m5843b("openSDK_LOG.AuthAgent", "OpenUi, TokenListener() onComplete error", e);
                    }
                }
                if (this.f1766c) {
                    CookieSyncManager.getInstance().sync();
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
                bpy.m5843b("openSDK_LOG.AuthAgent", "OpenUi, TokenListener() onComplete error", e2);
            }
            this.bEo.onComplete(jSONObject);
            bnn.this.agk();
            bpy.m5844b();
        }

        @Override // com.kingroot.kinguser.bwd
        public void onError(bwf bwfVar) {
            bpy.m5846aP("openSDK_LOG.AuthAgent", "OpenUi, TokenListener() onError");
            this.bEo.onError(bwfVar);
            bpy.m5844b();
        }

        @Override // com.kingroot.kinguser.bwd
        public void onCancel() {
            bpy.m5846aP("openSDK_LOG.AuthAgent", "OpenUi, TokenListener() onCancel");
            this.bEo.onCancel();
            bpy.m5844b();
        }
    }

    /* renamed from: a */
    public int m6217a(Activity activity, String str, bwd bwdVar) {
        return m6216a(activity, str, bwdVar, false, null);
    }

    /* renamed from: a */
    public int m6216a(Activity activity, String str, bwd bwdVar, boolean z, Fragment fragment) {
        this.f1760d = str;
        this.bEn = new WeakReference<>(activity);
        this.bEm = bwdVar;
        if (!bqp.m5779L(activity, this.bEQ.agm()).m5771b("C_LoginWeb") && m6218a(activity, fragment, z)) {
            bpy.m5845aT("openSDK_LOG.AuthAgent", "OpenUi, showUi, return Constants.UI_ACTIVITY");
            bqg.ahl().m5813a(this.bEQ.ago(), this.bEQ.agm(), "2", "1", "5", "0", "0", "0");
            return 1;
        }
        bqg.ahl().m5813a(this.bEQ.ago(), this.bEQ.agm(), "2", "1", "5", "1", "0", "0");
        bpy.m5841d("openSDK_LOG.AuthAgent", "doLogin startActivity fail show dialog.");
        this.bEm = new C2520a(this.bEm);
        return m6214a(z, this.bEm);
    }

    @Override // com.kingroot.kinguser.bns
    public void agk() {
        this.bEm = null;
    }

    /* renamed from: a */
    private int m6214a(boolean z, bwd bwdVar) {
        bpy.m5845aT("openSDK_LOG.AuthAgent", "OpenUi, showDialog -- start");
        CookieSyncManager.createInstance(bqo.agA());
        Bundle agr = agr();
        if (z) {
            agr.putString("isadd", "1");
        }
        agr.putString("scope", this.f1760d);
        agr.putString("client_id", this.bEQ.agm());
        if (bEX) {
            agr.putString("pf", "desktop_m_qq-" + bEV + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + "android" + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + bEU + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + bEW);
        } else {
            agr.putString("pf", "openmobile_android");
        }
        String str = (System.currentTimeMillis() / 1000) + "";
        agr.putString("sign", bqr.m5765M(bqo.agA(), str));
        agr.putString("time", str);
        agr.putString("display", "mobile");
        agr.putString("response_type", "token");
        agr.putString("redirect_uri", "auth://tauth.qq.com/");
        agr.putString("cancel_display", "1");
        agr.putString("switch", "1");
        agr.putString("status_userip", bqt.m5749a());
        final String str2 = bqq.ahr().m5766a(bqo.agA(), "https://openmobile.qq.com/oauth2.0/m_authorize?") + bqm.m5787f(agr);
        final C2525b c2525b = new C2525b(bqo.agA(), bwdVar, true, false);
        bpy.m5846aP("openSDK_LOG.AuthAgent", "OpenUi, showDialog TDialog");
        bqs.m5756a(new Runnable() { // from class: com.kingroot.kinguser.bnn.1
            @Override // java.lang.Runnable
            public void run() {
                final Activity activity;
                bqr.m5757i(bnn.bEk, bnn.bEl, 3);
                if (bnn.this.bEn != null && (activity = (Activity) bnn.this.bEn.get()) != null) {
                    activity.runOnUiThread(new Runnable() { // from class: com.kingroot.kinguser.bnn.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            bnp bnpVar = new bnp(activity, "action_login", str2, c2525b, bnn.this.bEQ);
                            if (activity != null && !activity.isFinishing()) {
                                bnpVar.show();
                            }
                        }
                    });
                }
            }
        });
        bpy.m5845aT("openSDK_LOG.AuthAgent", "OpenUi, showDialog -- end");
        return 2;
    }

    /* renamed from: a */
    private boolean m6218a(Activity activity, Fragment fragment, boolean z) {
        bpy.m5845aT("openSDK_LOG.AuthAgent", "startActionActivity() -- start");
        Intent mI = m6155mI("com.tencent.open.agent.AgentActivity");
        if (mI != null) {
            Bundle agr = agr();
            if (z) {
                agr.putString("isadd", "1");
            }
            agr.putString("scope", this.f1760d);
            agr.putString("client_id", this.bEQ.agm());
            if (bEX) {
                agr.putString("pf", "desktop_m_qq-" + bEV + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + "android" + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + bEU + KlConst.PLUGIN_COMMON_PACKAGE_PREFIX_SPLIT_CHAR + bEW);
            } else {
                agr.putString("pf", "openmobile_android");
            }
            agr.putString("need_pay", "1");
            agr.putString("oauth_app_name", bqr.m5763a(bqo.agA()));
            mI.putExtra("key_action", "action_login");
            mI.putExtra("key_params", agr);
            mI.putExtra("appid", this.bEQ.agm());
            if (m6154o(mI)) {
                this.bEm = new C2520a(this.bEm);
                bnt.agt().m6152a(11101, this.bEm);
                if (fragment != null) {
                    bpy.m5846aP("openSDK_LOG.AuthAgent", "startAssitActivity fragment");
                    m6156a(fragment, mI, 11101);
                } else {
                    bpy.m5846aP("openSDK_LOG.AuthAgent", "startAssitActivity activity");
                    m6157a(activity, mI, 11101);
                }
                bpy.m5845aT("openSDK_LOG.AuthAgent", "startActionActivity() -- end, found activity for loginIntent");
                bqg.ahl().m5815a(0, "LOGIN_CHECK_SDK", "1000", this.bEQ.agm(), "", Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "");
                return true;
            }
        }
        bqg.ahl().m5815a(1, "LOGIN_CHECK_SDK", "1000", this.bEQ.agm(), "", Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "startActionActivity fail");
        bpy.m5845aT("openSDK_LOG.AuthAgent", "startActionActivity() -- end, no target activity for loginIntent");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bnn$a */
    /* loaded from: classes.dex */
    public class C2520a implements bwd {
        bwd bEr;

        /* renamed from: c */
        private final String f1763c = "sendinstall";

        /* renamed from: d */
        private final String f1764d = "installwording";

        /* renamed from: e */
        private final String f1765e = "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi";

        public C2520a(bwd bwdVar) {
            this.bEr = bwdVar;
        }

        @Override // com.kingroot.kinguser.bwd
        public void onComplete(Object obj) {
            JSONObject jSONObject;
            boolean z;
            String str;
            if (obj != null && (jSONObject = (JSONObject) obj) != null) {
                try {
                    r2 = jSONObject.getInt("sendinstall") == 1;
                    str = jSONObject.getString("installwording");
                    z = r2;
                } catch (JSONException e) {
                    bpy.m5841d("openSDK_LOG.AuthAgent", "FeedConfirmListener onComplete There is no value for sendinstall.");
                    z = r2;
                    str = "";
                }
                String decode = URLDecoder.decode(str);
                bpy.m5848a("openSDK_LOG.AuthAgent", " WORDING = " + decode + "xx");
                if (z && !TextUtils.isEmpty(decode)) {
                    m6204a(decode, this.bEr, obj);
                } else if (this.bEr != null) {
                    this.bEr.onComplete(obj);
                }
            }
        }

        /* renamed from: com.kingroot.kinguser.bnn$a$a */
        /* loaded from: classes.dex */
        abstract class AbstractView$OnClickListenerC2524a implements View.OnClickListener {
            Dialog bEu;

            AbstractView$OnClickListenerC2524a(Dialog dialog) {
                this.bEu = dialog;
            }
        }

        /* renamed from: a */
        private void m6204a(String str, final bwd bwdVar, final Object obj) {
            Activity activity;
            PackageInfo packageInfo;
            if (bnn.this.bEn != null && (activity = (Activity) bnn.this.bEn.get()) != null) {
                Dialog dialog = new Dialog(activity);
                dialog.requestWindowFeature(1);
                PackageManager packageManager = activity.getPackageManager();
                try {
                    packageInfo = packageManager.getPackageInfo(activity.getPackageName(), 0);
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                    packageInfo = null;
                }
                Drawable loadIcon = packageInfo != null ? packageInfo.applicationInfo.loadIcon(packageManager) : null;
                View.OnClickListener onClickListener = new AbstractView$OnClickListenerC2524a(dialog) { // from class: com.kingroot.kinguser.bnn.a.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        C2520a.this.m6206a();
                        if (this.bEu != null && this.bEu.isShowing()) {
                            this.bEu.dismiss();
                        }
                        if (bwdVar != null) {
                            bwdVar.onComplete(obj);
                        }
                    }
                };
                View.OnClickListener onClickListener2 = new AbstractView$OnClickListenerC2524a(dialog) { // from class: com.kingroot.kinguser.bnn.a.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        if (this.bEu != null && this.bEu.isShowing()) {
                            this.bEu.dismiss();
                        }
                        if (bwdVar != null) {
                            bwdVar.onComplete(obj);
                        }
                    }
                };
                ColorDrawable colorDrawable = new ColorDrawable();
                colorDrawable.setAlpha(0);
                dialog.getWindow().setBackgroundDrawable(colorDrawable);
                dialog.setContentView(m6205a(activity, loadIcon, str, onClickListener, onClickListener2));
                dialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.kingroot.kinguser.bnn.a.3
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        if (bwdVar != null) {
                            bwdVar.onComplete(obj);
                        }
                    }
                });
                if (activity != null && !activity.isFinishing()) {
                    dialog.show();
                }
            }
        }

        /* renamed from: d */
        private Drawable m6203d(String str, Context context) {
            Drawable drawable;
            IOException e;
            Bitmap bitmap;
            try {
                InputStream open = context.getApplicationContext().getAssets().open(str);
                if (open == null) {
                    return null;
                }
                if (str.endsWith(".9.png")) {
                    try {
                        bitmap = BitmapFactory.decodeStream(open);
                    } catch (OutOfMemoryError e2) {
                        e2.printStackTrace();
                        bitmap = null;
                    }
                    if (bitmap != null) {
                        byte[] ninePatchChunk = bitmap.getNinePatchChunk();
                        NinePatch.isNinePatchChunk(ninePatchChunk);
                        return new NinePatchDrawable(bitmap, ninePatchChunk, new Rect(), null);
                    }
                    return null;
                }
                drawable = Drawable.createFromStream(open, str);
                try {
                    open.close();
                    return drawable;
                } catch (IOException e3) {
                    e = e3;
                    e.printStackTrace();
                    return drawable;
                }
            } catch (IOException e4) {
                drawable = null;
                e = e4;
            }
        }

        /* renamed from: a */
        private View m6205a(Context context, Drawable drawable, String str, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
            float f = displayMetrics.density;
            RelativeLayout relativeLayout = new RelativeLayout(context);
            ImageView imageView = new ImageView(context);
            imageView.setImageDrawable(drawable);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
            imageView.setId(1);
            int i = (int) (14.0f * f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) (60.0f * f), (int) (60.0f * f));
            layoutParams.addRule(9);
            layoutParams.setMargins(0, (int) (18.0f * f), (int) (6.0f * f), (int) (18.0f * f));
            relativeLayout.addView(imageView, layoutParams);
            TextView textView = new TextView(context);
            textView.setText(str);
            textView.setTextSize(14.0f);
            textView.setGravity(3);
            textView.setIncludeFontPadding(false);
            textView.setPadding(0, 0, 0, 0);
            textView.setLines(2);
            textView.setId(5);
            textView.setMinWidth((int) (185.0f * f));
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(1, 1);
            layoutParams2.addRule(6, 1);
            int i2 = (int) (10.0f * f);
            layoutParams2.setMargins(0, 0, (int) (5.0f * f), 0);
            relativeLayout.addView(textView, layoutParams2);
            View view = new View(context);
            view.setBackgroundColor(Color.rgb(214, 214, 214));
            view.setId(3);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, 2);
            layoutParams3.addRule(3, 1);
            layoutParams3.addRule(5, 1);
            layoutParams3.addRule(7, 5);
            layoutParams3.setMargins(0, 0, 0, (int) (12.0f * f));
            relativeLayout.addView(view, layoutParams3);
            LinearLayout linearLayout = new LinearLayout(context);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams4.addRule(5, 1);
            layoutParams4.addRule(7, 5);
            layoutParams4.addRule(3, 3);
            Button button = new Button(context);
            button.setText("跳过");
            button.setBackgroundDrawable(m6203d("buttonNegt.png", context));
            button.setTextColor(Color.rgb(36, 97, (int) PduHeaders.STATUS_DEFERRED));
            button.setTextSize(20.0f);
            button.setOnClickListener(onClickListener2);
            button.setId(4);
            LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(0, (int) (45.0f * f));
            layoutParams5.rightMargin = (int) (14.0f * f);
            layoutParams5.leftMargin = (int) (4.0f * f);
            layoutParams5.weight = 1.0f;
            linearLayout.addView(button, layoutParams5);
            Button button2 = new Button(context);
            button2.setText("确定");
            button2.setTextSize(20.0f);
            button2.setTextColor(Color.rgb(255, 255, 255));
            button2.setBackgroundDrawable(m6203d("buttonPost.png", context));
            button2.setOnClickListener(onClickListener);
            LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams(0, (int) (45.0f * f));
            layoutParams6.weight = 1.0f;
            layoutParams6.rightMargin = (int) (4.0f * f);
            linearLayout.addView(button2, layoutParams6);
            relativeLayout.addView(linearLayout, layoutParams4);
            ViewGroup.LayoutParams layoutParams7 = new FrameLayout.LayoutParams((int) (279.0f * f), (int) (163.0f * f));
            relativeLayout.setPadding((int) (14.0f * f), 0, (int) (12.0f * f), (int) (12.0f * f));
            relativeLayout.setLayoutParams(layoutParams7);
            relativeLayout.setBackgroundColor(Color.rgb(247, 251, 247));
            PaintDrawable paintDrawable = new PaintDrawable(Color.rgb(247, 251, 247));
            paintDrawable.setCornerRadius(f * 5.0f);
            relativeLayout.setBackgroundDrawable(paintDrawable);
            return relativeLayout;
        }

        /* renamed from: a */
        protected void m6206a() {
            Activity activity;
            Bundle ags = bnn.this.ags();
            if (bnn.this.bEn != null && (activity = (Activity) bnn.this.bEn.get()) != null) {
                bqm.m5794a(bnn.this.bEQ, activity, "http://appsupport.qq.com/cgi-bin/qzapps/mapp_addapp.cgi", ags, "POST", null);
            }
        }

        @Override // com.kingroot.kinguser.bwd
        public void onError(bwf bwfVar) {
            if (this.bEr != null) {
                this.bEr.onError(bwfVar);
            }
        }

        @Override // com.kingroot.kinguser.bwd
        public void onCancel() {
            if (this.bEr != null) {
                this.bEr.onCancel();
            }
        }
    }
}
