package com.kingroot.kinguser.activitys;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.kingroot.common.framework.main.MainExitReceiver;
import com.kingroot.kinguser.C3935yr;
import com.kingroot.kinguser.C3942yy;
import com.kingroot.kinguser.C3952zh;
import com.kingroot.kinguser.C3953zi;
import com.kingroot.kinguser.HandlerC3839wk;
import com.kingroot.kinguser.abc;
import com.kingroot.kinguser.ady;
import com.kingroot.kinguser.ajv;
import com.kingroot.kinguser.bec;
import com.kingroot.kinguser.bed;
import com.kingroot.kinguser.beg;
import com.kingroot.kinguser.bek;
import com.kingroot.kinguser.bem;
import com.kingroot.kinguses.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* loaded from: classes.dex */
public class DisablePkgActorActivity extends Activity {
    private C0680c aio;
    ArrayList<String> aim = new ArrayList<>();
    private List<C0678a> ain = new ArrayList();
    private int aip = 0;
    private bed aiq = new bed(new bek() { // from class: com.kingroot.kinguser.activitys.DisablePkgActorActivity.1
        @Override // com.kingroot.kinguser.bek, java.lang.Runnable
        public void run() {
            super.run();
            if (DisablePkgActorActivity.this.aip == 4) {
                abc m12845qK = abc.m12845qK();
                for (C0678a c0678a : DisablePkgActorActivity.this.ain) {
                    if (c0678a != null && !TextUtils.isEmpty(c0678a.pkgName)) {
                        m12845qK.m12846el(String.format(Locale.US, "pm enable %s", c0678a.pkgName));
                    }
                }
            }
        }
    });
    private bed air = new bed(bem.IMMEDIATE, bec.Normal, true, new bek() { // from class: com.kingroot.kinguser.activitys.DisablePkgActorActivity.2
        @Override // com.kingroot.kinguser.bek
        /* renamed from: a */
        public void mo1208a(@NonNull bed.InterfaceC2117a interfaceC2117a) {
            super.mo1208a(interfaceC2117a);
            try {
                List<Object> mo7445nF = interfaceC2117a.mo7445nF();
                if (mo7445nF.size() == 1 && (mo7445nF.get(0) instanceof ArrayList)) {
                    ArrayList arrayList = (ArrayList) mo7445nF.get(0);
                    if (arrayList.size() > 0 && (arrayList.get(0) instanceof String)) {
                        HashMap hashMap = new HashMap();
                        if (DisablePkgActorActivity.this.aip != 0) {
                            if (DisablePkgActorActivity.this.aip != 1) {
                                if (DisablePkgActorActivity.this.aip == 4) {
                                    abc m12845qK = abc.m12845qK();
                                    for (C0678a c0678a : DisablePkgActorActivity.this.ain) {
                                        if (c0678a != null && !TextUtils.isEmpty(c0678a.pkgName) && !arrayList.contains(c0678a.pkgName)) {
                                            m12845qK.m12846el(String.format(Locale.US, "pm enable %s", c0678a.pkgName));
                                        }
                                    }
                                }
                            } else {
                                ajv.m11387zD().m11391a(arrayList, hashMap);
                            }
                        } else {
                            ajv.m11387zD().m11390c(arrayList, hashMap);
                        }
                        ArrayList arrayList2 = new ArrayList();
                        if (DisablePkgActorActivity.this.aip == 4) {
                            arrayList2.addAll(arrayList);
                        } else {
                            for (String str : hashMap.keySet()) {
                                Boolean bool = (Boolean) hashMap.get(str);
                                if (bool != null && bool.booleanValue()) {
                                    arrayList2.add(str);
                                }
                            }
                        }
                        if (arrayList2.size() > 1) {
                            String str2 = null;
                            for (C0678a c0678a2 : DisablePkgActorActivity.this.ain) {
                                str2 = c0678a2.pkgName.equals(arrayList2.get(0)) ? c0678a2.appName : str2;
                            }
                            if (str2 != null) {
                                if (DisablePkgActorActivity.this.aip == 0 || DisablePkgActorActivity.this.aip == 4) {
                                    HandlerC3839wk.m1558do(String.format(C3953zi.m1311pr().getString(R.string.disable_more_success_toast_format), str2));
                                } else {
                                    HandlerC3839wk.m1558do(String.format(C3953zi.m1311pr().getString(R.string.delete_more_success_toast_format), str2));
                                }
                            }
                        } else if (arrayList2.size() == 1) {
                            String str3 = null;
                            for (C0678a c0678a3 : DisablePkgActorActivity.this.ain) {
                                str3 = c0678a3.pkgName.equals(arrayList2.get(0)) ? c0678a3.appName : str3;
                            }
                            if (str3 != null) {
                                if (DisablePkgActorActivity.this.aip == 0 || DisablePkgActorActivity.this.aip == 4) {
                                    HandlerC3839wk.m1558do(String.format(C3953zi.m1311pr().getString(R.string.disable_one_success_toast_format), str3));
                                } else {
                                    HandlerC3839wk.m1558do(String.format(C3953zi.m1311pr().getString(R.string.delete_one_success_toast_format), str3));
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
            }
        }
    });

    /* renamed from: com.kingroot.kinguser.activitys.DisablePkgActorActivity$a */
    /* loaded from: classes.dex */
    public static class C0678a {
        public boolean afR;
        public String appName;
        public String pkgName;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_pkg_disable);
        ArrayList<String> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        Intent intent = getIntent();
        if (intent != null) {
            arrayList = intent.getStringArrayListExtra("dpkg");
        }
        if (!C3942yy.m1352c(arrayList)) {
            this.aim = arrayList;
            C3952zh m1312pq = C3952zh.m1312pq();
            Iterator<String> it = arrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                try {
                    C0678a c0678a = new C0678a();
                    c0678a.pkgName = next;
                    c0678a.afR = true;
                    c0678a.appName = m1312pq.getApplicationLabel(m1312pq.getApplicationInfo(next, 0)).toString();
                    arrayList2.add(c0678a);
                } catch (PackageManager.NameNotFoundException e) {
                }
            }
        }
        this.aip = ajv.m11387zD().m11386zE();
        if (this.aip != 0 && this.aip != 1 && this.aip != 4) {
            finish();
        }
        TextView textView = (TextView) findViewById(R.id.text_tip);
        if (textView != null) {
            if (this.aip == 0 || this.aip == 4) {
                textView.setText(R.string.disable_tip);
            } else {
                textView.setText(R.string.delete_tip);
            }
        }
        if (arrayList2.size() > 0) {
            this.ain = arrayList2;
            Button button = (Button) findViewById(R.id.button_ignore);
            Button button2 = (Button) findViewById(R.id.button_clean);
            ListView listView = (ListView) findViewById(R.id.list_view);
            this.aio = new C0680c(this, arrayList2);
            listView.setAdapter((ListAdapter) this.aio);
            listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.kingroot.kinguser.activitys.DisablePkgActorActivity.3
                @Override // android.widget.AdapterView.OnItemClickListener
                public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                    C0678a c0678a2 = (C0678a) DisablePkgActorActivity.this.ain.get(i);
                    c0678a2.afR = !c0678a2.afR;
                    if (DisablePkgActorActivity.this.aio != null) {
                        DisablePkgActorActivity.this.aio.notifyDataSetChanged();
                    }
                }
            });
            if (arrayList2.size() > 2) {
                ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
                layoutParams.height = (int) (2.5f * getResources().getDimension(R.dimen.list_item_single_line_min_height));
                listView.setLayoutParams(layoutParams);
            }
            button.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.activitys.DisablePkgActorActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    beg.m7461Zj().m7450c(DisablePkgActorActivity.this.aiq);
                    ady.m12308tK().mo1746bi(100161);
                    DisablePkgActorActivity.this.finish();
                }
            });
            button2.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.activitys.DisablePkgActorActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ArrayList arrayList3 = new ArrayList();
                    arrayList3.add(new ArrayList(DisablePkgActorActivity.this.aio.m12621vu()));
                    beg.m7461Zj().m7456a(DisablePkgActorActivity.this.air, arrayList3);
                    ady.m12308tK().mo1746bi(100162);
                    DisablePkgActorActivity.this.finish();
                }
            });
            return;
        }
        finish();
    }

    /* renamed from: com.kingroot.kinguser.activitys.DisablePkgActorActivity$c */
    /* loaded from: classes.dex */
    static class C0680c extends BaseAdapter {
        private List<C0678a> ain;
        private HashSet<String> ait = new HashSet<>();
        private LayoutInflater mLayoutInflater;

        public C0680c(Context context, List<C0678a> list) {
            this.ain = new ArrayList();
            this.mLayoutInflater = LayoutInflater.from(context);
            this.ain = list;
            for (C0678a c0678a : this.ain) {
                if (c0678a.afR) {
                    this.ait.add(c0678a.pkgName);
                }
            }
        }

        @Override // android.widget.Adapter
        public int getCount() {
            if (this.ain == null) {
                return 0;
            }
            return this.ain.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        /* renamed from: vu */
        public HashSet<String> m12621vu() {
            return this.ait;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            C0679b c0679b;
            if (view == null) {
                c0679b = new C0679b();
                view = this.mLayoutInflater.inflate(R.layout.list_item_selectable_disable_app, (ViewGroup) null);
                c0679b.afU = (ImageView) view.findViewById(R.id.item_icon);
                c0679b.age = (TextView) view.findViewById(R.id.item_title);
                c0679b.mCheckBox = (CheckBox) view.findViewById(R.id.item_checkbox);
                c0679b.mCheckBox.setClickable(false);
            } else {
                c0679b = (C0679b) view.getTag();
            }
            final C0678a c0678a = this.ain.get(i);
            c0679b.mCheckBox.setVisibility(0);
            c0679b.mCheckBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.kingroot.kinguser.activitys.DisablePkgActorActivity.c.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    if (z) {
                        C0680c.this.ait.add(c0678a.pkgName);
                    } else {
                        C0680c.this.ait.remove(c0678a.pkgName);
                    }
                }
            });
            c0679b.mCheckBox.setChecked(c0678a.afR);
            c0679b.age.setText(c0678a.appName);
            C3935yr.m1374pb().m12667a(c0678a.pkgName, c0679b.afU, R.drawable.icon);
            view.setTag(c0679b);
            return view;
        }
    }

    /* renamed from: com.kingroot.kinguser.activitys.DisablePkgActorActivity$b */
    /* loaded from: classes.dex */
    static class C0679b {
        public ImageView afU;
        public TextView age;
        public CheckBox mCheckBox;

        C0679b() {
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        finish();
        super.onStop();
        MainExitReceiver.m13404jF();
    }
}
