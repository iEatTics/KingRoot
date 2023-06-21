.class public Lcom/kingroot/kinguser/btk;
.super Lcom/kingroot/loader/common/protocol/AbsProtocol;


# instance fields
.field public a:I

.field public bMY:Lqqpimaccount/AccountInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/kingroot/loader/common/protocol/AbsProtocol;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kingroot/kinguser/btk;->a:I

    return-void
.end method


# virtual methods
.method public getCmdId()I
    .locals 1

    const/16 v0, 0x3e9

    return v0
.end method

.method protected readArgvFromBundle(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "ret"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kingroot/kinguser/btk;->a:I

    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lqqpimaccount/AccountInfo;

    iput-object v0, p0, Lcom/kingroot/kinguser/btk;->bMY:Lqqpimaccount/AccountInfo;

    return-void
.end method

.method protected writeArgvToBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ret"

    iget v1, p0, Lcom/kingroot/kinguser/btk;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "account"

    iget-object v1, p0, Lcom/kingroot/kinguser/btk;->bMY:Lqqpimaccount/AccountInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
