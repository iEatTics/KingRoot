.class public Lcom/tencent/open/TDialog;
.super Lcom/kingroot/kinguser/bqc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/TDialog$1;,
        Lcom/tencent/open/TDialog$FbWebViewClient;,
        Lcom/tencent/open/TDialog$JsListener;,
        Lcom/tencent/open/TDialog$OnTimeListener;,
        Lcom/tencent/open/TDialog$THandler;
    }
.end annotation


# static fields
.field static final bHK:Landroid/widget/FrameLayout$LayoutParams;

.field private static bHL:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field static bHQ:Landroid/widget/Toast;


# instance fields
.field private bEn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private bHM:Lcom/tencent/open/TDialog$OnTimeListener;

.field private bHN:Landroid/widget/FrameLayout;

.field private bHO:Lcom/kingroot/kinguser/bqk;

.field private bHP:Landroid/os/Handler;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 46
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/tencent/open/TDialog;->bHK:Landroid/widget/FrameLayout$LayoutParams;

    .line 467
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    return-void
.end method

.method private static F(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 472
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/bqt;->mU(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 473
    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 475
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 477
    if-nez v1, :cond_2

    .line 478
    sget-object v1, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 479
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    .line 486
    :goto_0
    sget-object v0, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 502
    :cond_0
    :goto_1
    return-void

    .line 482
    :cond_1
    sget-object v1, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    sget-object v2, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 483
    sget-object v1, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 484
    sget-object v0, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 500
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 487
    :cond_2
    if-ne v1, v3, :cond_0

    .line 488
    :try_start_1
    sget-object v1, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    if-nez v1, :cond_3

    .line 489
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    .line 496
    :goto_2
    sget-object v0, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 492
    :cond_3
    sget-object v1, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    sget-object v2, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 493
    sget-object v1, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 494
    sget-object v0, Lcom/tencent/open/TDialog;->bHQ:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static synthetic I(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/tencent/open/TDialog;->K(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic J(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/tencent/open/TDialog;->F(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static K(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 506
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/bqt;->mU(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 510
    const-string v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 511
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 512
    const/4 v0, 0x1

    if-ne v1, v0, :cond_4

    .line 513
    sget-object v0, Lcom/tencent/open/TDialog;->bHL:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/open/TDialog;->bHL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 514
    :cond_2
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 515
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 516
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/tencent/open/TDialog;->bHL:Ljava/lang/ref/WeakReference;

    .line 518
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 538
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 520
    :cond_3
    :try_start_1
    sget-object v0, Lcom/tencent/open/TDialog;->bHL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 521
    sget-object v0, Lcom/tencent/open/TDialog;->bHL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    sget-object v0, Lcom/tencent/open/TDialog;->bHL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    .line 525
    :cond_4
    if-nez v1, :cond_0

    .line 526
    sget-object v0, Lcom/tencent/open/TDialog;->bHL:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 529
    sget-object v0, Lcom/tencent/open/TDialog;->bHL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/open/TDialog;->bHL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    sget-object v0, Lcom/tencent/open/TDialog;->bHL:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 532
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/TDialog;->bHL:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/tencent/open/TDialog;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bEn:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 219
    new-instance v1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/open/TDialog;->bEn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 220
    const-string v0, "test"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 225
    new-instance v2, Lcom/kingroot/kinguser/bqk;

    iget-object v0, p0, Lcom/tencent/open/TDialog;->bEn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/bqk;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    .line 226
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bqk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/tencent/open/TDialog;->bEn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/open/TDialog;->bHN:Landroid/widget/FrameLayout;

    .line 229
    const/16 v0, 0x11

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 230
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHN:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHN:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHN:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/tencent/open/TDialog;->setContentView(Landroid/view/View;)V

    .line 234
    return-void
.end method

.method static synthetic b(Lcom/tencent/open/TDialog;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHP:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 276
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bqk;->setVerticalScrollBarEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bqk;->setHorizontalScrollBarEnabled(Z)V

    .line 278
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    new-instance v1, Lcom/tencent/open/TDialog$FbWebViewClient;

    invoke-direct {v1, p0, v5}, Lcom/tencent/open/TDialog$FbWebViewClient;-><init>(Lcom/tencent/open/TDialog;Lcom/tencent/open/TDialog$1;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bqk;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 279
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    iget-object v1, p0, Lcom/tencent/open/TDialog;->bIl:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bqk;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 280
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bqk;->clearFormData()V

    .line 283
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bqk;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 284
    if-nez v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 287
    :cond_0
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 288
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 290
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 293
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 294
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 295
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 297
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 298
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 300
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bEn:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/open/TDialog;->bEn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 302
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bEn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "databases"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 305
    :cond_1
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bIk:Lcom/kingroot/kinguser/bps;

    new-instance v1, Lcom/tencent/open/TDialog$JsListener;

    invoke-direct {v1, p0, v5}, Lcom/tencent/open/TDialog$JsListener;-><init>(Lcom/tencent/open/TDialog;Lcom/tencent/open/TDialog$1;)V

    const-string v2, "sdk_js_if"

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bps;->a(Lcom/kingroot/kinguser/bps$b;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    iget-object v1, p0, Lcom/tencent/open/TDialog;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bqk;->loadUrl(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    sget-object v1, Lcom/tencent/open/TDialog;->bHK:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bqk;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bqk;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bqk;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/tencent/open/TDialog;)Lcom/tencent/open/TDialog$OnTimeListener;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHM:Lcom/tencent/open/TDialog$OnTimeListener;

    return-object v0
.end method

.method static synthetic d(Lcom/tencent/open/TDialog;)Lcom/kingroot/kinguser/bqk;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHO:Lcom/kingroot/kinguser/bqk;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHM:Lcom/tencent/open/TDialog$OnTimeListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/tencent/open/TDialog;->bHM:Lcom/tencent/open/TDialog$OnTimeListener;

    invoke-virtual {v0}, Lcom/tencent/open/TDialog$OnTimeListener;->onCancel()V

    .line 215
    :cond_0
    invoke-super {p0}, Lcom/kingroot/kinguser/bqc;->onBackPressed()V

    .line 216
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/open/TDialog;->requestWindowFeature(I)Z

    .line 202
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/bqc;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-direct {p0}, Lcom/tencent/open/TDialog;->a()V

    .line 207
    invoke-direct {p0}, Lcom/tencent/open/TDialog;->b()V

    .line 208
    return-void
.end method
