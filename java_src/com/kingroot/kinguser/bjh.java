package com.kingroot.kinguser;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import com.kingroot.kinguser.ztool.autostartmgr.AutoStartAppItemInfo;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
class bjh {
    private XmlResourceParser bwC;
    private Resources bwD;
    private final Context mContext;
    private PackageInfo bwE = null;
    private String bwF = null;
    private AutoStartAppItemInfo bwG = null;
    private EnumC2397a bwH = EnumC2397a.Unknown;
    private AutoStartAppItemInfo.AutoStartReceiver bwI = null;
    private final PackageManager mPackageManager = C3952zh.m1312pq();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.kingroot.kinguser.bjh$a */
    /* loaded from: classes.dex */
    public enum EnumC2397a {
        Unknown,
        InManifest,
        InApplication,
        InReceiver,
        InIntentFilter,
        InAction
    }

    public bjh(Context context) {
        this.mContext = context;
    }

    /* renamed from: k */
    public AutoStartAppItemInfo m6732k(PackageInfo packageInfo) {
        this.bwE = packageInfo;
        m6731l(packageInfo);
        return this.bwG;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0027 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.content.res.XmlResourceParser, android.content.res.Resources] */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m6731l(PackageInfo packageInfo) {
        XmlResourceParser xmlResourceParser;
        XmlResourceParser xmlResourceParser2;
        Resources resources;
        AssetManager assets;
        try {
            Context createPackageContext = this.mContext.createPackageContext(packageInfo.packageName, 0);
            assets = createPackageContext.getAssets();
            xmlResourceParser = m6734a(createPackageContext, assets);
        } catch (PackageManager.NameNotFoundException e) {
            xmlResourceParser = null;
        } catch (IOException e2) {
            xmlResourceParser = null;
        } catch (NullPointerException e3) {
            xmlResourceParser = null;
        }
        try {
            xmlResourceParser2 = xmlResourceParser;
            resources = new Resources(assets, this.mContext.getResources().getDisplayMetrics(), null);
        } catch (PackageManager.NameNotFoundException e4) {
            xmlResourceParser2 = xmlResourceParser;
            resources = null;
            if (xmlResourceParser2 != null) {
            }
        } catch (IOException e5) {
            xmlResourceParser2 = xmlResourceParser;
            resources = null;
            if (xmlResourceParser2 != null) {
            }
        } catch (NullPointerException e6) {
            xmlResourceParser2 = xmlResourceParser;
            resources = null;
            if (xmlResourceParser2 != null) {
            }
        }
        if (xmlResourceParser2 != null) {
            return;
        }
        this.bwG = null;
        this.bwC = xmlResourceParser2;
        this.bwD = resources;
        try {
            this.bwH = EnumC2397a.Unknown;
            for (int eventType = xmlResourceParser2.getEventType(); eventType != 1; eventType = xmlResourceParser2.nextToken()) {
                switch (eventType) {
                    case 2:
                        String name = xmlResourceParser2.getName();
                        if (name.equals("manifest")) {
                            adK();
                            continue;
                        } else if (name.equals("application")) {
                            adM();
                            continue;
                        } else if (name.equals("receiver")) {
                            adO();
                            continue;
                        } else if (name.equals("intent-filter")) {
                            adQ();
                            continue;
                        } else if (name.equals("action")) {
                            adS();
                            continue;
                        } else {
                            continue;
                        }
                    case 3:
                        String name2 = xmlResourceParser2.getName();
                        if (name2.equals("manifest")) {
                            adL();
                            continue;
                        } else if (name2.equals("application")) {
                            adN();
                            continue;
                        } else if (name2.equals("receiver")) {
                            adP();
                            continue;
                        } else if (name2.equals("intent-filter")) {
                            adR();
                            continue;
                        } else if (name2.equals("action")) {
                            adT();
                            continue;
                        } else {
                            continue;
                        }
                }
            }
        } catch (IOException e7) {
        } catch (XmlPullParserException e8) {
        } finally {
            this.bwC = null;
            this.bwD = null;
            xmlResourceParser2.close();
        }
    }

