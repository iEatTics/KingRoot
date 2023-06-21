.class public final Lcom/kingroot/kinguser/bxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bTB:Lcom/kingroot/kinguser/bxz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bxy;->bTB:Lcom/kingroot/kinguser/bxz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static L(Ljava/lang/String;Z)Lcom/kingroot/kinguser/bxz$b;
    .locals 3

    .prologue
    .line 96
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1388

    .line 97
    :goto_0
    new-instance v2, Lcom/kingroot/kinguser/bxz$c;

    invoke-direct {v2, p0, p0, v0, v1}, Lcom/kingroot/kinguser/bxz$c;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/kingroot/kinguser/bxy;->a(Lcom/kingroot/kinguser/bxz$c;)Lcom/kingroot/kinguser/bxz$b;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/kingroot/kinguser/bxz$c;)Lcom/kingroot/kinguser/bxz$b;
    .locals 5

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 108
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/bxy;->ajM()Lcom/kingroot/kinguser/bxz;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/bxz;->a(Lcom/kingroot/kinguser/bxz$c;)Lcom/kingroot/kinguser/bxz$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_0
    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/kingroot/kinguser/bxz$b;

    iget-object v1, p0, Lcom/kingroot/kinguser/bxz$c;->mCmdFlag:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    const-string v4, "e"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bxz$b;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-static {v0}, Lcom/kingroot/kinguser/bxy;->c(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static ajM()Lcom/kingroot/kinguser/bxz;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/kingroot/kinguser/bxy;->bTB:Lcom/kingroot/kinguser/bxz;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lcom/kingroot/kinguser/bxy;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bxy;->bTB:Lcom/kingroot/kinguser/bxz;

    if-nez v0, :cond_0

    .line 31
    const-string v0, "sh"

    invoke-static {v0}, Lcom/kingroot/kinguser/bxy;->ny(Ljava/lang/String;)Lcom/kingroot/kinguser/bxz;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bxy;->bTB:Lcom/kingroot/kinguser/bxz;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/bxy;->bTB:Lcom/kingroot/kinguser/bxz;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static c(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 73
    if-eqz p0, :cond_1

    .line 74
    instance-of v0, p0, Ljava/io/IOException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bxy;->closeShell()V

    .line 78
    :cond_1
    return-void
.end method

.method public static closeShell()V
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lcom/kingroot/kinguser/bxy;->bTB:Lcom/kingroot/kinguser/bxz;

    if-eqz v0, :cond_1

    .line 63
    const-class v1, Lcom/kingroot/kinguser/bxy;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/bxy;->bTB:Lcom/kingroot/kinguser/bxz;

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/kingroot/kinguser/bxy;->bTB:Lcom/kingroot/kinguser/bxz;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bxz;->shutdown()V

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/bxy;->bTB:Lcom/kingroot/kinguser/bxz;

    .line 68
    :cond_0
    monitor-exit v1

    .line 70
    :cond_1
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static ny(Ljava/lang/String;)Lcom/kingroot/kinguser/bxz;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 44
    .line 46
    :try_start_0
    new-instance v0, Lcom/kingroot/kinguser/bxz;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/bxz;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 49
    const-string v2, "export LD_LIBRARY_PATH=/vendor/lib:/system/lib"

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bxz;->nz(Ljava/lang/String;)Lcom/kingroot/kinguser/bxz$b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    :cond_0
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 53
    :goto_1
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bxz;->shutdown()V

    move-object v0, v1

    .line 55
    goto :goto_0

    .line 52
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static nz(Ljava/lang/String;)Lcom/kingroot/kinguser/bxz$b;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/bxy;->L(Ljava/lang/String;Z)Lcom/kingroot/kinguser/bxz$b;

    move-result-object v0

    return-object v0
.end method
