.class Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;->a(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;ILcom/kingroot/kinguser/distribution/net/download/IAppDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

.field final synthetic val$request:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;->aGG:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;->val$request:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    invoke-static {}, Lcom/kingroot/common/app/KApplication;->ge()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;->val$request:Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;

    iget-object v1, v1, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadRequest;->apkUrl:Ljava/lang/String;

    new-instance v2, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3$1;-><init>(Lcom/kingroot/kinguser/distribution/net/download/AppDownloadClient$3;)V

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/uz;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/uz$c;)V

    .line 155
    return-void
.end method
