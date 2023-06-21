package com.kingroot.kinguser.gamebox.foreground;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ListAdapter;
import com.kingroot.common.uilib.TransparentListView;
import com.kingroot.kinguser.atp;
/* loaded from: classes.dex */
public class GameBoxGamesListView extends TransparentListView {
    private Handler mHandler;

    public GameBoxGamesListView(Context context) {
        super(context);
        m3766Pc();
    }

    public GameBoxGamesListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m3766Pc();
    }

    public GameBoxGamesListView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m3766Pc();
    }

    /* renamed from: Pc */
    private void m3766Pc() {
        setVerticalFadingEdgeEnabled(false);
    }

    public void setHandler(Handler handler) {
        this.mHandler = handler;
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        ListAdapter adapter = getAdapter();
        if (adapter != null && (adapter instanceof atp)) {
            View m9153Pv = ((atp) adapter).m9153Pv();
            if (this.mHandler != null && !m3765b(m9153Pv, motionEvent)) {
                this.mHandler.obtainMessage(110).sendToTarget();
            }
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    /* renamed from: b */
    private boolean m3765b(View view, MotionEvent motionEvent) {
        if (view == null) {
            return false;
        }
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i = iArr[0];
        int width = view.getWidth() + i;
        int i2 = iArr[1];
        return ((float) i) < rawX && rawX < ((float) width) && ((float) i2) < rawY && rawY < ((float) (view.getHeight() + i2));
    }
}
