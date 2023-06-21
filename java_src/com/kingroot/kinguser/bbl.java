package com.kingroot.kinguser;

import android.content.Context;
import com.kingroot.kinguses.R;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
/* loaded from: classes.dex */
public class bbl {
    /* renamed from: y */
    public static long m7805y(Context context, String str) {
        return context.getSharedPreferences("kingrootsdk", 0).getLong(str, 0L);
    }

    /* renamed from: a */
    public static void m7809a(Context context, String str, long j) {
        context.getSharedPreferences("kingrootsdk", 0).edit().putLong(str, j).commit();
    }

    /* renamed from: e */
    public static void m7806e(Context context, String str, int i) {
        context.getSharedPreferences("kingrootsdk", 0).edit().putInt(str, i).commit();
    }

    /* renamed from: z */
    public static int m7804z(Context context, String str) {
        return context.getSharedPreferences("kingrootsdk", 0).getInt(str, 0);
    }

    /* renamed from: a */
    public static void m7808a(File file, String... strArr) {
        BufferedWriter bufferedWriter;
        try {
            bufferedWriter = new BufferedWriter(new FileWriter(file));
        } catch (Throwable th) {
            th = th;
            bufferedWriter = null;
        }
        try {
            int length = strArr.length;
            for (int i = 0; i < length; i++) {
                bufferedWriter.write(strArr[i] + "\n");
            }
            bufferedWriter.flush();
            C3945za.m1340c(bufferedWriter);
        } catch (Throwable th2) {
            th = th2;
            C3945za.m1340c(bufferedWriter);
            throw th;
        }
    }

    /* renamed from: bm */
    public static String m7807bm(Context context) {
        int i;
        int i2;
        int m7804z = m7804z(context, "key_index_last_get_dnn_wording");
        if (System.currentTimeMillis() - m7805y(context, "key_time_last_get_dnn_wording") > 604800000) {
            int i3 = m7804z + 1;
            i = i3 <= 3 ? i3 : 3;
            m7809a(context, "key_time_last_get_dnn_wording", System.currentTimeMillis());
            m7806e(context, "key_index_last_get_dnn_wording", i);
        } else {
            i = m7804z;
        }
        if (i == 1) {
            i2 = R.string.kr4_dnn_wording0;
        } else if (i == 2) {
            i2 = R.string.kr4_dnn_wording1;
        } else {
            i2 = R.string.kr4_dnn_wording2;
        }
        return C3953zi.m1311pr().getString(i2);
    }
}
