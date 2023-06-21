package com.kingroot.kinguser;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.UiThread;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.kingroot.common.uilib.template.AbsActivity;
import java.lang.ref.WeakReference;
/* renamed from: com.kingroot.kinguser.ym */
/* loaded from: classes.dex */
public abstract class AbstractC3922ym {

    /* renamed from: CD */
    private boolean f4014CD;

    /* renamed from: Vg */
    private acn f4015Vg;

    /* renamed from: Vh */
    public AbstractC3933yp f4016Vh;

    /* renamed from: Vi */
    private RelativeLayout f4017Vi;

    /* renamed from: Vj */
    private InterfaceC3925b f4018Vj;

    /* renamed from: Vk */
    private boolean f4019Vk;

    /* renamed from: Vl */
    private InterfaceC3934yq f4020Vl;

    /* renamed from: Vm */
    private acr f4021Vm;

    /* renamed from: Vn */
    private byte[] f4022Vn;
    protected View mContentView;
    protected Context mContext;
    private Handler mHandler;
    private String mTag;
    protected String mTitle;

    /* renamed from: com.kingroot.kinguser.ym$b */
    /* loaded from: classes.dex */
    public interface InterfaceC3925b {
        /* renamed from: a */
        void m1399a(int i, int i2, Intent intent, AbstractC3922ym abstractC3922ym);

        /* renamed from: a */
        void m1397a(Bundle bundle, AbstractC3922ym abstractC3922ym);

        /* renamed from: a */
        void m1396a(AbstractC3922ym abstractC3922ym);

        /* renamed from: a */
        boolean m1398a(int i, KeyEvent keyEvent, AbstractC3922ym abstractC3922ym);

        /* renamed from: b */
        void m1394b(AbstractC3922ym abstractC3922ym);

        /* renamed from: b */
        boolean m1395b(int i, KeyEvent keyEvent, AbstractC3922ym abstractC3922ym);

        /* renamed from: c */
        void m1393c(AbstractC3922ym abstractC3922ym);

        /* renamed from: d */
        void m1392d(AbstractC3922ym abstractC3922ym);

        /* renamed from: e */
        void m1391e(AbstractC3922ym abstractC3922ym);

        /* renamed from: f */
        void m1390f(AbstractC3922ym abstractC3922ym);

        /* renamed from: g */
        void m1389g(AbstractC3922ym abstractC3922ym);
    }

    public AbstractC3922ym(Context context, String str, String str2) {
        this.f4019Vk = false;
        this.f4014CD = false;
        this.f4022Vn = new byte[0];
        if (!(context instanceof AbsActivity)) {
            throw new RuntimeException("Not a AbsActivity");
        }
        this.mContext = context;
        this.mTag = str == null ? "" : str;
        this.mTitle = str2 == null ? "" : str2;
        m1409oK();
        this.f4015Vg = m1401oS();
    }

    public AbstractC3922ym(Context context) {
        this(context, null, null);
    }

    public AbstractC3922ym(Context context, String str) {
        this(context, str, null);
    }

    /* renamed from: oK */
    private void m1409oK() {
        this.mHandler = new HandlerC3924a(this) { // from class: com.kingroot.kinguser.ym.1
            @Override // com.kingroot.kinguser.AbstractC3922ym.HandlerC3924a, android.os.Handler
            public void handleMessage(Message message) {
                AbstractC3922ym oT = m1400oT();
                if (oT != null && !oT.m1403oQ()) {
                    oT.mo1413a(message);
                }
            }
        };
    }

    public acr getImageFetcher() {
        if (this.f4021Vm == null && !this.f4019Vk) {
            synchronized (this.f4022Vn) {
                if (this.f4021Vm == null && !this.f4019Vk) {
                    this.f4021Vm = C3935yr.m1374pb();
                }
            }
        }
        return this.f4021Vm;
    }

    /* renamed from: oL */
    public void m1408oL() {
        if (this.f4021Vm != null) {
            synchronized (this.f4022Vn) {
                if (this.f4021Vm != null) {
                    this.f4021Vm = null;
                    C3935yr.m1373pc();
                }
            }
        }
    }

    /* renamed from: oM */
    public AbstractC3933yp m1407oM() {
        return this.f4016Vh;
    }

