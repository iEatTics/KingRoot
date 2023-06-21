package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import com.kingroot.kinguser.activitys.LogActivity;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bew extends ada {
    public bew(Activity activity, String str) {
        super(activity, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.ada, com.kingroot.kinguser.AbstractC3933yp
    /* renamed from: oI */
    public void mo1375oI() {
        super.mo1375oI();
        m12564at(true);
        this.abA.setBackgroundResource(R.drawable.title_button_selector);
        this.abF.setText(R.string.log_title_btn);
        this.abF.setTextColor(C3953zi.m1311pr().getColor(R.color.black_1));
        m12563b(new View.OnClickListener() { // from class: com.kingroot.kinguser.bew.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ady.m12308tK().mo1746bi(100036);
                Intent intent = new Intent();
                intent.setClass(bew.this.getContext(), LogActivity.class);
                bew.this.getContext().startActivity(intent);
            }
        });
    }
}
