.class public Lcom/kingroot/kinguser/aqg;
.super Lcom/kingroot/kinguser/aqh;
.source "SourceFile"


# instance fields
.field private final mCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqh;-><init>()V

    .line 22
    iput p1, p0, Lcom/kingroot/kinguser/aqg;->mCount:I

    .line 23
    return-void
.end method


# virtual methods
.method public ME()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070438

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MF()Ljava/lang/String;
    .locals 4

    .prologue
    .line 32
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070443

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/kingroot/kinguser/aqg;->mCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected MG()Z
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;->vs()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MH()Z
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alx;->HD()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 67
    invoke-static {v0, v1}, Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;->f(Landroid/content/Context;I)V

    .line 70
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f02015f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x94

    return v0
.end method

.method public ignore()V
    .locals 4

    .prologue
    .line 42
    invoke-super {p0}, Lcom/kingroot/kinguser/aqh;->ignore()V

    .line 43
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FQ()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eN(I)V

    .line 45
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/akl;->ao(J)V

    .line 46
    return-void
.end method

.method public vs()Z
    .locals 4

    .prologue
    .line 50
    invoke-static {}, Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;->vs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 59
    :goto_0
    return v0

    .line 55
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->FQ()I

    move-result v0

    .line 57
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/akl;->Ba()J

    move-result-wide v2

    .line 59
    invoke-virtual {p0, v2, v3, v0}, Lcom/kingroot/kinguser/aqg;->h(JI)Z

    move-result v0

    goto :goto_0
.end method
