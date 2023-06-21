package com.tencent.p020mm.opensdk.diffdev.p022a;

import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.tencent.p020mm.opensdk.diffdev.IDiffDevOAuth;
import com.tencent.p020mm.opensdk.diffdev.OAuthListener;
import com.tencent.p020mm.opensdk.utils.Log;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.tencent.mm.opensdk.diffdev.a.a */
/* loaded from: classes.dex */
public final class C4164a implements IDiffDevOAuth {

    /* renamed from: d */
    private AsyncTaskC4167d f4842d;
    private Handler handler = null;

    /* renamed from: c */
    private List<OAuthListener> f4841c = new ArrayList();

    /* renamed from: e */
    private OAuthListener f4843e = new C4165b(this);

    @Override // com.tencent.p020mm.opensdk.diffdev.IDiffDevOAuth
    public final void addListener(OAuthListener oAuthListener) {
        if (this.f4841c.contains(oAuthListener)) {
            return;
        }
        this.f4841c.add(oAuthListener);
    }

    @Override // com.tencent.p020mm.opensdk.diffdev.IDiffDevOAuth
    public final boolean auth(String str, String str2, String str3, String str4, String str5, OAuthListener oAuthListener) {
        Log.m494i("MicroMsg.SDK.DiffDevOAuth", "start auth, appId = " + str);
        if (str == null || str.length() <= 0 || str2 == null || str2.length() <= 0) {
            Log.m496d("MicroMsg.SDK.DiffDevOAuth", String.format("auth fail, invalid argument, appId = %s, scope = %s", str, str2));
            return false;
        }
        if (this.handler == null) {
            this.handler = new Handler(Looper.getMainLooper());
        }
        addListener(oAuthListener);
        if (this.f4842d != null) {
            Log.m496d("MicroMsg.SDK.DiffDevOAuth", "auth, already running, no need to start auth again");
            return true;
        }
        this.f4842d = new AsyncTaskC4167d(str, str2, str3, str4, str5, this.f4843e);
        AsyncTaskC4167d asyncTaskC4167d = this.f4842d;
        if (Build.VERSION.SDK_INT >= 11) {
            asyncTaskC4167d.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        } else {
            asyncTaskC4167d.execute(new Void[0]);
        }
        return true;
    }

    @Override // com.tencent.p020mm.opensdk.diffdev.IDiffDevOAuth
    public final void detach() {
        Log.m494i("MicroMsg.SDK.DiffDevOAuth", "detach");
        this.f4841c.clear();
        stopAuth();
    }

    @Override // com.tencent.p020mm.opensdk.diffdev.IDiffDevOAuth
    public final void removeAllListeners() {
        this.f4841c.clear();
    }

    @Override // com.tencent.p020mm.opensdk.diffdev.IDiffDevOAuth
    public final void removeListener(OAuthListener oAuthListener) {
        this.f4841c.remove(oAuthListener);
    }

    @Override // com.tencent.p020mm.opensdk.diffdev.IDiffDevOAuth
    public final boolean stopAuth() {
        boolean z;
        Log.m494i("MicroMsg.SDK.DiffDevOAuth", "stopAuth");
        try {
            z = this.f4842d == null ? true : this.f4842d.m505a();
        } catch (Exception e) {
            Log.m492w("MicroMsg.SDK.DiffDevOAuth", "stopAuth fail, ex = " + e.getMessage());
            z = false;
        }
        this.f4842d = null;
        return z;
    }
}
