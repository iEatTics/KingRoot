package com.kingroot.kinguser;

import android.content.Context;
import android.net.NetworkInfo;
import com.kingroot.kinguser.cff;
import com.kingroot.kinguser.cfv;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.util.Iterator;
/* loaded from: classes.dex */
public class cfx {
    protected cfu bYu;
    private byte cdL;
    private boolean cdM;
    private String cdN;
    private Thread cdO;
    private final Object cdP;
    private Socket cdQ;
    private DataOutputStream cdR;
    private DataInputStream cdS;
    private InterfaceC2801a cdT;
    private boolean cdU;
    private Context mContext;
    private volatile boolean mStopped;

    /* renamed from: com.kingroot.kinguser.cfx$a */
    /* loaded from: classes.dex */
    public interface InterfaceC2801a {
        /* renamed from: c */
        void mo4366c(int i, byte[] bArr);

        /* renamed from: d */
        void mo4365d(int i, Object obj);

        /* renamed from: lr */
        void mo4364lr(int i);
    }

    public cfx(Context context, byte b, boolean z, InterfaceC2801a interfaceC2801a, cfu cfuVar) {
        this.cdL = (byte) 0;
        this.cdM = true;
        this.cdN = "";
        this.mStopped = true;
        this.cdP = new Object();
        this.cdU = false;
        this.mContext = context;
        this.cdL = b;
        this.cdM = z;
        this.cdT = interfaceC2801a;
        this.bYu = cfuVar;
    }

    public cfx(Context context, InterfaceC2801a interfaceC2801a, cfu cfuVar) {
        this(context, (byte) 0, false, interfaceC2801a, cfuVar);
    }

    private boolean isStarted() {
        return !this.mStopped;
    }

    /* renamed from: cu */
    public int m4370cu(Context context) {
        return m4368j(context, false);
    }

    public String amG() {
        return this.cdN;
    }

    public cfu amq() {
        return this.bYu;
    }

    /* renamed from: j */
    private synchronized int m4368j(Context context, boolean z) {
        int i = 0;
        synchronized (this) {
            if (!isStarted()) {
                if (!amN()) {
                    i = -220000;
                } else {
                    if (this.cdT != null) {
                        this.cdT.mo4364lr(3);
                    }
                    int m4378a = m4378a(this.bYu);
                    if (m4378a != 0) {
                        i = m4378a;
                    } else {
                        this.mStopped = false;
                        if (this.cdL == 0) {
                            amI();
                        }
                        if (this.cdT != null) {
                            if (z) {
                                this.cdT.mo4364lr(5);
                            } else {
                                this.cdT.mo4364lr(4);
                            }
                        }
                    }
                }
            }
        }
        return i;
    }

    public int stop() {
        return m4367m(false, false);
    }

