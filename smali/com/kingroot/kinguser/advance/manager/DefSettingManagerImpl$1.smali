.class public Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/ahh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/ahh;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/ahh;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 40
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahh;->a(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahh;->a(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 46
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;

    .line 49
    iget-object v1, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 52
    iget-object v6, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->pkgName:Ljava/lang/String;

    iget-object v7, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 55
    iput-object v1, v0, Lcom/kingroot/kinguser/advance/model/DefaultSettingInfo;->apy:Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 56
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahh;->a(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 64
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahh;->a(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 65
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahh;->a(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahh;->b(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 69
    :try_start_3
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahh;->b(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v0}, Lcom/kingroot/kinguser/ahh;->b(Lcom/kingroot/kinguser/ahh;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 74
    invoke-static {}, Lcom/kingroot/kinguser/beg;->Zj()Lcom/kingroot/kinguser/beg;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/advance/manager/DefSettingManagerImpl$1;->this$0:Lcom/kingroot/kinguser/ahh;

    invoke-static {v1}, Lcom/kingroot/kinguser/ahh;->c(Lcom/kingroot/kinguser/ahh;)Lcom/kingroot/kinguser/bed;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/beg;->c(Lcom/kingroot/kinguser/bed;)Z

    .line 75
    return-void

    .line 66
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 71
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method
