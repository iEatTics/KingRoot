package com.kingroot.kinguser.activitys;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.kingroot.common.framework.main.MainExitReceiver;
import com.kingroot.kinguser.C3840wl;
import com.kingroot.kinguser.aav;
import com.kingroot.kinguser.bbt;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguser.bik;
import com.kingroot.kinguser.model.SuRequestCmdModel;
import com.kingroot.kinguser.view.PermissionRequestActivityMiui;
import com.kingroot.master.app.KUApplication;
/* loaded from: classes.dex */
public class SuRequestActivity extends Activity implements bik.InterfaceC2318a {
    private bik aja;
    private boolean ajb = false;
    private bed ajc = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.activitys.SuRequestActivity.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            final SuRequestCmdModel suRequestCmdModel;
            super.run();
            Intent intent = SuRequestActivity.this.getIntent();
            if (intent != null && (suRequestCmdModel = (SuRequestCmdModel) intent.getParcelableExtra("REQ_MODEL")) != null) {
                if (bbt.m7780WG().m2124jX() == null) {
                    SuRequestActivity.this.mo6883vA();
                } else if (aav.m12905ql() || aav.m12907qj() || aav.m12906qk()) {
                    SuRequestActivity.this.m12578a(suRequestCmdModel);
                    if (!SuRequestActivity.this.ajb) {
                        SuRequestActivity.this.ajb = true;
                        SuRequestActivity.this.finish();
                    }
                } else {
                    C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.activitys.SuRequestActivity.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!SuRequestActivity.this.isFinishing()) {
                                SuRequestActivity.this.aja = new bik(SuRequestActivity.this, 2131558512);
                                SuRequestActivity.this.aja.m6902a(SuRequestActivity.this);
                                SuRequestActivity.this.aja.m6886i(suRequestCmdModel);
                                SuRequestActivity.this.aja.show();
                            }
                        }
                    });
                }
            }
        }
    });

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        beg.m7461Zj().m7450c(this.ajc);
    }

    @Override // android.app.Activity
    protected void onStop() {
        if (this.aja != null) {
            this.aja.dismiss();
        }
        finish();
        super.onStop();
        MainExitReceiver.m13404jF();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        return true;
    }

    @Override // com.kingroot.kinguser.bik.InterfaceC2318a
    /* renamed from: vA */
    public void mo6883vA() {
        if (!this.ajb) {
            this.ajb = true;
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m12578a(SuRequestCmdModel suRequestCmdModel) {
        if (suRequestCmdModel != null) {
            try {
                Context ge = KUApplication.m13453ge();
                Intent intent = new Intent(ge, PermissionRequestActivityMiui.class);
                intent.addFlags(268435456);
                intent.putExtra("REQ_MODEL", suRequestCmdModel);
                ge.startActivity(intent);
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    public static void m12583a(Context context, SuRequestCmdModel suRequestCmdModel) {
        if (suRequestCmdModel != null) {
            try {
                Intent intent = new Intent(context, SuRequestActivity.class);
                intent.addFlags(268435456);
                intent.putExtra("REQ_MODEL", suRequestCmdModel);
                context.startActivity(intent);
            } catch (Exception e) {
            }
        }
    }
}
