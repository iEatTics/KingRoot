.class public Lcom/kingroot/kinguser/cao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cam;


# static fields
.field private static volatile bWy:Lcom/kingroot/kinguser/cao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/cao;->bWy:Lcom/kingroot/kinguser/cao;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method static akq()Lcom/kingroot/kinguser/cao;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/kingroot/kinguser/cao;->bWy:Lcom/kingroot/kinguser/cao;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/kingroot/kinguser/cao;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/cao;->bWy:Lcom/kingroot/kinguser/cao;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/kingroot/kinguser/cao;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cao;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cao;->bWy:Lcom/kingroot/kinguser/cao;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/cao;->bWy:Lcom/kingroot/kinguser/cao;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a([B)[B
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 37
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/ccc;->b([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 38
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public al(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/kingroot/kinguser/ccc;->b([B)[B

    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/kingroot/kinguser/gy;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 71
    const/4 v1, 0x0

    .line 74
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/gy;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/ccc;->c([B)[B

    move-result-object v2

    .line 75
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public b([B)[B
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 62
    :try_start_0
    invoke-static {p1}, Lcom/kingroot/kinguser/ccc;->c([B)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0
.end method
