.class public Lcom/kingroot/kinguser/avs;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static volatile aUe:Lcom/kingroot/kinguser/avs;


# instance fields
.field private aNa:Lcom/kingroot/kinguser/br;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const v0, 0x9db4

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/avs;->mLock:Ljava/lang/Object;

    .line 60
    return-void
.end method

.method private Og()Lcom/kingroot/kinguser/br;
    .locals 2

    .prologue
    .line 158
    iget-object v1, p0, Lcom/kingroot/kinguser/avs;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avs;->aNa:Lcom/kingroot/kinguser/br;

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avs;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/avs;->aNa:Lcom/kingroot/kinguser/br;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/avs;->aNa:Lcom/kingroot/kinguser/br;

    monitor-exit v1

    return-object v0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static RY()Lcom/kingroot/kinguser/avs;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/kingroot/kinguser/avs;->aUe:Lcom/kingroot/kinguser/avs;

    if-nez v0, :cond_1

    .line 67
    const-class v1, Lcom/kingroot/kinguser/avs;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/avs;->aUe:Lcom/kingroot/kinguser/avs;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/kingroot/kinguser/avs;

    invoke-direct {v0}, Lcom/kingroot/kinguser/avs;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/avs;->aUe:Lcom/kingroot/kinguser/avs;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/avs;->aUe:Lcom/kingroot/kinguser/avs;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private V(II)Z
    .locals 1

    .prologue
    .line 83
    and-int v0, p1, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private W(II)Ljava/util/List;
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
    .line 93
    invoke-direct {p0}, Lcom/kingroot/kinguser/avs;->Og()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 96
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

    .line 97
    iget-object v3, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    .line 98
    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v4}, Lcom/kingroot/kinguser/aab;->dK(Ljava/lang/String;)I

    move-result v4

    .line 99
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kO:Ljava/lang/String;

    invoke-static {v0}, Lcom/kingroot/kinguser/aab;->dK(Ljava/lang/String;)I

    move-result v0

    .line 101
    if-eqz v3, :cond_0

    if-ne v4, p1, :cond_0

    invoke-direct {p0, v0, p2}, Lcom/kingroot/kinguser/avs;->V(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_1
    return-object v1
.end method


# virtual methods
.method public ha(I)Ljava/util/List;
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
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/avs;->W(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hb(I)Ljava/util/List;
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
    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/avs;->W(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hc(I)Ljava/util/List;
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
    .line 133
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/avs;->W(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hd(I)Ljava/util/List;
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
    .line 142
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/avs;->W(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public he(I)Ljava/util/List;
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
    .line 151
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/avs;->W(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected uy()V
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/kingroot/kinguser/avs;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/avs;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/avs;->aNa:Lcom/kingroot/kinguser/br;

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
