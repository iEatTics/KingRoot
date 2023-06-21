.class public Lcom/kingroot/kinguser/avt;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/avt;",
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
    .line 19
    const-string v0, "ku_cloud_list_CleanProcessCloudListManager"

    sput-object v0, Lcom/kingroot/kinguser/avt;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/kingroot/kinguser/avt$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avt$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/avt;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x9dc2

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avt;->mLock:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/avt$1;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/avt;-><init>()V

    return-void
.end method

.method private Og()Lcom/kingroot/kinguser/br;
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/kingroot/kinguser/avt;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avt;->aNa:Lcom/kingroot/kinguser/br;

    if-nez v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avt;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/avt;->aNa:Lcom/kingroot/kinguser/br;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avt;->aNa:Lcom/kingroot/kinguser/br;

    monitor-exit v1

    return-object v0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static RZ()Lcom/kingroot/kinguser/avt;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/kingroot/kinguser/avt;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/avt;

    return-object v0
.end method

.method private V(II)Z
    .locals 1

    .prologue
    .line 108
    and-int v0, p1, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private X(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/kingroot/kinguser/avt;->Og()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 121
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 122
    iget-object v3, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    .line 123
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/aab;->dK(Ljava/lang/String;)I

    move-result v4

    .line 124
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dK(Ljava/lang/String;)I

    move-result v0

    .line 126
    if-eqz v3, :cond_0

    if-ne v4, p1, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/kingroot/kinguser/avt;->V(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :cond_1
    return-object v1
.end method


# virtual methods
.method public hf(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/avt;->X(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hg(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/avt;->X(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hh(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/avt;->X(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected uy()V
    .locals 2

    .prologue
    .line 64
    iget-object v1, p0, Lcom/kingroot/kinguser/avt;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avt;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/avt;->aNa:Lcom/kingroot/kinguser/br;

    .line 66
    monitor-exit v1

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
