.class final Lcloudsdk/ext/kr/RootHandler$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcloudsdk/ext/kr/RootHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcloudsdk/ext/kr/RootHandler;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 251
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 254
    :cond_1
    invoke-static {}, Lcloudsdk/ext/kr/RootSdk;->getInstance()Lcloudsdk/ext/kr/RootSdk;

    move-result-object v1

    invoke-virtual {v1}, Lcloudsdk/ext/kr/RootSdk;->d()Lcloudsdk/shell/IRootShell;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcloudsdk/shell/IRootShell;->isRootPermition()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 260
    if-eqz v2, :cond_0

    .line 262
    const-string v0, "in_params"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 263
    const-string v3, "cmdValue"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    const-string v4, "timeout"

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 267
    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 268
    invoke-interface {v1, v3}, Lcloudsdk/shell/IRootShell;->runRootCommand(Ljava/lang/String;)Lcloudsdk/shell/VTCmdResult;

    move-result-object v0

    .line 272
    :goto_1
    const-string v1, "out_params"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 273
    const-string v2, "success"

    invoke-virtual {v0}, Lcloudsdk/shell/VTCmdResult;->success()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    const-string v2, "exitValue"

    iget-object v3, v0, Lcloudsdk/shell/VTCmdResult;->mExitValue:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    const-string v2, "stdOut"

    iget-object v3, v0, Lcloudsdk/shell/VTCmdResult;->mStdOut:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v2, "stdErr"

    iget-object v3, v0, Lcloudsdk/shell/VTCmdResult;->mStdErr:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v2, "cmdFlag"

    iget-object v3, v0, Lcloudsdk/shell/VTCmdResult;->mCmdFlag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Lcloudsdk/shell/VTCmdResult;->success()Z

    move-result v0

    goto :goto_0

    .line 270
    :cond_2
    invoke-interface {v1, v3, v4, v5}, Lcloudsdk/shell/IRootShell;->runRootCommand(Ljava/lang/String;J)Lcloudsdk/shell/VTCmdResult;

    move-result-object v0

    goto :goto_1
.end method
