.class public Lcom/kingroot/kinguser/aqn;
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
    .line 19
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700db

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MF()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f0700e1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected MG()Z
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/aii;->xL()Lcom/kingroot/kinguser/aii;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aii;->xN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Eh()Z

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public MH()Z
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/kingroot/kinguser/aft;->vt()Landroid/app/Activity;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0}, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxMainActivity;->c(Landroid/app/Activity;)V

    .line 61
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v0

    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/zi;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x96

    return v0
.end method

.method public ignore()V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0}, Lcom/kingroot/kinguser/aqh;->ignore()V

    .line 39
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->by(J)V

    .line 41
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fk()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->eK(I)V

    .line 42
    return-void
.end method

.method public vs()Z
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fl()J

    move-result-wide v2

    .line 48
    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Fk()I

    move-result v0

    .line 51
    invoke-virtual {p0, v2, v3, v0}, Lcom/kingroot/kinguser/aqn;->h(JI)Z

    move-result v0

    return v0
.end method
