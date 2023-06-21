.class public Lcom/kingroot/kinguser/aym;
.super Lcom/kingroot/loader/common/protocol/AbsProtocol;
.source "SourceFile"


# instance fields
.field public bcS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kingroot/loader/common/protocol/AbsProtocol;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdId()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x5

    return v0
.end method

.method protected readArgvFromBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    const-string v0, "resp"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/aym;->bcS:I

    .line 24
    return-void
.end method

.method protected writeArgvToBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    const-string v0, "resp"

    iget v1, p0, Lcom/kingroot/kinguser/aym;->bcS:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 29
    return-void
.end method
