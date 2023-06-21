package com.kingroot.kinguser;

import android.os.RemoteCallbackList;
import android.text.TextUtils;
import com.kingroot.kinguser.xmod.ITpsCallback;
import com.kingroot.kinguser.xmod.TpsEvent;
import com.kingroot.kinguser.xmod.cloud.CveCloudListManager;
import com.kingroot.kinguser.xmod.dao.ExploitLog;
import com.kingroot.master.app.KUApplication;
import com.tencent.tps.client.IRootShell;
import com.tencent.tps.client.TPSException;
import com.tencent.tps.client.p024kr.AbsTPSClientKR;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class bir {
    private static cce<bir> sInstance = new cce<bir>() { // from class: com.kingroot.kinguser.bir.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: adf */
        public bir create() {
            return new bir();
        }
    };
    private bis acW;
    private final RemoteCallbackList<ITpsCallback> buh;
    private AtomicBoolean bui;
    private IRootShell buj;
    private AbsTPSClientKR buk;

    private bir() {
        this.buh = new RemoteCallbackList<>();
        this.acW = null;
        this.bui = new AtomicBoolean(false);
        this.buj = new IRootShell() { // from class: com.kingroot.kinguser.bir.2
            @Override // com.tencent.tps.client.IRootShell
            public String runCmd(String str) {
                try {
                    if (TextUtils.isEmpty(str)) {
                        return null;
                    }
                    Process exec = Runtime.getRuntime().exec(String.format(Locale.ENGLISH, "su -c %s\n", str));
                    DataOutputStream dataOutputStream = new DataOutputStream(exec.getOutputStream());
                    dataOutputStream.write(("echo eof‐flag\n").getBytes());
                    dataOutputStream.flush();
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(exec.getInputStream()));
                    String str2 = "";
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null || "eof‐flag".equals(readLine.trim())) {
                            break;
                        }
                        str2 = str2 + readLine + "\n";
                    }
                    return str2;
                } catch (Throwable th) {
                    return null;
                }
            }
        };
        this.buk = new AbsTPSClientKR(KUApplication.m13453ge(), new bip()) { // from class: com.kingroot.kinguser.bir.3
            @Override // com.tencent.tps.client.p024kr.AbsTPSClientKR
            public void onExploitAccepted(int i, String str, String str2) {
                bir.this.m6842d(5, String.valueOf(i), str, str2);
            }

            @Override // com.tencent.tps.client.AbsTPSClientBase
            public void onTPSServiceStop() {
                bir.this.m6842d(1, new String[0]);
            }

            @Override // com.tencent.tps.client.AbsTPSClientBase
            public void onExploitDenied(int i, String str, String str2) {
                if (bir.this.acW != null) {
                    bir.this.acW.m6837a(new ExploitLog(System.currentTimeMillis(), i, str, str2));
                }
                bir.this.m6842d(2, String.valueOf(i), str, str2);
            }
        };
        this.acW = new bis(KUApplication.m13453ge());
    }

    public static bir ade() {
        return sInstance.get();
    }

    /* renamed from: a */
    public void m6844a(ITpsCallback iTpsCallback) {
        if (iTpsCallback != null) {
            this.buh.register(iTpsCallback);
        }
    }

    /* renamed from: b */
    public void m6843b(ITpsCallback iTpsCallback) {
        if (iTpsCallback != null) {
            this.buh.unregister(iTpsCallback);
        }
    }

    public void start() {
        if (!this.bui.get()) {
            try {
                this.bui.set(this.buk.startTPSService(this.buj));
                if (this.bui.get()) {
                    m6841eh(aks.m11143BP().m10964FM());
                }
            } catch (Exception e) {
            }
        }
    }

    public void stop() {
        if (this.bui.get()) {
            try {
                this.bui.set(!this.buk.stopTPSService());
            } catch (TPSException e) {
            }
        }
    }

    public boolean adb() {
        try {
            int querySupportedSync = this.buk.querySupportedSync();
            if (abc.m12845qK().isRootPermition() && querySupportedSync == 1) {
                if (adc() > 0) {
                    return true;
                }
            }
            return false;
        } catch (TPSException e) {
            return false;
        }
    }

    /* renamed from: eh */
    public void m6841eh(boolean z) {
        try {
            if (z) {
                this.buk.enableAutoPatch();
                this.buk.enableExploitMonitor();
            } else {
                this.buk.disableExploitMonitor();
                this.buk.disableAutoPatch();
            }
        } catch (TPSException e) {
        }
    }

    /* renamed from: jf */
    public List<CveCloudListManager.CveInfo> m6840jf(int i) {
        ArrayList arrayList = new ArrayList();
        List<CveCloudListManager.CveInfo> adh = CveCloudListManager.adg().adh();
        if (!C3942yy.m1351d(adh)) {
            if (adh.size() <= i) {
                arrayList.addAll(adh);
            } else {
                arrayList.addAll(adh.subList(0, i));
            }
        }
        return arrayList;
    }

    public int adc() {
        if (C3942yy.m1351d(CveCloudListManager.adg().adh())) {
            return 0;
        }
        return CveCloudListManager.adg().adh().size();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m6842d(int i, String... strArr) {
        TpsEvent tpsEvent = new TpsEvent(i, strArr);
        int beginBroadcast = this.buh.beginBroadcast();
        while (beginBroadcast > 0) {
            int i2 = beginBroadcast - 1;
            try {
                ITpsCallback broadcastItem = this.buh.getBroadcastItem(i2);
                if (broadcastItem != null) {
                    broadcastItem.onEvent(tpsEvent);
                }
                beginBroadcast = i2;
            } catch (Exception e) {
                beginBroadcast = i2;
            }
        }
        this.buh.finishBroadcast();
    }
}
