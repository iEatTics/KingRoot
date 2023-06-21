package com.kingroot.kinguser.gamebox.foreground;

import android.content.Intent;
import com.kingroot.common.app.KApplication;
import com.kingroot.kinguser.AbstractC3922ym;
import com.kingroot.kinguser.activitys.KUBaseActivity;
import com.kingroot.kinguser.atl;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class GameBoxGuideActivityDialog extends KUBaseActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.activitys.KUBaseActivity, com.kingroot.common.uilib.template.BaseActivity, com.kingroot.common.uilib.template.AbsActivity, android.app.Activity
    public void onStop() {
        finish();
        super.onStop();
    }

    @Override // com.kingroot.common.uilib.template.AbsActivity
    /* renamed from: oC */
    public AbstractC3922ym mo1242oC() {
        int i = 1;
        Intent intent = getIntent();
        ArrayList<String> arrayList = null;
        if (intent != null) {
            i = intent.getIntExtra("type", 1);
            arrayList = intent.getStringArrayListExtra("infolist");
        }
        return new atl(this, i, arrayList);
    }

    /* renamed from: bg */
    public static void m3763bg(List<String> list) {
        Intent intent = new Intent(KApplication.m13453ge(), GameBoxGuideActivityDialog.class);
        intent.addFlags(268435456);
        intent.putExtra("type", 1);
        if (list != null && list.size() != 0) {
            intent.putStringArrayListExtra("infolist", new ArrayList<>(list));
        }
        KApplication.m13453ge().startActivity(intent);
    }

    /* renamed from: Pd */
    public static void m3764Pd() {
        Intent intent = new Intent(KApplication.m13453ge(), GameBoxGuideActivityDialog.class);
        intent.addFlags(268435456);
        intent.putExtra("type", 2);
        KApplication.m13453ge().startActivity(intent);
    }
}
