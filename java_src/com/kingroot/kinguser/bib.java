package com.kingroot.kinguser;

import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.kingroot.kinguser.ztool.autostartmgr.AutoStartAppItemInfo;
import com.kingroot.kinguses.R;
import java.util.List;
/* loaded from: classes.dex */
public class bib extends bid implements View.OnClickListener {

    /* renamed from: Vd */
    private ListView f1684Vd;
    private ImageView afU;
    private TextView bgq;
    private TextView brb;
    private TextView bsR;
    private CharSequence bsS;
    private CharSequence bsT;
    private DialogInterface.OnClickListener bsU;
    private DialogInterface.OnClickListener bsV;
    private C2296a bsW;
    private bji<AutoStartAppItemInfo> bsX;

    public bib(Context context) {
        super(context);
    }

    @Override // com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acS() {
        this.btf = this.mLayoutInflater.inflate(R.layout.common_app_dialog_title, (ViewGroup) m6926bI(0), false);
        return this.btf;
    }

    @Override // com.kingroot.kinguser.bid, com.kingroot.kinguser.bie
    protected View acQ() {
        this.mContentView = this.mLayoutInflater.inflate(R.layout.common_app_dialog_content, (ViewGroup) m6926bI(1), false);
        return this.mContentView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bie, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.afU = (ImageView) findViewById(R.id.icon);
        this.brb = (TextView) findViewById(R.id.title);
        this.bsR = (TextView) findViewById(R.id.subtitle);
        this.bgq = (TextView) findViewById(R.id.description);
        this.f1684Vd = (ListView) findViewById(16908298);
        this.f1684Vd.setCacheColorHint(0);
        this.bsW = new C2296a(getContext());
        this.f1684Vd.setAdapter((ListAdapter) this.bsW);
        this.aci.setOnClickListener(this);
        this.acj.setOnClickListener(this);
        if (this.bsT != null) {
            this.acj.setText(this.bsT);
        }
        if (this.bsS != null) {
            this.aci.setText(this.bsS);
        }
        if (this.bsT == null && this.bsV == null) {
            this.acj.setVisibility(8);
            this.aci.setBackgroundResource(R.drawable.common_dialog_button_mid_selector);
        }
        setCanceledOnTouchOutside(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.bij, android.app.Dialog
    public void onStart() {
        super.onStart();
        AutoStartAppItemInfo data = this.bsX.getData();
        try {
            this.afU.setImageDrawable(C3952zh.m1312pq().getApplicationIcon(data.getPackageName()));
        } catch (PackageManager.NameNotFoundException e) {
        }
        this.brb.setText(data.getDisplayName());
        this.bsR.setText(data.getPackageName());
        if (this.bsX.isChecked() || this.bsV == null) {
            this.bgq.setText(C3953zi.m1311pr().getString(R.string.auto_start_enabled_events_string, Integer.valueOf(data.adz())));
            this.acj.setText(R.string.auto_start_disable_start_btn);
        } else {
            this.bgq.setText(Html.fromHtml(C3953zi.m1311pr().getString(R.string.auto_start_disabled_events_string, Integer.valueOf(data.adz()))));
            this.acj.setText(R.string.auto_start_enable_start_btn);
            if (data.m13024vl()) {
                C3953zi m1311pr = C3953zi.m1311pr();
                if ("zh_CN".equalsIgnoreCase(C3946zb.m1333pi())) {
                    if (!TextUtils.isEmpty(data.getDescription())) {
                        this.bsR.setText(data.getDescription());
                    }
                } else {
                    this.bsR.setText(m1311pr.getString(R.string.auto_start_suggest_ban));
                }
            }
        }
        this.bsW.setData(data.ady());
        if (this.bsW.getCount() > 7) {
            this.f1684Vd.getLayoutParams().height = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
        } else {
            this.f1684Vd.getLayoutParams().height = -2;
        }
        this.bsW.notifyDataSetChanged();
    }

    /* renamed from: a */
    public void m6949a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.bsT = charSequence;
        this.bsV = onClickListener;
    }

    /* renamed from: a */
    public void m6950a(bji<AutoStartAppItemInfo> bjiVar) {
        this.bsX = bjiVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.acj) {
            if (this.bsV != null) {
                this.bsV.onClick(this, -1);
            }
        } else if (view == this.aci && this.bsU != null) {
            this.bsU.onClick(this, -2);
        }
        dismiss();
    }

    /* renamed from: com.kingroot.kinguser.bib$a */
    /* loaded from: classes.dex */
    static final class C2296a extends BaseAdapter {
        private List<String> ahM;
        private LayoutInflater bsY;

        public C2296a(Context context) {
            this.bsY = (LayoutInflater) context.getSystemService("layout_inflater");
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = view == null ? this.bsY.inflate(R.layout.auto_start_dialog_list_item, viewGroup, false) : view;
            ((TextView) inflate).setText(getItem(i));
            return inflate;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        /* renamed from: iV */
        public String getItem(int i) {
            return this.ahM.get(i);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.ahM != null) {
                return this.ahM.size();
            }
            return 0;
        }

        void setData(List<String> list) {
            this.ahM = list;
        }
    }

    public bji<AutoStartAppItemInfo> acT() {
        return this.bsX;
    }

    @Override // com.kingroot.kinguser.bij, android.app.Dialog
    public void show() {
        try {
            super.show();
        } catch (Exception e) {
        }
    }
}
