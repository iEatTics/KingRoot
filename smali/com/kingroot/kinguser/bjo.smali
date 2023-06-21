.class public Lcom/kingroot/kinguser/bjo;
.super Lcom/kingroot/kinguser/acx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bjo$c;,
        Lcom/kingroot/kinguser/bjo$a;,
        Lcom/kingroot/kinguser/bjo$b;
    }
.end annotation


# instance fields
.field private acx:Landroid/widget/ImageView;

.field private acy:Landroid/widget/TextView;

.field private acz:Landroid/view/animation/Animation;

.field private ahC:Landroid/widget/ImageView;

.field private ahF:Lcom/kingroot/kinguser/bed;

.field private ahq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;",
            ">;"
        }
    .end annotation
.end field

.field private baA:Landroid/widget/TextView;

.field private bwY:Lcom/kingroot/kinguser/bjp$a;

.field private bxp:Landroid/app/ProgressDialog;

.field private bxq:I

.field private bxr:Lcom/kingroot/kinguser/bed;

.field private bxs:Lcom/kingroot/kinguser/adi;

.field private bxt:Landroid/widget/ImageView;

.field private bxu:Landroid/view/animation/Animation;

.field private mIsRoot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 104
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/acx;-><init>(Landroid/content/Context;)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bjo;->bxq:I

    .line 181
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjo$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjo$2;-><init>(Lcom/kingroot/kinguser/bjo;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxr:Lcom/kingroot/kinguser/bed;

    .line 314
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjo$4;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjo$4;-><init>(Lcom/kingroot/kinguser/bjo;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->ahF:Lcom/kingroot/kinguser/bed;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->ahq:Ljava/util/List;

    .line 107
    new-instance v0, Lcom/kingroot/kinguser/bjo$a;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bjo$a;-><init>(Lcom/kingroot/kinguser/bjo;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->bwY:Lcom/kingroot/kinguser/bjp$a;

    .line 108
    return-void
.end method

.method private Uy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 383
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 384
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    .line 385
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 387
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 388
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 390
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 391
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 392
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 394
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    const v1, 0x7f030045

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setContentView(I)V

    .line 395
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    const v1, 0x7f0f013f

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->acy:Landroid/widget/TextView;

    .line 396
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    const v1, 0x7f0f0140

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->baA:Landroid/widget/TextView;

    .line 397
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    const v1, 0x7f0f013e

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->acx:Landroid/widget/ImageView;

    .line 398
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    const v1, 0x7f0f00db

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->ahC:Landroid/widget/ImageView;

    .line 399
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->acz:Landroid/view/animation/Animation;

    .line 402
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/kingroot/kinguser/bjo$5;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjo$5;-><init>(Lcom/kingroot/kinguser/bjo;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 411
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->baA:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->ahC:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 415
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->acy:Landroid/widget/TextView;

    const-wide/32 v2, 0x7f070391

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjo;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->acx:Landroid/widget/ImageView;

    const v1, 0x7f0202b8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 418
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->acx:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjo;->acz:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 419
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 420
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjo;Lcom/kingroot/kinguser/aex$a;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjo;->c(Lcom/kingroot/kinguser/aex$a;)V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjo;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/kingroot/kinguser/bjo;->mIsRoot:Z

    return v0
.end method

.method private aeh()V
    .locals 4

    .prologue
    .line 427
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxs:Lcom/kingroot/kinguser/adi;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lcom/kingroot/kinguser/adi;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/adi;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxs:Lcom/kingroot/kinguser/adi;

    .line 429
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxs:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->show()V

    .line 430
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxs:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f030083

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->setContentView(I)V

    .line 431
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxs:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f0f0180

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-wide/32 v2, 0x7f07008c

    .line 432
    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjo;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxs:Lcom/kingroot/kinguser/adi;

    const v1, 0x7f0f00db

    .line 434
    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxt:Landroid/widget/ImageView;

    .line 435
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxu:Landroid/view/animation/Animation;

    .line 438
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxs:Lcom/kingroot/kinguser/adi;

    new-instance v1, Lcom/kingroot/kinguser/bjo$6;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjo$6;-><init>(Lcom/kingroot/kinguser/bjo;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 447
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxs:Lcom/kingroot/kinguser/adi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adi;->setCanceledOnTouchOutside(Z)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxt:Landroid/widget/ImageView;

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 451
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjo;->bxu:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 452
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxs:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->show()V

    .line 453
    return-void
.end method

.method private aei()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxs:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxs:Lcom/kingroot/kinguser/adi;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adi;->dismiss()V

    .line 459
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bjo;)Ljava/util/List;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->ahq:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bjo;Lcom/kingroot/kinguser/aex$a;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bjo;->f(Lcom/kingroot/kinguser/aex$a;)V

    return-void
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bjo;)Lcom/kingroot/kinguser/bjp$a;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bwY:Lcom/kingroot/kinguser/bjp$a;

    return-object v0
.end method

.method private c(Lcom/kingroot/kinguser/aex$a;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 344
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 346
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 349
    :try_start_0
    iget-object v3, p1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v3, v3, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->packageName:Ljava/lang/String;

    .line 350
    invoke-static {v3}, Lcom/kingroot/kinguser/aff;->eZ(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_2

    .line 351
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 362
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 363
    if-eqz v0, :cond_3

    .line 364
    const/4 v0, 0x6

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 367
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 368
    return-void

    .line 353
    :cond_2
    :try_start_1
    iget-object v1, p1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    const/4 v3, 0x1

    iput v3, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->enable:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v1

    .line 356
    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    :cond_3
    const/4 v0, 0x5

    iput v0, v1, Landroid/os/Message;->arg2:I

    goto :goto_1
.end method

.method static synthetic d(Lcom/kingroot/kinguser/bjo;)I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/kingroot/kinguser/bjo;->bxq:I

    return v0
.end method

.method private f(Lcom/kingroot/kinguser/aex$a;)V
    .locals 3

    .prologue
    .line 301
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjo;->Uy()V

    .line 304
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->baA:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    iget-object v1, v1, Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/bjo;->ahF:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;Ljava/util/List;)Z

    .line 311
    :cond_0
    return-void
.end method

.method private vf()V
    .locals 2

    .prologue
    .line 178
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bjo;->bxr:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 179
    return-void
.end method

.method private vh()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->bxp:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 380
    :cond_0
    return-void
.end method

.method private vi()V
    .locals 4

    .prologue
    .line 462
    new-instance v0, Lcom/kingroot/kinguser/bjt;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bjt;-><init>(Landroid/content/Context;)V

    .line 463
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjt;->show()V

    .line 464
    const-wide/32 v2, 0x7f07024a

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjo;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->setTitleText(Ljava/lang/String;)V

    .line 465
    const-wide/32 v2, 0x7f07021c

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjo;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->ma(Ljava/lang/String;)V

    .line 466
    const-wide/32 v2, 0x7f0700c9

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjo;->V(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->lK(Ljava/lang/String;)V

    .line 467
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjt;->iY(I)V

    .line 468
    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x4

    .line 218
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/acx;->a(Landroid/os/Message;)V

    .line 219
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 221
    :sswitch_0
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjo;->aei()V

    .line 222
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->Ve:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/kingroot/kinguser/bjo$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjo;->ahq:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjo$b;->setData(Ljava/util/List;)V

    .line 223
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->oR()V

    goto :goto_0

    .line 227
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    .line 228
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v1

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v5, Lcom/kingroot/kinguser/bjo$3;

    invoke-direct {v5, p0, v0}, Lcom/kingroot/kinguser/bjo$3;-><init>(Lcom/kingroot/kinguser/bjo;Lcom/kingroot/kinguser/aex$a;)V

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0

    .line 239
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->acy:Landroid/widget/TextView;

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->ahC:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->acx:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 243
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->acx:Landroid/widget/ImageView;

    const v1, 0x7f0202a8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 245
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 246
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 248
    :cond_1
    const-wide/32 v0, 0x7f070369

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bjo;->V(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/kingroot/kinguser/zj;->c(Ljava/lang/CharSequence;I)V

    .line 249
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjo;->vh()V

    goto :goto_0

    .line 256
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/kingroot/kinguser/aex$a;

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/aex$a;

    iget-object v0, v0, Lcom/kingroot/kinguser/aex$a;->afP:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;

    .line 259
    if-eqz v0, :cond_2

    .line 260
    iget-object v1, p0, Lcom/kingroot/kinguser/bjo;->ahq:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/kingroot/kinguser/bjo;->Ve:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/kingroot/kinguser/bjo$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/bjo;->ahq:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bjo$b;->setData(Ljava/util/List;)V

    .line 263
    :cond_2
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjo;->vh()V

    .line 264
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->oR()V

    .line 266
    :cond_3
    iput v2, p0, Lcom/kingroot/kinguser/bjo;->bxq:I

    goto/16 :goto_0

    .line 271
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 274
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 275
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 279
    :sswitch_5
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjo;->vh()V

    .line 280
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjo;->vi()V

    goto/16 :goto_0

    .line 219
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0xf -> :sswitch_5
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method protected getAdapter()Landroid/widget/BaseAdapter;
    .locals 2

    .prologue
    .line 289
    new-instance v0, Lcom/kingroot/kinguser/bjo$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kingroot/kinguser/bjo$b;-><init>(Lcom/kingroot/kinguser/bjo;Lcom/kingroot/kinguser/bjo$1;)V

    return-object v0
.end method

.method protected getDivider()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 117
    const-wide/32 v0, 0x7f0201c0

    invoke-virtual {p0, v0, v1}, Lcom/kingroot/kinguser/bjo;->Y(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected oI()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 121
    invoke-super {p0}, Lcom/kingroot/kinguser/acx;->oI()V

    .line 123
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030048

    .line 125
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/yp;->getContainer()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    .line 123
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 127
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 130
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v1

    iput-boolean v1, p0, Lcom/kingroot/kinguser/bjo;->mIsRoot:Z

    .line 131
    iget-boolean v1, p0, Lcom/kingroot/kinguser/bjo;->mIsRoot:Z

    if-nez v1, :cond_0

    .line 132
    const v1, 0x7f0f0147

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 133
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v3

    const v4, 0x7f070351

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 140
    const/4 v1, 0x3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 142
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 143
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 145
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    const v2, 0x7f070393

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 147
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0e0075

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->oM()Lcom/kingroot/kinguser/yp;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/kingroot/kinguser/yp;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 151
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjo;->aeh()V

    .line 152
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bjo$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bjo$1;-><init>(Lcom/kingroot/kinguser/bjo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 174
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjo;->vf()V

    .line 175
    return-void
.end method

.method protected oO()Lcom/kingroot/kinguser/yp;
    .locals 4

    .prologue
    .line 557
    new-instance v0, Lcom/kingroot/kinguser/bjo$c;

    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/32 v2, 0x7f070356

    invoke-virtual {p0, v2, v3}, Lcom/kingroot/kinguser/bjo;->V(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/kingroot/kinguser/bjo$c;-><init>(Lcom/kingroot/kinguser/bjo;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onBackPressed()Z
    .locals 3

    .prologue
    .line 294
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 295
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bjo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/kingroot/kinguser/bjo;->bxq:I

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 296
    invoke-super {p0}, Lcom/kingroot/kinguser/acx;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/acx;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/bjo;->bxq:I

    .line 114
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/kingroot/kinguser/bjo;->vh()V

    .line 373
    invoke-super {p0}, Lcom/kingroot/kinguser/acx;->onDestroy()V

    .line 374
    return-void
.end method
