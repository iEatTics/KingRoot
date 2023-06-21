.class public Lcom/kingroot/kinguser/bbm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bfh:Ljava/lang/String;

.field private static bfi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/kingroot/kinguser/bbm;->Ws()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bbm;->bfh:Ljava/lang/String;

    .line 23
    invoke-static {}, Lcom/kingroot/kinguser/bbm;->Wt()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kingroot/kinguser/bbm;->bfi:Ljava/lang/String;

    return-void
.end method

.method private static Ws()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    :cond_0
    const-string v0, "ro.build.description"

    invoke-static {v0}, Lcom/kingroot/kinguser/bbm;->kq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    :cond_1
    return-object v0
.end method

.method private static Wt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "/proc/version"

    invoke-static {v0}, Lcom/kingroot/kinguser/rs;->cA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static Wu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/kingroot/kinguser/bbm;->bfh:Ljava/lang/String;

    return-object v0
.end method

.method public static dI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/kingroot/kinguser/bbm;->bfi:Ljava/lang/String;

    return-object v0
.end method

.method public static kq(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    const/4 v2, 0x0

    .line 114
    :try_start_0
    new-instance v1, Lcom/kingroot/kinguser/abm;

    const-string v0, "sh"

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/abm;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    const-string v0, "export PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin:$PATH"

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/abm;->ew(Ljava/lang/String;)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getprop "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/kingroot/kinguser/abm;->f(Ljava/lang/String;J)Lcom/kingroot/common/utils/system/VTCmdResult;

    move-result-object v0

    .line 117
    iget-object v0, v0, Lcom/kingroot/common/utils/system/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 118
    if-nez v0, :cond_1

    .line 119
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1}, Lcom/kingroot/kinguser/abm;->shutdown()V

    .line 133
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1}, Lcom/kingroot/kinguser/abm;->shutdown()V

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 124
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 125
    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {v1}, Lcom/kingroot/kinguser/abm;->shutdown()V

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_2

    .line 128
    invoke-virtual {v1}, Lcom/kingroot/kinguser/abm;->shutdown()V

    :cond_2
    throw v0

    .line 127
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 123
    :catch_1
    move-exception v0

    goto :goto_1
.end method
