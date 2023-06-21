.class public Lcom/kingroot/kinguser/aqm;
.super Lcom/kingroot/kinguser/aqh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqh;-><init>()V

    return-void
.end method

.method private enable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/abc;->qK()Lcom/kingroot/kinguser/abc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/abc;->isRootPermition(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-static {}, Lcom/kingroot/kinguser/ahg;->wT()Lcom/kingroot/kinguser/ahg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/ahg;->wV()I

    move-result v1

    if-lez v1, :cond_0

    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/aks;->FX()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 66
    :cond_0
    return v0
.end method


# virtual methods
.method public ME()Ljava/lang/String;
    .locals 5

    .prologue
    .line 45
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v1

    const v2, 0x7f07045e

    invoke-virtual {v1, v2}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 47
    invoke-static {}, Lcom/kingroot/kinguser/ahg;->wT()Lcom/kingroot/kinguser/ahg;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kingroot/kinguser/ahg;->wV()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 45
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MF()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0703d1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected MG()Z
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqm;->enable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected MH()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FZ()V

    .line 27
    invoke-static {v1}, Lcom/kingroot/kinguser/activitys/DefaultAppSettingsActivity;->start(Z)V

    .line 28
    return v1
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0201f4

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x95

    return v0
.end method

.method public ignore()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/kingroot/kinguser/aqh;->ignore()V

    .line 34
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FW()V

    .line 36
    return-void
.end method

.method public vs()Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqm;->enable()Z

    move-result v0

    return v0
.end method
