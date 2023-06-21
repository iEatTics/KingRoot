.class public abstract Lcom/kingroot/kinguser/ym;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/ym$a;,
        Lcom/kingroot/kinguser/ym$b;
    }
.end annotation


# instance fields
.field private CD:Z

.field private Vg:Lcom/kingroot/kinguser/acn;

.field public Vh:Lcom/kingroot/kinguser/yp;

.field private Vi:Landroid/widget/RelativeLayout;

.field private Vj:Lcom/kingroot/kinguser/ym$b;

.field private Vk:Z

.field private Vl:Lcom/kingroot/kinguser/yq;

.field private Vm:Lcom/kingroot/kinguser/acr;

.field private Vn:[B

.field protected mContentView:Landroid/view/View;

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mTag:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0, v0}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v0, p0, Lcom/kingroot/kinguser/ym;->Vk:Z

    .line 80
    iput-boolean v0, p0, Lcom/kingroot/kinguser/ym;->CD:Z

    .line 89
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/ym;->Vn:[B

    .line 97
    instance-of v0, p1, Lcom/kingroot/common/uilib/template/AbsActivity;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not a AbsActivity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/kingroot/kinguser/ym;->mContext:Landroid/content/Context;

    .line 102
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lcom/kingroot/kinguser/ym;->mTag:Ljava/lang/String;

    .line 103
    if-nez p3, :cond_2

    const-string p3, ""

    :cond_2
    iput-object p3, p0, Lcom/kingroot/kinguser/ym;->mTitle:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/kingroot/kinguser/ym;->oK()V

    .line 106
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ym;->oS()Lcom/kingroot/kinguser/acn;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ym;->Vg:Lcom/kingroot/kinguser/acn;

    .line 107
    return-void
.end method

.method private oK()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Lcom/kingroot/kinguser/ym$1;

    invoke-direct {v0, p0, p0}, Lcom/kingroot/kinguser/ym$1;-><init>(Lcom/kingroot/kinguser/ym;Lcom/kingroot/kinguser/ym;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ym;->mHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method


# virtual methods
.method public U(J)V
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->mHandler:Landroid/os/Handler;

    const/16 v1, -0x270f

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 488
    return-void
.end method

.method public V(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 521
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public W(J)F
    .locals 3

    .prologue
    .line 531
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDimension(I)F

    move-result v0

    return v0
.end method

.method public X(J)I
    .locals 3

    .prologue
    .line 535
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v0

    return v0
.end method

.method public Y(J)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 540
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 453
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 461
    :goto_0
    return-void

    .line 455
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ym;->i(Ljava/lang/Object;)V

    goto :goto_0

    .line 453
    :pswitch_data_0
    .packed-switch -0x270f
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Lcom/kingroot/kinguser/yq;)V
    .locals 0

    .prologue
    .line 548
    iput-object p1, p0, Lcom/kingroot/kinguser/ym;->Vl:Lcom/kingroot/kinguser/yq;

    .line 549
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vi:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getImageFetcher()Lcom/kingroot/kinguser/acr;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vm:Lcom/kingroot/kinguser/acr;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/kingroot/kinguser/ym;->Vk:Z

    if-nez v0, :cond_1

    .line 154
    iget-object v1, p0, Lcom/kingroot/kinguser/ym;->Vn:[B

    monitor-enter v1

    .line 155
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vm:Lcom/kingroot/kinguser/acr;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/kingroot/kinguser/ym;->Vk:Z

    if-nez v0, :cond_0

    .line 156
    invoke-static {}, Lcom/kingroot/kinguser/yr;->pb()Lcom/kingroot/kinguser/acr;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ym;->Vm:Lcom/kingroot/kinguser/acr;

    .line 159
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vm:Lcom/kingroot/kinguser/acr;

    return-object v0

    .line 159
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ym;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 516
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    return-object v0
.end method

.method public getWholeView()Landroid/view/View;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vi:Landroid/widget/RelativeLayout;

    .line 424
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/yp;->getWholeView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected i(Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 471
    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->mHandler:Landroid/os/Handler;

    const/16 v1, -0x270f

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 497
    return-void
.end method

.method public oF()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 214
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ym;->oO()Lcom/kingroot/kinguser/yp;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    .line 215
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/kingroot/kinguser/ym;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ym;->Vi:Landroid/widget/RelativeLayout;

    .line 223
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ym;->oG()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ym;->mContentView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    iget-object v1, p0, Lcom/kingroot/kinguser/ym;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/ym;->oN()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    :goto_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ym;->oI()V

    .line 239
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 232
    if-nez v0, :cond_2

    .line 233
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/ym;->Vi:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/kingroot/kinguser/ym;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected oG()Landroid/view/View;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/kingroot/kinguser/ym;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected oI()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public oL()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vm:Lcom/kingroot/kinguser/acr;

    if-eqz v0, :cond_1

    .line 170
    iget-object v1, p0, Lcom/kingroot/kinguser/ym;->Vn:[B

    monitor-enter v1

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vm:Lcom/kingroot/kinguser/acr;

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/ym;->Vm:Lcom/kingroot/kinguser/acr;

    .line 173
    invoke-static {}, Lcom/kingroot/kinguser/yr;->pc()V

    .line 175
    :cond_0
    monitor-exit v1

    .line 177
    :cond_1
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public oM()Lcom/kingroot/kinguser/yp;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vh:Lcom/kingroot/kinguser/yp;

    return-object v0
.end method

.method protected oN()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 246
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x0

    return-object v0
.end method

.method public oP()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ym;->CD:Z

    return v0
.end method

.method public oQ()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/kingroot/kinguser/ym;->Vk:Z

    return v0
.end method

.method public oR()V
    .locals 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->mHandler:Landroid/os/Handler;

    const/16 v1, -0x270f

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 483
    return-void
.end method

.method protected oS()Lcom/kingroot/kinguser/acn;
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    invoke-interface {v0, p1, p2, p3, p0}, Lcom/kingroot/kinguser/ym$b;->a(IILandroid/content/Intent;Lcom/kingroot/kinguser/ym;)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vg:Lcom/kingroot/kinguser/acn;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vg:Lcom/kingroot/kinguser/acn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kingroot/kinguser/acn;->onActivityResult(IILandroid/content/Intent;)V

    .line 350
    :cond_1
    return-void
.end method

.method public onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    invoke-interface {v0, p1, p0}, Lcom/kingroot/kinguser/ym$b;->a(Landroid/os/Bundle;Lcom/kingroot/kinguser/ym;)V

    .line 280
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ym;->Vk:Z

    .line 330
    invoke-virtual {p0}, Lcom/kingroot/kinguser/ym;->oL()V

    .line 332
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ym$b;->e(Lcom/kingroot/kinguser/ym;)V

    .line 335
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 362
    iget-object v1, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    invoke-interface {v1, p1, p2, p0}, Lcom/kingroot/kinguser/ym$b;->b(ILandroid/view/KeyEvent;Lcom/kingroot/kinguser/ym;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/ym;->Vg:Lcom/kingroot/kinguser/acn;

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/kingroot/kinguser/ym;->Vg:Lcom/kingroot/kinguser/acn;

    invoke-virtual {v1, p1, p2}, Lcom/kingroot/kinguser/acn;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    invoke-interface {v0, p1, p2, p0}, Lcom/kingroot/kinguser/ym$b;->a(ILandroid/view/KeyEvent;Lcom/kingroot/kinguser/ym;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 653
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ym$b;->c(Lcom/kingroot/kinguser/ym;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vg:Lcom/kingroot/kinguser/acn;

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vg:Lcom/kingroot/kinguser/acn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acn;->onPause()V

    .line 309
    :cond_1
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 628
    return-void
.end method

.method public onPostResume()V
    .locals 0

    .prologue
    .line 631
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ym$b;->b(Lcom/kingroot/kinguser/ym;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vg:Lcom/kingroot/kinguser/acn;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vg:Lcom/kingroot/kinguser/acn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acn;->onResume()V

    .line 297
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 625
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ym;->CD:Z

    .line 284
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ym$b;->a(Lcom/kingroot/kinguser/ym;)V

    .line 287
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ym$b;->d(Lcom/kingroot/kinguser/ym;)V

    .line 316
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/yr;->pc()V

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/ym;->CD:Z

    .line 319
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vg:Lcom/kingroot/kinguser/acn;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vg:Lcom/kingroot/kinguser/acn;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/acn;->onStop()V

    .line 322
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    return v0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ym$b;->f(Lcom/kingroot/kinguser/ym;)V

    .line 379
    :cond_0
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/ym;->Vj:Lcom/kingroot/kinguser/ym$b;

    invoke-interface {v0, p0}, Lcom/kingroot/kinguser/ym$b;->g(Lcom/kingroot/kinguser/ym;)V

    .line 385
    :cond_0
    return-void
.end method
