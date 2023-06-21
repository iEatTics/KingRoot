package com.kingroot.kinguser;

import android.content.Context;
import android.net.LocalSocket;
import com.kingroot.kinguser.model.SuRequestCmdModel;
import com.kingroot.kinguser.root.mgr.SuNotifyService;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes.dex */
public class bdw implements Runnable {
    private LocalSocket aRs;
    private InputStream bjY = null;
    private OutputStream bjZ = null;
    private bdt bka = new bdt();
    private Context mContext;

    public bdw(Context context, LocalSocket localSocket) {
        this.mContext = null;
        this.aRs = null;
        this.mContext = context;
        this.aRs = localSocket;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            open();
            byte[] m7493YU = m7493YU();
            if (m7493YU != null) {
                C3951zg.write("read bytes .///" + m7493YU.length);
                C3951zg.write("GetByte:" + m7493YU);
            } else {
                C3951zg.write("read bytes ./// null");
            }
            if (m7493YU != null) {
                this.bka.setData(m7493YU);
            }
            m7491a(this.mContext, this.bka);
            m7492YV();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        close();
    }

    private synchronized void open() {
        if (this.aRs != null) {
            try {
                this.bjY = this.aRs.getInputStream();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                this.bjZ = this.aRs.getOutputStream();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    private synchronized void close() {
        if (this.bjY != null) {
            try {
                this.bjY.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            this.bjY = null;
        }
        if (this.bjZ != null) {
            try {
                this.bjZ.close();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
            this.bjZ = null;
        }
        if (this.aRs != null) {
            try {
                this.aRs.close();
            } catch (IOException e3) {
                e3.printStackTrace();
            }
            this.aRs = null;
        }
    }

    /* renamed from: YU */
    private byte[] m7493YU() {
        return bdr.m7505j(this.bjY);
    }

    /* renamed from: YV */
    private void m7492YV() {
        if (this.bjZ != null) {
            byte[] m7497YS = this.bka.m7497YS();
            try {
                bdr.m7506a(this.bjZ, m7497YS, 0, m7497YS.length);
            } catch (IOException e) {
            }
            try {
                this.bjZ.write(bds.bjQ);
                this.bjZ.flush();
            } catch (IOException e2) {
            }
            try {
                this.bjZ.close();
            } catch (IOException e3) {
            }
        }
    }

    /* renamed from: a */
    public void m7491a(Context context, bdt bdtVar) {
        byte[] m7499YQ = bdtVar.m7499YQ();
        if (m7499YQ != null) {
            C3951zg.write(new String(m7499YQ));
        }
        if (m7499YQ == null) {
            bdtVar.m7496ir(1);
        } else if (bds.m7502e(m7499YQ, bdu.bjU)) {
            m7490b(context, bdtVar);
        }
    }

    /* renamed from: b */
    private static void m7490b(Context context, bdt bdtVar) {
        bdr m7498YR = bdtVar.m7498YR();
        if (m7498YR == null) {
            bdtVar.m7496ir(2);
        } else if (m7498YR.m7510YN() < 6) {
            bdtVar.m7496ir(2);
        } else {
            SuRequestCmdModel suRequestCmdModel = new SuRequestCmdModel();
            suRequestCmdModel.aRm = m7498YR.m7509YO();
            suRequestCmdModel.aRn = m7498YR.m7509YO();
            suRequestCmdModel.aRo = m7498YR.m7508YP();
            suRequestCmdModel.aRp = m7498YR.m7508YP();
            suRequestCmdModel.aRq = m7498YR.m7509YO();
            suRequestCmdModel.aRr = m7498YR.m7509YO();
            SuNotifyService.m2427b(context, suRequestCmdModel);
            bdtVar.m7496ir(0);
        }
    }
}