    /* renamed from: a */
    private XmlResourceParser m6734a(Context context, AssetManager assetManager) {
        try {
            String str = (String) Context.class.getMethod("getPackageResourcePath", new Class[0]).invoke(context, new Object[0]);
            Method method = AssetManager.class.getMethod("getCookieName", Integer.TYPE);
            String str2 = (str == null && context.getPackageName().equals("android")) ? "/system/framework/framework-res.apk" : str;
            if (str2 != null) {
                for (int i = 1; i < 20; i++) {
                    if (str2.equals(method.invoke(assetManager, Integer.valueOf(i)))) {
                        return assetManager.openXmlResourceParser(i, "AndroidManifest.xml");
                    }
                }
            }
        } catch (Exception e) {
        }
        return assetManager.openXmlResourceParser("AndroidManifest.xml");
    }

    void adK() {
        if (this.bwH == EnumC2397a.Unknown) {
            this.bwH = EnumC2397a.InManifest;
        }
    }

    void adL() {
        if (this.bwH == EnumC2397a.InManifest) {
            this.bwH = EnumC2397a.Unknown;
        }
    }

    void adM() {
        if (this.bwH == EnumC2397a.InManifest) {
            this.bwH = EnumC2397a.InApplication;
            this.bwF = m6730lZ("label");
        }
    }

    void adN() {
        if (this.bwH == EnumC2397a.InApplication) {
            this.bwH = EnumC2397a.InManifest;
            this.bwF = null;
        }
    }

    void adO() {
        if (this.bwH == EnumC2397a.InApplication) {
            this.bwH = EnumC2397a.InReceiver;
            String m6730lZ = m6730lZ("name");
            if (m6730lZ != null) {
                if (m6730lZ.startsWith(".")) {
                    m6730lZ = this.bwE.packageName + m6730lZ;
                } else if (!m6730lZ.contains(".")) {
                    m6730lZ = this.bwE.packageName + "." + m6730lZ;
                }
                if (this.bwG == null) {
                    this.bwG = AutoStartAppItemInfo.m1256h(this.bwF, this.bwE.packageName, this.bwE.applicationInfo.uid);
                }
                this.bwI = new AutoStartAppItemInfo.AutoStartReceiver(m6730lZ, bja.m6805a(this.mPackageManager, this.bwG == null ? "" : this.bwG.getPackageName(), m6730lZ));
            }
        }
    }

    void adP() {
        if (this.bwH == EnumC2397a.InReceiver) {
            if (this.bwI != null && this.bwI.adz() > 0 && this.bwG != null) {
                this.bwG.m1257a(this.bwI);
            }
            this.bwI = null;
            this.bwH = EnumC2397a.InApplication;
        }
    }

    void adQ() {
        if (this.bwH == EnumC2397a.InReceiver) {
            this.bwH = EnumC2397a.InIntentFilter;
        }
    }

    void adR() {
        if (this.bwH == EnumC2397a.InIntentFilter) {
            this.bwH = EnumC2397a.InReceiver;
        }
    }

    void adS() {
        if (this.bwH == EnumC2397a.InIntentFilter) {
            this.bwH = EnumC2397a.InAction;
            if (this.bwI != null) {
                String m6730lZ = m6730lZ("name");
                if (m6730lZ == null) {
                    if (this.bwG != null) {
                    }
                } else if ("android.appwidget.action.APPWIDGET_UPDATE".equals(m6730lZ) || "android.intent.action.HEADSET_PLUG".equals(m6730lZ) || "android.intent.action.MEDIA_BUTTON".equals(m6730lZ)) {
                    this.bwI = null;
                } else {
                    String m6809lU = biy.m6809lU(m6730lZ);
                    if (m6809lU != null) {
                        this.bwI.m1250aN(m6730lZ, m6809lU);
                    }
                }
            }
        }
    }

    void adT() {
        if (this.bwH == EnumC2397a.InAction) {
            this.bwH = EnumC2397a.InIntentFilter;
        }
    }

    /* renamed from: lZ */
    private String m6730lZ(String str) {
        return m6733a(this.bwC.getAttributeValue("http://schemas.android.com/apk/res/android", str), this.bwD);
    }

    /* renamed from: a */
    private String m6733a(String str, Resources resources) {
        if (str != null && str.startsWith("@") && resources != null) {
            try {
                return resources.getString(Integer.parseInt(str.substring(1)));
            } catch (Resources.NotFoundException e) {
                return str;
            } catch (NumberFormatException e2) {
                return str;
            }
        }
        return str;
    }
}
