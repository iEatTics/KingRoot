.class public final Lcom/kingroot/kinguser/iv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile sA:Lcom/kingroot/kinguser/ix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/iv;->sA:Lcom/kingroot/kinguser/ix;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aD(Ljava/lang/String;)Lcom/kingroot/kinguser/ix$b;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/iv;->d(Ljava/lang/String;Z)Lcom/kingroot/kinguser/ix$b;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/kingroot/kinguser/ix$c;)Lcom/kingroot/kinguser/ix$b;
    .locals 6

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/iu;->cg()Lcom/kingroot/kinguser/iu;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/kingroot/kinguser/iu;->cf()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/iu;->a(Lcom/kingroot/kinguser/ix$c;)Lcom/kingroot/kinguser/ix$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 82
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/iv;->cj()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    :goto_0
    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lcom/kingroot/kinguser/ix$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/ix$c;->mCmdFlag:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    const-string v4, "Run Root Cmd Exception"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/ix$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-object v0

    .line 84
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/iv;->cm()Lcom/kingroot/kinguser/ix;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/ix;->b(Lcom/kingroot/kinguser/ix$c;)Lcom/kingroot/kinguser/ix$b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/iv;->b(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    .line 86
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method private static b(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 44
    if-eqz p0, :cond_1

    .line 45
    instance-of v0, p0, Ljava/io/IOException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/iv;->cj()V

    .line 49
    :cond_1
    return-void
.end method

.method private static cj()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/kingroot/kinguser/iv;->sA:Lcom/kingroot/kinguser/ix;

    if-eqz v0, :cond_1

    .line 34
    const-class v1, Lcom/kingroot/kinguser/iv;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/iv;->sA:Lcom/kingroot/kinguser/ix;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/kingroot/kinguser/iv;->sA:Lcom/kingroot/kinguser/ix;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ix;->shutdown()V

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/iv;->sA:Lcom/kingroot/kinguser/ix;

    .line 39
    :cond_0
    monitor-exit v1

    .line 41
    :cond_1
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static cm()Lcom/kingroot/kinguser/ix;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/kingroot/kinguser/iv;->sA:Lcom/kingroot/kinguser/ix;

    if-nez v0, :cond_1

    .line 23
    const-class v1, Lcom/kingroot/kinguser/iv;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/iv;->sA:Lcom/kingroot/kinguser/ix;

    if-nez v0, :cond_0

    .line 25
    const-string v0, "sh"

    invoke-static {v0}, Lcom/kingroot/kinguser/iw;->aF(Ljava/lang/String;)Lcom/kingroot/kinguser/ix;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/iv;->sA:Lcom/kingroot/kinguser/ix;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/iv;->sA:Lcom/kingroot/kinguser/ix;

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

.method public static d(Ljava/lang/String;Z)Lcom/kingroot/kinguser/ix$b;
    .locals 3

    .prologue
    .line 67
    if-eqz p1, :cond_0

    const-wide/32 v0, 0x1d4c0

    .line 68
    :goto_0
    new-instance v2, Lcom/kingroot/kinguser/ix$c;

    invoke-direct {v2, p0, p0, v0, v1}, Lcom/kingroot/kinguser/ix$c;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/kingroot/kinguser/iv;->b(Lcom/kingroot/kinguser/ix$c;)Lcom/kingroot/kinguser/ix$b;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
