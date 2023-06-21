.class public Lcom/kingroot/kinguser/azr;
.super Lcom/kingroot/loader/common/protocol/AbsProtocol;
.source "SourceFile"


# instance fields
.field public bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;


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
    const/16 v0, 0x20

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
    const-string v0, "req_task"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    iput-object v0, p0, Lcom/kingroot/kinguser/azr;->bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

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
    const-string v0, "req_task"

    iget-object v1, p0, Lcom/kingroot/kinguser/azr;->bdz:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    return-void
.end method
