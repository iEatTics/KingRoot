.class public Lcom/kingroot/kinguser/arg;
.super Lcom/kingroot/kinguser/aqy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/aqy",
        "<",
        "Lcom/kingroot/kinguser/arr;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqy;-><init>()V

    .line 16
    const-class v0, Lcom/kingroot/kinguser/arr;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/arq;->a(Ljava/lang/Class;Z)Lcom/kingroot/kinguser/aqb;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/arr;

    iput-object v0, p0, Lcom/kingroot/kinguser/arg;->aLz:Lcom/kingroot/kinguser/arl;

    .line 17
    return-void
.end method


# virtual methods
.method public MK()I
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/kingroot/kinguser/arg;->Ng()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public Nb()Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070134

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Nc()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f07011b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Nd()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070127

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Nf()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070116

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
