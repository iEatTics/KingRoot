package com.kingroot.kinguser;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.Nullable;
import com.kingroot.common.app.KApplication;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.kingroot.kinguser.sr */
/* loaded from: classes.dex */
public class C3605sr {

    /* renamed from: GF */
    private static Map<String, SharedPreferencesC3606a> f3529GF = new HashMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: h */
    public static synchronized SharedPreferences m2242h(Context context, String str) {
        SharedPreferencesC3606a sharedPreferencesC3606a;
        synchronized (C3605sr.class) {
            if (KApplication.m13450hT() == 2) {
                sharedPreferencesC3606a = context.getSharedPreferences(str, 0);
            } else {
                sharedPreferencesC3606a = f3529GF.get(str);
                if (sharedPreferencesC3606a == null) {
                    sharedPreferencesC3606a = new SharedPreferencesC3606a(str);
                    f3529GF.put(str, sharedPreferencesC3606a);
                }
            }
        }
        return sharedPreferencesC3606a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.sr$a */
    /* loaded from: classes.dex */
    public static class SharedPreferencesC3606a implements SharedPreferences {
        private String mName;

        public SharedPreferencesC3606a(String str) {
            this.mName = str;
        }

        /* renamed from: g */
        private Object m2241g(String str, String str2, String str3) {
            if (abd.m12839qb() < 11) {
                return m2240h(str, str2, str3);
            }
            return m2239i(str, str2, str3);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
            jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
            	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
            	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
            */
        @android.support.annotation.Nullable
        /* renamed from: h */
        private java.lang.Object m2240h(java.lang.String r10, java.lang.String r11, java.lang.String r12) {
            /*
                r9 = this;
                r8 = 0
                r7 = 1
                r6 = 0
                android.content.Context r0 = com.kingroot.common.app.KApplication.m13453ge()
                android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Throwable -> La9
                r1 = 3
                java.lang.String[] r2 = new java.lang.String[r1]     // Catch: java.lang.Throwable -> La9
                r1 = 0
                r2[r1] = r10     // Catch: java.lang.Throwable -> La9
                r1 = 1
                r2[r1] = r12     // Catch: java.lang.Throwable -> La9
                r1 = 2
                r2[r1] = r11     // Catch: java.lang.Throwable -> La9
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La9
                r1.<init>()     // Catch: java.lang.Throwable -> La9
                java.lang.String r3 = com.kingroot.kinguser.C3609st.m2229jq()     // Catch: java.lang.Throwable -> La9
                java.lang.StringBuilder r1 = r1.append(r3)     // Catch: java.lang.Throwable -> La9
                java.lang.String r3 = r9.mName     // Catch: java.lang.Throwable -> La9
                java.lang.StringBuilder r1 = r1.append(r3)     // Catch: java.lang.Throwable -> La9
                java.lang.String r3 = "/"
                java.lang.StringBuilder r1 = r1.append(r3)     // Catch: java.lang.Throwable -> La9
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> La9
                android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.lang.Throwable -> La9
                r3 = 0
                r4 = 0
                r5 = 0
                android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> La9
                if (r1 == 0) goto La4
                boolean r0 = r1.moveToFirst()     // Catch: java.lang.Throwable -> Lb7
                if (r0 == 0) goto La4
                java.lang.String r0 = "value"
                int r0 = r1.getColumnIndexOrThrow(r0)     // Catch: java.lang.Throwable -> Lb7
                java.lang.String r2 = "type_bool"
                boolean r2 = r2.equals(r12)     // Catch: java.lang.Throwable -> Lb7
                if (r2 == 0) goto L64
                int r0 = r1.getInt(r0)     // Catch: java.lang.Throwable -> Lb7
                if (r0 != r7) goto Lbc
                r0 = r7
            L5c:
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> Lb7
            L60:
                com.kingroot.kinguser.C3945za.m1338d(r1)
            L63:
                return r0
            L64:
                java.lang.String r2 = "type_int"
                boolean r2 = r2.equals(r12)     // Catch: java.lang.Throwable -> Lb7
                if (r2 == 0) goto L75
                int r0 = r1.getInt(r0)     // Catch: java.lang.Throwable -> Lb7
                java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch: java.lang.Throwable -> Lb7
                goto L60
            L75:
                java.lang.String r2 = "type_long"
                boolean r2 = r2.equals(r12)     // Catch: java.lang.Throwable -> Lb7
                if (r2 == 0) goto L86
                long r2 = r1.getLong(r0)     // Catch: java.lang.Throwable -> Lb7
                java.lang.Long r0 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> Lb7
                goto L60
            L86:
                java.lang.String r2 = "type_string"
                boolean r2 = r2.equals(r12)     // Catch: java.lang.Throwable -> Lb7
                if (r2 == 0) goto L93
                java.lang.String r0 = r1.getString(r0)     // Catch: java.lang.Throwable -> Lb7
                goto L60
            L93:
                java.lang.String r2 = "type_float"
                boolean r2 = r2.equals(r12)     // Catch: java.lang.Throwable -> Lb7
                if (r2 == 0) goto Lba
                float r0 = r1.getFloat(r0)     // Catch: java.lang.Throwable -> Lb7
                java.lang.Float r0 = java.lang.Float.valueOf(r0)     // Catch: java.lang.Throwable -> Lb7
                goto L60
            La4:
                com.kingroot.kinguser.C3945za.m1338d(r1)
            La7:
                r0 = r6
                goto L63
            La9:
                r0 = move-exception
                r0 = r6
            Lab:
                com.kingroot.kinguser.C3945za.m1338d(r0)
                goto La7
            Laf:
                r0 = move-exception
                r1 = r6
            Lb1:
                com.kingroot.kinguser.C3945za.m1338d(r1)
                throw r0
            Lb5:
                r0 = move-exception
                goto Lb1
            Lb7:
                r0 = move-exception
                r0 = r1
                goto Lab
            Lba:
                r0 = r6
                goto L60
            Lbc:
                r0 = r8
                goto L5c
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3605sr.SharedPreferencesC3606a.m2240h(java.lang.String, java.lang.String, java.lang.String):java.lang.Object");
        }

        @Nullable
        /* renamed from: i */
        private Object m2239i(String str, String str2, String str3) {
            try {
                ContentResolver contentResolver = KApplication.m13453ge().getContentResolver();
                Bundle bundle = new Bundle();
                bundle.putString("key", str);
                bundle.putString("value", str2);
                bundle.putString("type", str3);
                String str4 = C3609st.m2229jq() + this.mName + "/";
                Bundle call = contentResolver.call(Uri.parse(str4), str4, "", bundle);
                if (call != null) {
                    return call.get("value");
                }
            } catch (Throwable th) {
            }
            return null;
        }

        @Override // android.content.SharedPreferences
        public Map<String, ?> getAll() {
            if (abd.m12839qb() < 11) {
                return m2238js();
            }
            return m2237jt();
        }

        /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
            jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
            	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
            	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
            	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
            */
        @android.support.annotation.Nullable
        /* renamed from: js */
        private java.util.Map<java.lang.String, ?> m2238js() {
            /*
                r8 = this;
                r7 = 1
                r6 = 0
                android.content.Context r0 = com.kingroot.common.app.KApplication.m13453ge()
                android.content.ContentResolver r0 = r0.getContentResolver()     // Catch: java.lang.Throwable -> Lcf
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lcf
                r1.<init>()     // Catch: java.lang.Throwable -> Lcf
                java.lang.String r2 = com.kingroot.kinguser.C3609st.m2229jq()     // Catch: java.lang.Throwable -> Lcf
                java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> Lcf
                java.lang.String r2 = r8.mName     // Catch: java.lang.Throwable -> Lcf
                java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> Lcf
                java.lang.String r2 = "/"
                java.lang.StringBuilder r1 = r1.append(r2)     // Catch: java.lang.Throwable -> Lcf
                java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> Lcf
                android.net.Uri r1 = android.net.Uri.parse(r1)     // Catch: java.lang.Throwable -> Lcf
                r2 = 0
                r3 = 0
                r4 = 0
                r5 = 0
                android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5)     // Catch: java.lang.Throwable -> Lcf
                if (r1 == 0) goto Lc3
                r1.moveToFirst()     // Catch: java.lang.Throwable -> L78
                java.util.HashMap r0 = new java.util.HashMap     // Catch: java.lang.Throwable -> L78
                r0.<init>()     // Catch: java.lang.Throwable -> L78
            L3d:
                boolean r2 = r1.isAfterLast()     // Catch: java.lang.Throwable -> L78
                if (r2 != 0) goto Lbf
                java.lang.String r2 = "key"
                int r2 = r1.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L78
                java.lang.String r3 = r1.getString(r2)     // Catch: java.lang.Throwable -> L78
                java.lang.String r2 = "type"
                int r2 = r1.getColumnIndexOrThrow(r2)     // Catch: java.lang.Throwable -> L78
                java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L78
                java.lang.String r4 = "value"
                int r4 = r1.getColumnIndexOrThrow(r4)     // Catch: java.lang.Throwable -> L78
                java.lang.String r5 = "type_bool"
                boolean r5 = r5.equals(r2)     // Catch: java.lang.Throwable -> L78
                if (r5 == 0) goto L7f
                int r4 = r1.getInt(r4)     // Catch: java.lang.Throwable -> L78
                r2 = 0
                if (r4 != r7) goto L6d
                r2 = r7
            L6d:
                java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)     // Catch: java.lang.Throwable -> L78
            L71:
                r0.put(r3, r2)     // Catch: java.lang.Throwable -> L78
                r1.moveToNext()     // Catch: java.lang.Throwable -> L78
                goto L3d
            L78:
                r0 = move-exception
                r0 = r1
            L7a:
                com.kingroot.kinguser.C3945za.m1338d(r0)
            L7d:
                r0 = r6
            L7e:
                return r0
            L7f:
                java.lang.String r5 = "type_int"
                boolean r5 = r5.equals(r2)     // Catch: java.lang.Throwable -> L78
                if (r5 == 0) goto L90
                int r2 = r1.getInt(r4)     // Catch: java.lang.Throwable -> L78
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L78
                goto L71
            L90:
                java.lang.String r5 = "type_long"
                boolean r5 = r5.equals(r2)     // Catch: java.lang.Throwable -> L78
                if (r5 == 0) goto La1
                long r4 = r1.getLong(r4)     // Catch: java.lang.Throwable -> L78
                java.lang.Long r2 = java.lang.Long.valueOf(r4)     // Catch: java.lang.Throwable -> L78
                goto L71
            La1:
                java.lang.String r5 = "type_string"
                boolean r5 = r5.equals(r2)     // Catch: java.lang.Throwable -> L78
                if (r5 == 0) goto Lae
                java.lang.String r2 = r1.getString(r4)     // Catch: java.lang.Throwable -> L78
                goto L71
            Lae:
                java.lang.String r5 = "type_float"
                boolean r2 = r5.equals(r2)     // Catch: java.lang.Throwable -> L78
                if (r2 == 0) goto Ld2
                float r2 = r1.getFloat(r4)     // Catch: java.lang.Throwable -> L78
                java.lang.Float r2 = java.lang.Float.valueOf(r2)     // Catch: java.lang.Throwable -> L78
                goto L71
            Lbf:
                com.kingroot.kinguser.C3945za.m1338d(r1)
                goto L7e
            Lc3:
                com.kingroot.kinguser.C3945za.m1338d(r1)
                goto L7d
            Lc7:
                r0 = move-exception
                r1 = r6
            Lc9:
                com.kingroot.kinguser.C3945za.m1338d(r1)
                throw r0
            Lcd:
                r0 = move-exception
                goto Lc9
            Lcf:
                r0 = move-exception
                r0 = r6
                goto L7a
            Ld2:
                r2 = r6
                goto L71
            */
            throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.C3605sr.SharedPreferencesC3606a.m2238js():java.util.Map");
        }

        @Nullable
        /* renamed from: jt */
        private Map<String, ?> m2237jt() {
            try {
                String str = C3609st.m2229jq() + this.mName + "/";
                Bundle call = KApplication.m13453ge().getContentResolver().call(Uri.parse(str), str, "", new Bundle());
                if (call != null) {
                    return (Map) call.getSerializable("value");
                }
            } catch (Throwable th) {
            }
            return null;
        }

        @Override // android.content.SharedPreferences
        public String getString(String str, String str2) {
            Object m2241g = m2241g(str, str2, "type_string");
            if (m2241g != null && (m2241g instanceof String)) {
                return (String) m2241g;
            }
            return str2;
        }

        @Override // android.content.SharedPreferences
        @Nullable
        public Set<String> getStringSet(String str, Set<String> set) {
            return null;
        }

        @Override // android.content.SharedPreferences
        public int getInt(String str, int i) {
            Object m2241g = m2241g(str, "" + i, "type_int");
            if (m2241g != null && (m2241g instanceof Integer)) {
                return ((Integer) m2241g).intValue();
            }
            return i;
        }

        @Override // android.content.SharedPreferences
        public long getLong(String str, long j) {
            Object m2241g = m2241g(str, "" + j, "type_long");
            if (m2241g != null && (m2241g instanceof Long)) {
                return ((Long) m2241g).longValue();
            }
            return j;
        }

        @Override // android.content.SharedPreferences
        public float getFloat(String str, float f) {
            Object m2241g = m2241g(str, "" + f, "type_float");
            if (m2241g != null && (m2241g instanceof Float)) {
                return ((Float) m2241g).floatValue();
            }
            return f;
        }

        @Override // android.content.SharedPreferences
        public boolean getBoolean(String str, boolean z) {
            Object m2241g = m2241g(str, "" + z, "type_bool");
            if (m2241g != null && (m2241g instanceof Boolean)) {
                return ((Boolean) m2241g).booleanValue();
            }
            return z;
        }

        @Override // android.content.SharedPreferences
        public boolean contains(String str) {
            Map<String, ?> all = getAll();
            if (all == null) {
                return false;
            }
            return all.containsKey(str);
        }

        @Override // android.content.SharedPreferences
        public SharedPreferences.Editor edit() {
            return new SharedPreferences$EditorC3607b(this.mName);
        }

        @Override // android.content.SharedPreferences
        public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        }

        @Override // android.content.SharedPreferences
        public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        }
    }

    /* renamed from: com.kingroot.kinguser.sr$b */
    /* loaded from: classes.dex */
    public static class SharedPreferences$EditorC3607b implements SharedPreferences.Editor {

        /* renamed from: GI */
        private ContentValues f3530GI = new ContentValues();
        private String mName;

        public SharedPreferences$EditorC3607b(String str) {
            this.mName = str;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            this.f3530GI.put(str, str2);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i) {
            this.f3530GI.put(str, Integer.valueOf(i));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j) {
            this.f3530GI.put(str, Long.valueOf(j));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f) {
            this.f3530GI.put(str, Float.valueOf(f));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            this.f3530GI.put(str, Boolean.valueOf(z));
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            this.f3530GI.putNull(str);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.f3530GI.putNull("");
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            return m2236a(this.f3530GI, false);
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
            m2236a(this.f3530GI, true);
        }

        /* renamed from: a */
        private boolean m2236a(ContentValues contentValues, boolean z) {
            if (contentValues == null) {
                return false;
            }
            String str = "";
            String[] strArr = null;
            if (z) {
                str = C3608ss.m2234e("option_is_by_apply");
                strArr = new String[]{"true"};
            }
            try {
                boolean z2 = bzt.m5101ge().getContentResolver().update(Uri.parse(new StringBuilder().append(C3609st.m2229jq()).append(this.mName).append("/").toString()), contentValues, str, strArr) == 1;
                contentValues.clear();
                return z2;
            } catch (Throwable th) {
                contentValues.clear();
                return false;
            }
        }
    }
}
