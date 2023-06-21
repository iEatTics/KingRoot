.class public final Lcom/kingroot/kinguser/cgv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/cgv$a;
    }
.end annotation


# static fields
.field public static ceA:Z

.field private static final ceB:Z

.field private static ceC:I

.field private static ceD:Z

.field private static ceE:Ljava/lang/Object;

.field private static ceF:Lcom/kingroot/kinguser/cgv$a;

.field private static ceG:I

.field private static ceH:B

.field private static ceI:Z

.field private static ceJ:Landroid/content/BroadcastReceiver;

.field private static ceK:Lcom/kingroot/kinguser/cgi;

.field private static final cey:Ljava/lang/String;

.field private static final cez:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 48
    const-string v0, "athena_name"

    invoke-static {v0}, Ltmsdk/common/TMSDKContext;->nG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/cgv;->cey:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/kingroot/kinguser/cgv;->cey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/cgv;->cez:Ljava/lang/String;

    .line 51
    const-string v0, "/system/bin/su"

    invoke-static {v0}, Lcom/kingroot/kinguser/cei;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/system/xbin/su"

    invoke-static {v0}, Lcom/kingroot/kinguser/cei;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/sbin/su"

    invoke-static {v0}, Lcom/kingroot/kinguser/cei;->isFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kingroot/kinguser/cgv;->ceA:Z

    .line 52
    new-instance v0, Ljava/io/File;

    const-string v2, "/dev/socket/script_socket"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/kingroot/kinguser/cgv;->ceB:Z

    .line 60
    const/4 v0, 0x2

    sput v0, Lcom/kingroot/kinguser/cgv;->ceC:I

    .line 69
    sput-boolean v1, Lcom/kingroot/kinguser/cgv;->ceD:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cgv;->ceE:Ljava/lang/Object;

    .line 72
    sput-object v3, Lcom/kingroot/kinguser/cgv;->ceF:Lcom/kingroot/kinguser/cgv$a;

    .line 74
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/kingroot/kinguser/cgv;->ceG:I

    .line 76
    sput-byte v1, Lcom/kingroot/kinguser/cgv;->ceH:B

    .line 78
    sput-boolean v1, Lcom/kingroot/kinguser/cgv;->ceI:Z

    .line 127
    new-instance v0, Lcom/kingroot/kinguser/cgv$1;

    invoke-direct {v0}, Lcom/kingroot/kinguser/cgv$1;-><init>()V

    sput-object v0, Lcom/kingroot/kinguser/cgv;->ceJ:Landroid/content/BroadcastReceiver;

    .line 725
    sput-object v3, Lcom/kingroot/kinguser/cgv;->ceK:Lcom/kingroot/kinguser/cgi;

    return-void

    :cond_1
    move v0, v1

    .line 51
    goto :goto_0
.end method

.method static synthetic Vb()V
    .locals 0

    .prologue
    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/cgv;->anh()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/kingroot/kinguser/cgv;->ceG:I

    return v0
.end method

.method private static anh()V
    .locals 3

    .prologue
    .line 160
    :try_start_0
    const-string v0, "root_change_action"

    invoke-static {v0}, Ltmsdk/common/TMSDKContext;->nG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    const-string v0, "rtstky"

    sget v2, Lcom/kingroot/kinguser/cgv;->ceC:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    const-string v0, "pidky"

    sget v2, Lcom/kingroot/kinguser/cgv;->ceG:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 164
    invoke-static {}, Ltmsdk/common/TMSDKContext;->akS()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.tencent.qqsecure.INNER_BROCAST"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic bF(I)I
    .locals 0

    .prologue
    .line 37
    sput p0, Lcom/kingroot/kinguser/cgv;->ceC:I

    return p0
.end method

.method public static getRootState()I
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/kingroot/kinguser/cgv;->ceF:Lcom/kingroot/kinguser/cgv$a;

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Lcom/kingroot/kinguser/cgv;->ceF:Lcom/kingroot/kinguser/cgv$a;

    invoke-interface {v0}, Lcom/kingroot/kinguser/cgv$a;->ani()I

    move-result v0

    .line 312
    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/kingroot/kinguser/cgv;->ceC:I

    goto :goto_0
.end method
