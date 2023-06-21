.class public Lcom/kingroot/kinguser/aqi;
.super Lcom/kingroot/kinguser/aqh;
.source "SourceFile"


# instance fields
.field private aKc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqh;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/kingroot/kinguser/aqi;->aKc:I

    return-void
.end method


# virtual methods
.method public ME()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v0, 0xd

    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f0700fe

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/kingroot/kinguser/aqi;->aKc:I

    if-lt v5, v0, :cond_0

    .line 31
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 30
    invoke-virtual {v1, v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/kingroot/kinguser/aqi;->aKc:I

    goto :goto_0
.end method

.method public MF()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070100

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected MG()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 43
    iput v1, p0, Lcom/kingroot/kinguser/aqi;->aKc:I

    .line 45
    iget v2, p0, Lcom/kingroot/kinguser/aqi;->aKc:I

    invoke-static {}, Lcom/kingroot/kinguser/bcr;->XT()Lcom/kingroot/kinguser/bcr;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bcr;->dF(Z)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/kingroot/kinguser/aqi;->aKc:I

    .line 46
    iget v2, p0, Lcom/kingroot/kinguser/aqi;->aKc:I

    invoke-static {}, Lcom/kingroot/kinguser/bcs;->Yc()Lcom/kingroot/kinguser/bcs;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bcs;->dF(Z)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/kingroot/kinguser/aqi;->aKc:I

    .line 48
    invoke-static {}, Lcom/kingroot/kinguser/biq;->ada()Lcom/kingroot/kinguser/biq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/biq;->adb()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->FL()Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    iget v2, p0, Lcom/kingroot/kinguser/aqi;->aKc:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kingroot/kinguser/aqi;->aKc:I

    .line 52
    :cond_0
    iget v2, p0, Lcom/kingroot/kinguser/aqi;->aKc:I

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public MH()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_0

    .line 60
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/SecurityProtectActivity;->f(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return v2

    .line 61
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public MK()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x1e

    return v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f020184

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x61

    return v0
.end method
