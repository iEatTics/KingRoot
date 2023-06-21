package com.kingroot.kinguser;

import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import java.io.InputStream;
/* renamed from: com.kingroot.kinguser.zi */
/* loaded from: classes.dex */
public class C3953zi extends Resources {

    /* renamed from: Wv */
    private static C3953zi f4078Wv = null;

    /* renamed from: pr */
    public static C3953zi m1311pr() {
        if (f4078Wv == null) {
            synchronized (C3953zi.class) {
                if (f4078Wv == null) {
                    f4078Wv = new C3953zi(bzt.m5101ge().getResources());
                }
            }
        }
        return f4078Wv;
    }

    private C3953zi(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
    }

    private Resources getResources() {
        return bzt.m5101ge().getResources();
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i) {
        try {
            return getResources().getText(i);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public CharSequence getQuantityText(int i, int i2) {
        try {
            return getResources().getQuantityText(i, i2);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public String getString(int i) {
        try {
            return getResources().getString(i);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public String getString(int i, Object... objArr) {
        try {
            return getResources().getString(i, objArr);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int i, int i2, Object... objArr) {
        try {
            return getResources().getQuantityString(i, i2, objArr);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int i, int i2) {
        try {
            return getResources().getQuantityString(i, i2);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i, CharSequence charSequence) {
        try {
            return getResources().getText(i, charSequence);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public CharSequence[] getTextArray(int i) {
        try {
            return getResources().getTextArray(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public String[] getStringArray(int i) {
        try {
            return getResources().getStringArray(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public int[] getIntArray(int i) {
        try {
            return getResources().getIntArray(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public TypedArray obtainTypedArray(int i) {
        try {
            return getResources().obtainTypedArray(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public float getDimension(int i) {
        try {
            return getResources().getDimension(i);
        } catch (Throwable th) {
            return 0.0f;
        }
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelOffset(int i) {
        try {
            return getResources().getDimensionPixelOffset(i);
        } catch (Throwable th) {
            return 0;
        }
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelSize(int i) {
        try {
            return getResources().getDimensionPixelSize(i);
        } catch (Throwable th) {
            return 0;
        }
    }

    @Override // android.content.res.Resources
    public float getFraction(int i, int i2, int i3) {
        try {
            return getResources().getFraction(i, i2, i3);
        } catch (Throwable th) {
            return 0.0f;
        }
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        try {
            return getResources().getDrawable(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public Movie getMovie(int i) {
        try {
            return getResources().getMovie(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public int getColor(int i) {
        try {
            return getResources().getColor(i);
        } catch (Throwable th) {
            return 0;
        }
    }

    @Override // android.content.res.Resources
    public ColorStateList getColorStateList(int i) {
        try {
            return getResources().getColorStateList(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public boolean getBoolean(int i) {
        try {
            return getResources().getBoolean(i);
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // android.content.res.Resources
    public int getInteger(int i) {
        try {
            return getResources().getInteger(i);
        } catch (Throwable th) {
            return 0;
        }
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getLayout(int i) {
        try {
            return getResources().getLayout(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getAnimation(int i) {
        try {
            return getResources().getAnimation(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getXml(int i) {
        try {
            return getResources().getXml(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i) {
        try {
            return getResources().openRawResource(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i, TypedValue typedValue) {
        try {
            return getResources().openRawResource(i, typedValue);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public AssetFileDescriptor openRawResourceFd(int i) {
        try {
            return getResources().openRawResourceFd(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public void getValue(int i, TypedValue typedValue, boolean z) {
        try {
            getResources().getValue(i, typedValue, z);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.res.Resources
    public void getValue(String str, TypedValue typedValue, boolean z) {
        try {
            getResources().getValue(str, typedValue, z);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.res.Resources
    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        try {
            return getResources().obtainAttributes(attributeSet, iArr);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        try {
            getResources().updateConfiguration(configuration, displayMetrics);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.res.Resources
    public DisplayMetrics getDisplayMetrics() {
        try {
            return getResources().getDisplayMetrics();
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public Configuration getConfiguration() {
        try {
            return getResources().getConfiguration();
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public int getIdentifier(String str, String str2, String str3) {
        try {
            return getResources().getIdentifier(str, str2, str3);
        } catch (Throwable th) {
            return 0;
        }
    }

    @Override // android.content.res.Resources
    public String getResourceName(int i) {
        try {
            return getResources().getResourceName(i);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public String getResourcePackageName(int i) {
        try {
            return getResources().getResourcePackageName(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public String getResourceTypeName(int i) {
        try {
            return getResources().getResourceTypeName(i);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public String getResourceEntryName(int i) {
        try {
            return getResources().getResourceEntryName(i);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) {
        try {
            getResources().parseBundleExtras(xmlResourceParser, bundle);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.res.Resources
    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) {
        try {
            getResources().parseBundleExtra(str, attributeSet, bundle);
        } catch (Throwable th) {
        }
    }
}
