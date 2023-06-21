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
/* renamed from: com.kingroot.kinguser.gv */
/* loaded from: classes.dex */
public class C3138gv extends Resources {

    /* renamed from: qD */
    private static C3138gv f2732qD = null;

    /* renamed from: aH */
    public static C3138gv m3651aH() {
        if (f2732qD == null) {
            synchronized (C3138gv.class) {
                if (f2732qD == null) {
                    f2732qD = new C3138gv(bzu.m5098ge().getResources());
                }
            }
        }
        return f2732qD;
    }

    private C3138gv(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
    }

    /* renamed from: aI */
    private Resources m3650aI() {
        return bzu.m5098ge().getResources();
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i) {
        try {
            return m3650aI().getText(i);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public CharSequence getQuantityText(int i, int i2) {
        try {
            return m3650aI().getQuantityText(i, i2);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public String getString(int i) {
        try {
            return m3650aI().getString(i);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public String getString(int i, Object... objArr) {
        try {
            return m3650aI().getString(i, objArr);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int i, int i2, Object... objArr) {
        try {
            return m3650aI().getQuantityString(i, i2, objArr);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int i, int i2) {
        try {
            return m3650aI().getQuantityString(i, i2);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int i, CharSequence charSequence) {
        try {
            return m3650aI().getText(i, charSequence);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public CharSequence[] getTextArray(int i) {
        try {
            return m3650aI().getTextArray(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public String[] getStringArray(int i) {
        try {
            return m3650aI().getStringArray(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public int[] getIntArray(int i) {
        try {
            return m3650aI().getIntArray(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public TypedArray obtainTypedArray(int i) {
        try {
            return m3650aI().obtainTypedArray(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public float getDimension(int i) {
        try {
            return m3650aI().getDimension(i);
        } catch (Throwable th) {
            return 0.0f;
        }
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelOffset(int i) {
        try {
            return m3650aI().getDimensionPixelOffset(i);
        } catch (Throwable th) {
            return 0;
        }
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelSize(int i) {
        try {
            return m3650aI().getDimensionPixelSize(i);
        } catch (Throwable th) {
            return 0;
        }
    }

    @Override // android.content.res.Resources
    public float getFraction(int i, int i2, int i3) {
        try {
            return m3650aI().getFraction(i, i2, i3);
        } catch (Throwable th) {
            return 0.0f;
        }
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        try {
            return m3650aI().getDrawable(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public Movie getMovie(int i) {
        try {
            return m3650aI().getMovie(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public int getColor(int i) {
        try {
            return m3650aI().getColor(i);
        } catch (Throwable th) {
            return 0;
        }
    }

    @Override // android.content.res.Resources
    public ColorStateList getColorStateList(int i) {
        try {
            return m3650aI().getColorStateList(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public boolean getBoolean(int i) {
        try {
            return m3650aI().getBoolean(i);
        } catch (Throwable th) {
            return false;
        }
    }

    @Override // android.content.res.Resources
    public int getInteger(int i) {
        try {
            return m3650aI().getInteger(i);
        } catch (Throwable th) {
            return 0;
        }
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getLayout(int i) {
        try {
            return m3650aI().getLayout(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getAnimation(int i) {
        try {
            return m3650aI().getAnimation(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getXml(int i) {
        try {
            return m3650aI().getXml(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i) {
        try {
            return m3650aI().openRawResource(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int i, TypedValue typedValue) {
        try {
            return m3650aI().openRawResource(i, typedValue);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public AssetFileDescriptor openRawResourceFd(int i) {
        try {
            return m3650aI().openRawResourceFd(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public void getValue(int i, TypedValue typedValue, boolean z) {
        try {
            m3650aI().getValue(i, typedValue, z);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.res.Resources
    public void getValue(String str, TypedValue typedValue, boolean z) {
        try {
            m3650aI().getValue(str, typedValue, z);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.res.Resources
    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] iArr) {
        try {
            return m3650aI().obtainAttributes(attributeSet, iArr);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        try {
            m3650aI().updateConfiguration(configuration, displayMetrics);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.res.Resources
    public DisplayMetrics getDisplayMetrics() {
        try {
            return m3650aI().getDisplayMetrics();
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public Configuration getConfiguration() {
        try {
            return m3650aI().getConfiguration();
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public int getIdentifier(String str, String str2, String str3) {
        try {
            return m3650aI().getIdentifier(str, str2, str3);
        } catch (Throwable th) {
            return 0;
        }
    }

    @Override // android.content.res.Resources
    public String getResourceName(int i) {
        try {
            return m3650aI().getResourceName(i);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public String getResourcePackageName(int i) {
        try {
            return m3650aI().getResourcePackageName(i);
        } catch (Throwable th) {
            return null;
        }
    }

    @Override // android.content.res.Resources
    public String getResourceTypeName(int i) {
        try {
            return m3650aI().getResourceTypeName(i);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public String getResourceEntryName(int i) {
        try {
            return m3650aI().getResourceEntryName(i);
        } catch (Throwable th) {
            return "";
        }
    }

    @Override // android.content.res.Resources
    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) {
        try {
            m3650aI().parseBundleExtras(xmlResourceParser, bundle);
        } catch (Throwable th) {
        }
    }

    @Override // android.content.res.Resources
    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) {
        try {
            m3650aI().parseBundleExtra(str, attributeSet, bundle);
        } catch (Throwable th) {
        }
    }
}
