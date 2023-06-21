.class final Lcom/kingroot/kinguser/awo$4;
.super Lcom/kingroot/kinguser/cas;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/awo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/kingroot/kinguser/cas;-><init>()V

    return-void
.end method


# virtual methods
.method public Tf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ia()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Tg()I
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hZ()I

    move-result v0

    return v0
.end method

.method public Th()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/aay;->al(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ti()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 227
    .line 228
    invoke-static {}, Lcom/kingroot/kinguser/wb;->nd()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    add-int/2addr v0, v1

    .line 229
    invoke-static {}, Lcom/kingroot/kinguser/wb;->ne()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    :cond_0
    add-int/2addr v0, v1

    .line 230
    return v0

    :cond_1
    move v0, v1

    .line 228
    goto :goto_0
.end method

.method public Tj()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Lcom/kingroot/kinguser/aav;->pZ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Tk()Lcom/kingroot/kinguser/cg;
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/kingroot/kinguser/ux;->kV()Lcom/kingroot/kinguser/cg;

    move-result-object v0

    return-object v0
.end method

.method public Tl()I
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public Tm()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public Tn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    const-string v0, ""

    return-object v0
.end method

.method public To()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const-string v0, ""

    return-object v0
.end method

.method public dG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ii()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dm(Z)V
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/aks;->cr(Z)V

    .line 248
    return-void
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ib()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->hY()I

    move-result v0

    return v0
.end method
