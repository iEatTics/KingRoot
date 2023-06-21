.class Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/uz$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGH:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3$1;->aGH:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public db(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3$1;->aGH:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-static {v0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->b(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3$1;->aGH:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;->val$request:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 147
    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 150
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3$1;->aGH:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-static {v1}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->b(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3$1;->aGH:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;->val$request:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3$1;->aGH:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3$1;->aGH:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;->val$request:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3$1;->aGH:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;

    iget-object v2, v2, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    invoke-virtual {v2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->IE()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;Ljava/lang/String;)V

    .line 153
    return-void
.end method
