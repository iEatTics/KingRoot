.class public Lcom/kingroot/kinguser/bhv;
.super Lcom/kingroot/kinguser/bhs;
.source "SourceFile"


# static fields
.field private static volatile brR:Lcom/kingroot/kinguser/bhv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bhv;->brR:Lcom/kingroot/kinguser/bhv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/bhs;-><init>()V

    .line 22
    return-void
.end method

.method public static acN()Lcom/kingroot/kinguser/bhv;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/kingroot/kinguser/bhv;->brR:Lcom/kingroot/kinguser/bhv;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/kingroot/kinguser/bhv;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bhv;->brR:Lcom/kingroot/kinguser/bhv;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/kingroot/kinguser/bhv;

    invoke-direct {v0}, Lcom/kingroot/kinguser/bhv;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/bhv;->brR:Lcom/kingroot/kinguser/bhv;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bhv;->brR:Lcom/kingroot/kinguser/bhv;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static acO()Z
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->CF()Z

    move-result v0

    return v0
.end method

.method public static acP()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected acF()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 38
    invoke-virtual {p0}, Lcom/kingroot/kinguser/bhv;->clearAll()V

    .line 39
    new-instance v0, Lcom/kingroot/kinguser/bhs$b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bhs$b;-><init>(I)V

    invoke-virtual {p0, v3, v0}, Lcom/kingroot/kinguser/bhv;->a(ILcom/kingroot/kinguser/bhs$a;)V

    .line 42
    new-instance v0, Lcom/kingroot/kinguser/bhs$b;

    invoke-direct {v0, v2}, Lcom/kingroot/kinguser/bhs$b;-><init>(I)V

    invoke-virtual {p0, v3, v0}, Lcom/kingroot/kinguser/bhv;->a(ILcom/kingroot/kinguser/bhs$a;)V

    .line 46
    new-instance v0, Lcom/kingroot/kinguser/bhs$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bhs$a;-><init>(I)V

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/bhv;->acP()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bhs$a;->ed(Z)Lcom/kingroot/kinguser/bhs$a;

    .line 48
    invoke-virtual {p0, v2, v0}, Lcom/kingroot/kinguser/bhv;->a(ILcom/kingroot/kinguser/bhs$a;)V

    .line 51
    new-instance v0, Lcom/kingroot/kinguser/bhs$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bhs$a;-><init>(I)V

    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/bhv;->acO()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bhs$a;->ed(Z)Lcom/kingroot/kinguser/bhs$a;

    .line 53
    invoke-virtual {p0, v2, v0}, Lcom/kingroot/kinguser/bhv;->a(ILcom/kingroot/kinguser/bhs$a;)V

    .line 55
    return-void
.end method

.method protected acG()Lcom/kingroot/kinguser/bhs$b;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lcom/kingroot/kinguser/bhs$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kingroot/kinguser/bhs$b;-><init>(I)V

    return-object v0
.end method
