package com.kingroot.kinguser;

import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class bix {
    private static cce<bix> sInstance = new cce<bix>() { // from class: com.kingroot.kinguser.bix.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.kingroot.kinguser.cce
        /* renamed from: adq */
        public bix create() {
            return new bix();
        }
    };
    private C2365a bvd;

    private bix() {
    }

    public static bix ado() {
        return sInstance.get();
    }

    public synchronized C2365a adp() {
        Matcher matcher;
        C2365a c2365a = null;
        synchronized (this) {
            if (this.bvd != null) {
                c2365a = this.bvd;
            } else {
                try {
                    matcher = Pattern.compile("Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)").matcher(m6812lS("/proc/version"));
                } catch (IOException e) {
                } catch (ParseException e2) {
                }
                if (matcher.matches() && matcher.groupCount() >= 4) {
                    Date parse = new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", Locale.US).parse(matcher.group(4).trim());
                    this.bvd = new C2365a();
                    this.bvd.version = matcher.group(1).trim();
                    this.bvd.bve = matcher.group(2).trim();
                    this.bvd.bvf = parse;
                    c2365a = this.bvd;
                }
            }
        }
        return c2365a;
    }

    /* renamed from: lS */
    private String m6812lS(String str) {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(str), 256);
        try {
            return bufferedReader.readLine();
        } finally {
            bufferedReader.close();
        }
    }

    /* renamed from: com.kingroot.kinguser.bix$a */
    /* loaded from: classes.dex */
    public static class C2365a {
        public String bve;
        public Date bvf;
        public String version;

        /* renamed from: lT */
        public boolean m6811lT(String str) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            Date date = null;
            try {
                date = new SimpleDateFormat("yyyyMM").parse(str);
            } catch (ParseException e) {
            }
            return date != null && this.bvf.before(date);
        }
    }
}
