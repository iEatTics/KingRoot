.class Lcom/kingroot/kinguser/bae;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/kingroot/kinguser/ed;IIZ)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    if-eqz p0, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/ed;->id:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/ed;->version:I

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    if-eqz p0, :cond_2

    iget-wide v0, p0, Lcom/kingroot/kinguser/ed;->ox:J

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v3, 0x18780

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v3, v0, v2, p3}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 50
    return-void

    :cond_1
    move v0, v1

    .line 41
    goto :goto_0

    .line 43
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 46
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;Z)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    if-eqz p0, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    if-eqz p0, :cond_2

    iget-wide v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187ac

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p1}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 112
    return-void

    :cond_1
    move v0, v1

    .line 105
    goto :goto_0

    .line 107
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_1
.end method

.method public static a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZIZ)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    if-eqz p0, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    if-eqz p0, :cond_2

    iget-wide v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v3, 0x18782

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1, v3, v0, v2, p3}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 133
    return-void

    :cond_1
    move v0, v1

    .line 125
    goto :goto_0

    .line 127
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 129
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZIZZ)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86
    if-eqz p0, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    if-eqz p0, :cond_2

    iget-wide v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    if-eqz p3, :cond_3

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18781

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1, v2, v4, p4}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 95
    return-void

    :cond_1
    move v0, v1

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v3

    .line 90
    goto :goto_2

    :cond_4
    move v2, v3

    .line 91
    goto :goto_3
.end method

.method public static a(Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;ZZ)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 60
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    if-eqz p0, :cond_1

    iget v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->pluginId:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    if-eqz p0, :cond_0

    iget v1, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->versionCode:I

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    if-eqz p0, :cond_2

    iget-wide v0, p0, Lcom/kingroot/kinguser/plugin/upgrade/PluginUpgradeInfo;->bdT:J

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x187ab

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 69
    return-void

    :cond_1
    move v0, v1

    .line 61
    goto :goto_0

    .line 63
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 64
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static c(IIZ)V
    .locals 4

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x187aa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, p2}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 29
    return-void
.end method
