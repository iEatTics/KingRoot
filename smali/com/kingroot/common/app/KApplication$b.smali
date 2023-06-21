.class public abstract Lcom/kingroot/common/app/KApplication$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/common/app/KApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field private FD:I

.field public FE:Ljava/lang/String;

.field private FF:I

.field private FG:Ljava/lang/String;

.field private FH:[Ljava/lang/String;

.field private FI:Z

.field private FJ:Z

.field private FK:Ljava/lang/String;

.field private FL:Ljava/lang/String;

.field private FM:Ljava/lang/String;

.field private FN:I

.field private FO:I

.field private FP:Ljava/lang/String;

.field private FQ:Lcom/kingroot/common/app/KApplication$c;

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZ)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput v1, p0, Lcom/kingroot/common/app/KApplication$b;->FD:I

    .line 455
    iput v1, p0, Lcom/kingroot/common/app/KApplication$b;->FF:I

    .line 456
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FG:Ljava/lang/String;

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FH:[Ljava/lang/String;

    .line 458
    iput-boolean v1, p0, Lcom/kingroot/common/app/KApplication$b;->FI:Z

    .line 459
    iput-boolean v1, p0, Lcom/kingroot/common/app/KApplication$b;->FJ:Z

    .line 460
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FK:Ljava/lang/String;

    .line 461
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->mVersionName:Ljava/lang/String;

    .line 462
    const-string v0, "1"

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FL:Ljava/lang/String;

    .line 463
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FM:Ljava/lang/String;

    .line 464
    iput v2, p0, Lcom/kingroot/common/app/KApplication$b;->FN:I

    .line 465
    iput v2, p0, Lcom/kingroot/common/app/KApplication$b;->FO:I

    .line 467
    const-string v0, ""

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FP:Ljava/lang/String;

    .line 469
    new-instance v0, Lcom/kingroot/common/app/KApplication$c;

    invoke-direct {v0}, Lcom/kingroot/common/app/KApplication$c;-><init>()V

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FQ:Lcom/kingroot/common/app/KApplication$c;

    .line 499
    iput p1, p0, Lcom/kingroot/common/app/KApplication$b;->FD:I

    .line 500
    iput-object p2, p0, Lcom/kingroot/common/app/KApplication$b;->FE:Ljava/lang/String;

    .line 501
    iput p3, p0, Lcom/kingroot/common/app/KApplication$b;->FF:I

    .line 502
    invoke-static {p4}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FG:Ljava/lang/String;

    .line 503
    if-eqz p5, :cond_0

    .line 504
    array-length v0, p5

    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FH:[Ljava/lang/String;

    .line 506
    :cond_0
    if-nez p6, :cond_1

    const-string p6, ""

    :cond_1
    iput-object p6, p0, Lcom/kingroot/common/app/KApplication$b;->FK:Ljava/lang/String;

    .line 507
    iput-boolean p8, p0, Lcom/kingroot/common/app/KApplication$b;->FI:Z

    .line 508
    iput-object p7, p0, Lcom/kingroot/common/app/KApplication$b;->FM:Ljava/lang/String;

    .line 509
    iput p9, p0, Lcom/kingroot/common/app/KApplication$b;->FN:I

    .line 510
    iput p10, p0, Lcom/kingroot/common/app/KApplication$b;->FO:I

    .line 511
    iput-boolean p11, p0, Lcom/kingroot/common/app/KApplication$b;->FJ:Z

    .line 514
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/zh;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 515
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/kingroot/common/app/KApplication$b;->mVersionName:Ljava/lang/String;

    .line 516
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 517
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v0

    .line 519
    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->mVersionName:Ljava/lang/String;

    .line 520
    const-string v0, "1"

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FL:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/kingroot/common/app/KApplication$b;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FH:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/kingroot/common/app/KApplication$b;)Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/kingroot/common/app/KApplication$b;->FI:Z

    return v0
.end method

.method static synthetic c(Lcom/kingroot/common/app/KApplication$b;)I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/kingroot/common/app/KApplication$b;->FD:I

    return v0
.end method

.method static synthetic d(Lcom/kingroot/common/app/KApplication$b;)I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/kingroot/common/app/KApplication$b;->FF:I

    return v0
.end method

.method static synthetic e(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/kingroot/common/app/KApplication$b;)I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/kingroot/common/app/KApplication$b;->FN:I

    return v0
.end method

.method static synthetic j(Lcom/kingroot/common/app/KApplication$b;)I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/kingroot/common/app/KApplication$b;->FO:I

    return v0
.end method

.method static synthetic k(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FM:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/kingroot/common/app/KApplication$b;)Lcom/kingroot/common/app/KApplication$c;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FQ:Lcom/kingroot/common/app/KApplication$c;

    return-object v0
.end method

.method static synthetic m(Lcom/kingroot/common/app/KApplication$b;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/kingroot/common/app/KApplication$b;)Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/kingroot/common/app/KApplication$b;->FJ:Z

    return v0
.end method


# virtual methods
.method public cl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 565
    invoke-static {p1}, Lcom/kingroot/kinguser/aab;->dH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FP:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public abstract getChannel()Ljava/lang/String;
.end method

.method public abstract ix()I
.end method

.method public k(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 557
    iget-object v0, p0, Lcom/kingroot/common/app/KApplication$b;->FQ:Lcom/kingroot/common/app/KApplication$c;

    invoke-static {v0, p1, p2}, Lcom/kingroot/common/app/KApplication$c;->a(Lcom/kingroot/common/app/KApplication$c;ILjava/lang/String;)V

    .line 558
    return-void
.end method
