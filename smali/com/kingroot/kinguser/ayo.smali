.class public Lcom/kingroot/kinguser/ayo;
.super Lcom/kingroot/loader/common/protocol/AbsProtocol;
.source "SourceFile"


# instance fields
.field public bcT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/loader/common/protocol/AbsProtocol;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdId()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    return v0
.end method

.method protected readArgvFromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    const-string v0, "resp_guid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ayo;->bcT:Ljava/lang/String;

    .line 23
    return-void
.end method

.method protected writeArgvToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    const-string v0, "resp_guid"

    iget-object v1, p0, Lcom/kingroot/kinguser/ayo;->bcT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
