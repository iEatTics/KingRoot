package com.kingroot.kinguser;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.kingroot.kinguser.activitys.AppDetailActivity;
import com.kingroot.kinguser.apv;
import com.kingroot.kinguser.distribution.appsmarket.entity.AppBaseModel;
import com.kingroot.kinguser.distribution.appsmarket.interfaces.IReservateGameResult;
import com.kingroot.kinguser.webview.WebViewActivity;
import com.kingroot.kinguses.R;
import java.io.Serializable;
import java.util.Timer;
/* loaded from: classes.dex */
public class aoe extends AbstractC3922ym {
    private static final String TAG = aiq.arY + "_AppMarketBespokePopRecommendPage";
    private AppBaseModel aFc;
    private Timer aFd;
    private ImageView aFe;
    private ImageView aFf;
    private int aie;
    private ViewGroup mContainer;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null) {
            Serializable serializableExtra = intent.getSerializableExtra("extra_splash_entity");
            if (serializableExtra instanceof AppBaseModel) {
                this.aFc = (AppBaseModel) serializableExtra;
            }
            this.aie = intent.getIntExtra("extra_scen", 0);
        }
        if (this.aFc == null) {
            getActivity().finish();
        } else {
            akl.m11257AS().m11195b(this.aFc);
            akl.m11257AS().m11204at(System.currentTimeMillis());
        }
        if (this.aie == 2) {
            ady.m12308tK().mo1746bi(100669);
        } else if (this.aie == 1) {
            ady.m12308tK().mo1746bi(100667);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oI */
    public void mo1370oI() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    public void onStop() {
        super.onStop();
    }

    public aoe(Context context) {
        super(context);
        this.aFc = null;
        this.aFd = new Timer(true);
        this.aie = 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oO */
    public AbstractC3933yp mo1405oO() {
        return super.mo1405oO();
    }

    @Override // com.kingroot.kinguser.AbstractC3922ym
    /* renamed from: oG */
    protected View mo1371oG() {
        View inflate = getLayoutInflater().inflate(R.layout.layout_app_market_bespeak_pop, (ViewGroup) null);
        ((TextView) inflate.findViewById(R.id.count_down)).setVisibility(8);
        this.mContainer = (ViewGroup) inflate.findViewById(R.id.container);
        this.aFe = (ImageView) inflate.findViewById(R.id.bg);
        this.aFf = (ImageView) inflate.findViewById(R.id.btn);
        inflate.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.aoe.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                aoe.this.close();
            }
        });
        apv.m9735LO().m9730a(this.aFc.bgPicUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.aoe.2
            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
            /* renamed from: a */
            public void mo4137a(String str, final Bitmap bitmap) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aoe.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        aoe.this.m9995a(bitmap, aoe.this.mContainer);
                        aoe.this.aFe.setImageBitmap(bitmap);
                    }
                });
            }

            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
            /* renamed from: eE */
            public void mo4136eE(String str) {
            }
        });
        apv.m9735LO().m9730a(this.aFc.btnPicUrl, new apv.InterfaceC1441b() { // from class: com.kingroot.kinguser.aoe.3
            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
            /* renamed from: a */
            public void mo4137a(String str, final Bitmap bitmap) {
                C3840wl.m1552c(new Runnable() { // from class: com.kingroot.kinguser.aoe.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        aoe.this.aFf.setImageBitmap(bitmap);
                    }
                });
            }

            @Override // com.kingroot.kinguser.apv.InterfaceC1441b
            /* renamed from: eE */
            public void mo4136eE(String str) {
            }
        });
        if (this.aFc.jumptype == 3) {
            this.aFf.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.aoe.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    WebViewActivity.m1566g(aoe.this.getContext(), aoe.this.aFc.jumpUrl4Banner, aoe.this.aFc.appName);
                    aoe.this.close();
                    if (aoe.this.aie != 2) {
                        if (aoe.this.aie == 1) {
                            ady.m12308tK().mo1746bi(100668);
                            return;
                        }
                        return;
                    }
                    ady.m12308tK().mo1746bi(100670);
                }
            });
        } else if (this.aFc.jumptype == 1) {
            this.aFf.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.aoe.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AppDetailActivity.m12646a(aoe.this.getContext(), aoe.this.aFc, true);
                    aoe.this.close();
                    if (aoe.this.aie != 2) {
                        if (aoe.this.aie == 1) {
                            ady.m12308tK().mo1746bi(100668);
                            return;
                        }
                        return;
                    }
                    ady.m12308tK().mo1746bi(100670);
                }
            });
        } else if (this.aFc.jumptype == 4) {
            this.aFf.setOnClickListener(new View.OnClickListener() { // from class: com.kingroot.kinguser.aoe.6
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    alq.m10547GY().mo10423a(aoe.this.aFc.reservationEntity.activityId, aoe.this.aFc.pkgName, "", "", new IReservateGameResult.Stub() { // from class: com.kingroot.kinguser.distribution.appsmarket.view.PopRecommendAppSplashPage$6$1
                        @Override // com.kingroot.kinguser.distribution.appsmarket.interfaces.IReservateGameResult
                        public void onResult(boolean z, String str, String str2, String str3, String str4) {
                        }
                    });
                    WebViewActivity.m1566g(aoe.this.getContext(), aoe.this.aFc.jumpUrl4Banner, aoe.this.aFc.appName);
                    aoe.this.close();
                    if (aoe.this.aie != 2) {
                        if (aoe.this.aie == 1) {
                            ady.m12308tK().mo1746bi(100668);
                            return;
                        }
                        return;
                    }
                    ady.m12308tK().mo1746bi(100670);
                }
            });
        }
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void close() {
        this.aFd.cancel();
        getActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m9995a(Bitmap bitmap, ViewGroup viewGroup) {
        if (bitmap != null && viewGroup != null) {
            float height = bitmap.getWidth() == 0 ? 1.09f : bitmap.getHeight() / bitmap.getWidth();
            int i = viewGroup.getLayoutParams().width;
            if (i <= 0) {
                i = abg.m12835r(330.0f);
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, (int) (height * i));
            layoutParams.addRule(13);
            viewGroup.setLayoutParams(layoutParams);
        }
    }
}
