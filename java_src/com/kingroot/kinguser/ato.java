package com.kingroot.kinguser;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.kingroot.kinguses.R;
import java.util.List;
/* loaded from: classes.dex */
public class ato extends BaseAdapter {
    private List<C1574a> aPC;
    private Context mContext;

    /* renamed from: com.kingroot.kinguser.ato$a */
    /* loaded from: classes.dex */
    public static class C1574a {
        public String aPD;
        public String aPE;
    }

    public ato(Context context, List<C1574a> list) {
        this.mContext = context;
        this.aPC = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.aPC == null) {
            return 0;
        }
        return this.aPC.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.aPC == null) {
            return null;
        }
        return this.aPC.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C1575b c1575b;
        C1574a c1574a = this.aPC.get(i);
        if (view == null) {
            view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_game_box_optimize_detail, viewGroup, false);
            C1575b c1575b2 = new C1575b();
            c1575b2.aPF = (TextView) view.findViewById(R.id.detail_text);
            c1575b2.aPG = (TextView) view.findViewById(R.id.done_text);
            view.setTag(c1575b2);
            c1575b = c1575b2;
        } else {
            c1575b = (C1575b) view.getTag();
        }
        if (c1574a.aPE != null) {
            c1575b.aPF.setText(c1574a.aPE);
        }
        c1575b.aPG.setText(c1574a.aPD);
        return view;
    }

    /* renamed from: com.kingroot.kinguser.ato$b */
    /* loaded from: classes.dex */
    public class C1575b {
        public TextView aPF;
        public TextView aPG;

        public C1575b() {
        }
    }
}
