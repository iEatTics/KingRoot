package com.kingroot.kinguser;

import android.support.p007v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguser.advance.model.SilentInstallLogInfo;
import com.kingroot.kinguses.R;
import com.tencent.feedback.eup.BuglyBroadcastRecevier;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class agj extends RecyclerView.Adapter {
    private static final String amI = C3953zi.m1311pr().getString(R.string.silent_install_log_page_time_just);
    private static final String amJ = C3953zi.m1311pr().getString(R.string.silent_install_log_page_time_minute);
    private static final String amK = C3953zi.m1311pr().getString(R.string.silent_install_log_page_time_hour);
    private static final String amL = C3953zi.m1311pr().getString(R.string.silent_install_log_page_time_day);
    private List<C0903b> alI;
    private RecyclerView mRecyclerView;

    public agj(List<C0903b> list) {
        this.alI = list;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new C0902a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_silent_install_log, viewGroup, false));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        getItemViewType(i);
        ((C0902a) viewHolder).m11949a(this.alI.get(i));
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.mRecyclerView = recyclerView;
    }

    @Override // android.support.p007v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.alI.size();
    }

    /* renamed from: com.kingroot.kinguser.agj$a */
    /* loaded from: classes.dex */
    public class C0902a extends RecyclerView.ViewHolder {
        ImageView ajH;
        TextView ajP;
        TextView amM;
        ImageView amN;

        public C0902a(View view) {
            super(view);
            this.ajH = (ImageView) view.findViewById(R.id.item_icon);
            this.ajP = (TextView) view.findViewById(R.id.item_title);
            this.amM = (TextView) view.findViewById(R.id.item_sub_title);
            this.amN = (ImageView) view.findViewById(R.id.item_icon_tips);
        }

        /* renamed from: a */
        public void m11949a(C0903b c0903b) {
            if (c0903b != null) {
                this.ajP.setText(String.format(C3953zi.m1311pr().getString(R.string.silent_install_log_page_install_app_msg), c0903b.amP));
                this.amM.setText(m11948ag(c0903b.time) + " " + m11947dc(c0903b.state));
                this.amN.setImageResource(c0903b.state == 1 ? R.drawable.icon_allow : R.drawable.icon_ban);
            }
        }

        /* renamed from: ag */
        private String m11948ag(long j) {
            long currentTimeMillis = System.currentTimeMillis() - j;
            if (currentTimeMillis <= BuglyBroadcastRecevier.UPLOADLIMITED) {
                return agj.amI;
            }
            if (currentTimeMillis <= 3600000) {
                return (currentTimeMillis / BuglyBroadcastRecevier.UPLOADLIMITED) + agj.amJ;
            }
            return currentTimeMillis <= 86400000 ? (currentTimeMillis / 3600000) + agj.amK : (currentTimeMillis / 86400000) + agj.amL;
        }

        /* renamed from: dc */
        private String m11947dc(int i) {
            if (i == 1) {
                return C3953zi.m1311pr().getString(R.string.silent_install_authorization_desc_allow);
            }
            if (i == 0) {
                return C3953zi.m1311pr().getString(R.string.silent_install_authorization_desc_deny);
            }
            return "";
        }
    }

    /* renamed from: com.kingroot.kinguser.agj$b */
    /* loaded from: classes.dex */
    public static class C0903b {
        public String amP;
        public int state;
        public long time;

        /* renamed from: c */
        public static C0903b m11945c(String str, long j, int i) {
            return new C0903b(str, j, i);
        }

        /* renamed from: ae */
        public static List<C0903b> m11946ae(List<SilentInstallLogInfo> list) {
            ArrayList arrayList = new ArrayList();
            int i = 5;
            for (SilentInstallLogInfo silentInstallLogInfo : list) {
                int i2 = i - 1;
                if (i <= 0) {
                    break;
                }
                arrayList.add(m11945c(silentInstallLogInfo.apK, silentInstallLogInfo.mTime, silentInstallLogInfo.mState));
                i = i2;
            }
            return arrayList;
        }

        private C0903b(String str, long j, int i) {
            this.amP = str;
            this.time = j;
            this.state = i;
        }
    }
}
