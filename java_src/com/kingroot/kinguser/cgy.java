package com.kingroot.kinguser;

import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import tmsdk.common.TMSDKContext;
import tmsdk.common.exception.WifiApproveException;
/* loaded from: classes.dex */
public class cgy {
    public static String ceL;

    /* renamed from: com.kingroot.kinguser.cgy$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2813a {
        /* renamed from: l */
        void mo4292l(boolean z, boolean z2);
    }

    public static boolean anj() {
        NetworkInfo networkInfo = null;
        try {
            networkInfo = ceb.akU().getActiveNetworkInfo();
        } catch (NullPointerException e) {
        }
        return networkInfo != null && networkInfo.getType() == 1;
    }

    public static String getSSID() {
        WifiInfo connectionInfo;
        try {
            WifiManager wifiManager = (WifiManager) TMSDKContext.akS().getSystemService("wifi");
            if (wifiManager != null && (connectionInfo = wifiManager.getConnectionInfo()) != null) {
                return connectionInfo.getSSID();
            }
        } catch (Exception e) {
        }
        return "";
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ad  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String m4296a(InterfaceC2813a interfaceC2813a) {
        HttpURLConnection httpURLConnection;
        boolean z;
        HttpURLConnection httpURLConnection2;
        boolean z2;
        String str = null;
        try {
            httpURLConnection2 = (HttpURLConnection) new URL("http://tools.3g.qq.com/wifi/cw.html").openConnection();
        } catch (IOException e) {
            httpURLConnection2 = null;
        } catch (WifiApproveException e2) {
            e = e2;
            httpURLConnection = null;
        } catch (Throwable th) {
            th = th;
            httpURLConnection = null;
            z = false;
        }
        try {
            if (cgu.m4301qb() < 8) {
                System.setProperty("http.keepAlive", "false");
            }
            httpURLConnection2.setUseCaches(false);
            httpURLConnection2.setRequestProperty("Pragma", "no-cache");
            httpURLConnection2.setRequestProperty("Cache-Control", "no-cache");
            httpURLConnection2.setInstanceFollowRedirects(false);
            httpURLConnection2.setRequestMethod("GET");
            httpURLConnection2.setReadTimeout(5000);
            int responseCode = httpURLConnection2.getResponseCode();
            if (responseCode == 200 || (responseCode >= 301 && responseCode <= 305)) {
                String headerField = httpURLConnection2.getHeaderField("Meri");
                if (headerField == null || !headerField.equals("Meri")) {
                    str = m4295a(httpURLConnection2);
                }
                z2 = false;
            } else {
                z2 = true;
            }
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            if (str == null) {
                interfaceC2813a.mo4292l(false, z2);
            } else {
                ceL = str;
                interfaceC2813a.mo4292l(true, false);
            }
        } catch (IOException e3) {
            if (httpURLConnection2 != null) {
                httpURLConnection2.disconnect();
            }
            if (0 == 0) {
                interfaceC2813a.mo4292l(false, true);
            } else {
                ceL = null;
                interfaceC2813a.mo4292l(true, true);
            }
            return str;
        } catch (WifiApproveException e4) {
            httpURLConnection = httpURLConnection2;
            e = e4;
            try {
                throw e;
            } catch (Throwable th2) {
                th = th2;
                z = true;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                if (0 != 0) {
                    interfaceC2813a.mo4292l(false, z);
                } else {
                    ceL = null;
                    interfaceC2813a.mo4292l(true, z);
                }
                throw th;
            }
        } catch (Throwable th3) {
            z = false;
            th = th3;
            httpURLConnection = httpURLConnection2;
            if (httpURLConnection != null) {
            }
            if (0 != 0) {
            }
            throw th;
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0083 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static String m4295a(HttpURLConnection httpURLConnection) {
        InputStream inputStream;
        Throwable th;
        WifiApproveException wifiApproveException;
        InputStream inputStream2;
        InputStream inputStream3;
        InputStream inputStream4;
        String str = null;
        try {
            try {
                String externalForm = !new URL("http://tools.3g.qq.com/wifi/cw.html").getHost().equals(httpURLConnection.getURL().getHost()) ? httpURLConnection.getURL().toExternalForm() : null;
                if (externalForm == null) {
                    try {
                        if (httpURLConnection.getHeaderField("Location") != null) {
                            externalForm = httpURLConnection.getHeaderField("Location");
                        }
                    } catch (IOException e) {
                        str = externalForm;
                        inputStream3 = null;
                        if (inputStream3 != null) {
                            try {
                                inputStream3.close();
                            } catch (IOException e2) {
                            }
                        }
                        return str;
                    } catch (Throwable th2) {
                        str = externalForm;
                        inputStream2 = null;
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (IOException e3) {
                            }
                        }
                        return str;
                    }
                }
                if (externalForm == null && httpURLConnection.getHeaderField("Refresh") != null) {
                    String[] split = httpURLConnection.getHeaderField("Refresh").split(";");
                    if (split.length == 2) {
                        externalForm = split[1].trim();
                    }
                }
                if (externalForm == null) {
                    InputStream inputStream5 = httpURLConnection.getInputStream();
                    if (inputStream5 != null) {
                        try {
                            String m4294n = m4294n(inputStream5);
                            if (m4294n != null) {
                                inputStream4 = inputStream5;
                                str = m4294n;
                            }
                        } catch (IOException e4) {
                            str = externalForm;
                            inputStream3 = inputStream5;
                            if (inputStream3 != null) {
                            }
                            return str;
                        } catch (WifiApproveException e5) {
                            inputStream = inputStream5;
                            wifiApproveException = e5;
                            try {
                                throw wifiApproveException;
                            } catch (Throwable th3) {
                                th = th3;
                                if (inputStream != null) {
                                    try {
                                        inputStream.close();
                                    } catch (IOException e6) {
                                    }
                                }
                                throw th;
                            }
                        } catch (Throwable th4) {
                            inputStream = inputStream5;
                            th = th4;
                            if (inputStream != null) {
                            }
                            throw th;
                        }
                    }
                    str = externalForm;
                    inputStream4 = inputStream5;
                } else {
                    str = externalForm;
                    inputStream4 = null;
                }
                if (inputStream4 != null) {
                    try {
                        inputStream4.close();
                    } catch (IOException e7) {
                    }
                }
            } catch (IOException e8) {
                inputStream3 = null;
            } catch (Throwable th5) {
                inputStream2 = null;
            }
            return str;
        } catch (WifiApproveException e9) {
            inputStream = null;
            wifiApproveException = e9;
        } catch (Throwable th6) {
            inputStream = null;
            th = th6;
        }
    }

    /* renamed from: n */
    private static String m4294n(InputStream inputStream) {
        String m4293o = m4293o(inputStream);
        String[] strArr = {"http-equiv\\s*=\\s*[\"']*refresh[\"']*\\s*content\\s*=\\s*[\"']*[^;]*;\\s*url\\s*=\\s*[\"']*([^\"'\\s>]+)", "[^\\w](?:location.href\\s*=|location\\s*=|location.replace\\s*\\()\\s*[\"']*([^\"'>]+)", "<NextURL>([^<]+)", "\\s+action\\s*=\\s*[\"']*([^\"'>]+)[\"'>\\s]*.*submit", "<LoginURL>([^<]+)"};
        int length = strArr.length;
        String str = null;
        for (int i = 0; i < length && str == null; i++) {
            Matcher matcher = Pattern.compile(strArr[i], 2).matcher(m4293o);
            while (matcher.find() && str == null) {
                str = matcher.group(matcher.groupCount());
                if (str != null && !str.trim().toLowerCase().startsWith("http")) {
                    str = null;
                }
            }
        }
        if (str == null) {
            throw new WifiApproveException("0725SSID:" + getSSID() + " page head content: " + m4293o);
        }
        return str;
    }

    /* renamed from: o */
    private static String m4293o(InputStream inputStream) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine);
                    } else {
                        try {
                            break;
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            } finally {
                try {
                    bufferedReader.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
        }
        bufferedReader.close();
        return sb.toString();
    }
}
