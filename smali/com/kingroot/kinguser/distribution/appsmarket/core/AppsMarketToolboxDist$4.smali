.class public Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketToolboxDist$4;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alu;->Hm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/alu;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/alu;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketToolboxDist$4;->this$0:Lcom/kingroot/kinguser/alu;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppsListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 6
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
    .line 151
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketToolboxDist$4;->this$0:Lcom/kingroot/kinguser/alu;

    invoke-static {v0}, Lcom/kingroot/kinguser/alu;->a(Lcom/kingroot/kinguser/alu;)Lcom/kingroot/kinguser/alz;

    move-result-object v2

    monitor-enter v2

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketToolboxDist$4;->this$0:Lcom/kingroot/kinguser/alu;

    invoke-static {v0}, Lcom/kingroot/kinguser/alu;->a(Lcom/kingroot/kinguser/alu;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 155
    invoke-static {p2}, Lcom/kingroot/kinguser/anf;->aA(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;

    .line 157
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v4

    iget-object v5, v1, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/kingroot/kinguser/apv;->id(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 161
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/core/AppsMarketToolboxDist$4;->this$0:Lcom/kingroot/kinguser/alu;

    invoke-static {v0}, Lcom/kingroot/kinguser/alu;->a(Lcom/kingroot/kinguser/alu;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HT()V

    .line 162
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    return-void
.end method
