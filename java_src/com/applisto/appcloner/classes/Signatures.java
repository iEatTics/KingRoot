package com.applisto.appcloner.classes;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Base64;
import com.applisto.appcloner.classes.util.IPackageManagerHook;
import com.applisto.appcloner.classes.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import javax.security.cert.X509Certificate;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class Signatures {
    private static final String TAG = Signatures.class.getSimpleName();
    private final boolean mDisableShareActions;
    private final String mFacebookLoginBehavior;
    private final String mTwitterLoginBehavior;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Signatures(CloneSettings cloneSettings) {
        this.mFacebookLoginBehavior = cloneSettings.getString("facebookLoginBehavior", null);
        this.mTwitterLoginBehavior = cloneSettings.getString("twitterLoginBehavior", null);
        this.mDisableShareActions = cloneSettings.getBoolean("disableShareActions", false).booleanValue();
        String str = TAG;
        Log.m13704i(str, "Signatures; mFacebookLoginBehavior: " + this.mFacebookLoginBehavior + ", mTwitterLoginBehavior: " + this.mTwitterLoginBehavior + ", mDisableShareActions: " + this.mDisableShareActions);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void install(Context context) {
        Log.m13704i(TAG, "install; ");
        try {
            PackageManager packageManager = context.getPackageManager();
            final String packageName = context.getPackageName();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 128);
            final Integer valueOf = Integer.valueOf(applicationInfo.uid);
            Bundle bundle = applicationInfo.metaData;
            final String str = new String(Base64.decode(bundle.getString("com.applisto.appcloner.originalPackageName"), 0));
            ApplicationInfo applicationInfo2 = null;
            try {
                applicationInfo2 = packageManager.getApplicationInfo(str, 0);
            } catch (Exception unused) {
            }
            final int i = applicationInfo2 != null ? applicationInfo2.uid : 0;
            String string = bundle.getString("com.applisto.appcloner.originalSignatures");
            String str2 = TAG;
            Log.m13704i(str2, "init; signaturesString: " + string);
            final Signature[] unmarshallSignatures = unmarshallSignatures(string);
            if (unmarshallSignatures != null) {
                String str3 = TAG;
                Log.m13704i(str3, "init; packageName: " + packageName + ", uid: " + valueOf + ", originalPackageName: " + str + ", originalUid: " + i + ", originalSignatures:\n" + signaturesToString(unmarshallSignatures));
                new IPackageManagerHook() { // from class: com.applisto.appcloner.classes.Signatures.1
                    @Override // com.applisto.appcloner.classes.util.IPackageManagerHook
                    protected InvocationHandler getInvocationHandler(final Object obj) {
                        return new InvocationHandler() { // from class: com.applisto.appcloner.classes.Signatures.1.1
                            @Override // java.lang.reflect.InvocationHandler
                            public Object invoke(Object obj2, Method method, Object[] objArr) throws Throwable {
                                ResolveInfo resolveInfo;
                                try {
                                    String name = method.getName();
                                    if ("checkSignatures".equals(name)) {
                                        if (packageName.equals(objArr[0])) {
                                            objArr[0] = str;
                                        } else if (valueOf.equals(objArr[0])) {
                                            objArr[0] = Integer.valueOf(i);
                                        }
                                        if (packageName.equals(objArr[1])) {
                                            objArr[1] = str;
                                        } else if (valueOf.equals(objArr[1])) {
                                            objArr[1] = Integer.valueOf(i);
                                        }
                                    } else if ("getInstallerPackageName".equals(name)) {
                                        return new String(Base64.decode("Y29tLmFuZHJvaWQudmVuZGluZw==", 0));
                                    }
                                } catch (Exception e) {
                                    Log.m13698w(Signatures.TAG, e);
                                }
                                Object invoke = method.invoke(obj, objArr);
                                try {
                                    String name2 = method.getName();
                                    if ("getPackageInfo".equals(name2)) {
                                        if (invoke != null) {
                                            PackageInfo packageInfo = (PackageInfo) invoke;
                                            if (!"WEB_ONLY".equals(Signatures.this.mFacebookLoginBehavior) || (!"com.facebook.katana".equals(packageInfo.packageName) && !"com.facebook.lite".equals(packageInfo.packageName) && !"com.facebook.services".equals(packageInfo.packageName))) {
                                                if ("WEB_ONLY".equals(Signatures.this.mTwitterLoginBehavior) && "com.twitter.android".equals(packageInfo.packageName)) {
                                                    Log.m13704i(Signatures.TAG, "invoke; getPackageInfo; returning null for Twitter package");
                                                    return null;
                                                } else if (packageName.equals(packageInfo.packageName) && packageInfo.signatures != null && packageInfo.signatures.length > 0) {
                                                    packageInfo.signatures = unmarshallSignatures;
                                                }
                                            } else {
                                                Log.m13704i(Signatures.TAG, "invoke; getPackageInfo; returning null for Facebook packages");
                                                return null;
                                            }
                                        }
                                    } else if ("getApplicationInfo".equals(name2)) {
                                        if (invoke != null) {
                                            ApplicationInfo applicationInfo3 = (ApplicationInfo) invoke;
                                            if (!"WEB_ONLY".equals(Signatures.this.mFacebookLoginBehavior) || (!"com.facebook.katana".equals(applicationInfo3.packageName) && !"com.facebook.lite".equals(applicationInfo3.packageName) && !"com.facebook.services".equals(applicationInfo3.packageName))) {
                                                if ("WEB_ONLY".equals(Signatures.this.mTwitterLoginBehavior) && "com.twitter.android".equals(applicationInfo3.packageName)) {
                                                    Log.m13704i(Signatures.TAG, "invoke; getApplicationInfo; returning null for Twitter package");
                                                    return null;
                                                }
                                                applicationInfo3.flags &= -3;
                                            } else {
                                                Log.m13704i(Signatures.TAG, "invoke; getApplicationInfo; returning null for Facebook packages");
                                                return null;
                                            }
                                        }
                                    } else if ("queryIntentActivities".equals(name2)) {
                                        if (!Signatures.this.mDisableShareActions) {
                                            if ("WEB_ONLY".equals(Signatures.this.mFacebookLoginBehavior) || "WEB_ONLY_ALT".equals(Signatures.this.mFacebookLoginBehavior)) {
                                                Iterator<ResolveInfo> it = getResolveInfos(invoke).iterator();
                                                while (it.hasNext()) {
                                                    ResolveInfo next = it.next();
                                                    if (next != null && next.toString().contains("com.facebook.katana/.ProxyAuth")) {
                                                        it.remove();
                                                    }
                                                }
                                            }
                                        } else {
                                            getResolveInfos(invoke).clear();
                                        }
                                    } else if ("resolveIntent".equals(name2) && (("WEB_ONLY".equals(Signatures.this.mFacebookLoginBehavior) || "WEB_ONLY_ALT".equals(Signatures.this.mFacebookLoginBehavior)) && (resolveInfo = (ResolveInfo) invoke) != null && resolveInfo.toString().contains("com.facebook.katana/.ProxyAuth"))) {
                                        Log.m13704i(Signatures.TAG, "invoke; resolveIntent; returning no resolved intent for Facebook");
                                        return null;
                                    }
                                } catch (Exception e2) {
                                    Log.m13698w(Signatures.TAG, e2);
                                }
                                return invoke;
                            }

                            private List<ResolveInfo> getResolveInfos(Object obj2) {
                                try {
                                    if ("android.content.pm.ParceledListSlice".equals(obj2.getClass().getName())) {
                                        Field declaredField = (Build.VERSION.SDK_INT >= 26 ? obj2.getClass().getSuperclass() : obj2.getClass()).getDeclaredField("mList");
                                        declaredField.setAccessible(true);
                                        return (List) declaredField.get(obj2);
                                    }
                                    return (List) obj2;
                                } catch (Exception e) {
                                    Log.m13698w(Signatures.TAG, e);
                                    return Collections.EMPTY_LIST;
                                }
                            }
                        };
                    }
                }.install(context);
            }
        } catch (Throwable th) {
            Log.m13698w(TAG, th);
        }
    }

    private static Signature[] unmarshallSignatures(String str) {
        try {
            byte[] decode = Base64.decode(str, 2);
            Parcel obtain = Parcel.obtain();
            obtain.unmarshall(decode, 0, decode.length);
            obtain.setDataPosition(0);
            Parcelable[] readParcelableArray = obtain.readParcelableArray(Signatures.class.getClassLoader());
            Signature[] signatureArr = new Signature[readParcelableArray.length];
            System.arraycopy(readParcelableArray, 0, signatureArr, 0, readParcelableArray.length);
            obtain.recycle();
            return signatureArr;
        } catch (Exception e) {
            Log.m13698w(TAG, e);
            return null;
        }
    }

    private static String signaturesToString(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        if (signatureArr != null) {
            for (Signature signature : signatureArr) {
                try {
                    X509Certificate x509Certificate = X509Certificate.getInstance(signature.toByteArray());
                    arrayList.add("  " + Base64.encodeToString(x509Certificate.getEncoded(), 2));
                } catch (Exception e) {
                    Log.m13698w(TAG, e);
                }
            }
        }
        return TextUtils.join("\n", arrayList);
    }
}
