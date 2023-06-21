.class public Lcom/kingroot/kinguser/axf;
.super Lcom/kingroot/kinguser/ym;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/yg;


# static fields
.field private static volatile aYa:Z


# instance fields
.field private aXY:Z

.field private aXZ:I

.field private aYb:Z

.field private aYc:Ljava/lang/Runnable;

.field private aYd:Lcom/kingroot/kinguser/xx;

.field private aYe:Lcom/kingroot/kinguser/bed;

.field private aYf:Z

.field private mStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/kingroot/kinguser/axf;->aYa:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ym;-><init>(Landroid/content/Context;)V

    .line 66
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axf;->aXY:Z

    .line 67
    const/16 v0, 0x80

    iput v0, p0, Lcom/kingroot/kinguser/axf;->aXZ:I

    .line 73
    iput-boolean v1, p0, Lcom/kingroot/kinguser/axf;->aYb:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kingroot/kinguser/axf;->mStartTime:J

    .line 85
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/axf$1;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/axf$1;-><init>(Lcom/kingroot/kinguser/axf;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axf;->aYe:Lcom/kingroot/kinguser/bed;

    .line 104
    return-void
.end method

.method private TR()Landroid/view/View;
    .locals 6

    .prologue
    const-wide/16 v4, 0x1388

    .line 185
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030109

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 187
    const v0, 0x7f0f02d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 198
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 202
    invoke-direct {p0, v4, v5, v4, v5}, Lcom/kingroot/kinguser/axf;->i(JJ)V

    .line 204
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v2, 0x18849

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 206
    return-object v1
.end method

.method private TS()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 274
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->EM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    const/4 v0, 0x2

    invoke-static {v3, v1, v1, v0}, Lcom/kingroot/kinguser/aea;->b(IIII)V

    .line 276
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FT()J

    move-result-wide v0

    .line 277
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->FU()J

    move-result-wide v2

    .line 276
    invoke-static {v0, v1, v2, v3}, Lcom/kingroot/kinguser/acu;->g(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/kingroot/kinguser/afu;->vB()Lcom/kingroot/kinguser/afu;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/axf$2;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/axf$2;-><init>(Lcom/kingroot/kinguser/axf;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/afu;->a(Lcom/kingroot/kinguser/afu$a;)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/aks;->bU(Z)V

    .line 293
    invoke-static {v3, v1, v1, v2}, Lcom/kingroot/kinguser/aea;->b(IIII)V

    goto :goto_0
.end method

.method private TU()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axf;->aYb:Z

    .line 374
    invoke-static {}, Lcom/kingroot/kinguser/aiy;->yI()Lcom/kingroot/kinguser/aiy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiy;->yJ()V

    .line 375
    return-void
.end method

.method private TV()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axf;->aYb:Z

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/axf;Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/axf;->e(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V

    return-void
.end method

.method private du(Z)V
    .locals 4

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->TT()V

    .line 311
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->oP()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 313
    new-instance v0, Lcom/kingroot/kinguser/axf$3;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axf$3;-><init>(Lcom/kingroot/kinguser/axf;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 339
    :goto_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/axf;->TU()V

    .line 340
    return-void

    .line 323
    :cond_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axf;->aXY:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->ET()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    :cond_1
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/kingroot/kinguser/axf;->aXZ:I

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/aiy;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/RootProcessActivity;->h(Landroid/content/Context;I)V

    .line 328
    new-instance v0, Lcom/kingroot/kinguser/axf$4;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/axf$4;-><init>(Lcom/kingroot/kinguser/axf;)V

    const-wide/16 v2, 0xc8

    invoke-static {v0, v2, v3}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private e(Lcom/tencent/qqpim/discovery/AdDisplayModel;)V
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Lcom/kingroot/kinguser/bgz;->aca()Lcom/kingroot/kinguser/bgz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/bgz;->f(Lcom/tencent/qqpim/discovery/AdDisplayModel;)Lcom/kingroot/kinguser/ad/SplashDisplayModel;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 301
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/axf;->aYf:Z

    .line 302
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->TT()V

    .line 303
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 304
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/activitys/SplashActivity;->a(Landroid/content/Context;Lcom/kingroot/kinguser/ad/SplashDisplayModel;)V

    .line 306
    :cond_0
    return-void
.end method

.method private i(JJ)V
    .locals 7

    .prologue
    .line 343
    new-instance v0, Lcom/kingroot/kinguser/axf$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/axf$5;-><init>(Lcom/kingroot/kinguser/axf;JJ)V

    iput-object v0, p0, Lcom/kingroot/kinguser/axf;->aYc:Ljava/lang/Runnable;

    .line 358
    iget-object v0, p0, Lcom/kingroot/kinguser/axf;->aYc:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 359
    return-void
.end method


# virtual methods
.method protected TT()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/kingroot/kinguser/axf;->aYc:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axf;->aYc:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/axf;->aYc:Ljava/lang/Runnable;

    .line 369
    :cond_0
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 211
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->a(Landroid/os/Message;)V

    .line 214
    invoke-direct {p0}, Lcom/kingroot/kinguser/axf;->TV()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x27d9

    if-ne v0, v1, :cond_3

    .line 222
    iput-boolean v2, p0, Lcom/kingroot/kinguser/axf;->aXY:Z

    .line 223
    iget v0, p1, Landroid/os/Message;->arg1:I

    iput v0, p0, Lcom/kingroot/kinguser/axf;->aXZ:I

    .line 226
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axf;->aYf:Z

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->TT()V

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 235
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 236
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 239
    iget-wide v4, p0, Lcom/kingroot/kinguser/axf;->mStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/kingroot/kinguser/axf;->mStartTime:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 240
    iget-wide v4, p0, Lcom/kingroot/kinguser/axf;->mStartTime:J

    sub-long v4, v0, v4

    cmp-long v4, v4, v8

    if-gez v4, :cond_2

    .line 243
    iget-wide v4, p0, Lcom/kingroot/kinguser/axf;->mStartTime:J

    add-long/2addr v4, v8

    sub-long v0, v4, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 251
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_4

    .line 253
    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/axf;->du(Z)V

    goto :goto_0

    .line 254
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    .line 258
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bbv;->dC(Z)V

    .line 259
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WN()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/axf;->aXZ:I

    .line 261
    iget v0, p0, Lcom/kingroot/kinguser/axf;->aXZ:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_5

    .line 262
    iput v5, p0, Lcom/kingroot/kinguser/axf;->aXZ:I

    .line 265
    :cond_5
    invoke-direct {p0, v3}, Lcom/kingroot/kinguser/axf;->du(Z)V

    goto :goto_0
.end method

.method protected oG()Landroid/view/View;
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/kingroot/kinguser/axf;->TR()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public oO()Lcom/kingroot/kinguser/yp;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Lcom/kingroot/kinguser/yt;

    iget-object v1, p0, Lcom/kingroot/kinguser/axf;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/kingroot/kinguser/yt;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onBackPressed()Z
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/ym;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/axf;->mStartTime:J

    .line 118
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootSdk;->hasUnFinishRootProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axf;->aYe:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 151
    :goto_0
    new-instance v0, Lcom/kingroot/kinguser/xx;

    invoke-direct {v0}, Lcom/kingroot/kinguser/xx;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/axf;->aYd:Lcom/kingroot/kinguser/xx;

    .line 152
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/axf;->aYd:Lcom/kingroot/kinguser/xx;

    invoke-static {v0, v1}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 153
    return-void

    .line 122
    :cond_0
    sget-boolean v0, Lcom/kingroot/kinguser/axf;->aYa:Z

    if-eqz v0, :cond_1

    .line 126
    sput-boolean v2, Lcom/kingroot/kinguser/axf;->aYa:Z

    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/aiy;->yI()Lcom/kingroot/kinguser/aiy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aiy;->a(Landroid/os/Handler;)V

    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/aiy;->yI()Lcom/kingroot/kinguser/aiy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aiy;->ll()V

    .line 131
    invoke-direct {p0}, Lcom/kingroot/kinguser/axf;->TS()V

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbv;->WN()I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/axf;->aXZ:I

    .line 137
    iget v0, p0, Lcom/kingroot/kinguser/axf;->aXZ:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_2

    .line 140
    invoke-static {v2}, Lcom/kingroot/kinguser/aix;->aP(Z)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/axf;->aXZ:I

    .line 144
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kingroot/kinguser/axf;->aXY:Z

    .line 146
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/kingroot/kinguser/axf;->aXZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 385
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/xy;->b(Lcom/kingroot/kinguser/yg;)V

    .line 386
    iget-object v0, p0, Lcom/kingroot/kinguser/axf;->aYd:Lcom/kingroot/kinguser/xx;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/xx;->clean()V

    .line 387
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onDestroy()V

    .line 388
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 168
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onPause()V

    .line 169
    iget-boolean v0, p0, Lcom/kingroot/kinguser/axf;->aYf:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/kingroot/kinguser/axf;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040009

    const v2, 0x7f04000a

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 172
    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/kingroot/kinguser/xy;->ox()Lcom/kingroot/kinguser/xy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/xy;->a(Lcom/kingroot/kinguser/yg;)V

    .line 158
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onRestart()V

    .line 159
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/kingroot/kinguser/ym;->onStop()V

    .line 164
    return-void
.end method
