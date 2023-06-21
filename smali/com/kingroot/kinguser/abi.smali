.class public final Lcom/kingroot/kinguser/abi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile YZ:Lcom/kingroot/kinguser/abm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/abi;->YZ:Lcom/kingroot/kinguser/abm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 6

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 77
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/kingroot/kinguser/abc;->isRootPermition()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/abc;->a(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :try_start_1
    invoke-static {}, Lcom/kingroot/kinguser/abi;->closeShell()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_0
    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/kingroot/common/utils/system/VTCmdResult;

    iget-object v1, p0, Lcom/kingroot/common/utils/system/VTCommand;->mCmdFlag:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ""

    const-string v4, "Run Root Cmd Exception"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/common/utils/system/VTCmdResult;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-object v0

    .line 82
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/kingroot/kinguser/abi;->qQ()Lcom/kingroot/kinguser/abm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kingroot/kinguser/abm;->b(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 86
    :goto_1
    invoke-static {v0}, Lcom/kingroot/kinguser/abi;->c(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method private static c(Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 43
    if-eqz p0, :cond_1

    .line 44
    instance-of v0, p0, Ljava/io/IOException;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-eqz v0, :cond_1

    .line 45
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/abi;->closeShell()V

    .line 48
    :cond_1
    return-void
.end method

.method private static closeShell()V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/kingroot/kinguser/abi;->YZ:Lcom/kingroot/kinguser/abm;

    if-eqz v0, :cond_1

    .line 33
    const-class v1, Lcom/kingroot/kinguser/abi;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/abi;->YZ:Lcom/kingroot/kinguser/abm;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/kingroot/kinguser/abi;->YZ:Lcom/kingroot/kinguser/abm;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/abm;->shutdown()V

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/abi;->YZ:Lcom/kingroot/kinguser/abm;

    .line 38
    :cond_0
    monitor-exit v1

    .line 40
    :cond_1
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/kingroot/kinguser/abi;->v(Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    return-object v0
.end method

.method private static qQ()Lcom/kingroot/kinguser/abm;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/kingroot/kinguser/abi;->YZ:Lcom/kingroot/kinguser/abm;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/kingroot/kinguser/abi;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/abi;->YZ:Lcom/kingroot/kinguser/abm;

    if-nez v0, :cond_0

    .line 24
    const-string v0, "sh"

    invoke-static {v0}, Lcom/kingroot/kinguser/abj;->eq(Ljava/lang/String;)Lcom/kingroot/kinguser/abm;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/abi;->YZ:Lcom/kingroot/kinguser/abm;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    sget-object v0, Lcom/kingroot/kinguser/abi;->YZ:Lcom/kingroot/kinguser/abm;

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

.method public static v(Ljava/lang/String;Z)Lcom/kingroot/common/utils/system/VTCmdResult;
    .locals 3

    .prologue
    .line 65
    if-eqz p1, :cond_0

    const-wide/32 v0, 0x1d4c0

    .line 66
    :goto_0
    new-instance v2, Lcom/kingroot/common/utils/system/VTCommand;

    invoke-direct {v2, p0, p0, v0, v1}, Lcom/kingroot/common/utils/system/VTCommand;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v2}, Lcom/kingroot/kinguser/abi;->b(Lcom/kingroot/common/utils/system/VTCommand;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
