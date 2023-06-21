package com.kingroot.kinguser;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.kingroot.kinguses.R;
/* loaded from: classes.dex */
public class aoi extends anw implements View.OnTouchListener, TextView.OnEditorActionListener {
    private EditText aFA;
    private View aFB;
    private ImageView aFC;
    private ImageView aFD;
    private String aFE;
    private TextWatcher mTextWatcher;

    public aoi(View view, String str, aoa aoaVar) {
        super(view, aoaVar);
        this.mTextWatcher = new TextWatcher() { // from class: com.kingroot.kinguser.aoi.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                if (TextUtils.isEmpty(editable.toString())) {
                    aoi.this.aEz.mo10006Jz();
                    aoi.this.aFC.setVisibility(4);
                    return;
                }
                aoi.this.aEz.mo10004hC(editable.toString());
                aoi.this.aFC.setVisibility(0);
            }
        };
        this.aFE = str;
        m9967gq();
    }

    /* renamed from: C */
    public void m9970C(String str, boolean z) {
        if (z) {
            this.aFA.removeTextChangedListener(this.mTextWatcher);
        }
        this.aFA.setText(str);
        this.aFA.setSelection(this.aFA.getText().length());
        if (TextUtils.isEmpty(str)) {
            this.aFC.setVisibility(4);
        } else {
            this.aFC.setVisibility(0);
        }
        if (z) {
            this.aFA.addTextChangedListener(this.mTextWatcher);
        }
    }

    /* renamed from: JS */
    public View m9969JS() {
        return this.aFA;
    }

    /* renamed from: gq */
    private void m9967gq() {
        this.aFA = (EditText) this.mView.findViewById(R.id.item_content);
        this.aFA.addTextChangedListener(this.mTextWatcher);
        this.aFA.setOnEditorActionListener(this);
        this.aFA.setOnTouchListener(this);
        if (!TextUtils.isEmpty(this.aFE)) {
            this.aFA.setHint(this.aFE);
        }
        this.aFB = this.mView.findViewById(R.id.search_imageBtn);
        this.aFB.setOnClickListener(this);
        this.aFC = (ImageView) this.mView.findViewById(R.id.imageButton_delete);
        this.aFC.setOnClickListener(this);
        this.aFC.setVisibility(4);
        this.aFD = (ImageView) this.mView.findViewById(R.id.left_iv);
        this.aFD.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.left_iv /* 2131689480 */:
                this.aEz.mo10008Jx();
                return;
            case R.id.imageButton_delete /* 2131689720 */:
                this.aFA.getText().clear();
                return;
            case R.id.search_imageBtn /* 2131689721 */:
                m9966hF(this.aFA.getText().toString());
                return;
            default:
                return;
        }
    }

    /* renamed from: hF */
    private boolean m9966hF(String str) {
        String trim = str.trim();
        if (TextUtils.isEmpty(trim)) {
            if (!TextUtils.isEmpty(this.aFE)) {
                trim = this.aFE;
            } else {
                C3954zj.m1307c(C3953zi.m1311pr().getString(R.string.app_search_please_input_toast), 0);
                return false;
            }
        }
        m9970C(trim, true);
        this.aEz.mo10009B(trim, false);
        return true;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 3 || (keyEvent != null && keyEvent.getKeyCode() == 66 && keyEvent.getRepeatCount() == 0)) {
            return m9966hF(this.aFA.getText().toString());
        }
        return false;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && TextUtils.isEmpty(((EditText) view).getText().toString())) {
            this.aEz.mo10006Jz();
            return false;
        }
        return false;
    }
}
