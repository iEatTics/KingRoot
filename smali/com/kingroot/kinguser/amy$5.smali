.class Lcom/kingroot/kinguser/amy$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/amy;->IF()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/amy;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/amy;)V
    .locals 0

    .prologue
    .line 791
    iput-object p1, p0, Lcom/kingroot/kinguser/amy$5;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 794
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$5;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/amy;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->f(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 796
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 797
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 798
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 799
    invoke-static {}, Lcom/kingroot/kinguser/zh;->pq()Lcom/kingroot/kinguser/zh;

    move-result-object v4

    .line 800
    iget-object v0, p0, Lcom/kingroot/kinguser/amy$5;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/amy;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 801
    iget v6, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appStatus:I

    packed-switch v6, :pswitch_data_0

    .line 813
    invoke-static {v0}, Lcom/kingroot/kinguser/apu;->h(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)Ljava/io/File;

    move-result-object v6

    .line 814
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    .line 815
    invoke-virtual {v4, v6}, Lcom/kingroot/kinguser/zh;->du(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->isUpdate:Z

    if-eqz v6, :cond_0

    .line 817
    :cond_1
    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 805
    :pswitch_0
    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 810
    :pswitch_1
    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 823
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 825
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/adm;->a(Ljava/util/List;I)V

    .line 840
    :goto_1
    return-void

    .line 826
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 828
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/kingroot/kinguser/adm;->a(Ljava/util/List;I)V

    goto :goto_1

    .line 829
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 831
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Lcom/kingroot/kinguser/adm;->a(Ljava/util/List;I)V

    goto :goto_1

    .line 834
    :cond_5
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sL()V

    goto :goto_1

    .line 838
    :cond_6
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/adm;->sL()V

    goto :goto_1

    .line 801
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