    /* renamed from: m */
    private synchronized int m4367m(boolean z, boolean z2) {
        int amK;
        if (!z) {
            this.cdU = true;
        }
        this.mStopped = true;
        amK = amK();
        if (amK != 0) {
            if (this.cdT != null) {
                this.cdT.mo4365d(6, "stop socket failed: " + this.cdN);
            }
        } else if (this.cdT != null) {
            if (z) {
                this.cdT.mo4364lr(0);
            } else if (z2) {
                this.cdT.mo4364lr(2);
            } else {
                this.cdT.mo4364lr(1);
            }
        }
        return amK;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int amH() {
        if (m4367m(false, true) != 0) {
            return -210000;
        }
        return m4368j(this.mContext, true);
    }

    /* renamed from: a */
    public int m4379a(cff.C2744d c2744d, byte[] bArr) {
        if (amL()) {
            return -190000;
        }
        if (!amM()) {
            return -180000;
        }
        if (c2744d.alO()) {
            return -17;
        }
        switch (this.cdL) {
            case 0:
                return m4373b(c2744d, bArr);
            case 1:
                return m4374ah(bArr);
            default:
                return -1;
        }
    }

    /* renamed from: b */
    private int m4373b(cff.C2744d c2744d, byte[] bArr) {
        try {
            synchronized (this.cdQ) {
                if (!amM()) {
                    return -180000;
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                dataOutputStream.writeInt(bArr.length);
                dataOutputStream.write(bArr);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                this.cdR.write(byteArray);
                if (c2744d != null && c2744d.caQ != null && c2744d.caQ.size() > 0) {
                    int size = c2744d.caQ.size();
                    Iterator<C2036az> it = c2744d.caQ.iterator();
                    while (it.hasNext()) {
                        C2036az next = it.next();
                        if (next != null) {
                            cfc.alC().m4660a("TcpNetwork", next.cmd, next.seqNo, next, 12, 0, String.format("%d/%d", Integer.valueOf(byteArray.length), Integer.valueOf(size)));
                            if (next.f1641jX == 0) {
                                cfm.m4463a(new cfm(), next.seqNo);
                            }
                        }
                    }
                }
                this.cdN = "";
                return 0;
            }
        } catch (SocketException e) {
            this.cdN = e.toString();
            return -330000;
        } catch (Throwable th) {
            this.cdN = th.toString();
            return -320000;
        }
    }

    /* renamed from: ah */
    private int m4374ah(byte[] bArr) {
        try {
            this.cdR.writeInt(bArr.length);
            this.cdR.write(bArr);
            return 0;
        } catch (Throwable th) {
            return -310000;
        }
    }

    private void amI() {
        this.cdO = new Thread("RcvThread") { // from class: com.kingroot.kinguser.cfx.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    cfx.this.amJ();
                } catch (Exception e) {
                }
            }
        };
        this.cdO.setPriority(10);
        this.cdO.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void amJ() {
        while (!this.mStopped) {
            try {
                int readInt = this.cdM ? this.cdS.readInt() : 0;
                int readInt2 = this.cdS.readInt();
                if (readInt2 < 1000000) {
                    byte[] m4381a = cfv.m4381a(this.cdS, 0, readInt2, null);
                    if (m4381a != null) {
                        m4369d(readInt, m4381a);
                    }
                } else {
                    return;
                }
            } catch (EOFException e) {
                if (!this.cdU) {
                    m4367m(true, false);
                    if (this.cdT != null) {
                        this.cdT.mo4365d(11, e);
                    }
                } else {
                    this.mStopped = true;
                }
            } catch (SocketException e2) {
                if (!this.cdU) {
                    m4367m(true, false);
                    if (this.cdT != null) {
                        this.cdT.mo4365d(10, e2);
                    }
                } else {
                    this.mStopped = true;
                }
            } catch (Throwable th) {
                if (!this.cdU) {
                    m4367m(true, false);
                    if (this.cdT != null) {
                        this.cdT.mo4365d(12, th);
                    }
                } else {
                    this.mStopped = true;
                }
            }
        }
        if (!this.cdU) {
            stop();
        }
        this.cdU = false;
    }

    /* renamed from: d */
    private void m4369d(final int i, final byte[] bArr) {
        if (this.cdT != null) {
            bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cfx.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        cfx.this.cdT.mo4366c(i, bArr);
                    } catch (Throwable th) {
                    }
                }
            }, "shark-onreceive-callback");
        }
    }

    /* renamed from: a */
    private boolean m4377a(cfv.C2797b c2797b) {
        if (!amL()) {
            amK();
        }
        this.cdQ = m4375a(InetAddress.getByName(c2797b.amE()), c2797b.getPort());
        switch (this.cdL) {
            case 0:
                this.cdR = new DataOutputStream(this.cdQ.getOutputStream());
                this.cdS = new DataInputStream(this.cdQ.getInputStream());
                break;
            case 1:
                this.cdQ.setSoTimeout(15000);
                break;
        }
        return amM();
    }

    /* renamed from: a */
    private Socket m4375a(InetAddress inetAddress, int i) {
        Socket socket = new Socket();
        socket.setSoLinger(false, 0);
        socket.connect(new InetSocketAddress(inetAddress, i), 15000);
        return socket;
    }

    private int amK() {
        System.currentTimeMillis();
        synchronized (this.cdP) {
            if (this.cdQ == null) {
                return 0;
            }
            if (amL()) {
                return 0;
            }
            synchronized (this.cdP) {
                try {
                    if (!this.cdQ.isInputShutdown()) {
                        this.cdQ.shutdownInput();
                    }
                } catch (Throwable th) {
                }
                try {
                    this.cdS.close();
                } catch (Throwable th2) {
                }
                try {
                    if (!this.cdQ.isOutputShutdown()) {
                        this.cdQ.shutdownOutput();
                    }
                } catch (Throwable th3) {
                }
                try {
                    this.cdR.close();
                } catch (Throwable th4) {
                }
            }
            try {
                synchronized (this.cdP) {
                    this.cdQ.close();
                    this.cdQ = null;
                }
                Thread.sleep(2000L);
                this.cdN = "";
                return 0;
            } catch (IOException e) {
                this.cdN = e.toString();
                return -140000;
            } catch (InterruptedException e2) {
                this.cdN = e2.toString();
                return -270000;
            } catch (Throwable th5) {
                this.cdN = th5.toString();
                return -900000;
            }
        }
    }

    /* renamed from: a */
    private int m4378a(cfu cfuVar) {
        cfv.C2797b c2797b;
        long j;
        System.currentTimeMillis();
        cfuVar.mo4386eR(true);
        int mo4383eU = cfuVar.mo4383eU(true);
        cfv.C2797b c2797b2 = null;
        long j2 = 0;
        int i = 0;
        int i2 = 0;
        while (i < mo4383eU) {
            c2797b2 = cfuVar.mo4388eP(true);
            if (c2797b2 != null) {
                long currentTimeMillis = System.currentTimeMillis();
                i2 = m4372b(c2797b2);
                j2 = System.currentTimeMillis() - currentTimeMillis;
                if (i2 == 0 || !cen.m4764kZ(i2)) {
                    break;
                } else if (i == 0 && cfd.m4641nS("tcp connect")) {
                    i2 = -160000;
                    c2797b = c2797b2;
                    j = j2;
                    break;
                } else {
                    cfuVar.mo4387eQ(true);
                }
            }
            i++;
        }
        c2797b = c2797b2;
        j = j2;
        cfuVar.mo4385eS(i2 == 0);
        if (c2797b != null) {
            final cfm cfmVar = new cfm();
            cfmVar.ccK = c2797b.amE();
            cfmVar.ccL = String.valueOf(c2797b.getPort());
            cfmVar.ccN = String.valueOf(ceq.m4729cs(this.mContext));
            cfmVar.ccP = j;
            cfmVar.errorCode = i2;
            cfmVar.bQX = this.cdN;
            cfmVar.ccM = i < mo4383eU ? i + 1 : mo4383eU;
            cfmVar.m4464J(cfuVar.mo4384eT(true));
            if (i == mo4383eU) {
                bze.ajZ().m5142a(new Runnable() { // from class: com.kingroot.kinguser.cfx.3
                    @Override // java.lang.Runnable
                    public void run() {
                        cfmVar.ccT = true;
                        cfmVar.ccU = cfd.m4640nT("tcp connect");
                        cfmVar.ccQ = "true";
                        cfh cfhVar = (cfh) ced.m4790j(cfh.class);
                        if (cfhVar != null) {
                            cfmVar.m4462d(cfhVar.alL());
                        }
                    }
                }, "uploadConnectInfo");
            } else {
                cfmVar.ccT = false;
                cfmVar.ccQ = "false";
                cfh cfhVar = (cfh) ced.m4790j(cfh.class);
                if (cfhVar != null) {
                    cfmVar.m4462d(cfhVar.alL());
                }
            }
        }
        return i2;
    }

    /* renamed from: b */
    private int m4372b(cfv.C2797b c2797b) {
        int i = 0;
        if (c2797b == null) {
            return -10;
        }
        if (amM()) {
            return 0;
        }
        try {
            if (m4377a(c2797b)) {
                this.cdU = false;
            } else {
                i = -340000;
            }
            this.cdN = "";
            return i;
        } catch (SecurityException e) {
            int m4769X = cen.m4769X(e.toString(), -440000);
            if (this.cdT != null) {
                this.cdT.mo4365d(9, c2797b);
            }
            this.cdN = e.toString();
            return m4769X;
        } catch (ConnectException e2) {
            int m4769X2 = cen.m4769X(e2.toString(), -500000);
            if (this.cdT != null) {
                this.cdT.mo4365d(9, c2797b);
            }
            this.cdN = e2.toString();
            return m4769X2;
        } catch (SocketException e3) {
            int m4769X3 = cen.m4769X(e3.toString(), -420000);
            if (this.cdT != null) {
                this.cdT.mo4365d(9, c2797b);
            }
            this.cdN = e3.toString();
            return m4769X3;
        } catch (SocketTimeoutException e4) {
            if (this.cdT != null) {
                this.cdT.mo4365d(8, c2797b);
            }
            this.cdN = e4.toString();
            return -130000;
        } catch (UnknownHostException e5) {
            if (this.cdT != null) {
                this.cdT.mo4365d(7, c2797b);
            }
            this.cdN = e5.toString();
            return -70000;
        } catch (Throwable th) {
            if (this.cdT != null) {
                this.cdT.mo4365d(9, c2797b);
            }
            this.cdN = th.toString();
            return -900000;
        }
    }

    private boolean amL() {
        boolean isClosed;
        synchronized (this.cdP) {
            if (this.cdQ == null) {
                isClosed = true;
            } else {
                isClosed = this.cdQ.isClosed();
            }
        }
        return isClosed;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean amM() {
        boolean z = false;
        synchronized (this.cdP) {
            if (this.cdQ != null) {
                if (!amL() && this.cdQ.isConnected()) {
                    z = true;
                }
            }
        }
        return z;
    }

    public boolean amN() {
        NetworkInfo networkInfo = getNetworkInfo();
        if (networkInfo == null) {
            return false;
        }
        return networkInfo.isConnected();
    }

    private NetworkInfo getNetworkInfo() {
        try {
            return ceb.akU().getActiveNetworkInfo();
        } catch (NullPointerException e) {
            return null;
        }
    }
}
