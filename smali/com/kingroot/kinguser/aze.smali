.class public Lcom/kingroot/kinguser/aze;
.super Lcom/kingroot/loader/common/protocol/AbsProtocol;
.source "SourceFile"


# instance fields
.field public bdw:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/kingroot/loader/common/protocol/AbsProtocol;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdId()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x6

    return v0
.end method

.method protected readArgvFromBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    const-string v0, "req_seconds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kingroot/kinguser/aze;->bdw:J

    .line 22
    return-void
.end method

.method protected writeArgvToBundle(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    const-string v0, "req_seconds"

    iget-wide v2, p0, Lcom/kingroot/kinguser/aze;->bdw:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 27
    return-void
.end method
