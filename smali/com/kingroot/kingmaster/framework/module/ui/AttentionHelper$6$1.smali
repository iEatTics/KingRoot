.class public Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/adm$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kingroot/kinguser/adm$5;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/adm$5;)V
    .locals 0

    .prologue
    .line 1829
    iput-object p1, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;->this$1:Lcom/kingroot/kinguser/adm$5;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadAppHistoryListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1832
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1833
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1834
    const-wide/16 v4, 0x0

    .line 1835
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    .line 1836
    invoke-virtual {v0}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ij()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->k(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppBaseModel;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1837
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1838
    iget-object v6, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->iconUrl:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1839
    iget-wide v6, v0, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->fileSize:J

    add-long/2addr v4, v6

    goto :goto_0

    .line 1842
    :cond_1
    invoke-static {v3}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1844
    iget-object v0, p0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;->this$1:Lcom/kingroot/kinguser/adm$5;

    iget-object v0, v0, Lcom/kingroot/kinguser/adm$5;->adc:Lcom/kingroot/kinguser/adm;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/adm;->cy(I)V

    .line 1891
    :goto_1
    return-void

    .line 1847
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    :try_start_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1850
    invoke-static {}, Lcom/kingroot/kinguser/apv;->LO()Lcom/kingroot/kinguser/apv;

    move-result-object v6

    new-instance v7, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$1;

    invoke-direct {v7, p0, v1, v2, v0}, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$1;-><init>(Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v6, v1, v7}, Lcom/kingroot/kinguser/apv;->a(Ljava/util/List;Lcom/kingroot/kinguser/apv$b;)V

    .line 1864
    const-wide/16 v6, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1869
    :goto_2
    new-instance v0, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1$2;-><init>(Lcom/kingroot/kingmaster/framework/module/ui/AttentionHelper$6$1;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1865
    :catch_0
    move-exception v0

    goto :goto_2
.end method
