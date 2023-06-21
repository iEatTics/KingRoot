package com.kingroot.kinguser;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class bcp extends bij implements View.OnClickListener {
    private boolean aVw;
    private Context biv;
    private View biw;

    public bcp(Activity activity, Context context) {
        super(activity, 16973840);
        this.biv = context;
        getWindow().setBackgroundDrawable(null);
        View inflate = LayoutInflater.from(context).inflate(R.layout.kr4_wxqrcode_dialog, (ViewGroup) null);
        setContentView(inflate);
        this.biw = findViewById(R.id.img_qrcode);
        this.aVw = false;
        inflate.findViewById(R.id.btn_left).setOnClickListener(this);
        inflate.findViewById(R.id.btn_right).setOnClickListener(this);
    }

    /* renamed from: XI */
    public Context m7625XI() {
        return this.biv;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String format;
        if (view.getId() == R.id.btn_left) {
            dismiss();
        } else if (view.getId() == R.id.btn_right) {
            ady.m12308tK().mo1746bi(100453);
            String m7624XJ = m7624XJ();
            if (TextUtils.isEmpty(m7624XJ)) {
                format = m7625XI().getString(R.string.kr4_qrcode_save_failed_tips);
            } else {
                format = String.format(m7625XI().getString(R.string.kr4_qrcode_saved_tips_format), m7624XJ);
            }
            Toast.makeText(m7625XI(), format, 1).show();
            dismiss();
        }
    }

    @Override // com.kingroot.kinguser.bij, android.app.Dialog
    public void show() {
        super.show();
        ady.m12308tK().mo1746bi(100452);
        m7623a(m7625XI(), this.biw);
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:35)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:202)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:45)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    /* renamed from: XJ */
    private java.lang.String m7624XJ() {
        /*
            r7 = this;
            r0 = 0
            java.io.File r1 = new java.io.File
            java.io.File r2 = android.os.Environment.getExternalStorageDirectory()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            android.content.Context r4 = r7.m7625XI()
            r5 = 2131165645(0x7f0701cd, float:1.7945513E38)
            java.lang.String r4 = r4.getString(r5)
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = ".png"
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r3 = r3.toString()
            r1.<init>(r2, r3)
            java.io.File r2 = r1.getParentFile()     // Catch: java.lang.Throwable -> L9b
            boolean r2 = r2.exists()     // Catch: java.lang.Throwable -> L9b
            if (r2 != 0) goto L39
            java.io.File r2 = r1.getParentFile()     // Catch: java.lang.Throwable -> L9b
            r2.mkdirs()     // Catch: java.lang.Throwable -> L9b
        L39:
            com.kingroot.kinguser.bbk r2 = com.kingroot.kinguser.bbk.m7817Wo()     // Catch: java.lang.Throwable -> L9b
            android.content.Context r3 = r7.biv     // Catch: java.lang.Throwable -> L9b
            java.lang.String r2 = r2.m7811bl(r3)     // Catch: java.lang.Throwable -> L9b
            if (r2 == 0) goto L6d
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L9b
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L9b
        L4a:
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> Ldb
            java.io.File r4 = r1.getAbsoluteFile()     // Catch: java.lang.Throwable -> Ldb
            r2.<init>(r4)     // Catch: java.lang.Throwable -> Ldb
            r4 = 512(0x200, float:7.17E-43)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Throwable -> L62
        L57:
            int r5 = r3.read(r4)     // Catch: java.lang.Throwable -> L62
            if (r5 <= 0) goto L9f
            r6 = 0
            r2.write(r4, r6, r5)     // Catch: java.lang.Throwable -> L62
            goto L57
        L62:
            r1 = move-exception
        L63:
            r1.printStackTrace()     // Catch: java.lang.Throwable -> Ld9
            com.kingroot.kinguser.C3945za.m1340c(r2)
            com.kingroot.kinguser.C3945za.m1340c(r3)
        L6c:
            return r0
        L6d:
            com.kingroot.kinguser.zi r2 = com.kingroot.kinguser.C3953zi.m1311pr()     // Catch: java.lang.Throwable -> L9b
            r3 = 2130837943(0x7f0201b7, float:1.7280854E38)
            android.graphics.drawable.Drawable r2 = r2.getDrawable(r3)     // Catch: java.lang.Throwable -> L9b
            android.graphics.Bitmap r2 = com.kingroot.kinguser.acs.m12656b(r2)     // Catch: java.lang.Throwable -> L9b
            if (r2 != 0) goto L85
            com.kingroot.kinguser.C3945za.m1340c(r0)
            com.kingroot.kinguser.C3945za.m1340c(r0)
            goto L6c
        L85:
            java.io.ByteArrayOutputStream r4 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L9b
            r4.<init>()     // Catch: java.lang.Throwable -> L9b
            android.graphics.Bitmap$CompressFormat r3 = android.graphics.Bitmap.CompressFormat.PNG     // Catch: java.lang.Throwable -> L9b
            r5 = 100
            r2.compress(r3, r5, r4)     // Catch: java.lang.Throwable -> L9b
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L9b
            byte[] r2 = r4.toByteArray()     // Catch: java.lang.Throwable -> L9b
            r3.<init>(r2)     // Catch: java.lang.Throwable -> L9b
            goto L4a
        L9b:
            r1 = move-exception
            r2 = r0
            r3 = r0
            goto L63
        L9f:
            java.nio.channels.FileChannel r4 = r2.getChannel()     // Catch: java.lang.Throwable -> L62
            r5 = 1
            r4.force(r5)     // Catch: java.lang.Throwable -> L62
            android.net.Uri r0 = android.net.Uri.fromFile(r1)     // Catch: java.lang.Throwable -> Lde
            android.content.Intent r4 = new android.content.Intent     // Catch: java.lang.Throwable -> Lde
            java.lang.String r5 = "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
            r4.<init>(r5, r0)     // Catch: java.lang.Throwable -> Lde
            android.content.Context r0 = r7.m7625XI()     // Catch: java.lang.Throwable -> Lde
            r0.sendBroadcast(r4)     // Catch: java.lang.Throwable -> Lde
            r2.close()     // Catch: java.lang.Throwable -> Lde
            r3.close()     // Catch: java.lang.Throwable -> Lde
        Lbf:
            com.kingroot.kinguser.C3945za.m1340c(r2)
            com.kingroot.kinguser.C3945za.m1340c(r3)
            java.lang.String r0 = r1.getAbsolutePath()
            goto L6c
        Lca:
            r1 = move-exception
            r2 = r0
            r3 = r0
            r0 = r1
        Lce:
            com.kingroot.kinguser.C3945za.m1340c(r2)
            com.kingroot.kinguser.C3945za.m1340c(r3)
            throw r0
        Ld5:
            r1 = move-exception
            r2 = r0
            r0 = r1
            goto Lce
        Ld9:
            r0 = move-exception
            goto Lce
        Ldb:
            r1 = move-exception
            r2 = r0
            goto L63
        Lde:
            r0 = move-exception
            goto Lbf
        */
        throw new UnsupportedOperationException("Method not decompiled: com.kingroot.kinguser.bcp.m7624XJ():java.lang.String");
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    private void m7623a(Context context, View view) {
        String m7811bl;
        if (!this.aVw && (m7811bl = bbk.m7817Wo().m7811bl(context)) != null) {
            Drawable createFromPath = BitmapDrawable.createFromPath(m7811bl);
            if (Build.VERSION.SDK_INT < 16) {
                view.setBackgroundDrawable(createFromPath);
            } else {
                view.setBackground(createFromPath);
            }
            this.aVw = true;
        }
    }
}
