package android.p003os;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.regex.Pattern;
/* renamed from: android.os.FileUtils */
/* loaded from: classes.dex */
public class FileUtils {
    private static final Pattern SAFE_FILENAME_PATTERN = Pattern.compile("[\\w%+,./=_-]+");
    public static final int S_IRGRP = 32;
    public static final int S_IROTH = 4;
    public static final int S_IRUSR = 256;
    public static final int S_IRWXG = 56;
    public static final int S_IRWXO = 7;
    public static final int S_IRWXU = 448;
    public static final int S_IWGRP = 16;
    public static final int S_IWOTH = 2;
    public static final int S_IWUSR = 128;
    public static final int S_IXGRP = 8;
    public static final int S_IXOTH = 1;
    public static final int S_IXUSR = 64;

    /* renamed from: android.os.FileUtils$FileStatus */
    /* loaded from: classes.dex */
    public static final class FileStatus {
        public long atime;
        public int blksize;
        public long blocks;
        public long ctime;
        public int dev;
        public int gid;
        public int ino;
        public int mode;
        public long mtime;
        public int nlink;
        public int rdev;
        public long size;
        public int uid;
    }

    public static native int getFatVolumeId(String str);

    public static native boolean getFileStatus(String str, FileStatus fileStatus);

    public static native int getPermissions(String str, int[] iArr);

    public static native int setPermissions(String str, int i, int i2, int i3);

    public static boolean sync(FileOutputStream fileOutputStream) {
        return false;
    }

    public static boolean copyFile(File file, File file2) {
        return false;
    }

    public static boolean copyToFile(InputStream inputStream, File file) {
        return false;
    }

    public static boolean isFilenameSafe(File file) {
        return false;
    }

    public static String readTextFile(File file, int i, String str) {
        return null;
    }
}
