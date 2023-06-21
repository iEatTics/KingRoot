.class public Lcom/kingroot/kinguser/aih;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile aru:Lcom/kingroot/kinguser/aih;


# instance fields
.field private arv:Lcom/kingroot/kinguser/bed;

.field private arw:Lcom/kingroot/kinguser/bed;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/aih;->aru:Lcom/kingroot/kinguser/aih;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aih$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aih$1;-><init>(Lcom/kingroot/kinguser/aih;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aih;->arv:Lcom/kingroot/kinguser/bed;

    .line 71
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/aih$2;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/aih$2;-><init>(Lcom/kingroot/kinguser/aih;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/aih;->arw:Lcom/kingroot/kinguser/bed;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/aih;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/kingroot/kinguser/aih;->xK()V

    return-void
.end method

.method public static xI()Lcom/kingroot/kinguser/aih;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/kingroot/kinguser/aih;->aru:Lcom/kingroot/kinguser/aih;

    if-nez v0, :cond_1

    .line 36
    const-class v1, Lcom/kingroot/kinguser/aih;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aih;->aru:Lcom/kingroot/kinguser/aih;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/kingroot/kinguser/aih;

    invoke-direct {v0}, Lcom/kingroot/kinguser/aih;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aih;->aru:Lcom/kingroot/kinguser/aih;

    .line 40
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/aih;->aru:Lcom/kingroot/kinguser/aih;

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private xK()V
    .locals 4

    .prologue
    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18819

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->aJ(J)V

    .line 107
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->DC()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/akb;->Ad()Lcom/kingroot/kinguser/akb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/akb;->Ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ady;->tQ()V

    .line 110
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bK(Z)V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public aK(Z)V
    .locals 2

    .prologue
    .line 94
    if-nez p1, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Ca()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aih;->arw:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 97
    :cond_1
    return-void
.end method

.method public xJ()V
    .locals 6

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->BZ()J

    move-result-wide v0

    .line 54
    invoke-static {}, Lcom/kingroot/kinguser/aiz;->yM()J

    move-result-wide v4

    .line 55
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/aih;->arv:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method
