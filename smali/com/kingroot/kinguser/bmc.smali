.class public Lcom/kingroot/kinguser/bmc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcloudsdk/IActionResult;


# instance fields
.field private fu:I

.field private fv:I

.field private fw:Landroid/os/Bundle;

.field private mErrorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/kingroot/kinguser/bmc;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 46
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/kingroot/kinguser/bmc;->fu:I

    .line 36
    iput p2, p0, Lcom/kingroot/kinguser/bmc;->fv:I

    .line 37
    iput-object p3, p0, Lcom/kingroot/kinguser/bmc;->mErrorMessage:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/kingroot/kinguser/bmc;->fw:Landroid/os/Bundle;

    .line 39
    return-void
.end method

.method public static valueOf(Landroid/os/Bundle;)Lcom/kingroot/kinguser/bmc;
    .locals 5

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 92
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 94
    :cond_0
    new-instance v0, Lcom/kingroot/kinguser/bmc;

    const-string v1, "resultCode"

    .line 95
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "errorCode"

    .line 96
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errorMessage"

    .line 97
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "reply"

    .line 98
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/kingroot/kinguser/bmc;-><init>(IILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    const-string v1, "resultCode"

    iget v2, p0, Lcom/kingroot/kinguser/bmc;->fu:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const-string v1, "errorCode"

    iget v2, p0, Lcom/kingroot/kinguser/bmc;->fv:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    const-string v1, "errorMessage"

    iget-object v2, p0, Lcom/kingroot/kinguser/bmc;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v1, "reply"

    iget-object v2, p0, Lcom/kingroot/kinguser/bmc;->fw:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 86
    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/kingroot/kinguser/bmc;->fv:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/bmc;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getReply()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/bmc;->fw:Landroid/os/Bundle;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/kingroot/kinguser/bmc;->fu:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/kingroot/kinguser/bmc;->fv:I

    .line 62
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/kingroot/kinguser/bmc;->mErrorMessage:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setReply(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/kingroot/kinguser/bmc;->fw:Landroid/os/Bundle;

    .line 78
    return-void
.end method

.method public setResultCode(I)V
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/kingroot/kinguser/bmc;->fu:I

    .line 54
    return-void
.end method

.method public success()Z
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/kingroot/kinguser/bmc;->fu:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 110
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "ret = %d, errorCode = %d, errorMessage = %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/kingroot/kinguser/bmc;->fu:I

    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/kingroot/kinguser/bmc;->fv:I

    .line 112
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/kingroot/kinguser/bmc;->mErrorMessage:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 110
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    return-object v0
.end method
