.class public Lcom/kingroot/kinguser/le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/nv;


# instance fields
.field private uK:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/kingroot/kinguser/le;->uK:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public dC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/kingroot/kinguser/nd;->eY()Lcom/kingroot/kinguser/nd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/nd;->cs()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "096CE82CAD7A6725"

    return-object v0
.end method

.method public dE()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/kingroot/kinguser/nd;->eY()Lcom/kingroot/kinguser/nd;

    move-result-object v0

    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/nd;->B(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dF()I
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x28

    return v0
.end method

.method public dG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "1.6.1"

    return-object v0
.end method

.method public dH()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/me;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/kingroot/kinguser/me;->dI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "EP_KingCommon"

    return-object v0
.end method

.method public dK()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x2c

    return v0
.end method

.method public dL()I
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 109
    const/4 v0, -0x1

    .line 111
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 112
    if-nez v2, :cond_0

    .line 118
    :goto_0
    return v0

    .line 115
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public dv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/me;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public dz()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/kingroot/kinguser/le;->uK:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/ih;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/me;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
