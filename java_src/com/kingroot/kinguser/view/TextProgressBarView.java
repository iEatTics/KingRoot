package com.kingroot.kinguser.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.p007v7.widget.helper.ItemTouchHelper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.kingroot.kinguses.R;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class TextProgressBarView extends LinearLayout {
    private ProgressBar brS;
    private TextView brT;
    private ProgressBar brU;
    int brV;
    boolean brW;
    Timer brX;
    TimerTask brY;
    Handler mHandler;
    private int mType;

    public TextProgressBarView(Context context) {
        super(context);
        this.brS = null;
        this.brT = null;
        this.mHandler = new Handler() { // from class: com.kingroot.kinguser.view.TextProgressBarView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                TextProgressBarView.this.brV += ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
                if (TextProgressBarView.this.brV > 1000) {
                    TextProgressBarView.this.brV = 0;
                }
                TextProgressBarView.this.brS.setSecondaryProgress(TextProgressBarView.this.brV);
            }
        };
        this.brW = false;
        this.brX = null;
        this.brY = new TimerTask() { // from class: com.kingroot.kinguser.view.TextProgressBarView.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Message message = new Message();
                message.what = 1;
                TextProgressBarView.this.mHandler.sendMessage(message);
            }
        };
        m1817bx(context);
    }

    public TextProgressBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.brS = null;
        this.brT = null;
        this.mHandler = new Handler() { // from class: com.kingroot.kinguser.view.TextProgressBarView.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                TextProgressBarView.this.brV += ItemTouchHelper.Callback.DEFAULT_DRAG_ANIMATION_DURATION;
                if (TextProgressBarView.this.brV > 1000) {
                    TextProgressBarView.this.brV = 0;
                }
                TextProgressBarView.this.brS.setSecondaryProgress(TextProgressBarView.this.brV);
            }
        };
        this.brW = false;
        this.brX = null;
        this.brY = new TimerTask() { // from class: com.kingroot.kinguser.view.TextProgressBarView.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                Message message = new Message();
                message.what = 1;
                TextProgressBarView.this.mHandler.sendMessage(message);
            }
        };
        m1817bx(context);
    }

    /* renamed from: bx */
    private void m1817bx(Context context) {
        View inflate = LayoutInflater.from(context).inflate(R.layout.view_progress_bar, (ViewGroup) null);
        addView(inflate, new LinearLayout.LayoutParams(-1, -2));
        this.brS = (ProgressBar) inflate.findViewById(R.id.progressbar);
        this.brU = (ProgressBar) inflate.findViewById(R.id.progressbarminverse);
        this.brT = (TextView) inflate.findViewById(R.id.progress_text);
    }

    public void setStyleType(int i) {
        if (i == 1) {
            this.mType = 1;
            this.brS.setVisibility(8);
            this.brU.setVisibility(0);
            return;
        }
        this.mType = 0;
        this.brS.setVisibility(0);
        this.brU.setVisibility(8);
    }

    public void setProgress(int i) {
        if (this.mType != 1 && this.brS != null) {
            this.brS.setProgress(i * 10);
            this.brT.setText(i + "%");
        }
    }

    public int getProgress() {
        if (this.brS == null) {
            return 0;
        }
        return this.brS.getProgress();
    }
}
