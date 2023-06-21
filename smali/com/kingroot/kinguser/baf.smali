.class Lcom/kingroot/kinguser/baf;
.super Lcom/kingroot/kinguser/vk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kingroot/kinguser/vk",
        "<",
        "Lcom/kingroot/kinguser/vf;",
        ">;"
    }
.end annotation


# instance fields
.field private bdJ:Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/kingroot/kinguser/vk;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/kingroot/kinguser/baf;->bdJ:Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    .line 19
    return-void
.end method

.method private dz(Z)V
    .locals 3

    .prologue
    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/bak;->Vx()Lcom/kingroot/kinguser/bak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bak;->Vy()Lcom/kingroot/kinguser/bah;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/kingroot/kinguser/baf;->bdJ:Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    iget v1, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/bah;->getUpgradeInfo(I)Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    iget v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->downloadCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->downloadCount:I

    .line 69
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bah;->b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;Z)Z

    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-static {}, Lcom/kingroot/kinguser/bak;->Vx()Lcom/kingroot/kinguser/bak;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/bak;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;I)Z

    .line 74
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/vf;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 40
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/vk;->b(Lcom/kingroot/kinguser/vj;)V

    .line 42
    iget-object v0, p0, Lcom/kingroot/kinguser/baf;->bdJ:Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    iget v1, p1, Lcom/kingroot/kinguser/vf;->mErrorCode:I

    invoke-static {v0, v2, v1, v2, v3}, Lcom/kingroot/kinguser/bae;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZIZZ)V

    .line 45
    iget-object v0, p0, Lcom/kingroot/kinguser/baf;->bdJ:Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    invoke-static {v0, v2, v2, v3}, Lcom/kingroot/kinguser/bag;->b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZIZ)V

    .line 48
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/baf;->dz(Z)V

    .line 49
    return-void
.end method

.method public synthetic a(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/baf;->b(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method

.method public b(Lcom/kingroot/kinguser/vf;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/vk;->a(Lcom/kingroot/kinguser/vj;)V

    .line 55
    iget-object v0, p0, Lcom/kingroot/kinguser/baf;->bdJ:Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    iget v1, p1, Lcom/kingroot/kinguser/vf;->mErrorCode:I

    invoke-static {v0, v2, v1, v3, v2}, Lcom/kingroot/kinguser/bae;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZIZZ)V

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/baf;->bdJ:Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    invoke-static {v0, v2, v3, v2}, Lcom/kingroot/kinguser/bag;->b(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZIZ)V

    .line 61
    invoke-direct {p0, v2}, Lcom/kingroot/kinguser/baf;->dz(Z)V

    .line 62
    return-void
.end method

.method public synthetic b(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/baf;->a(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method

.method public synthetic d(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/baf;->g(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method

.method public synthetic e(Lcom/kingroot/kinguser/vj;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/kingroot/kinguser/vf;

    invoke-virtual {p0, p1}, Lcom/kingroot/kinguser/baf;->f(Lcom/kingroot/kinguser/vf;)V

    return-void
.end method

.method public f(Lcom/kingroot/kinguser/vf;)V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/vk;->e(Lcom/kingroot/kinguser/vj;)V

    .line 25
    return-void
.end method

.method public g(Lcom/kingroot/kinguser/vf;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/vk;->d(Lcom/kingroot/kinguser/vj;)V

    .line 31
    iget-object v0, p0, Lcom/kingroot/kinguser/baf;->bdJ:Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    invoke-static {v0, v2, v1}, Lcom/kingroot/kinguser/bae;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZZ)V

    .line 34
    iget-object v0, p0, Lcom/kingroot/kinguser/baf;->bdJ:Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;

    invoke-static {v0, v2, v1}, Lcom/kingroot/kinguser/bag;->a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;IZ)V

    .line 35
    return-void
.end method
