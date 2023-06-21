.class public Lcom/kingroot/kinguser/bjs;
.super Lcom/kingroot/kinguser/adv;
.source "SourceFile"


# static fields
.field private static byA:Z

.field private static byB:Z

.field public static byC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/data/TcPkgInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private baG:Lcom/kingroot/kinguser/bed;

.field private bxU:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

.field private byD:Lcom/kingroot/kinguser/bed;

.field public byz:Lcom/kingroot/kinguser/adv$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-boolean v0, Lcom/kingroot/kinguser/bjs;->byA:Z

    .line 64
    sput-boolean v0, Lcom/kingroot/kinguser/bjs;->byB:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 41
    invoke-direct {p0}, Lcom/kingroot/kinguser/adv;-><init>()V

    .line 117
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjs$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjs$1;-><init>(Lcom/kingroot/kinguser/bjs;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjs;->byD:Lcom/kingroot/kinguser/bed;

    .line 201
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bjs$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bjs$2;-><init>(Lcom/kingroot/kinguser/bjs;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bjs;->baG:Lcom/kingroot/kinguser/bed;

    return-void
.end method

.method static synthetic YX()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/kingroot/kinguser/bjs;->byB:Z

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjs;)Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kingroot/kinguser/bjs;->bxU:Lcom/kingroot/kingmaster/toolbox/cleaner/uninstall/manager/AppBackupTool;

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bjs;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/kingroot/kinguser/bjs;->cC(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cC(J)Ljava/lang/String;
    .locals 7

    .prologue
    const/high16 v5, 0x447a0000    # 1000.0f

    const/high16 v4, 0x44800000    # 1024.0f

    .line 346
    long-to-float v1, p1

    .line 347
    const v0, 0x7f07013a

    .line 348
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 350
    const/4 v1, 0x0

    .line 353
    :cond_0
    div-float/2addr v1, v4

    .line 355
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_1

    .line 356
    div-float/2addr v1, v4

    .line 357
    const v0, 0x7f07013b

    .line 360
    :cond_1
    cmpl-float v2, v1, v5

    if-ltz v2, :cond_2

    .line 361
    div-float/2addr v1, v4

    .line 362
    const v0, 0x7f070139

    .line 364
    :cond_2
    const-string v2, "%.1f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic wa()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/kingroot/kinguser/bjs;->byA:Z

    return v0
.end method
