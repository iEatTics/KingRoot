.class public Lcom/kingroot/kinguser/ayz;
.super Lcom/kingroot/loader/common/protocol/AbsProtocol;
.source "SourceFile"


# instance fields
.field public bdr:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

.field public bds:Ljava/lang/String;


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
    .line 36
    const/16 v0, 0xc

    return v0
.end method

.method protected readArgvFromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    const-string v0, "req_get_save_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    iput-object v0, p0, Lcom/kingroot/kinguser/ayz;->bdr:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    .line 25
    const-string v0, "resp_get_save_path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kingroot/kinguser/ayz;->bds:Ljava/lang/String;

    .line 26
    return-void
.end method

.method protected writeArgvToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    const-string v0, "req_get_save_path"

    iget-object v1, p0, Lcom/kingroot/kinguser/ayz;->bdr:Lcom/kingplugin/qqpim/softdownload/download/task/obj/AppDownloadTask;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 31
    const-string v0, "resp_get_save_path"

    iget-object v1, p0, Lcom/kingroot/kinguser/ayz;->bds:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method
