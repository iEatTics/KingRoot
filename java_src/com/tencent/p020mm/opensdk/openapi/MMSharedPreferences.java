package com.tencent.p020mm.opensdk.openapi;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import com.tencent.p020mm.opensdk.utils.C4175c;
import com.tencent.p020mm.opensdk.utils.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* renamed from: com.tencent.mm.opensdk.openapi.MMSharedPreferences */
/* loaded from: classes.dex */
class MMSharedPreferences implements SharedPreferences {
    private static final String TAG = "MicroMsg.SDK.SharedPreferences";

    /* renamed from: cr */
    private final ContentResolver f4872cr;
    private final String[] columns = {"_id", "key", "type", "value"};
    private final HashMap<String, Object> values = new HashMap<>();
    private REditor editor = null;

    /* renamed from: com.tencent.mm.opensdk.openapi.MMSharedPreferences$REditor */
    /* loaded from: classes.dex */
    static class REditor implements SharedPreferences.Editor {

        /* renamed from: cr */
        private ContentResolver f4873cr;
        private Map<String, Object> values = new HashMap();
        private Set<String> remove = new HashSet();
        private boolean clear = false;

        public REditor(ContentResolver contentResolver) {
            this.f4873cr = contentResolver;
        }

        @Override // android.content.SharedPreferences.Editor
        public void apply() {
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor clear() {
            this.clear = true;
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public boolean commit() {
            int i;
            boolean z;
            ContentValues contentValues = new ContentValues();
            if (this.clear) {
                this.f4873cr.delete(C4175c.C4177b.CONTENT_URI, null, null);
                this.clear = false;
            }
            Iterator<String> it = this.remove.iterator();
            while (it.hasNext()) {
                this.f4873cr.delete(C4175c.C4177b.CONTENT_URI, "key = ?", new String[]{it.next()});
            }
            for (Map.Entry<String, Object> entry : this.values.entrySet()) {
                Object value = entry.getValue();
                if (value == null) {
                    Log.m495e("MicroMsg.SDK.PluginProvider.Resolver", "unresolve failed, null value");
                    i = 0;
                } else if (value instanceof Integer) {
                    i = 1;
                } else if (value instanceof Long) {
                    i = 2;
                } else if (value instanceof String) {
                    i = 3;
                } else if (value instanceof Boolean) {
                    i = 4;
                } else if (value instanceof Float) {
                    i = 5;
                } else if (value instanceof Double) {
                    i = 6;
                } else {
                    Log.m495e("MicroMsg.SDK.PluginProvider.Resolver", "unresolve failed, unknown type=" + value.getClass().toString());
                    i = 0;
                }
                if (i == 0) {
                    z = false;
                } else {
                    contentValues.put("type", Integer.valueOf(i));
                    contentValues.put("value", value.toString());
                    z = true;
                }
                if (z) {
                    this.f4873cr.update(C4175c.C4177b.CONTENT_URI, contentValues, "key = ?", new String[]{entry.getKey()});
                }
            }
            return true;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putBoolean(String str, boolean z) {
            this.values.put(str, Boolean.valueOf(z));
            this.remove.remove(str);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putFloat(String str, float f) {
            this.values.put(str, Float.valueOf(f));
            this.remove.remove(str);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putInt(String str, int i) {
            this.values.put(str, Integer.valueOf(i));
            this.remove.remove(str);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putLong(String str, long j) {
            this.values.put(str, Long.valueOf(j));
            this.remove.remove(str);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putString(String str, String str2) {
            this.values.put(str, str2);
            this.remove.remove(str);
            return this;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor putStringSet(String str, Set<String> set) {
            return null;
        }

        @Override // android.content.SharedPreferences.Editor
        public SharedPreferences.Editor remove(String str) {
            this.remove.add(str);
            return this;
        }
    }

    public MMSharedPreferences(Context context) {
        this.f4872cr = context.getContentResolver();
    }

    private Object getValue(String str) {
        try {
            Cursor query = this.f4872cr.query(C4175c.C4177b.CONTENT_URI, this.columns, "key = ?", new String[]{str}, null);
            if (query == null) {
                return null;
            }
            Object m488a = query.moveToFirst() ? C4175c.C4176a.m488a(query.getInt(query.getColumnIndex("type")), query.getString(query.getColumnIndex("value"))) : null;
            query.close();
            return m488a;
        } catch (Exception e) {
            Log.m495e(TAG, "getValue exception:" + e.getMessage());
            return null;
        }
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return getValue(str) != null;
    }

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        if (this.editor == null) {
            this.editor = new REditor(this.f4872cr);
        }
        return this.editor;
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        try {
            Cursor query = this.f4872cr.query(C4175c.C4177b.CONTENT_URI, this.columns, null, null, null);
            if (query == null) {
                return null;
            }
            int columnIndex = query.getColumnIndex("key");
            int columnIndex2 = query.getColumnIndex("type");
            int columnIndex3 = query.getColumnIndex("value");
            while (query.moveToNext()) {
                this.values.put(query.getString(columnIndex), C4175c.C4176a.m488a(query.getInt(columnIndex2), query.getString(columnIndex3)));
            }
            query.close();
            return this.values;
        } catch (Exception e) {
            Log.m495e(TAG, "getAll exception:" + e.getMessage());
            return this.values;
        }
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        Object value = getValue(str);
        return (value == null || !(value instanceof Boolean)) ? z : ((Boolean) value).booleanValue();
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        Object value = getValue(str);
        return (value == null || !(value instanceof Float)) ? f : ((Float) value).floatValue();
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        Object value = getValue(str);
        return (value == null || !(value instanceof Integer)) ? i : ((Integer) value).intValue();
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        Object value = getValue(str);
        return (value == null || !(value instanceof Long)) ? j : ((Long) value).longValue();
    }

    @Override // android.content.SharedPreferences
    public String getString(String str, String str2) {
        Object value = getValue(str);
        return (value == null || !(value instanceof String)) ? str2 : (String) value;
    }

    @Override // android.content.SharedPreferences
    public Set<String> getStringSet(String str, Set<String> set) {
        return null;
    }

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
    }
}
