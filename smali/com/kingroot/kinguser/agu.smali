.class public Lcom/kingroot/kinguser/agu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static amZ:Lcom/kingroot/kinguser/util/protect/RebootStat;

.field private static sInstance:Lcom/kingroot/kinguser/cce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingroot/kinguser/cce",
            "<",
            "Lcom/kingroot/kinguser/agu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "si"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bho;->S(Ljava/lang/String;I)Lcom/kingroot/kinguser/util/protect/RebootStat;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/agu;->amZ:Lcom/kingroot/kinguser/util/protect/RebootStat;

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/agu$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/agu$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/agu;->sInstance:Lcom/kingroot/kinguser/cce;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/agu$1;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/agu;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/agu;)I
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/kingroot/kinguser/agu;->wf()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/kingroot/kinguser/util/protect/RebootStat;)Lcom/kingroot/kinguser/util/protect/RebootStat;
    .locals 0

    .prologue
    .line 30
    sput-object p0, Lcom/kingroot/kinguser/agu;->amZ:Lcom/kingroot/kinguser/util/protect/RebootStat;

    return-object p0
.end method

.method public static we()Lcom/kingroot/kinguser/agu;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/kingroot/kinguser/agu;->sInstance:Lcom/kingroot/kinguser/cce;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cce;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/agu;

    return-object v0
.end method

.method private declared-synchronized wf()I
    .locals 13
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v0, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 54
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->Fc()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    move v10, v0

    .line 125
    :cond_0
    :goto_0
    monitor-exit p0

    return v10

    .line 60
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-nez v1, :cond_2

    move v10, v11

    .line 62
    goto :goto_0

    .line 66
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/agr;->vW()Lcom/kingroot/kinguser/agr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/agr;->vX()Z

    move-result v1

    if-nez v1, :cond_4

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/agr;->vW()Lcom/kingroot/kinguser/agr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/kingroot/kinguser/agu;->wg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/agr;->F(ILjava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agu;->wc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lcom/kingroot/kinguser/agr;->vW()Lcom/kingroot/kinguser/agr;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agr;->fz(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v10

    :goto_1
    move v10, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    .line 83
    :cond_4
    sget-object v1, Lcom/kingroot/kinguser/agu;->amZ:Lcom/kingroot/kinguser/util/protect/RebootStat;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/bho;->a(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V

    .line 89
    sget-object v1, Lcom/kingroot/kinguser/agu;->amZ:Lcom/kingroot/kinguser/util/protect/RebootStat;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/kingroot/kinguser/agu;->amZ:Lcom/kingroot/kinguser/util/protect/RebootStat;

    iget v1, v1, Lcom/kingroot/kinguser/util/protect/RebootStat;->androidRebootPeekCount:I

    if-lt v1, v11, :cond_5

    move v10, v0

    .line 91
    goto :goto_0

    .line 93
    :cond_5
    sget-object v0, Lcom/kingroot/kinguser/agu;->amZ:Lcom/kingroot/kinguser/util/protect/RebootStat;

    const/4 v1, 0x2

    const-string v2, "begin"

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bho;->b(Lcom/kingroot/kinguser/util/protect/RebootStat;ILjava/lang/String;)V

    .line 95
    new-instance v0, Lcom/kingroot/kinguser/um;

    const-string v1, "system_server"

    const-string v2, "hk"

    const-string v3, "m.M"

    const-string v4, "m"

    .line 96
    invoke-direct {p0}, Lcom/kingroot/kinguser/agu;->wg()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/kingroot/kinguser/agk;->amQ:Ljava/lang/String;

    const-string v7, "com.kingroot.hook"

    const-string v8, "kinguser_9"

    sget-object v9, Lcom/kingroot/kinguser/agk;->amR:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/kingroot/kinguser/um;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-static {v0}, Lcom/kingroot/kinguser/un;->a(Lcom/kingroot/kinguser/um;)Lcom/kingroot/kinguser/ho;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    move-object v1, v0

    .line 106
    :goto_2
    if-eqz v1, :cond_7

    :try_start_3
    invoke-interface {v1}, Lcom/kingroot/kinguser/ho;->be()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    .line 107
    :goto_3
    if-eqz v1, :cond_6

    .line 115
    :cond_6
    const-wide/16 v2, 0x3a98

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    :goto_4
    if-nez v0, :cond_8

    :try_start_5
    invoke-virtual {p0}, Lcom/kingroot/kinguser/agu;->wc()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 121
    sget-object v0, Lcom/kingroot/kinguser/agu;->amZ:Lcom/kingroot/kinguser/util/protect/RebootStat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bho;->d(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 102
    :catch_0
    move-exception v0

    move-object v1, v12

    goto :goto_2

    .line 106
    :cond_7
    const/4 v0, -0x1

    goto :goto_3

    .line 124
    :cond_8
    :try_start_6
    sget-object v0, Lcom/kingroot/kinguser/agu;->amZ:Lcom/kingroot/kinguser/util/protect/RebootStat;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bho;->c(Lcom/kingroot/kinguser/util/protect/RebootStat;Lcom/kingroot/kinguser/bhn;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v10, v11

    .line 125
    goto/16 :goto_0

    .line 116
    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method private wg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/kingroot/kinguser/agm;->vR()Lcom/kingroot/kinguser/agm;

    move-result-object v0

    .line 168
    const-string v1, "kinguser_9"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agm;->J(Ljava/lang/String;)V

    .line 169
    sget-object v1, Lcom/kingroot/kinguser/agk;->PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agm;->ft(Ljava/lang/String;)V

    .line 170
    const-string v1, "com.kinguser.kingroot.ACTION_INSTALL"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agm;->fs(Ljava/lang/String;)V

    .line 171
    const-string v1, "6B696E676D61737465725F776F64"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agm;->fu(Ljava/lang/String;)V

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agm;->aE(Z)V

    .line 173
    const-string v1, "191240FCB048127DB9110D1B30537FDE"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agm;->fx(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Lcom/kingroot/kinguser/agm;->vT()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic wh()Lcom/kingroot/kinguser/util/protect/RebootStat;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/kingroot/kinguser/agu;->amZ:Lcom/kingroot/kinguser/util/protect/RebootStat;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/advance/install/IInjectCallback;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bed;

    sget-object v2, Lcom/kingroot/kinguser/bem;->blm:Lcom/kingroot/kinguser/bem;

    sget-object v3, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    new-instance v4, Lcom/kingroot/kinguser/agu$2;

    invoke-direct {v4, p0}, Lcom/kingroot/kinguser/agu$2;-><init>(Lcom/kingroot/kinguser/agu;)V

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    .line 154
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/beg;->a(Lcom/kingroot/kinguser/bed;[Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method public wc()Z
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/agr;->vW()Lcom/kingroot/kinguser/agr;

    move-result-object v0

    const-string v1, "package"

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/agr;->fA(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
