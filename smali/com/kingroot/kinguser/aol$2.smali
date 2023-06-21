.class Lcom/kingroot/kinguser/aol$2;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aol;->a(Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aGn:Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;

.field final synthetic this$0:Lcom/kingroot/kinguser/aol;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aol;Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/kingroot/kinguser/aol$2;->this$0:Lcom/kingroot/kinguser/aol;

    iput-object p2, p0, Lcom/kingroot/kinguser/aol$2;->aGn:Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 92
    iget-object v0, p0, Lcom/kingroot/kinguser/aol$2;->this$0:Lcom/kingroot/kinguser/aol;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aol;->JX()Ljava/util/List;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/kingroot/kinguser/aol$2;->aGn:Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;

    if-eqz v1, :cond_0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/kingroot/kinguser/aol$2;->aGn:Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/distribution/examination/net/ReqAppCallback;->onResult(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method
