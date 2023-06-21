.class public Lcom/kingroot/kinguser/aqq;
.super Lcom/kingroot/kinguser/aqh;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/kingroot/kinguser/aqh;-><init>()V

    return-void
.end method


# virtual methods
.method public ME()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f070500

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MF()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0704d8

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected MG()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfw;->abe()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfw;->abg()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    .line 36
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 37
    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bfp;->isEnable()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public MH()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    const/4 v0, 0x0

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/urlcheck/ui/UrlCheckMainActivity;->f(Landroid/content/Context;Z)V

    .line 71
    return v1
.end method

.method public MK()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x3

    return v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 86
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 81
    const/16 v0, 0x62

    return v0
.end method

.method public ignore()V
    .locals 4

    .prologue
    .line 45
    invoke-super {p0}, Lcom/kingroot/kinguser/aqh;->ignore()V

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->bz(J)V

    .line 48
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fm()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eL(I)V

    .line 49
    return-void
.end method

.method public vs()Z
    .locals 6

    .prologue
    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->Fn()J

    move-result-wide v0

    .line 55
    invoke-virtual {v2}, Lcom/kingroot/kinguser/aks;->Fm()I

    move-result v2

    .line 57
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 58
    const/4 v0, 0x0

    .line 61
    :goto_0
    return v0

    .line 63
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x19bfcc00

    .line 61
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/acu;->b(JJJ)Z

    move-result v0

    goto :goto_0
.end method
