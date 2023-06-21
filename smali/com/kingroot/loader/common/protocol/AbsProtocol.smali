.class public abstract Lcom/kingroot/loader/common/protocol/AbsProtocol;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASE_CMD_ID:I = 0x0

.field public static final INVALID_CMD_ID:I = -0x1

.field private static final KEY_CMD_ARGV:Ljava/lang/String; = "com.kingroot.loader.cmd_argv"

.field private static final KEY_CMD_ID:Ljava/lang/String; = "com.kingroot.loader.cmd_id"


# instance fields
.field protected mCmdId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/loader/common/protocol/AbsProtocol;->mCmdId:I

    .line 25
    invoke-virtual {p0}, Lcom/kingroot/loader/common/protocol/AbsProtocol;->getCmdId()I

    move-result v0

    iput v0, p0, Lcom/kingroot/loader/common/protocol/AbsProtocol;->mCmdId:I

    .line 26
    return-void
.end method

.method public static getCmdId(Landroid/os/Bundle;)I
    .locals 2

    .prologue
    .line 83
    const-string v0, "com.kingroot.loader.cmd_id"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract getCmdId()I
.end method

.method public abstract readArgvFromBundle(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public final readFromBundle(Landroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 42
    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    const-string v1, "com.kingroot.loader.cmd_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "com.kingroot.loader.cmd_id"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kingroot/loader/common/protocol/AbsProtocol;->mCmdId:I

    .line 53
    iget v1, p0, Lcom/kingroot/loader/common/protocol/AbsProtocol;->mCmdId:I

    if-eq v1, v2, :cond_0

    .line 58
    const-string v1, "com.kingroot.loader.cmd_argv"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Lcom/kingroot/loader/common/protocol/AbsProtocol;->readArgvFromBundle(Landroid/os/Bundle;)V

    .line 64
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final transferToBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    const-string v1, "com.kingroot.loader.cmd_id"

    iget v2, p0, Lcom/kingroot/loader/common/protocol/AbsProtocol;->mCmdId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    invoke-virtual {p0, v1}, Lcom/kingroot/loader/common/protocol/AbsProtocol;->writeArgvToBundle(Landroid/os/Bundle;)V

    .line 36
    const-string v2, "com.kingroot.loader.cmd_argv"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 38
    return-object v0
.end method

.method public abstract writeArgvToBundle(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
