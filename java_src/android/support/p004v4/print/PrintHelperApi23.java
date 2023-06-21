package android.support.p004v4.print;

import android.content.Context;
import android.print.PrintAttributes;
/* renamed from: android.support.v4.print.PrintHelperApi23 */
/* loaded from: classes.dex */
class PrintHelperApi23 extends PrintHelperApi20 {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v4.print.PrintHelperKitkat
    public PrintAttributes.Builder copyAttributes(PrintAttributes printAttributes) {
        PrintAttributes.Builder copyAttributes = super.copyAttributes(printAttributes);
        if (printAttributes.getDuplexMode() != 0) {
            copyAttributes.setDuplexMode(printAttributes.getDuplexMode());
        }
        return copyAttributes;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PrintHelperApi23(Context context) {
        super(context);
        this.mIsMinMarginsHandlingCorrect = false;
    }
}
