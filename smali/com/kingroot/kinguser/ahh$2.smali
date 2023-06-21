.class Lcom/kingroot/kinguser/ahh$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ahh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ahh;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/ahh;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/kingroot/kinguser/ahh$2;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 144
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/ahh$2;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahh;->b(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ahh$2;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahh;->b(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;

    .line 151
    iget-boolean v3, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->apx:Z

    if-eqz v3, :cond_0

    .line 155
    iget-object v3, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->apy:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 156
    if-eqz v3, :cond_0

    .line 157
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v4

    iget-object v5, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 158
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v4

    iget-object v5, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/aks;->hn(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    iget v4, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->type:I

    new-instance v5, Lcom/kingroot/kinguser/ala$a;

    iget-object v3, v3, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-direct {v5, v3, v6}, Lcom/kingroot/kinguser/ala$a;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/ahg;->a(ILcom/kingroot/kinguser/ala$a;)Z

    .line 163
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v3

    iget-object v0, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/aks;->hm(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ahh$2;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahh;->a(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 169
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 170
    iget-object v0, p0, Lcom/kingroot/kinguser/ahh$2;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahh;->a(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 171
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 173
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;

    .line 174
    iget-boolean v2, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->apx:Z

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 179
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v2

    iget-object v3, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    iget-object v3, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/aks;->hn(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 181
    iget v2, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->type:I

    new-instance v3, Lcom/kingroot/kinguser/ala$a;

    iget-object v4, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    invoke-direct {v3, v4, v6}, Lcom/kingroot/kinguser/ala$a;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    invoke-static {v2, v3}, Lcom/kingroot/kinguser/ahg;->a(ILcom/kingroot/kinguser/ala$a;)Z

    .line 184
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v2

    iget-object v0, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/kingroot/kinguser/aks;->hm(Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 187
    :cond_3
    return-void
.end method
