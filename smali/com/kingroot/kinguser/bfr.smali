.class public Lcom/kingroot/kinguser/bfr;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static volatile bnq:Lcom/kingroot/kinguser/bfr;


# instance fields
.field private amT:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private aoL:Lcom/kingroot/kinguser/bed;

.field private bnr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 42
    const v0, 0x9e80

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfr;->bnr:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfr;->mLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfr;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->bln:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v3, Lcom/kingroot/kinguser/bfr$1;

    invoke-direct {v3, p0}, Lcom/kingroot/kinguser/bfr$1;-><init>(Lcom/kingroot/kinguser/bfr;)V

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/bfr;->aoL:Lcom/kingroot/kinguser/bed;

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bfr;->dO(Z)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bfr;Lcom/kingroot/kinguser/bq;)Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bfr;->b(Lcom/kingroot/kinguser/bq;)Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/bfr;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bfr;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static aaH()Lcom/kingroot/kinguser/bfr;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/kingroot/kinguser/bfr;->bnq:Lcom/kingroot/kinguser/bfr;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/kingroot/kinguser/bfr;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bfr;->bnq:Lcom/kingroot/kinguser/bfr;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/kingroot/kinguser/bfr;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bfr;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bfr;->bnq:Lcom/kingroot/kinguser/bfr;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bfr;->bnq:Lcom/kingroot/kinguser/bfr;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private b(Lcom/kingroot/kinguser/bq;)Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    :try_start_0
    iget-object v2, p1, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 116
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 120
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v4

    iget-object v5, p1, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/kingroot/kinguser/zh;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 128
    :goto_0
    :try_start_2
    const-string v4, "1"

    iget-object v5, p1, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v0

    .line 129
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/kingroot/kinguser/urlcheck/aidl/UrlCheckRule;-><init>(ILjava/lang/String;IZ)V

    .line 135
    :goto_1
    return-object v0

    .line 125
    :cond_1
    iget-object v2, p1, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 135
    const/4 v0, 0x0

    goto :goto_1

    .line 121
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method static synthetic b(Lcom/kingroot/kinguser/bfr;)Ljava/util/List;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bfr;->bnr:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/kingroot/kinguser/bfr;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/bfr;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public dO(Z)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kingroot/kinguser/bfr;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/bfr;->aoL:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    goto :goto_0
.end method

.method protected uy()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/kingroot/kinguser/bfr;->amT:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/bfr;->dO(Z)V

    .line 65
    return-void
.end method
