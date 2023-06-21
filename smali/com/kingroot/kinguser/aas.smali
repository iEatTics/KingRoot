.class public Lcom/kingroot/kinguser/aas;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static XO:Ljava/lang/Boolean;

.field private static final XP:Ljava/lang/Object;

.field public static final XQ:Ljava/lang/String;

.field public static final XR:Ljava/lang/String;

.field public static final XS:Ljava/lang/String;

.field public static final XT:Ljava/lang/String;

.field public static final XU:Ljava/lang/String;

.field public static final XV:Ljava/lang/String;

.field public static final XW:Ljava/lang/String;

.field public static final XX:Ljava/lang/String;

.field public static final XY:Ljava/lang/String;

.field public static final XZ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/kingroot/kinguser/aas;->XO:Ljava/lang/Boolean;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/aas;->XP:Ljava/lang/Object;

    .line 19
    invoke-static {}, Lcom/kingroot/kinguser/aas;->pS()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aas;->XQ:Ljava/lang/String;

    .line 22
    invoke-static {}, Lcom/kingroot/kinguser/aas;->pT()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aas;->XR:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/kingroot/kinguser/aas;->pU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aas;->XS:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/aas;->pV()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aas;->XT:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/kingroot/kinguser/aas;->pW()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aas;->XU:Ljava/lang/String;

    .line 37
    const-string v0, "c7"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aas;->XV:Ljava/lang/String;

    .line 42
    const-string v0, "c8"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aas;->XW:Ljava/lang/String;

    .line 46
    const-string v0, "c4"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aas;->XX:Ljava/lang/String;

    .line 66
    const-string v0, "c6"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aas;->XY:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/aba;->qF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bkc %1$d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aas;->XZ:Ljava/lang/String;

    return-void
.end method

.method private static pR()Z
    .locals 3

    .prologue
    .line 95
    sget-object v1, Lcom/kingroot/kinguser/aas;->XP:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :try_start_0
    sget-object v0, Lcom/kingroot/kinguser/aas;->XO:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/aba;->qF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mount"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/kingroot/kinguser/abi;->em(Ljava/lang/String;)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/common/utils/system/VTCmdResult;->success()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/aas;->XO:Ljava/lang/Boolean;

    .line 100
    :cond_0
    sget-object v0, Lcom/kingroot/kinguser/aas;->XO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static pS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/kingroot/kinguser/aas;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/aba;->qF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "st2"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static pT()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 118
    const-string v0, "/system"

    invoke-static {v0}, Lcom/kingroot/kinguser/aaw;->dV(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    const-string v0, "echo"

    .line 131
    :goto_0
    return-object v0

    .line 122
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aas;->pR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/aba;->qF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mount -o remount,rw /system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 128
    const-string v0, "c15"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 131
    :cond_2
    const-string v0, "c1"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static pU()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "echo"

    return-object v0
.end method

.method private static pV()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    invoke-static {}, Lcom/kingroot/kinguser/aas;->pR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/kingroot/kinguser/aba;->qF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mount -o remount,rw /"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 151
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/abd;->qb()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 152
    const-string v0, "mount -o remount -w /"

    goto :goto_0

    .line 155
    :cond_1
    const-string v0, "c16"

    invoke-static {v0}, Lcom/kingroot/kinguser/zt;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static pW()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "echo"

    return-object v0
.end method
