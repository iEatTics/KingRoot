package com.kingroot.kinguser;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kinguser.agc;
import com.kingroot.kinguser.p015ai.AntiInjectLogModel;
import com.kingroot.kinguser.xmod.dao.ExploitLog;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class awz extends AbstractC3921yl {
    private agc aWj;
    private View aWk;
    private Comparator<? super agc.C0862c> aWl;
    private bed aWm;
    private bis acW;
    private List<agc.C0862c> ako;

    public awz(Context context) {
        super(context);
        this.aWj = null;
        this.ako = new ArrayList();
        this.acW = new bis(KUApplication.m13453ge());
        this.aWl = new Comparator<agc.C0862c>() { // from class: com.kingroot.kinguser.awz.1
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(agc.C0862c c0862c, agc.C0862c c0862c2) {
                return new Timestamp(c0862c2.mTime).compareTo(new Timestamp(c0862c.mTime));
            }
        };
        this.aWm = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.awz.2
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                super.run();
                List<AntiInjectLogModel> allLogs = ahl.m11725xm().getAllLogs();
                List<ExploitLog> adj = awz.this.acW.adj();
                awz.this.ako.clear();
                int size = allLogs.size();
                for (int i = 0; i < size; i++) {
                    AntiInjectLogModel antiInjectLogModel = allLogs.get(i);
                    if (!acu.m12573b(antiInjectLogModel.time, System.currentTimeMillis(), 2592000000L)) {
                        awz.this.ako.add(new agc.C0862c(1, antiInjectLogModel.time, antiInjectLogModel.processName, "", antiInjectLogModel.apY));
                    }
                }
                for (ExploitLog exploitLog : adj) {
                    if (!acu.m12573b(exploitLog.mTimeStamp, System.currentTimeMillis(), 2592000000L)) {
                        awz.this.ako.add(new agc.C0862c(3, exploitLog.mTimeStamp, "", exploitLog.mPackageName, exploitLog.akw));
                    }
                }
                Collections.sort(awz.this.ako, awz.this.aWl);
                awz.this.getHandler().sendEmptyMessage(0);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new beq(getActivity(), m1417V(2131165261L));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    public View mo1371oG() {
        return getLayoutInflater().inflate(R.layout.page_anti_inject_log, (ViewGroup) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3921yl, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        beg.m7461Zj().m7450c(this.aWm);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        switch (message.what) {
            case 0:
                if (this.ako == null || (this.ako != null && this.ako.size() == 0)) {
                    this.aWk = getLayoutInflater().inflate(R.layout.list_view_empty_tip, m1407oM().getContainer(), false);
                    TextView textView = (TextView) this.aWk.findViewById(R.id.list_empty);
                    textView.setText(m1417V(2131165260L));
                    textView.setTextColor(C3953zi.m1311pr().getColor(R.color.global_secondly_grey_text_color));
                    RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.aWk.getLayoutParams();
                    layoutParams.height = -1;
                    layoutParams.addRule(13);
                    m1407oM().addContentView(this.aWk, layoutParams);
                    getListView().setEmptyView(this.aWk);
                    m1407oM().getContainer().setBackgroundResource(R.color.general_light_bg);
                    m1418U(0L);
                    return;
                }
                int m8549bI = m8549bI(this.ako);
                if (m8549bI != -1) {
                    this.ako.add(m8549bI, new agc.C0862c(2, 0L, "", "", ""));
                }
                this.aWj = new agc(getContext(), this.ako);
                this.f4011Vd.setAdapter((ListAdapter) this.aWj);
                this.aWj.notifyDataSetChanged();
                m1418U(0L);
                return;
            default:
                return;
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    protected BaseAdapter getAdapter() {
        return this.aWj;
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    /* renamed from: oJ */
    protected int mo1419oJ() {
        return R.id.anti_log_listview;
    }

    @Override // com.kingroot.kinguser.AbstractC3921yl
    protected Drawable getDivider() {
        return null;
    }

    /* renamed from: bI */
    private int m8549bI(List<agc.C0862c> list) {
        int i;
        if (list.size() == 0) {
            return -1;
        }
        int size = list.size() - 1;
        while (true) {
            if (size < 0) {
                i = -1;
                break;
            } else if (!m8547co(list.get(size).mTime)) {
                i = size;
                break;
            } else {
                size--;
            }
        }
        return i;
    }

    /* renamed from: co */
    private boolean m8547co(long j) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        return simpleDateFormat.format(new Date()).substring(0, 4).equals(simpleDateFormat.format(new Date(j)).substring(0, 4));
    }
}
