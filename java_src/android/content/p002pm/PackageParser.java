package android.content.p002pm;

import android.util.DisplayMetrics;
import java.io.File;
/* renamed from: android.content.pm.PackageParser */
/* loaded from: classes.dex */
public class PackageParser {

    /* renamed from: android.content.pm.PackageParser$Package */
    /* loaded from: classes.dex */
    public static final class Package {
        public Signature[] mSignatures;
    }

    public PackageParser(String str) {
    }

    public boolean collectCertificates(Package r2, int i) {
        return false;
    }

    public Package parsePackage(File file, String str, DisplayMetrics displayMetrics, int i) {
        return null;
    }
}
