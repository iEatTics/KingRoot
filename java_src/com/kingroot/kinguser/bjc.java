package com.kingroot.kinguser;

import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.ztool.autostartmgr.AutoStartAppItemInfo;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes.dex */
public final class bjc extends AbstractC3856wr {
    private CompoundButton.OnCheckedChangeListener bvD;
    private boolean bvE;
    private HashMap<bji<AutoStartAppItemInfo>, Integer> bvC = new HashMap<>();
    private LayoutInflater mLayoutInflater = LayoutInflater.from(KUApplication.m13453ge());
    private ArrayList<bji<AutoStartAppItemInfo>> mItems = new ArrayList<>();

    public bjc(CompoundButton.OnCheckedChangeListener onCheckedChangeListener, boolean z) {
        this.bvD = onCheckedChangeListener;
        this.bvE = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mItems.size();
    }

    @Override // android.widget.Adapter
    @Nullable
    /* renamed from: jl */
    public bji<AutoStartAppItemInfo> getItem(int i) {
        if (i < 0 || i >= this.mItems.size()) {
            return null;
        }
        return this.mItems.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        bji<AutoStartAppItemInfo> item = getItem(i);
        if (item == null) {
            return -1L;
        }
        Integer num = this.bvC.get(item);
        if (num != null) {
            return num.intValue();
        }
        return i;
    }

    /* renamed from: b */
    public void m6781b(bji<AutoStartAppItemInfo> bjiVar) {
        this.mItems.remove(bjiVar);
        this.bvC.remove(bjiVar);
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mLayoutInflater.inflate(this.bvE ? R.layout.process_manager_list_item : R.layout.list_item_autostart, viewGroup, false);
            C2373a c2373a = new C2373a(view, this.bvE);
            view.setTag(c2373a);
            acz.m12555l(c2373a.bvH);
        }
        C2373a c2373a2 = (C2373a) view.getTag();
        c2373a2.bvH.setOnCheckedChangeListener(null);
        bji<AutoStartAppItemInfo> item = getItem(i);
        if (item != null) {
            item.m6729L(view);
            c2373a2.m6778a(item, getImageFetcher());
            c2373a2.bvH.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.kingroot.kinguser.bjc.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (bjc.this.bvD != null) {
                        bjc.this.bvD.onCheckedChanged(compoundButton, z);
                    }
                }
            });
        }
        return view;
    }

    /* renamed from: bX */
    public void m6780bX(List<bji<AutoStartAppItemInfo>> list) {
        if (list != null) {
            this.mItems.clear();
            this.mItems.addAll(list);
            this.bvC.clear();
            for (int i = 0; i < list.size(); i++) {
                this.bvC.put(list.get(i), Integer.valueOf(i));
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.bjc$a */
    /* loaded from: classes.dex */
    static final class C2373a {
        public TextView age;
        public ImageView ahP;
        public TextView bgq;
        private boolean bvE;
        public TextView bvG;
        public CompoundButton bvH;
        public TextView bvI;

        public C2373a(View view, boolean z) {
            this.ahP = (ImageView) view.findViewById(R.id.item_icon);
            this.bvG = (TextView) view.findViewById(R.id.item_icon_overlay);
            this.age = (TextView) view.findViewById(R.id.item_title);
            this.bgq = (TextView) view.findViewById(R.id.item_description);
            this.bvH = (CompoundButton) view.findViewById(R.id.item_checkbox);
            this.bvI = (TextView) view.findViewById(R.id.item_label);
            this.bvI.setText(R.string.auto_start_suggest_allow);
            this.bvE = z;
        }

        /* renamed from: a */
        public void m6778a(bji<AutoStartAppItemInfo> bjiVar, acr acrVar) {
            AutoStartAppItemInfo data = bjiVar.getData();
            if (acrVar != null) {
                acrVar.m12667a(data.getPackageName(), this.ahP, R.drawable.default_icon);
            }
            this.age.setText(data.getDisplayName());
            this.bvH.setChecked(bjiVar.isChecked());
            this.bvH.setTag(bjiVar);
            if (this.bvE || bjiVar.isChecked()) {
                this.bgq.setText(C3953zi.m1311pr().getQuantityString(R.plurals.auto_start_enabled_event_count_string, data.adz(), Integer.valueOf(data.adz())));
            } else {
                this.bgq.setText(C3953zi.m1311pr().getQuantityString(R.plurals.auto_start_disabled_event_count_string, data.adz(), Integer.valueOf(data.adz())));
            }
            this.bvI.setVisibility((this.bvE || !(data.m13025vk() || data.m13024vl())) ? 8 : 0);
            if (data.m13025vk()) {
                this.bvI.setText(R.string.auto_start_suggest_allow);
            }
            if (data.m13024vl()) {
                this.bvI.setText(R.string.auto_start_suggest_close);
            }
            this.bvG.setVisibility(data.isSystem() ? 0 : 8);
        }
    }
}
