package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bht extends bid {
    private ImageView aoR;
    protected TextView brb;

    public bht(Context context) {
        super(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bie, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View findViewById = findViewById(R.id.title_layout);
        ViewGroup viewGroup = (ViewGroup) findViewById.getParent();
        int indexOfChild = viewGroup.indexOfChild(findViewById);
        viewGroup.removeView(findViewById);
        viewGroup.addView((LinearLayout) getLayoutInflater().inflate(R.layout.dialog_big_title_layout, (ViewGroup) null, false), indexOfChild, findViewById.getLayoutParams());
        this.aoR = (ImageView) findViewById(R.id.title_icon);
        this.brb = (TextView) findViewById(R.id.title);
        findViewById(R.id.content_scrollview).setVisibility(8);
    }

    /* renamed from: g */
    public void m6961g(Bitmap bitmap) {
        this.aoR.setImageBitmap(bitmap);
    }

    /* renamed from: iS */
    public void m6960iS(int i) {
        this.aoR.setImageResource(i);
    }

    @Override // com.kingroot.kinguser.bid
    public void setTitleText(String str) {
        this.brb.setText(str);
    }
}
