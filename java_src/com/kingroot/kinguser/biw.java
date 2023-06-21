package com.kingroot.kinguser;

import android.graphics.Color;
import android.support.p007v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.kingcore.uilib.TimeLineView;
import com.kingroot.kinguses.R;
import java.util.List;
/* loaded from: classes.dex */
public class biw extends RecyclerView.Adapter {
    private static final int buZ = Color.parseColor("#f53a5d");
    private final List<C2363b> ajB;

    public biw(List<C2363b> list) {
        this.ajB = list;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C2362a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_cve_info, viewGroup, false));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        ((C2362a) viewHolder).m6813a(this.ajB.get(i));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.ajB.size();
    }

    /* renamed from: com.kingroot.kinguser.biw$a */
    /* loaded from: classes.dex */
    public class C2362a extends RecyclerView.ViewHolder {
        TextView ajP;
        TimeLineView bva;
        View bvb;

        public C2362a(View view) {
            super(view);
            this.bva = (TimeLineView) view.findViewById(R.id.item_icon);
            this.bvb = view.findViewById(R.id.ellipsis_icon);
            this.ajP = (TextView) view.findViewById(R.id.cve_item_title);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: a */
        public void m6813a(C2363b c2363b) {
            if (c2363b != null) {
                switch (c2363b.type) {
                    case 1:
                        break;
                    case 2:
                        this.bva.setVisibility(8);
                        this.bvb.setVisibility(0);
                        this.ajP.setVisibility(8);
                        return;
                    case 3:
                        this.bva.m13488s(biw.buZ, 0);
                        this.ajP.setTextColor(biw.buZ);
                        break;
                    default:
                        return;
                }
                this.bva.setVisibility(0);
                this.bvb.setVisibility(8);
                this.ajP.setText(c2363b.name);
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.biw$b */
    /* loaded from: classes.dex */
    public static class C2363b {
        String name;
        int type;

        public C2363b(int i, String str) {
            this.type = i;
            this.name = str;
        }
    }
}
