package com.kingroot.kinguser;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.kingroot.loader.common.KlConst;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.vm */
/* loaded from: classes.dex */
public abstract class AbstractC3789vm<T> implements InterfaceC3797vr<T> {

    /* renamed from: Lb */
    private Set<Integer> f3773Lb = new HashSet();
    protected Context mContext = bzt.m5101ge();

    @NonNull
    /* renamed from: A */
    protected abstract List<T> mo1762A(List<C3795vp> list);

    @WorkerThread
    /* renamed from: B */
    protected abstract boolean mo1722B(@NonNull List<T> list);

    @Nullable
    /* renamed from: a */
    protected abstract T mo1760a(int i, ArrayList<Integer> arrayList);

    @NonNull
    /* renamed from: bq */
    protected abstract List<T> mo1758bq(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    @NonNull
    public abstract String getChannel();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract int getProductId();

    /* renamed from: lA */
    protected abstract String mo1721lA();

    /* renamed from: lL */
    protected abstract int[] mo1720lL();

    /* renamed from: lM */
    protected abstract int[] mo1719lM();

    /* renamed from: lN */
    protected abstract int[] mo1718lN();

    @Nullable
    /* renamed from: u */
    protected abstract T mo1757u(int i, String str);

    /* renamed from: lu */
    protected SharedPreferences m1774lu() {
        return new SharedPreferencesC3791b(C3566rv.m2313i(this.mContext, mo1721lA() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + "actionStats"));
    }

    /* renamed from: lv */
    protected SharedPreferences m1773lv() {
        return new SharedPreferencesC3791b(C3566rv.m2313i(this.mContext, mo1721lA() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + "switchStats"));
    }

    /* renamed from: lw */
    protected SharedPreferences m1772lw() {
        return new SharedPreferencesC3791b(C3566rv.m2313i(this.mContext, mo1721lA() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + "mulDataStats"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: lx */
    public InterfaceC3610su m1771lx() {
        return C3566rv.m2312jc();
    }

    /* renamed from: ly */
    protected SharedPreferences m1770ly() {
        return new SharedPreferencesC3791b(C3566rv.m2313i(this.mContext, mo1721lA() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + "ImmediaDataStats"));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: lz */
    public SharedPreferences m1769lz() {
        return new SharedPreferencesC3791b(C3566rv.m2313i(this.mContext, mo1721lA() + KlConst.PLUGIN_SHARED_PREFS_PREFIX_SPLIT_CHAR + "IncreaseDataStats"));
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: bi */
    public void mo1746bi(int i) {
        m1768p(i, "" + i);
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: w */
    public void mo1733w(int i, int i2) {
        m1784b(i, "" + i, i2);
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: a */
    public void mo1747a(int i, List<Object> list) {
        m1783b(i, list);
    }

    /* renamed from: b */
    protected void m1783b(int i, List<Object> list) {
        if (list == null) {
            list = new ArrayList<>(0);
        }
        m1771lx().mo2208a(new C3613sx(i, System.currentTimeMillis(), C3612sw.m2221u(list)));
    }

    /* renamed from: p */
    protected void m1768p(int i, String str) {
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        List<C3795vp> m1775j = m1775j(m1774lu().getString(str, null), i);
        if (C3942yy.m1351d(m1775j)) {
            z = false;
        } else {
            m1775j.get(0).f3777Lf++;
            z = true;
        }
        if (!z) {
            C3795vp c3795vp = new C3795vp();
            c3795vp.f3779gN = i;
            c3795vp.f3778Lg = currentTimeMillis;
            c3795vp.f3777Lf = 1;
            m1775j.add(c3795vp);
        }
        m1774lu().edit().putString(str, m1763z(m1775j)).commit();
    }

    /* renamed from: b */
    protected void m1784b(int i, String str, int i2) {
        boolean z;
        long currentTimeMillis = System.currentTimeMillis();
        List<C3795vp> m1775j = m1775j(m1774lu().getString(str, null), i);
        if (C3942yy.m1351d(m1775j)) {
            z = false;
        } else {
            m1775j.get(0).f3777Lf += i2;
            z = true;
        }
        if (!z) {
            C3795vp c3795vp = new C3795vp();
            c3795vp.f3779gN = i;
            c3795vp.f3778Lg = currentTimeMillis;
            c3795vp.f3777Lf = i2;
            c3795vp.errorCode = 0;
            m1775j.add(c3795vp);
        }
        m1774lu().edit().putString(str, m1763z(m1775j)).commit();
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    @NonNull
    /* renamed from: lB */
    public List<T> mo1745lB() {
        int[] mo1720lL;
        ArrayList<C3795vp> arrayList = new ArrayList<>();
        for (int i : mo1720lL()) {
            m1786a(arrayList, "" + i, i);
        }
        return mo1762A(arrayList);
    }

    /* renamed from: a */
    protected void m1786a(ArrayList<C3795vp> arrayList, String str, int i) {
        List<C3795vp> m1775j = m1775j(m1774lu().getString(str, null), i);
        if (m1775j != null) {
            arrayList.addAll(m1775j);
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    @NonNull
    /* renamed from: lC */
    public List<T> mo1744lC() {
        ArrayList arrayList = new ArrayList();
        for (int i : mo1719lM()) {
            List<T> mo1758bq = mo1758bq(i);
            if (!C3942yy.m1351d(mo1758bq)) {
                arrayList.addAll(mo1758bq);
            }
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lD */
    public void mo1743lD() {
        m1771lx().mo2202c(mo1719lM());
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lE */
    public void mo1742lE() {
        m1774lu().edit().clear().commit();
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lF */
    public void mo1741lF() {
    }

    /* renamed from: j */
    protected List<C3795vp> m1775j(String str, int i) {
        ArrayList arrayList = new ArrayList();
        if (str != null) {
            while (true) {
                int indexOf = str.indexOf(";");
                if (indexOf == -1) {
                    break;
                }
                C3795vp c3795vp = new C3795vp();
                String substring = str.substring(0, indexOf);
                if (substring.indexOf("&") != -1) {
                    c3795vp.f3779gN = i;
                    try {
                        c3795vp.f3778Lg = Long.parseLong(substring.substring(0, substring.indexOf("&")));
                    } catch (Exception e) {
                    }
                    if (c3795vp.f3778Lg == 0) {
                        c3795vp.f3778Lg = System.currentTimeMillis();
                    }
                    try {
                        substring = substring.substring(substring.indexOf("&") + 1);
                    } catch (Exception e2) {
                    }
                    try {
                        if (substring.indexOf("&") != -1) {
                            c3795vp.f3777Lf = Integer.parseInt(substring.substring(0, substring.indexOf("&")));
                            c3795vp.errorCode = Integer.parseInt(substring.substring(substring.indexOf("&") + 1));
                        } else {
                            c3795vp.f3777Lf = Integer.parseInt(substring);
                        }
                    } catch (NumberFormatException e3) {
                        c3795vp.desc = substring;
                    } catch (Exception e4) {
                    }
                    arrayList.add(c3795vp);
                }
                if (indexOf == str.length()) {
                    break;
                }
                try {
                    str = str.substring(indexOf + 1);
                } catch (Exception e5) {
                }
            }
        }
        return arrayList;
    }

    /* renamed from: z */
    protected String m1763z(List<C3795vp> list) {
        StringBuffer stringBuffer = new StringBuffer();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < list.size()) {
                stringBuffer.append(list.get(i2).f3778Lg);
                stringBuffer.append("&");
                if (list.get(i2).desc != null) {
                    stringBuffer.append(list.get(i2).desc);
                } else {
                    stringBuffer.append(list.get(i2).f3777Lf);
                }
                if (list.get(i2).errorCode != 0) {
                    stringBuffer.append("&");
                    stringBuffer.append(list.get(i2).errorCode);
                }
                stringBuffer.append(";");
                i = i2 + 1;
            } else {
                return stringBuffer.toString();
            }
        }
    }

    /* renamed from: bj */
    public void m1782bj(int i) {
        m1767q(i, "" + i);
    }

    /* renamed from: bk */
    public void m1781bk(int i) {
        m1766r(i, "" + i);
    }

    /* renamed from: q */
    protected void m1767q(int i, String str) {
        m1766r(i, str);
        ArrayList arrayList = new ArrayList();
        C3795vp c3795vp = new C3795vp();
        c3795vp.f3779gN = i;
        c3795vp.f3778Lg = System.currentTimeMillis();
        c3795vp.f3777Lf = 1;
        arrayList.add(c3795vp);
        m1773lv().edit().putString(str, m1763z(arrayList)).commit();
    }

    /* renamed from: r */
    protected void m1766r(int i, String str) {
        m1773lv().edit().remove(str).commit();
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    @NonNull
    /* renamed from: lG */
    public List<T> mo1740lG() {
        int[] mo1720lL;
        ArrayList arrayList = new ArrayList();
        for (int i : mo1720lL()) {
            m1785a((List<C3795vp>) arrayList, "" + i, i);
        }
        List<T> mo1762A = mo1762A(arrayList);
        if (mo1762A == null) {
            return Collections.emptyList();
        }
        return mo1762A;
    }

    /* renamed from: a */
    protected void m1785a(List<C3795vp> list, String str, int i) {
        List<C3795vp> m1775j = m1775j(m1773lv().getString(str, null), i);
        if (m1775j != null) {
            list.addAll(m1775j);
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lH */
    public void mo1739lH() {
        m1772lw().edit().clear().commit();
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    @NonNull
    /* renamed from: lI */
    public List<T> mo1738lI() {
        ArrayList arrayList = new ArrayList();
        for (int i : mo1720lL()) {
            T m1777bo = m1777bo(i);
            if (m1777bo != null) {
                arrayList.add(m1777bo);
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    protected ArrayList<Integer> m1787a(SharedPreferences sharedPreferences, String str) {
        ArrayList<Integer> arrayList = null;
        String string = sharedPreferences.getString(str, null);
        if (string != null) {
            arrayList = new ArrayList<>();
            String[] split = string.split("\\|");
            try {
                for (String str2 : split) {
                    arrayList.add(Integer.valueOf(str2));
                }
            } catch (NumberFormatException e) {
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public String m1765s(int i, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(C3612sw.m2228a(0, getProductId(), 0, i, 0, "", getChannel()));
        if (!TextUtils.isEmpty(str)) {
            sb.append("|");
            sb.append(str);
        }
        String sb2 = sb.toString();
        sb.delete(0, sb.length());
        return sb2;
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    /* renamed from: lJ */
    public void mo1737lJ() {
        if (this.f3773Lb != null && this.f3773Lb.size() > 0) {
            for (Integer num : this.f3773Lb) {
                m1779bm(num.intValue());
            }
            this.f3773Lb.clear();
        }
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    @NonNull
    /* renamed from: lK */
    public List<T> mo1736lK() {
        ArrayList arrayList = new ArrayList();
        int[] mo1718lN = mo1718lN();
        if (mo1718lN == null || mo1718lN.length == 0) {
            return Collections.emptyList();
        }
        if (this.f3773Lb != null) {
            this.f3773Lb.clear();
        }
        for (int i : mo1718lN) {
            arrayList.addAll(m1780bl(i));
        }
        return arrayList;
    }

    @NonNull
    /* renamed from: bl */
    public List<T> m1780bl(int i) {
        ArrayList arrayList = new ArrayList();
        for (String str : m1776bp(i)) {
            T mo1757u = mo1757u(i, str);
            if (mo1757u != null) {
                arrayList.add(mo1757u);
            }
        }
        return arrayList;
    }

    @Override // com.kingroot.kinguser.InterfaceC3797vr
    @WorkerThread
    /* renamed from: a */
    public void mo1748a(int i, int i2, List<Object> list, boolean z) {
        m1788a(i, i2, C3612sw.m2222t(list), z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void m1788a(int i, int i2, String str, boolean z) {
        String m1765s = m1765s(i2, str);
        if (!z) {
            List<T> m1780bl = m1780bl(i);
            T mo1757u = mo1757u(i, m1765s);
            if (mo1757u != null) {
                m1780bl.add(mo1757u);
            }
            if (mo1722B(m1780bl)) {
                m1779bm(i);
                return;
            }
        }
        m1778bn(i);
        m1764t(i, m1765s);
    }

    /* renamed from: bm */
    protected void m1779bm(int i) {
        int i2 = m1770ly().getInt("" + i, 0);
        for (int i3 = 1; i3 <= i2; i3++) {
            m1770ly().edit().remove(String.format("%d_%d", Integer.valueOf(i), Integer.valueOf(i3))).commit();
        }
        m1770ly().edit().remove("" + i).commit();
    }

    /* renamed from: bn */
    private void m1778bn(int i) {
        List<String> m1776bp = m1776bp(i);
        int size = m1776bp.size();
        if (size >= 100) {
            m1779bm(i);
            int i2 = 1;
            for (int i3 = 20; i3 < size; i3++) {
                try {
                    String format = String.format("%d_%d", Integer.valueOf(i), Integer.valueOf(i2));
                    String str = m1776bp.get(i3);
                    if (!TextUtils.isEmpty(str)) {
                        m1770ly().edit().putString(format, str).commit();
                    }
                } catch (Exception e) {
                }
                i2++;
            }
            try {
                m1770ly().edit().putInt("" + i, size - 20).commit();
            } catch (Exception e2) {
            }
        }
    }

    /* renamed from: bo */
    protected T m1777bo(int i) {
        return mo1760a(i, m1787a(m1772lw(), "" + i));
    }

    /* renamed from: bp */
    protected List<String> m1776bp(int i) {
        ArrayList arrayList = new ArrayList();
        int i2 = m1770ly().getInt("" + i, 0);
        boolean z = false;
        for (int i3 = 1; i3 <= i2; i3++) {
            String string = m1770ly().getString(String.format("%d_%d", Integer.valueOf(i), Integer.valueOf(i3)), "");
            if (!TextUtils.isEmpty(string)) {
                arrayList.add(string);
                z = true;
            }
        }
        if (z) {
            if (this.f3773Lb == null) {
                this.f3773Lb = new HashSet();
            }
            this.f3773Lb.add(Integer.valueOf(i));
        }
        return arrayList;
    }

    /* renamed from: t */
    protected synchronized void m1764t(int i, String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                int i2 = m1770ly().getInt("" + i, 0) + 1;
                m1770ly().edit().putString(String.format("%d_%d", Integer.valueOf(i), Integer.valueOf(i2)), str).commit();
                m1770ly().edit().putInt("" + i, i2).commit();
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: com.kingroot.kinguser.vm$b */
    /* loaded from: classes.dex */
    public static class SharedPreferencesC3791b implements SharedPreferences {

        /* renamed from: Ld */
        private SharedPreferences f3775Ld;

        public SharedPreferencesC3791b(@NonNull SharedPreferences sharedPreferences) {
            this.f3775Ld = null;
            if (sharedPreferences == null) {
                throw new RuntimeException("sharedPreferences can not be null");
            }
            this.f3775Ld = sharedPreferences;
        }

        @Override // android.content.SharedPreferences
        public Map<String, ?> getAll() {
            return this.f3775Ld.getAll();
        }

        @Override // android.content.SharedPreferences
        @Nullable
        public String getString(String str, String str2) {
            return this.f3775Ld.getString(str, str2);
        }

        @Override // android.content.SharedPreferences
        @Nullable
        public Set<String> getStringSet(String str, Set<String> set) {
            return this.f3775Ld.getStringSet(str, set);
        }

        @Override // android.content.SharedPreferences
        public int getInt(String str, int i) {
            return this.f3775Ld.getInt(str, i);
        }

        @Override // android.content.SharedPreferences
        public long getLong(String str, long j) {
            return this.f3775Ld.getLong(str, j);
        }

        @Override // android.content.SharedPreferences
        public float getFloat(String str, float f) {
            return this.f3775Ld.getFloat(str, f);
        }

        @Override // android.content.SharedPreferences
        public boolean getBoolean(String str, boolean z) {
            return this.f3775Ld.getBoolean(str, z);
        }

        @Override // android.content.SharedPreferences
        public boolean contains(String str) {
            return this.f3775Ld.contains(str);
        }

        @Override // android.content.SharedPreferences
        public SharedPreferences.Editor edit() {
            return new SharedPreferences$EditorC3790a(this.f3775Ld.edit());
        }

        @Override // android.content.SharedPreferences
        public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
            this.f3775Ld.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        }

        @Override // android.content.SharedPreferences
        public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
            this.f3775Ld.unregisterOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
        }
    }

    /* renamed from: com.kingroot.kinguser.vm$a */
    /* loaded from: classes.dex */
    public static class SharedPreferences$EditorC3790a implements SharedPreferences.Editor {

        /* renamed from: Lc */
        private SharedPreferences.Editor f3774Lc;

        public SharedPreferences$EditorC3790a(SharedPreferences.Editor editor) {
            this.f3774Lc = null;
            if (editor == null) {
                throw new RuntimeException("editor can not be null");
            }
            this.f3774Lc = editor;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            this.f3774Lc.putString(str, str2);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            this.f3774Lc.putStringSet(str, set);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i) {
            this.f3774Lc.putInt(str, i);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j) {
            this.f3774Lc.putLong(str, j);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f) {
            return this.f3774Lc.putFloat(str, f);
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            this.f3774Lc.putBoolean(str, z);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            this.f3774Lc.remove(str);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.f3774Lc.clear();
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            boolean commit;
            try {
                if (Build.VERSION.SDK_INT >= 9 && C3697uj.m2032kA()) {
                    this.f3774Lc.apply();
                    commit = true;
                } else {
                    commit = this.f3774Lc.commit();
                }
                return commit;
            } catch (Exception e) {
                return false;
            }
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            if (Build.VERSION.SDK_INT >= 9) {
                this.f3774Lc.apply();
            }
        }
    }
}
