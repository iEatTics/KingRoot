.class public Lcom/kingroot/kinguser/ayp;
.super Lcom/kingroot/loader/common/protocol/AbsProtocol;
.source "SourceFile"


# instance fields
.field public bcU:I

.field public bcV:Lcom/qq/taf/jce/JceStruct;

.field public bcW:Lcom/qq/taf/jce/JceStruct;

.field public bcX:I

.field public bcY:I

.field public bcZ:I

.field public bda:I

.field public bdb:Lcom/qq/taf/jce/JceStruct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/loader/common/protocol/AbsProtocol;-><init>()V

    return-void
.end method


# virtual methods
.method public getCmdId()I
    .locals 1

    .prologue
    .line 65
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
    .line 39
    const-string v0, "req_cmd_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ayp;->bcU:I

    .line 40
    const-string v0, "req_req_jce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;

    iput-object v0, p0, Lcom/kingroot/kinguser/ayp;->bcV:Lcom/qq/taf/jce/JceStruct;

    .line 41
    const-string v0, "req_resp_jce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;

    iput-object v0, p0, Lcom/kingroot/kinguser/ayp;->bcW:Lcom/qq/taf/jce/JceStruct;

    .line 43
    const-string v0, "resp_seq_no"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ayp;->bcX:I

    .line 44
    const-string v0, "resp_cmd_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ayp;->bcY:I

    .line 45
    const-string v0, "resp_ret_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ayp;->bcZ:I

    .line 46
    const-string v0, "resp_data_ret_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/ayp;->bda:I

    .line 47
    const-string v0, "resp_jce"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/qq/taf/jce/JceStruct;

    iput-object v0, p0, Lcom/kingroot/kinguser/ayp;->bdb:Lcom/qq/taf/jce/JceStruct;

    .line 48
    return-void
.end method

.method protected writeArgvToBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 52
    const-string v0, "req_cmd_id"

    iget v1, p0, Lcom/kingroot/kinguser/ayp;->bcU:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v0, "req_req_jce"

    iget-object v1, p0, Lcom/kingroot/kinguser/ayp;->bcV:Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 54
    const-string v0, "req_resp_jce"

    iget-object v1, p0, Lcom/kingroot/kinguser/ayp;->bcW:Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 56
    const-string v0, "resp_seq_no"

    iget v1, p0, Lcom/kingroot/kinguser/ayp;->bcX:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string v0, "resp_cmd_id"

    iget v1, p0, Lcom/kingroot/kinguser/ayp;->bcY:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string v0, "resp_ret_code"

    iget v1, p0, Lcom/kingroot/kinguser/ayp;->bcZ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v0, "resp_data_ret_code"

    iget v1, p0, Lcom/kingroot/kinguser/ayp;->bda:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v0, "resp_jce"

    iget-object v1, p0, Lcom/kingroot/kinguser/ayp;->bdb:Lcom/qq/taf/jce/JceStruct;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 61
    return-void
.end method
