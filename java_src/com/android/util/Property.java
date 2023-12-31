package com.android.util;
/* loaded from: classes.dex */
public abstract class Property<T, V> {
    private final String mName;
    private final Class<V> mType;

    public abstract V get(T t);

    /* renamed from: of */
    public static <T, V> Property<T, V> m13710of(Class<T> cls, Class<V> cls2, String str) {
        return new ReflectiveProperty(cls, cls2, str);
    }

    public Property(Class<V> cls, String str) {
        this.mName = str;
        this.mType = cls;
    }

    public boolean isReadOnly() {
        return false;
    }

    public void set(T t, V v) {
        throw new UnsupportedOperationException("Property " + getName() + " is read-only");
    }

    public String getName() {
        return this.mName;
    }

    public Class<V> getType() {
        return this.mType;
    }
}
