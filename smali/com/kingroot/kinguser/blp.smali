.class public final Lcom/kingroot/kinguser/blp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bAd:Ljava/lang/String;

.field private static bAe:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "ro.build.description"

    invoke-static {v0}, Lcom/kingroot/kinguser/blp;->mf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    sput-object v0, Lcom/kingroot/kinguser/blp;->bAd:Ljava/lang/String;

    .line 33
    const-string v0, "/proc/version"

    invoke-static {v0}, Lcom/kingroot/kinguser/bmu;->ml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/kingroot/kinguser/blp;->bAe:Ljava/lang/String;

    .line 34
    return-void

    .line 33
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private static mf(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 173
    :try_start_0
    new-instance v1, Lcom/kingroot/kinguser/blv;

    const-string v0, "sh"

    invoke-direct {v1, v0}, Lcom/kingroot/kinguser/blv;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    const-string v0, "export PATH=/sbin:/vendor/bin:/system/sbin:/system/bin:/system/xbin:$PATH"

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/blv;->i(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getprop "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/kingroot/kinguser/blv;->o(Ljava/lang/String;J)Lcloudsdk/shell/VTCmdResult;

    move-result-object v0

    .line 176
    iget-object v0, v0, Lcloudsdk/shell/VTCmdResult;->mStdOut:Ljava/lang/String;

    .line 177
    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 183
    invoke-virtual {v1}, Lcom/kingroot/kinguser/blv;->shutdown()V

    .line 187
    :goto_0
    return-object v0

    .line 183
    :cond_0
    invoke-virtual {v1}, Lcom/kingroot/kinguser/blv;->shutdown()V

    .line 187
    :cond_1
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 181
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v1}, Lcom/kingroot/kinguser/blv;->shutdown()V

    goto :goto_1

    .line 183
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v1}, Lcom/kingroot/kinguser/blv;->shutdown()V

    :cond_2
    throw v0

    .line 183
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 180
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/kingroot/kinguser/blp;->bAd:Ljava/lang/String;

    return-object v0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/kingroot/kinguser/blp;->bAe:Ljava/lang/String;

    return-object v0
.end method
