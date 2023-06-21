package java.p025io;

import android.content.Context;
import com.applisto.appcloner.classes.util.Log;
import java.util.Arrays;
/* renamed from: java.io.ByteArrayOutputStrean */
/* loaded from: classes2.dex */
public class ByteArrayOutputStrean extends ByteArrayOutputStream {
    private static byte[] REPLACE_BYTES;
    private static byte[] SEARCH_BYTES;
    private static final String TAG = ByteArrayOutputStrean.class.getSimpleName();

    public static void init(Context context, String str) {
        String str2 = TAG;
        Log.m13704i(str2, "init; originalPackageName: " + str);
        try {
            SEARCH_BYTES = context.getPackageName().getBytes("UTF-8");
            REPLACE_BYTES = str.getBytes("UTF-8");
            String str3 = TAG;
            Log.m13704i(str3, "static initializer; SEARCH_BYTES: " + new String(SEARCH_BYTES, "UTF-8"));
            String str4 = TAG;
            Log.m13704i(str4, "static initializer; REPLACE_BYTES: " + new String(REPLACE_BYTES, "UTF-8"));
        } catch (Exception e) {
            Log.m13698w(TAG, e);
        }
    }

    public ByteArrayOutputStrean() {
    }

    public ByteArrayOutputStrean(int i) {
        super(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        byte[] bArr2 = SEARCH_BYTES;
        if (bArr2 != null && Arrays.equals(bArr, bArr2)) {
            super.write(REPLACE_BYTES);
            Log.m13704i(TAG, "write; written replaced bytes");
            return;
        }
        super.write(bArr);
    }
}
