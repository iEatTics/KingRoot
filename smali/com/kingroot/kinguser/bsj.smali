.class public Lcom/kingroot/kinguser/bsj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kingroot/kinguser/bsj$a;
    }
.end annotation


# instance fields
.field protected bLG:Lorg/apache/http/params/HttpParams;

.field private bLH:Z

.field private bLI:Ljava/lang/String;

.field private bLJ:I

.field protected bLK:Lcom/kingroot/kinguser/bsj$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/kingroot/kinguser/bsj;->bLG:Lorg/apache/http/params/HttpParams;

    .line 44
    iput-boolean v1, p0, Lcom/kingroot/kinguser/bsj;->bLH:Z

    .line 45
    iput-object v0, p0, Lcom/kingroot/kinguser/bsj;->bLI:Ljava/lang/String;

    .line 46
    iput v1, p0, Lcom/kingroot/kinguser/bsj;->bLJ:I

    .line 50
    iput-object v0, p0, Lcom/kingroot/kinguser/bsj;->bLK:Lcom/kingroot/kinguser/bsj$a;

    .line 21
    return-void
.end method


# virtual methods
.method protected a(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/kingroot/kinguser/bsj;->bLK:Lcom/kingroot/kinguser/bsj$a;

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/kingroot/kinguser/bsj;->bLK:Lcom/kingroot/kinguser/bsj$a;

    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/bsj$a;->g(Landroid/os/Bundle;)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/kingroot/kinguser/bsj;->bLK:Lcom/kingroot/kinguser/bsj$a;

    invoke-interface {v0, p2}, Lcom/kingroot/kinguser/bsj$a;->h(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected ahT()Lorg/apache/http/client/HttpClient;
    .locals 4

    .prologue
    .line 126
    .line 128
    iget-object v0, p0, Lcom/kingroot/kinguser/bsj;->bLG:Lorg/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bsj;->bLG:Lorg/apache/http/params/HttpParams;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bsj;->bLG:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 133
    iget-object v0, p0, Lcom/kingroot/kinguser/bsj;->bLG:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 134
    iget-object v0, p0, Lcom/kingroot/kinguser/bsj;->bLG:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 135
    iget-object v0, p0, Lcom/kingroot/kinguser/bsj;->bLG:Lorg/apache/http/params/HttpParams;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 137
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/kingroot/kinguser/bsj;->bLG:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 139
    iget-boolean v1, p0, Lcom/kingroot/kinguser/bsj;->bLH:Z

    if-eqz v1, :cond_1

    .line 140
    new-instance v1, Lorg/apache/http/HttpHost;

    iget-object v2, p0, Lcom/kingroot/kinguser/bsj;->bLI:Ljava/lang/String;

    iget v3, p0, Lcom/kingroot/kinguser/bsj;->bLJ:I

    invoke-direct {v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 141
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "http.route.default-proxy"

    invoke-interface {v2, v3, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 144
    :cond_1
    return-object v0
.end method