    /* renamed from: oF */
    public void mo1410oF() {
        this.f4016Vh = mo1405oO();
        if (this.f4016Vh == null) {
            this.f4017Vi = new RelativeLayout(this.mContext);
        }
        try {
            this.mContentView = mo1371oG();
        } catch (Throwable th) {
        }
        if (this.f4016Vh != null) {
            this.f4016Vh.addContentView(this.mContentView, m1406oN());
        } else {
            ViewGroup.LayoutParams layoutParams = this.mContentView.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new ViewGroup.LayoutParams(-1, -1);
            }
            this.f4017Vi.addView(this.mContentView, layoutParams);
        }
        mo1370oI();
    }

    /* renamed from: oN */
    protected ViewGroup.LayoutParams m1406oN() {
        return new ViewGroup.LayoutParams(-1, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: oI */
    public void mo1370oI() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return null;
    }

    /* renamed from: oG */
    protected View mo1371oG() {
        return new View(this.mContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ViewGroup getContainer() {
        return this.f4016Vh != null ? this.f4016Vh.getContainer() : this.f4017Vi;
    }

    public void onCreate(Bundle bundle) {
        if (this.f4018Vj != null) {
            this.f4018Vj.m1397a(bundle, this);
        }
    }

    public void onStart() {
        this.f4014CD = false;
        if (this.f4018Vj != null) {
            this.f4018Vj.m1396a(this);
        }
    }

    public void onResume() {
        if (this.f4018Vj != null) {
            this.f4018Vj.m1394b(this);
        }
        if (this.f4015Vg != null) {
            this.f4015Vg.onResume();
        }
    }

    public void onNewIntent(Intent intent) {
    }

    public void onPause() {
        if (this.f4018Vj != null) {
            this.f4018Vj.m1393c(this);
        }
        if (this.f4015Vg != null) {
            this.f4015Vg.onPause();
        }
    }

    public void onStop() {
        if (this.f4018Vj != null) {
            this.f4018Vj.m1392d(this);
        }
        C3935yr.m1373pc();
        this.f4014CD = true;
        if (this.f4015Vg != null) {
            this.f4015Vg.onStop();
        }
    }

    /* renamed from: oP */
    public boolean m1404oP() {
        return this.f4014CD;
    }

    public void onDestroy() {
        this.f4019Vk = true;
        m1408oL();
        if (this.f4018Vj != null) {
            this.f4018Vj.m1391e(this);
        }
    }

    /* renamed from: oQ */
    public boolean m1403oQ() {
        return this.f4019Vk;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        if (this.f4018Vj != null) {
            this.f4018Vj.m1399a(i, i2, intent, this);
        }
        if (this.f4015Vg != null) {
            this.f4015Vg.onActivityResult(i, i2, intent);
        }
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return this.f4018Vj != null && this.f4018Vj.m1398a(i, keyEvent, this);
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f4018Vj == null || !this.f4018Vj.m1395b(i, keyEvent, this)) {
            return this.f4015Vg != null && this.f4015Vg.onKeyDown(i, keyEvent);
        }
        return true;
    }

    public void onUserInteraction() {
        if (this.f4018Vj != null) {
            this.f4018Vj.m1390f(this);
        }
    }

    public void onUserLeaveHint() {
        if (this.f4018Vj != null) {
            this.f4018Vj.m1389g(this);
        }
    }

    public Context getContext() {
        return this.mContext;
    }

    public Intent getIntent() {
        return getActivity().getIntent();
    }

    public Activity getActivity() {
        return (Activity) this.mContext;
    }

    public View getWholeView() {
        return this.f4016Vh == null ? this.f4017Vi : this.f4016Vh.getWholeView();
    }

    public View getContentView() {
        return this.mContentView;
    }

    public final Handler getHandler() {
        return this.mHandler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo1413a(Message message) {
        switch (message.what) {
            case -9999:
                mo1372i(message.obj);
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @UiThread
    /* renamed from: i */
    public void mo1372i(Object obj) {
    }

    /* renamed from: oR */
    public void mo1402oR() {
        this.mHandler.sendEmptyMessageDelayed(-9999, 0L);
    }

    /* renamed from: U */
    public void m1418U(long j) {
        this.mHandler.sendEmptyMessageDelayed(-9999, j);
    }

    /* renamed from: j */
    public void m1411j(Object obj) {
        this.mHandler.obtainMessage(-9999, obj).sendToTarget();
    }

    public LayoutInflater getLayoutInflater() {
        return LayoutInflater.from(this.mContext);
    }

    public Resources getResources() {
        return C3953zi.m1311pr();
    }

    /* renamed from: V */
    public String m1417V(long j) {
        return C3953zi.m1311pr().getString((int) j);
    }

    /* renamed from: W */
    public float m1416W(long j) {
        return C3953zi.m1311pr().getDimension((int) j);
    }

    /* renamed from: X */
    public int m1415X(long j) {
        return C3953zi.m1311pr().getColor((int) j);
    }

    /* renamed from: Y */
    public Drawable m1414Y(long j) {
        return C3953zi.m1311pr().getDrawable((int) j);
    }

    /* renamed from: a */
    public final void m1412a(InterfaceC3934yq interfaceC3934yq) {
        this.f4020Vl = interfaceC3934yq;
    }

    /* renamed from: com.kingroot.kinguser.ym$a */
    /* loaded from: classes.dex */
    static class HandlerC3924a extends Handler {

        /* renamed from: Vp */
        private final WeakReference<AbstractC3922ym> f4024Vp;

        public HandlerC3924a(AbstractC3922ym abstractC3922ym) {
            super(abstractC3922ym.getContext().getMainLooper());
            this.f4024Vp = new WeakReference<>(abstractC3922ym);
        }

        /* renamed from: oT */
        public AbstractC3922ym m1400oT() {
            return this.f4024Vp.get();
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
        }
    }

    public void onApplyThemeResource(Resources.Theme theme, int i, boolean z) {
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onPostCreate(Bundle bundle) {
    }

    public void onPostResume() {
    }

    public void onRestart() {
    }

    public boolean onBackPressed() {
        return false;
    }

    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        return false;
    }

    public boolean onKeyMultiple(int i, int i2, KeyEvent keyEvent) {
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    public void onLowMemory() {
    }

    /* renamed from: oS */
    protected acn m1401oS() {
        return null;
    }
}
