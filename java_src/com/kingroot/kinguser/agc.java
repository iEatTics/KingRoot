package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguses.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Random;
/* loaded from: classes.dex */
public class agc extends BaseAdapter {
    private int akk;
    private int akm;
    private List<C0862c> ako;
    private Context mContext;
    private PackageManager mPackageManager;
    private int akl = 0;
    private int akn = 0;

    public agc(Context context, List<C0862c> list) {
        this.ako = null;
        this.mContext = context;
        this.mPackageManager = this.mContext.getPackageManager();
        this.ako = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.ako.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.ako.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 4;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        C0862c c0862c = this.ako.get(i);
        if (c0862c == null) {
            return 0;
        }
        return c0862c.mType;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        C0861b c0861b;
        C0863d c0863d;
        C0860a c0860a = null;
        int itemViewType = getItemViewType(i);
        C0862c c0862c = (C0862c) getItem(i);
        switch (itemViewType) {
            case 1:
                if (view == null) {
                    C0860a c0860a2 = new C0860a();
                    view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_anti_log, (ViewGroup) null);
                    c0860a2.akp = (TextView) view.findViewById(R.id.anti_time);
                    c0860a2.akq = (TextView) view.findViewById(R.id.description1);
                    c0860a2.akr = (ImageView) view.findViewById(R.id.anti_app_icon);
                    c0860a2.aks = (TextView) view.findViewById(R.id.anti_app_name);
                    c0860a2.akt = (TextView) view.findViewById(R.id.description2);
                    view.setTag(c0860a2);
                    c0863d = null;
                    c0861b = null;
                    c0860a = c0860a2;
                    break;
                } else {
                    c0861b = null;
                    c0863d = null;
                    c0860a = (C0860a) view.getTag();
                    break;
                }
            case 2:
                if (view == null) {
                    C0863d c0863d2 = new C0863d();
                    view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_anti_log_time_title, (ViewGroup) null);
                    c0863d2.akx = (TextView) view.findViewById(R.id.anti_log_list_title);
                    view.setTag(c0863d2);
                    c0863d = c0863d2;
                    c0861b = null;
                    break;
                } else {
                    c0863d = (C0863d) view.getTag();
                    c0861b = null;
                    break;
                }
            case 3:
                if (view == null) {
                    c0861b = new C0861b();
                    view = LayoutInflater.from(this.mContext).inflate(R.layout.list_item_anti_log, (ViewGroup) null);
                    c0861b.akp = (TextView) view.findViewById(R.id.anti_time);
                    c0861b.akq = (TextView) view.findViewById(R.id.description1);
                    c0861b.akr = (ImageView) view.findViewById(R.id.anti_app_icon);
                    c0861b.aks = (TextView) view.findViewById(R.id.anti_app_name);
                    c0861b.akt = (TextView) view.findViewById(R.id.description2);
                    view.setTag(c0861b);
                    c0863d = null;
                    break;
                } else {
                    c0861b = (C0861b) view.getTag();
                    c0863d = null;
                    break;
                }
            default:
                c0863d = null;
                c0861b = null;
                break;
        }
        switch (itemViewType) {
            case 1:
                c0860a.akp.setText(m11990ae(c0862c.mTime));
                Drawable m11987fp = m11987fp(c0862c.akw);
                String m11989eB = m11989eB(c0862c.akw);
                boolean m11988eC = m11988eC(c0862c.akv);
                if (m11987fp != null && m11989eB != null && m11988eC) {
                    if (this.akl == 0) {
                        this.akk = new Random().nextInt(10);
                    }
                    c0860a.akq.setText(C3953zi.m1311pr().getString(R.string.anti_log_prevent_success));
                    c0860a.akr.setVisibility(0);
                    c0860a.aks.setVisibility(0);
                    c0860a.akt.setVisibility(0);
                    c0860a.akr.setImageDrawable(m11987fp);
                    c0860a.aks.setText(m11989eB);
                    if (this.akl == this.akk) {
                        c0860a.akt.setText(C3953zi.m1311pr().getString(R.string.anti_log_hijack_system));
                    } else {
                        c0860a.akt.setText(C3953zi.m1311pr().getString(R.string.anti_log_modify_system));
                    }
                    this.akl++;
                    if (this.akl == 10) {
                        this.akl = 0;
                        break;
                    }
                } else if (m11987fp != null && m11989eB != null && !m11988eC) {
                    c0860a.akq.setText(C3953zi.m1311pr().getString(R.string.anti_log_prevent_success));
                    c0860a.akr.setVisibility(0);
                    c0860a.aks.setVisibility(0);
                    c0860a.akt.setVisibility(0);
                    c0860a.akr.setImageDrawable(m11987fp);
                    c0860a.aks.setText(m11989eB);
                    c0860a.akt.setText(C3953zi.m1311pr().getString(R.string.anti_log_modify_software));
                    break;
                } else if (m11988eC && (m11987fp == null || m11989eB == null)) {
                    if (this.akn == 0) {
                        this.akm = new Random().nextInt(10);
                    }
                    if (this.akn == this.akm) {
                        c0860a.akq.setText(C3953zi.m1311pr().getString(R.string.anti_log_prevent_hijack_system_success));
                    } else {
                        c0860a.akq.setText(C3953zi.m1311pr().getString(R.string.anti_log_prevent_modify_system_success));
                    }
                    c0860a.akr.setVisibility(8);
                    c0860a.aks.setVisibility(8);
                    c0860a.akt.setVisibility(8);
                    this.akn++;
                    if (this.akn == 10) {
                        this.akn = 0;
                        break;
                    }
                } else if (!m11988eC && (m11987fp == null || m11989eB == null)) {
                    c0860a.akq.setText(C3953zi.m1311pr().getString(R.string.anti_log_prevent_modify_software_success));
                    c0860a.akr.setVisibility(8);
                    c0860a.aks.setVisibility(8);
                    c0860a.akt.setVisibility(8);
                    break;
                }
                break;
            case 2:
                c0863d.akx.setText("" + m11986vJ());
                break;
            case 3:
                Drawable m11987fp2 = m11987fp(c0862c.akw);
                String m11989eB2 = m11989eB(c0862c.akw);
                c0861b.akp.setText(m11990ae(c0862c.mTime));
                c0861b.akq.setText(C3953zi.m1311pr().getString(R.string.anti_log_prevent_success));
                if (m11987fp2 == null || TextUtils.isEmpty(m11989eB2)) {
                    c0861b.akr.setVisibility(8);
                    c0861b.aks.setVisibility(8);
                    c0861b.akt.setVisibility(0);
                    c0861b.akt.setText(R.string.exploit_log_exploit_warning_unknown);
                    break;
                } else {
                    c0861b.akr.setVisibility(0);
                    c0861b.akr.setImageDrawable(m11987fp2);
                    c0861b.aks.setVisibility(0);
                    c0861b.aks.setText(m11989eB2);
                    c0861b.akt.setVisibility(0);
                    c0861b.akt.setText(R.string.exploit_log_exploit_warning);
                    break;
                }
                break;
        }
        return view;
    }

    /* renamed from: vJ */
    private int m11986vJ() {
        return Calendar.getInstance().get(1) - 1;
    }

    /* renamed from: ae */
    private String m11990ae(long j) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault());
        int indexOf = "yyyy-MM-dd HH:mm:ss".indexOf(" ");
        String format = simpleDateFormat.format(new Date(j));
        if (simpleDateFormat.format(new Date()).substring(0, indexOf).equals(format.substring(0, indexOf))) {
            return format.substring(11, 16);
        }
        return format.substring(5, indexOf);
    }

    /* renamed from: fp */
    private Drawable m11987fp(String str) {
        String substring;
        if (str.indexOf("/data/data") == -1) {
            return null;
        }
        if (str.indexOf("/data/data-lib") == -1) {
            String substring2 = str.substring(11);
            substring = substring2.substring(0, substring2.indexOf("/"));
        } else {
            String substring3 = str.substring(15);
            substring = substring3.substring(0, substring3.indexOf("/"));
        }
        try {
            return this.mPackageManager.getApplicationInfo(substring, 0).loadIcon(this.mPackageManager);
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: eB */
    private String m11989eB(String str) {
        String substring;
        if (str.indexOf("/data/data") == -1) {
            return null;
        }
        if (str.indexOf("/data/data-lib") == -1) {
            String substring2 = str.substring(11);
            substring = substring2.substring(0, substring2.indexOf("/"));
        } else {
            String substring3 = str.substring(15);
            substring = substring3.substring(0, substring3.indexOf("/"));
        }
        try {
            return this.mPackageManager.getApplicationInfo(substring, 0).loadLabel(this.mPackageManager).toString();
        } catch (PackageManager.NameNotFoundException e) {
            return null;
        }
    }

    /* renamed from: eC */
    private boolean m11988eC(String str) {
        return str.equalsIgnoreCase("zygote") || str.equalsIgnoreCase("system_server");
    }

    /* renamed from: com.kingroot.kinguser.agc$a */
    /* loaded from: classes.dex */
    public class C0860a {
        public TextView akp;
        public TextView akq;
        public ImageView akr;
        public TextView aks;
        public TextView akt;

        public C0860a() {
        }
    }

    /* renamed from: com.kingroot.kinguser.agc$b */
    /* loaded from: classes.dex */
    public class C0861b {
        public TextView akp;
        public TextView akq;
        public ImageView akr;
        public TextView aks;
        public TextView akt;

        public C0861b() {
        }
    }

    /* renamed from: com.kingroot.kinguser.agc$d */
    /* loaded from: classes.dex */
    public class C0863d {
        public TextView akx;

        public C0863d() {
        }
    }

    /* renamed from: com.kingroot.kinguser.agc$c */
    /* loaded from: classes.dex */
    public static class C0862c {
        public String akv;
        public String akw;
        public String mPackageName;
        public long mTime;
        public int mType;

        public C0862c(int i, long j, String str, String str2, String str3) {
            this.akv = "";
            this.mPackageName = "";
            this.akw = "";
            this.mType = i;
            this.mTime = j;
            this.akv = str;
            this.mPackageName = str2;
            this.akw = str3;
        }
    }
}
