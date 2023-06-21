.class public Lcom/kingroot/loader/common/protocol/BaseProtocol;
.super Lcom/kingroot/loader/common/protocol/AbsProtocol;
.source "SourceFile"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/kingroot/loader/common/protocol/AbsProtocol;-><init>()V

    .line 15
    iput p1, p0, Lcom/kingroot/loader/common/protocol/BaseProtocol;->mCmdId:I

    .line 16
    return-void
.end method


# virtual methods
.method public getCmdId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/kingroot/loader/common/protocol/BaseProtocol;->mCmdId:I

    return v0
.end method

.method protected readArgvFromBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    return-void
.end method

.method protected writeArgvToBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    return-void
.end method
