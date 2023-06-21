.class public Lcom/kingroot/kinguser/azx;
.super Lcom/kingroot/loader/common/protocol/AbsProtocol;
.source "SourceFile"


# instance fields
.field public bcU:I

.field public bcV:Lcom/qq/taf/jce/JceStruct;

.field public bcW:Lcom/qq/taf/jce/JceStruct;

.field public bdH:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/kingroot/loader/common/protocol/AbsProtocol;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kingroot/kinguser/azx;->bdH:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public getCmdId()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method protected readArgvFromBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    const-string v0, "req_cmd_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/azx;->bcU:I

    .line 33
    const-string v0, "req_req_jce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;

    iput-object v0, p0, Lcom/kingroot/kinguser/azx;->bcV:Lcom/qq/taf/jce/JceStruct;

    .line 34
    const-string v0, "req_resp_jce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;

    iput-object v0, p0, Lcom/kingroot/kinguser/azx;->bcW:Lcom/qq/taf/jce/JceStruct;

    .line 36
    const-string v0, "resp_callback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/kingroot/loader/common/protocol/BinderParcel;

    .line 37
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/kingroot/kinguser/azx;->bdH:Landroid/os/IBinder;

    .line 38
    return-void

    .line 37
    :cond_0
    iget-object v0, v0, Lcom/kingroot/loader/common/protocol/BinderParcel;->binder:Landroid/os/IBinder;

    goto :goto_0
.end method

.method protected writeArgvToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    const-string v0, "req_cmd_id"

    iget v1, p0, Lcom/kingroot/kinguser/azx;->bcU:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    const-string v0, "req_req_jce"

    iget-object v1, p0, Lcom/kingroot/kinguser/azx;->bcV:Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 44
    const-string v0, "req_resp_jce"

    iget-object v1, p0, Lcom/kingroot/kinguser/azx;->bcW:Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 45
    const-string v0, "resp_callback"

    iget-object v1, p0, Lcom/kingroot/kinguser/azx;->bdH:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/kingroot/loader/common/protocol/BinderParcel;->obtain(Landroid/os/IBinder;)Lcom/kingroot/loader/common/protocol/BinderParcel;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    return-void
.end method
