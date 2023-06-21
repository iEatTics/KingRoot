.class public Lcom/kingroot/kinguser/ajg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final atC:Ljava/lang/Object;

.field private static atD:Lcom/kingroot/kinguser/bed;

.field private static atE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/ajg;->atC:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/kingroot/kinguser/bed;

    sget-object v1, Lcom/kingroot/kinguser/bem;->blk:Lcom/kingroot/kinguser/bem;

    sget-object v2, Lcom/kingroot/kinguser/bec;->bkq:Lcom/kingroot/kinguser/bec;

    const/4 v3, 0x1

    new-instance v4, Lcom/kingroot/kinguser/ajg$1;

    invoke-direct {v4}, Lcom/kingroot/kinguser/ajg$1;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bed;-><init>(Lcom/kingroot/kinguser/bem;Lcom/kingroot/kinguser/bec;ZLcom/kingroot/kinguser/bek;)V

    sput-object v0, Lcom/kingroot/kinguser/ajg;->atD:Lcom/kingroot/kinguser/bed;

    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/ajg;->atE:Ljava/lang/String;

    return-void
.end method

.method public static gm(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    sget-object v1, Lcom/kingroot/kinguser/ajg;->atC:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    sput-object p0, Lcom/kingroot/kinguser/ajg;->atE:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/aks;->gm(Ljava/lang/String;)V

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic jJ()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/ajg;->zg()V

    return-void
.end method

.method private static zg()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/kingroot/kinguser/ajg$2;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ajg$2;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/zk;->a(Lcom/kingroot/kinguser/zk$a;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public static zh()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    sget-object v1, Lcom/kingroot/kinguser/ajg;->atD:Lcom/kingroot/kinguser/bed;

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 134
    return-void
.end method

.method public static zi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    sget-object v1, Lcom/kingroot/kinguser/ajg;->atC:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/ajg;->atE:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 141
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->zi()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/ajg;->atE:Ljava/lang/String;

    .line 144
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/ajg;->atE:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
