package oicq.wlogin_sdk.report;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import oicq.wlogin_sdk.tools.C4393util;
/* loaded from: classes.dex */
public class report_t implements Serializable {
    public static String FILE_NAME = "report_data";
    private static final long serialVersionUID = 1;

    public static synchronized void delete_file(Context context) {
        synchronized (report_t.class) {
            context.deleteFile(FILE_NAME);
        }
    }

    public static synchronized report_t1 read_fromfile(Context context) {
        report_t1 report_t1Var;
        synchronized (report_t.class) {
            try {
                FileInputStream fileInputStream = new FileInputStream(new File(FILE_NAME));
                BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
                report_t1Var = (report_t1) new ObjectInputStream(bufferedInputStream).readObject();
                bufferedInputStream.close();
                fileInputStream.close();
            } catch (Exception e) {
                C4393util.LOGI("read " + FILE_NAME + "failed");
                report_t1Var = null;
            }
        }
        return report_t1Var;
    }

    public static synchronized int write_tofile(report_t1 report_t1Var, Context context) {
        int i = 0;
        synchronized (report_t.class) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(8192);
                ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
                objectOutputStream.writeObject(report_t1Var);
                objectOutputStream.flush();
                objectOutputStream.close();
                FileOutputStream openFileOutput = context.openFileOutput(FILE_NAME, 0);
                byteArrayOutputStream.writeTo(openFileOutput);
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                openFileOutput.close();
            } catch (Exception e) {
                C4393util.LOGI(e.getStackTrace().toString());
                i = -1;
            }
        }
        return i;
    }
}
