.class public Lcom/kingroot/kinguser/asm;
.super Lcom/kingroot/kinguser/avj;
.source "SourceFile"


# static fields
.field private static volatile aMZ:Lcom/kingroot/kinguser/asm;


# instance fields
.field private aNa:Lcom/kingroot/kinguser/br;

.field private aNb:Lcom/kingroot/kinguser/br;

.field private mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x9d79

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/avj;-><init>(I)V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/asm;->mLock:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public static Od()Lcom/kingroot/kinguser/asm;
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/kingroot/kinguser/asm;->aMZ:Lcom/kingroot/kinguser/asm;

    if-nez v0, :cond_1

    .line 59
    const-class v1, Lcom/kingroot/kinguser/avs;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/asm;->aMZ:Lcom/kingroot/kinguser/asm;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/kingroot/kinguser/asm;

    invoke-direct {v0}, Lcom/kingroot/kinguser/asm;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/asm;->aMZ:Lcom/kingroot/kinguser/asm;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/asm;->aMZ:Lcom/kingroot/kinguser/asm;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private Og()Lcom/kingroot/kinguser/br;
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lcom/kingroot/kinguser/asm;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asm;->aNa:Lcom/kingroot/kinguser/br;

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/kingroot/kinguser/asm;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/asm;->aNa:Lcom/kingroot/kinguser/br;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/asm;->aNa:Lcom/kingroot/kinguser/br;

    monitor-exit v1

    return-object v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/asm;Z)Lcom/kingroot/kinguser/br;
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/asm;->cI(Z)Lcom/kingroot/kinguser/br;

    move-result-object v0

    return-object v0
.end method

.method private cI(Z)Lcom/kingroot/kinguser/br;
    .locals 7

    .prologue
    .line 138
    iget-object v0, p0, Lcom/kingroot/kinguser/asm;->aNb:Lcom/kingroot/kinguser/br;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/kingroot/kinguser/asm;->aNb:Lcom/kingroot/kinguser/br;

    .line 168
    :goto_0
    return-object v0

    .line 143
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v0

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 145
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zh;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 147
    new-instance v1, Lcom/kingroot/kinguser/br;

    invoke-direct {v1}, Lcom/kingroot/kinguser/br;-><init>()V

    iput-object v1, p0, Lcom/kingroot/kinguser/asm;->aNb:Lcom/kingroot/kinguser/br;

    .line 148
    invoke-direct {p0}, Lcom/kingroot/kinguser/asm;->Og()Lcom/kingroot/kinguser/br;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_6

    iget-object v1, v2, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, v2, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 150
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/asm;->aNb:Lcom/kingroot/kinguser/br;

    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/kingroot/kinguser/asm;->aNb:Lcom/kingroot/kinguser/br;

    iget-object v1, v1, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/kingroot/kinguser/asm;->aNb:Lcom/kingroot/kinguser/br;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    .line 157
    :cond_3
    iget-object v1, p0, Lcom/kingroot/kinguser/asm;->aNb:Lcom/kingroot/kinguser/br;

    iget-object v1, v1, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 159
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 160
    iget-object v1, v2, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/bq;

    .line 161
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 162
    iget-object v5, p0, Lcom/kingroot/kinguser/asm;->aNb:Lcom/kingroot/kinguser/br;

    iget-object v5, v5, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    :cond_6
    iget-object v0, p0, Lcom/kingroot/kinguser/asm;->aNb:Lcom/kingroot/kinguser/br;

    goto :goto_0
.end method


# virtual methods
.method public Oe()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asm;->cI(Z)Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 95
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

    .line 96
    iget-object v3, v0, Lcom/kingroot/kinguser/bq;->kM:Ljava/lang/String;

    .line 99
    :try_start_0
    iget-object v0, v0, Lcom/kingroot/kinguser/bq;->kN:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 104
    :goto_1
    if-nez v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    const/4 v0, -0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 110
    :goto_2
    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method public Of()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/asm;->cI(Z)Lcom/kingroot/kinguser/br;

    .line 118
    return-void
.end method

.method protected uy()V
    .locals 7

    .prologue
    .line 71
    iget-object v1, p0, Lcom/kingroot/kinguser/asm;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/kingroot/kinguser/asm;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/asm;->aNa:Lcom/kingroot/kinguser/br;

    .line 73
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v2, Lcom/kingroot/kinguser/bed;

    sget-object v3, Lcom/kingroot/kinguser/bem;->bll:Lcom/kingroot/kinguser/bem;

    sget-object v4, Lcom/kingroot/kinguser/bec;->bkr:Lcom/kingroot/kinguser/bec;

    const/4 v5, 0x0

    new-instance v6, Lcom/kingroot/kinguser/asm$1;

    invoke-direct {v6, p0}, Lcom/kingroot/kinguser/asm$1;-><init>(Lcom/kingroot/kinguser/asm;)V

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
