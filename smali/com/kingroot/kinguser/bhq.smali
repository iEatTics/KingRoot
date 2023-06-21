.class public Lcom/kingroot/kinguser/bhq;
.super Lcom/kingroot/kinguser/bhs;
.source "SourceFile"


# static fields
.field private static volatile bqU:Lcom/kingroot/kinguser/bhq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bhq;->bqU:Lcom/kingroot/kinguser/bhq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/bhs;-><init>()V

    .line 19
    return-void
.end method

.method public static acE()Lcom/kingroot/kinguser/bhq;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/kingroot/kinguser/bhq;->bqU:Lcom/kingroot/kinguser/bhq;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/kingroot/kinguser/bhq;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bhq;->bqU:Lcom/kingroot/kinguser/bhq;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/kingroot/kinguser/bhq;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bhq;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bhq;->bqU:Lcom/kingroot/kinguser/bhq;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bhq;->bqU:Lcom/kingroot/kinguser/bhq;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public acF()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bhq;->clearAll()V

    .line 38
    new-instance v2, Lcom/kingroot/kinguser/bhs$a;

    invoke-direct {v2, v0}, Lcom/kingroot/kinguser/bhs$a;-><init>(I)V

    .line 40
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->DM()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/aks;->DE()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 39
    :cond_1
    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/bhs$a;->ed(Z)Lcom/kingroot/kinguser/bhs$a;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v1, v0}, Lcom/kingroot/kinguser/bhq;->a(ILcom/kingroot/kinguser/bhs$a;)V

    .line 41
    return-void
.end method

.method protected acG()Lcom/kingroot/kinguser/bhs$b;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/kingroot/kinguser/bhs$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bhs$b;-><init>(I)V

    return-object v0
.end method
