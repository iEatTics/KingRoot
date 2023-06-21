package oicq.wlogin_sdk.request;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.util.Timer;
import oicq.wlogin_sdk.tools.C4393util;
import oicq.wlogin_sdk.tools.ErrMsg;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: oicq.wlogin_sdk.request.f */
/* loaded from: classes.dex */
public class RunnableC4364f implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C4363e f5193a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC4364f(C4363e c4363e) {
        this.f5193a = c4363e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m180a(Toast toast, int i) {
        if (i > 5) {
            return;
        }
        toast.show();
        m178b(toast, i);
    }

    /* renamed from: b */
    private void m178b(Toast toast, int i) {
        new Timer().schedule(new C4365g(this, toast, i), 30L);
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        ErrMsg errMsg;
        Context context2;
        Context context3;
        ErrMsg errMsg2;
        Context context4;
        ErrMsg errMsg3;
        Context context5;
        context = this.f5193a.f5191b;
        if (context != null) {
            errMsg = this.f5193a.f5192c;
            if (errMsg != null) {
                try {
                    context2 = this.f5193a.f5191b;
                    LinearLayout linearLayout = new LinearLayout(context2);
                    linearLayout.setOrientation(1);
                    linearLayout.setBackgroundColor(-7829368);
                    linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                    context3 = this.f5193a.f5191b;
                    TextView textView = new TextView(context3);
                    textView.getPaint().setFakeBoldText(true);
                    errMsg2 = this.f5193a.f5192c;
                    textView.setText(errMsg2.getTitle());
                    linearLayout.addView(textView, 0, new LinearLayout.LayoutParams(-1, -2));
                    context4 = this.f5193a.f5191b;
                    TextView textView2 = new TextView(context4);
                    errMsg3 = this.f5193a.f5192c;
                    textView2.setText(errMsg3.getMessage());
                    linearLayout.addView(textView2, 1, new LinearLayout.LayoutParams(-1, -2));
                    context5 = this.f5193a.f5191b;
                    Toast toast = new Toast(context5);
                    toast.setGravity(17, 0, 0);
                    toast.setDuration(1);
                    toast.setView(linearLayout);
                    m180a(toast, 0);
                } catch (Exception e) {
                    C4393util.printException(e);
                }
            }
        }
    }
}
