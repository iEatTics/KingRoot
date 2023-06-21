.class public Lcom/kingroot/kinguser/awa;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/awa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aNa:Lcom/kingroot/kinguser/br;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/kingroot/kinguser/awa$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/awa$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/awa;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x9dae

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/awa;->mLock:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/awa$1;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kingroot/kinguser/awa;-><init>()V

    return-void
.end method

.method public static Sw()Lcom/kingroot/kinguser/awa;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kingroot/kinguser/awa;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/awa;

    return-object v0
.end method

.method private dk(Z)Lcom/kingroot/kinguser/br;
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/kingroot/kinguser/awa;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/awa;->aNa:Lcom/kingroot/kinguser/br;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awa;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/awa;->aNa:Lcom/kingroot/kinguser/br;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/awa;->aNa:Lcom/kingroot/kinguser/br;

    monitor-exit v1

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dj(Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/awa;->dk(Z)Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 48
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 49
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->c(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 51
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    .line 56
    iget-object v5, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    .line 59
    :try_start_0
    iget-object v1, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 63
    :goto_1
    iget-object v6, v0, Lcom/kingroot/kinguser/bq;->kP:Ljava/lang/String;

    .line 64
    iget-object v7, v0, Lcom/kingroot/kinguser/bq;->kQ:Ljava/lang/String;

    .line 68
    :try_start_1
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kR:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 73
    :goto_2
    new-instance v8, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;

    invoke-direct {v8, v4, v6}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v8, v1}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->setType(I)V

    .line 75
    invoke-virtual {v8, v5}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->kL(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v8, v7}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->kM(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v8, v0}, Lcom/kingroot/kinguser/security/entity/MaliciousFileInfo;->ii(I)V

    .line 78
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    const/4 v1, 0x4

    goto :goto_1

    .line 69
    :catch_1
    move-exception v0

    .line 70
    const/4 v0, 0x1

    goto :goto_2

    .line 82
    :cond_1
    return-object v2
.end method

.method protected uy()V
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/kingroot/kinguser/awa;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/awa;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/awa;->aNa:Lcom/kingroot/kinguser/br;

    .line 102
    monitor-exit v1

    .line 103
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
