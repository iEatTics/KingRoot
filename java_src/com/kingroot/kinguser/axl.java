package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.TextView;
import com.kingroot.kinguser.AbstractC3926yn;
import com.kingroot.kinguser.axl;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.model.RootMgrLogInfo;
import com.kingroot.kinguser.root.log.ILogsChangeListener;
import com.kingroot.kinguses.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class axl extends AbstractC3926yn<aub> {
    private bed aSN;
    private final AdapterView.OnItemClickListener aVh;
    private final View.OnClickListener aZA;
    private List<aub> aZy;
    private ILogsChangeListener.Stub aZz;
    private View mEmptyView;

    public axl(Context context) {
        super(context, "log_page");
        this.aZy = new ArrayList();
        this.aZz = new ILogsChangeListener.Stub() { // from class: com.kingroot.kinguser.page.LogPage$1
            @Override // com.kingroot.kinguser.root.log.ILogsChangeListener
            public void onLogsChangeListener() {
                bed bedVar;
                beg m7461Zj = beg.m7461Zj();
                bedVar = axl.this.aSN;
                m7461Zj.m7450c(bedVar);
            }
        };
        this.aVh = new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.axl.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                List m1377oX = axl.this.m1386oV().m1377oX();
                if (i >= 0 && i < m1377oX.size()) {
                    aub aubVar = (aub) ((AbstractC3926yn.C3929b) m1377oX.get(i)).data;
                    if (aubVar.aQT) {
                        if ((aubVar.visible & 64) > 0) {
                            aubVar.visible = 17;
                            ady.m12308tK().mo1746bi(100037);
                        } else {
                            aubVar.visible = 65;
                        }
                        axl.this.m8337Um();
                        if (axl.this.f4025Vq.getLastVisiblePosition() == i) {
                            axl.this.getHandler().sendEmptyMessageDelayed(0, 100L);
                        }
                    }
                }
            }
        };
        this.aZA = new View.OnClickListener() { // from class: com.kingroot.kinguser.axl.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Integer num = (Integer) view.getTag(R.id.tag_first);
                if (num != null) {
                    int intValue = num.intValue();
                    List m1377oX = axl.this.m1386oV().m1377oX();
                    if (intValue >= 0 && intValue < m1377oX.size()) {
                        aub aubVar = (aub) ((AbstractC3926yn.C3929b) m1377oX.get(intValue)).data;
                        if (aubVar.aQT) {
                            if ((aubVar.visible & 64) > 0) {
                                aubVar.visible = 17;
                                ady.m12308tK().mo1746bi(100037);
                            } else {
                                aubVar.visible = 65;
                            }
                            axl.this.m8337Um();
                        }
                    }
                }
            }
        };
        this.aSN = new bed(bem.IMMEDIATE, bec.Light_Weight, true, new bek() { // from class: com.kingroot.kinguser.axl.3
            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                boolean z;
                super.run();
                ArrayList arrayList = new ArrayList();
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.getDefault());
                int indexOf = "MM-dd HH:mm:ss".indexOf(" ");
                List<RootMgrLogInfo> logs = bbo.m7795Wv().getLogs();
                int size = logs.size();
                HashMap hashMap = new HashMap();
                for (int i = size - 1; i >= 0; i--) {
                    RootMgrLogInfo rootMgrLogInfo = logs.get(i);
                    int i2 = 0;
                    while (true) {
                        int i3 = i2;
                        if (i3 >= axl.this.aZy.size()) {
                            z = false;
                            break;
                        } else if (!((aub) axl.this.aZy.get(i3)).appName.equals(rootMgrLogInfo.mAppName)) {
                            i2 = i3 + 1;
                        } else {
                            z = true;
                            break;
                        }
                    }
                    if (!z) {
                        aub aubVar = new aub();
                        try {
                            aubVar.amD = C3952zh.m1312pq().getApplicationIcon(rootMgrLogInfo.adZ);
                        } catch (PackageManager.NameNotFoundException e) {
                            e.printStackTrace();
                        }
                        aubVar.appName = rootMgrLogInfo.mAppName;
                        aubVar.action = C3953zi.m1311pr().getString(R.string.log_label_today);
                        aubVar.visible = 65;
                        aubVar.aQT = true;
                        aubVar.alY = "";
                        aubVar.time = "";
                        aubVar.aQU = 0;
                        aubVar.aQV = 0;
                        axl.this.aZy.add(aubVar);
                    }
                    aub aubVar2 = new aub();
                    aubVar2.appName = rootMgrLogInfo.mAppName;
                    aubVar2.action = rootMgrLogInfo.mState == 2 ? C3953zi.m1311pr().getString(R.string.log_label_allow) : C3953zi.m1311pr().getString(R.string.log_label_deny);
                    if (rootMgrLogInfo.mState == 2) {
                        aubVar2.action = C3953zi.m1311pr().getString(R.string.log_label_allow);
                        aubVar2.aQU = 1;
                        aubVar2.aQV = 0;
                    } else {
                        aubVar2.action = C3953zi.m1311pr().getString(R.string.log_label_deny);
                        aubVar2.aQU = 0;
                        aubVar2.aQV = 1;
                    }
                    aubVar2.visible = 4;
                    aubVar2.aQT = false;
                    String format = simpleDateFormat.format(new Date(rootMgrLogInfo.mTime));
                    aubVar2.alY = axl.this.m8338I(format, indexOf);
                    aubVar2.time = format.substring(indexOf);
                    List list = (List) hashMap.get(aubVar2.appName);
                    if (list != null) {
                        list.add(aubVar2);
                    } else {
                        list = new ArrayList();
                        list.add(aubVar2);
                        hashMap.put(aubVar2.appName, list);
                    }
                    aubVar2.index = list.size() - 1;
                }
                int i4 = 0;
                while (true) {
                    int i5 = i4;
                    if (i5 < axl.this.aZy.size()) {
                        aub aubVar3 = (aub) axl.this.aZy.get(i5);
                        List<aub> list2 = (List) hashMap.get(aubVar3.appName);
                        if (list2 != null) {
                            axl.this.m8336a(i5, list2, aubVar3);
                            arrayList.add(new AbstractC3926yn.C3929b(aubVar3, "" + i5, 1));
                            if ((aubVar3.visible & 64) <= 0) {
                                for (aub aubVar4 : list2) {
                                    arrayList.add(new AbstractC3926yn.C3929b(aubVar4, "" + i5));
                                }
                            }
                        }
                        i4 = i5 + 1;
                    } else {
                        axl.this.m1411j(arrayList);
                        return;
                    }
                }
            }
        });
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn
    /* renamed from: oU */
    protected AbstractC3926yn.AbstractC3927a<aub> mo1387oU() {
        return new age(this.mContext);
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn
    /* renamed from: oW */
    protected int mo1385oW() {
        return 0;
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn, com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: i */
    public void mo1372i(Object obj) {
        super.mo1372i(obj);
        if (m1386oV().getCount() == 0) {
            this.f4016Vh.getContainer().setBackgroundResource(R.color.general_light_bg);
            this.mEmptyView.setVisibility(0);
            this.f4025Vq.setVisibility(8);
            return;
        }
        if (abd.m12839qb() >= 16) {
            this.f4016Vh.getContainer().setBackground(null);
        } else {
            this.f4016Vh.getContainer().setBackgroundDrawable(null);
        }
        this.mEmptyView.setVisibility(8);
        this.f4025Vq.setVisibility(0);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new bes(getActivity(), m1417V(2131165698L));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
        super.mo1370oI();
        bbo.m7795Wv().addLogsChangeListener(this.aZz);
        this.mEmptyView = getLayoutInflater().inflate(R.layout.view_empty_tip, this.f4016Vh.getContainer(), false);
        TextView textView = (TextView) this.mEmptyView.findViewById(R.id.empty_tip);
        if (textView != null) {
            textView.setText(R.string.log_empty_tip);
            Drawable Y = m1414Y(2130837871L);
            Y.setBounds(0, 0, (int) m1416W(2131361939L), (int) m1416W(2131361938L));
            textView.setCompoundDrawables(null, Y, null, null);
        }
        this.mEmptyView.setVisibility(8);
        this.f4016Vh.addContentView(this.mEmptyView, null);
        this.f4025Vq.setDivider(null);
        setOnItemClickListener(this.aVh);
        m1388a(this.aZA);
        beg.m7461Zj().m7450c(this.aSN);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onDestroy() {
        bbo.m7795Wv().removeLogsChangeListener(this.aZz);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Um */
    public void m8337Um() {
        ArrayList arrayList = new ArrayList();
        List m1377oX = m1386oV().m1377oX();
        int size = m1377oX.size();
        for (int i = 0; i < size; i++) {
            aub aubVar = (aub) ((AbstractC3926yn.C3929b) m1377oX.get(i)).data;
            if (aubVar.aQT) {
                arrayList.add(new AbstractC3926yn.C3929b(aubVar, "" + i, 1));
                if ((aubVar.visible & 64) <= 0 && aubVar.aQW != null) {
                    for (aub aubVar2 : aubVar.aQW) {
                        arrayList.add(new AbstractC3926yn.C3929b(aubVar2, "" + i));
                    }
                }
            }
        }
        m1411j(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m8336a(int i, List<aub> list, aub aubVar) {
        String str = "";
        aubVar.index = i;
        aubVar.aQW = list;
        aubVar.aQU = 0;
        aubVar.aQV = 0;
        for (aub aubVar2 : list) {
            if (TextUtils.isEmpty(str)) {
                str = aubVar2.alY;
            }
            aubVar.aQU += aubVar2.aQU;
            aubVar.aQV = aubVar2.aQV + aubVar.aQV;
        }
        aubVar.action = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I */
    public String m8338I(String str, int i) {
        if (new SimpleDateFormat("MM-dd HH:mm:ss", Locale.getDefault()).format(new Date()).substring(0, i).equals(str.substring(0, i))) {
            return C3953zi.m1311pr().getString(R.string.log_label_today);
        }
        return str.substring(0, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: a */
    public void mo1413a(Message message) {
        super.mo1413a(message);
        if (message.what == 0 && this.f4025Vq != null && this.f4026Vr != null) {
            int lastVisiblePosition = this.f4025Vq.getLastVisiblePosition();
            if (lastVisiblePosition + 1 < this.f4026Vr.getCount()) {
                this.f4025Vq.smoothScrollToPosition(lastVisiblePosition + 1, lastVisiblePosition + 1);
            }
        }
    }

    @Override // com.kingroot.kinguser.AbstractC3926yn
    protected Drawable getDivider() {
        return null;
    }
}
