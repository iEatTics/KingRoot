package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.UiThread;
import android.support.p007v7.widget.DefaultItemAnimator;
import android.support.p007v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.TextView;
import com.kingroot.common.app.KApplication;
import com.kingroot.common.uilib.FixLinearLayoutManager;
import com.kingroot.kinguser.activitys.DefaultAppChosenActivity;
import com.kingroot.kinguser.advance.model.DefaultSettingInfo;
import com.kingroot.kinguser.agd;
import com.kingroot.kinguser.ahg;
import com.kingroot.kinguser.ala;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppDownLoadModel;
import com.kingroot.kinguses.R;
import com.kingroot.master.app.KUApplication;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes.dex */
public class axe extends AbstractC3922ym implements View.OnClickListener, agd.InterfaceC0868b {
    private TextView aFj;
    private agd aXI;
    private List<agd.C0867a> aXO;
    private SparseArray<agd.C0867a> aXP;
    private Button aXQ;
    private View aXR;
    private final Map<Integer, String> aXS;
    private boolean aXT;
    private bed aXU;
    private bed aXV;
    private Handler mHandler;
    private RecyclerView mRecyclerView;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return new ada(getActivity(), m1417V(2131166316L));
    }

    public axe(Context context) {
        super(context);
        this.aXO = new ArrayList();
        this.aXP = new SparseArray<>();
        this.aXS = new HashMap();
        this.mHandler = new Handler() { // from class: com.kingroot.kinguser.axe.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                String format;
                String format2;
                super.handleMessage(message);
                switch (message.what) {
                    case 1:
                        axe.this.aXO.clear();
                        axe.this.aXO.addAll((List) message.obj);
                        for (agd.C0867a c0867a : axe.this.aXO) {
                            axe.this.aXP.put(c0867a.f1419id, c0867a);
                        }
                        axe.this.aXI.notifyDataSetChanged();
                        if (axe.this.aXT) {
                            axe.this.aXT = false;
                            axe.this.m8468TP();
                            return;
                        }
                        return;
                    case 2:
                        int i = message.arg1;
                        if (i <= 0) {
                            format2 = C3953zi.m1311pr().getString(R.string.advance_perm_root_default_settings_sub_title);
                        } else {
                            format2 = String.format(C3953zi.m1311pr().getString(R.string.def_setting_main_page_title), Integer.valueOf(i));
                        }
                        axe.this.aFj.setText(format2);
                        return;
                    case 3:
                        int i2 = message.arg1;
                        if (i2 <= 0) {
                            axe.this.aXR.setVisibility(8);
                            return;
                        }
                        axe.this.aXR.setVisibility(0);
                        axe.this.aXQ.setText(String.format(C3953zi.m1311pr().getString(R.string.def_setting_main_page_button_content), Integer.valueOf(i2)));
                        ady.m12308tK().mo1746bi(100622);
                        return;
                    case 4:
                        agd.C0867a c0867a2 = (agd.C0867a) axe.this.aXP.get(message.arg1);
                        boolean z = message.arg2 == 1;
                        String str = (String) message.obj;
                        if (z) {
                            c0867a2.status = 2;
                            c0867a2.akM = bgh.m7115jf(str);
                        } else {
                            c0867a2.status = 4;
                        }
                        axe.this.aXI.notifyDataSetChanged();
                        return;
                    case 5:
                        axe.this.aXQ.setClickable(true);
                        int i3 = message.arg1;
                        int i4 = message.arg2;
                        if (i3 <= 0) {
                            format = C3953zi.m1311pr().getString(R.string.def_setting_auto_optimize_all_failed_tips);
                        } else if (i4 <= i3) {
                            format = String.format(C3953zi.m1311pr().getString(R.string.def_setting_auto_optimize_all_success_tips), Integer.valueOf(i3));
                        } else {
                            format = String.format(C3953zi.m1311pr().getString(R.string.def_setting_auto_optimize_tips), Integer.valueOf(i3), Integer.valueOf(i4 - i3));
                        }
                        C3954zj.m1307c(format, 1);
                        beg.m7461Zj().m7450c(axe.this.aXU);
                        return;
                    default:
                        return;
                }
            }
        };
        this.aXU = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.axe.2
            /* renamed from: TQ */
            private SparseArray<agd.C0867a> m8450TQ() {
                SparseArray<agd.C0867a> sparseArray = new SparseArray<>();
                sparseArray.put(2, agd.C0867a.m11981e(axe.this.m1417V(2131166309L), 2, R.drawable.default_settings_item_input_method));
                sparseArray.put(9, agd.C0867a.m11981e(axe.this.m1417V(2131166310L), 9, R.drawable.default_settings_item_launcher));
                if (abd.m12839qb() >= 19) {
                    sparseArray.put(3, agd.C0867a.m11981e(axe.this.m1417V(2131166313L), 3, R.drawable.default_settings_item_sms));
                }
                sparseArray.put(1, agd.C0867a.m11981e(axe.this.m1417V(2131166305L), 1, R.drawable.default_settings_item_browser));
                sparseArray.put(6, agd.C0867a.m11981e(axe.this.m1417V(2131166307L), 6, R.drawable.default_settings_item_camera));
                sparseArray.put(5, agd.C0867a.m11981e(axe.this.m1417V(2131166308L), 5, R.drawable.default_settings_item_image));
                sparseArray.put(8, agd.C0867a.m11981e(axe.this.m1417V(2131166312L), 8, R.drawable.default_settings_item_music));
                sparseArray.put(11, agd.C0867a.m11981e(axe.this.m1417V(2131166311L), 11, R.drawable.default_settings_item_mail));
                sparseArray.put(7, agd.C0867a.m11981e(axe.this.m1417V(2131166314L), 7, R.drawable.default_settings_item_video));
                sparseArray.put(13, agd.C0867a.m11981e(axe.this.m1417V(2131166315L), 13, R.drawable.default_settings_item_wifi_settings));
                return sparseArray;
            }

            @Override // com.kingroot.kinguser.bek, java.lang.Runnable
            public void run() {
                agd.C0867a c0867a;
                agd.C0867a c0867a2;
                super.run();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList arrayList3 = new ArrayList();
                SparseArray<agd.C0867a> m8450TQ = m8450TQ();
                List<DefaultSettingInfo> m11767wW = ahg.m11770wT().m11767wW();
                List<DefaultSettingInfo> m11769wU = ahg.m11770wT().m11769wU();
                HashMap hashMap = new HashMap();
                ArrayList arrayList4 = new ArrayList();
                for (DefaultSettingInfo defaultSettingInfo : m11769wU) {
                    if (!TextUtils.isEmpty(defaultSettingInfo.pkgName) && (c0867a2 = m8450TQ.get(defaultSettingInfo.type)) != null) {
                        c0867a2.akO = new AppDownLoadModel(defaultSettingInfo.apy);
                        ahg.C0938a m11772dm = ahg.m11772dm(defaultSettingInfo.type);
                        if (defaultSettingInfo.pkgName.equals(m11772dm.apm) && m11772dm.apn) {
                            c0867a2.status = 2;
                            c0867a2.akM = m11772dm.akM;
                            arrayList2.add(c0867a2);
                        } else {
                            if (C3952zh.m1312pq().m1314du(defaultSettingInfo.pkgName)) {
                                c0867a2.status = 1;
                                c0867a2.akM = m11772dm.akM;
                                hashMap.put(Integer.valueOf(c0867a2.f1419id), defaultSettingInfo.pkgName);
                            } else {
                                c0867a2.status = 4;
                                c0867a2.akM = m11772dm.akM;
                            }
                            arrayList.add(c0867a2);
                        }
                    }
                }
                if (!C3942yy.m1348f(hashMap)) {
                    synchronized (axe.this.aXS) {
                        axe.this.aXS.clear();
                        axe.this.aXS.putAll(hashMap);
                    }
                }
                axe.this.m8454ht(hashMap.size());
                if (!C3942yy.m1351d(arrayList)) {
                    Collections.sort(arrayList, new Comparator<agd.C0867a>() { // from class: com.kingroot.kinguser.axe.2.1
                        @Override // java.util.Comparator
                        /* renamed from: a */
                        public int compare(agd.C0867a c0867a3, agd.C0867a c0867a4) {
                            return Collator.getInstance(Locale.getDefault()).compare(c0867a3.name, c0867a4.name);
                        }
                    });
                    arrayList4.add(agd.C0867a.m11980fq(String.format(C3953zi.m1311pr().getString(R.string.def_setting_list_item_recommend_title), Integer.valueOf(arrayList.size()))));
                    arrayList4.addAll(arrayList);
                }
                axe.this.m8455hs(arrayList.size());
                for (DefaultSettingInfo defaultSettingInfo2 : m11767wW) {
                    if (defaultSettingInfo2.apw && (c0867a = m8450TQ.get(defaultSettingInfo2.type)) != null) {
                        ahg.C0938a m11772dm2 = ahg.m11772dm(defaultSettingInfo2.type);
                        if (m11772dm2.apl != 0) {
                            c0867a.akM = m11772dm2.akM;
                            c0867a.status = 0;
                            arrayList3.add(c0867a);
                        }
                    }
                }
                if (!C3942yy.m1351d(arrayList3)) {
                    Collections.sort(arrayList3, new Comparator<agd.C0867a>() { // from class: com.kingroot.kinguser.axe.2.2
                        @Override // java.util.Comparator
                        /* renamed from: a */
                        public int compare(agd.C0867a c0867a3, agd.C0867a c0867a4) {
                            return Collator.getInstance(Locale.getDefault()).compare(c0867a3.name, c0867a4.name);
                        }
                    });
                    arrayList4.add(agd.C0867a.m11980fq(String.format(C3953zi.m1311pr().getString(R.string.def_setting_list_item_normal_title), Integer.valueOf(arrayList3.size()))));
                    arrayList4.addAll(arrayList3);
                }
                if (!C3942yy.m1351d(arrayList2)) {
                    Collections.sort(arrayList2, new Comparator<agd.C0867a>() { // from class: com.kingroot.kinguser.axe.2.3
                        @Override // java.util.Comparator
                        /* renamed from: a */
                        public int compare(agd.C0867a c0867a3, agd.C0867a c0867a4) {
                            return Collator.getInstance(Locale.getDefault()).compare(c0867a3.name, c0867a4.name);
                        }
                    });
                    arrayList4.add(agd.C0867a.m11980fq(String.format(C3953zi.m1311pr().getString(R.string.def_setting_list_item_optimized_title), Integer.valueOf(arrayList2.size()))));
                    arrayList4.addAll(arrayList2);
                }
                Message obtain = Message.obtain();
                obtain.what = 1;
                obtain.obj = arrayList4;
                axe.this.mHandler.sendMessage(obtain);
            }
        });
        this.aXV = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.axe.3
            @Override // com.kingroot.kinguser.bek
            /* renamed from: a */
            public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
                int i;
                int i2;
                super.mo1208a(interfaceC2117a);
                int i3 = 0;
                int i4 = 0;
                try {
                    Map map = (Map) interfaceC2117a.mo7445nF().get(0);
                    i4 = map.size();
                    for (Integer num : map.keySet()) {
                        String str = (String) map.get(num);
                        if (!TextUtils.isEmpty(str)) {
                            ady.m12308tK().mo1746bi(100625);
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(1);
                            arrayList.add("");
                            arrayList.add(num);
                            ady.m12308tK().mo1748a(100636, 0, (List<Object>) arrayList, true);
                            boolean m11774a = ahg.m11774a(num.intValue(), new ala.C1052a(str, null));
                            if (m11774a) {
                                i3++;
                                ady.m12308tK().mo1746bi(100630);
                                ArrayList arrayList2 = new ArrayList();
                                arrayList2.add(2);
                                arrayList2.add(1);
                                arrayList2.add(num);
                                ady.m12308tK().mo1748a(100636, 0, (List<Object>) arrayList2, true);
                            } else {
                                Collection<ala.C1052a> m10660fa = ala.m10660fa(num.intValue());
                                ady.m12308tK().mo1746bi(100631);
                                ArrayList arrayList3 = new ArrayList();
                                arrayList3.add(2);
                                arrayList3.add(2);
                                arrayList3.add(num);
                                arrayList3.add(str);
                                arrayList3.add("");
                                if (num.intValue() == 2) {
                                    arrayList3.add(cgx.m4297nl(ala.m10655j(((InputMethodManager) KUApplication.m13453ge().getSystemService("input_method")).getInputMethodList())));
                                } else {
                                    arrayList3.add(cgx.m4297nl(ala.m10656i(m10660fa)));
                                }
                                ady.m12308tK().mo1748a(100636, 0, (List<Object>) arrayList3, true);
                            }
                            Message obtain = Message.obtain();
                            obtain.what = 4;
                            obtain.arg1 = num.intValue();
                            obtain.arg2 = m11774a ? 1 : 0;
                            obtain.obj = str;
                            axe.this.mHandler.sendMessage(obtain);
                        }
                    }
                    i = i4;
                    i2 = i3;
                } catch (Exception e) {
                    i = i4;
                    i2 = i3;
                }
                Message obtain2 = Message.obtain();
                obtain2.what = 5;
                obtain2.arg1 = i2;
                obtain2.arg2 = i;
                axe.this.mHandler.sendMessage(obtain2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null) {
            this.aXT = intent.getBooleanExtra("defaultSetting_optimize_flag", false);
        }
        beg.m7461Zj().m7450c(this.aXU);
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = LayoutInflater.from(KApplication.m13453ge()).inflate(R.layout.def_setting_main_page, (ViewGroup) null);
        this.aFj = (TextView) inflate.findViewById(R.id.def_setting_main_page_title);
        this.mRecyclerView = (RecyclerView) inflate.findViewById(R.id.def_setting_main_page_list);
        this.mRecyclerView.setHasFixedSize(true);
        this.mRecyclerView.setItemAnimator(new DefaultItemAnimator());
        this.mRecyclerView.setLayoutManager(new FixLinearLayoutManager(getActivity()));
        this.aXI = new agd(this.aXO, this, null, null);
        this.mRecyclerView.setAdapter(this.aXI);
        this.aXR = inflate.findViewById(R.id.optimize_btn_layout);
        this.aXQ = (Button) inflate.findViewById(R.id.optimize_btn);
        this.aXQ.setOnClickListener(this);
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1024 && i2 == -1) {
            beg.m7461Zj().m7450c(this.aXU);
        }
    }

    @Override // com.kingroot.kinguser.agd.InterfaceC0868b
    @UiThread
    /* renamed from: a */
    public void mo8467a(agd.C0867a c0867a) {
        Intent intent = new Intent(KUApplication.m13453ge(), DefaultAppChosenActivity.class);
        intent.putExtra("def_setting_info", c0867a.name);
        intent.putExtra("default_item_id", c0867a.f1419id);
        intent.putExtra("default_item_recommend_app_id", (Parcelable) c0867a.akO);
        getActivity().startActivityForResult(intent, 1024);
        ady.m12308tK().mo1746bi(100624);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ady.m12308tK().mo1746bi(100623);
        m8468TP();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: hs */
    public void m8455hs(int i) {
        Message obtain = Message.obtain();
        obtain.what = 2;
        obtain.arg1 = i;
        this.mHandler.sendMessage(obtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: ht */
    public void m8454ht(int i) {
        Message obtain = Message.obtain();
        obtain.what = 3;
        obtain.arg1 = i;
        this.mHandler.sendMessage(obtain);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TP */
    public void m8468TP() {
        this.aXQ.setClickable(false);
        this.aXQ.setText(C3953zi.m1311pr().getString(R.string.def_setting_item_tips_recommend_doing));
        HashMap hashMap = new HashMap();
        synchronized (this.aXS) {
            hashMap.putAll(this.aXS);
        }
        for (Integer num : hashMap.keySet()) {
            agd.C0867a c0867a = this.aXP.get(num.intValue());
            if (c0867a != null) {
                c0867a.status = 3;
            }
        }
        this.aXI.notifyDataSetChanged();
        if (!C3942yy.m1348f(hashMap)) {
            beg.m7461Zj().m7454a(this.aXV, hashMap);
        }
    }
}
