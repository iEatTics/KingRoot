package com.kingroot.kinguser;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bil extends bif {
    public bil(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acQ() {
        this.mContentView = this.mLayoutInflater.inflate(R.layout.uninstall_loading_dialog_content, (ViewGroup) m6926bI(1), false);
        this.alC = (TextView) this.mContentView.findViewById(R.id.item_content);
        return this.mContentView;
    }
}
