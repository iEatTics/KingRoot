.class public Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$3;
.super Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/amy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/amy;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/amy;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$3;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/net/download/NetworkChangedRemoteListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onTurnIntoMobileNetwork()V
    .locals 5

    .prologue
    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$3;->this$0:Lcom/kingroot/kinguser/amy;

    invoke-static {v0}, Lcom/kingroot/kinguser/amy;->a(Lcom/kingroot/kinguser/amy;)Lcom/kingroot/kinguser/alz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alz;->HR()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    .line 114
    iget-object v3, p0, Lcom/kingroot/kinguser/distribution/appsmarket/net/AppsMarketDownloader$3;->this$0:Lcom/kingroot/kinguser/amy;

    iget-object v4, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/amy;->hM(Ljava/lang/String;)Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;

    move-result-object v3

    .line 115
    if-eqz v3, :cond_0

    .line 118
    sget-object v4, Lcom/kingroot/kinguser/amy$7;->azW:[I

    invoke-virtual {v3}, Lcom/kingroot/kinguser/distribution/net/download/DownloaderTaskInfo;->KJ()Lcom/kingroot/kinguser/boq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kingroot/kinguser/boq;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->appName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 126
    invoke-static {}, Lcom/kingroot/kinguser/adm;->st()Lcom/kingroot/kinguser/adm;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/adm;->a(Ljava/util/List;I)V

    .line 128
    :cond_2
    return-void

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
