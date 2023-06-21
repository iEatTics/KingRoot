.class Lcom/kingroot/kinguser/alp$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/buc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/buc",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ayE:Lcom/kingroot/kinguser/alp$11;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$11;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$11$1;->ayE:Lcom/kingroot/kinguser/alp$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/util/List;Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/qqpimsecure/seachsdk/network/RequestInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$11$1;->ayE:Lcom/kingroot/kinguser/alp$11;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$11;->ayD:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadDataListener;

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$11$1;->ayE:Lcom/kingroot/kinguser/alp$11;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$11;->ayD:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadDataListener;

    invoke-interface {v0, p1, p2}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadDataListener;->onReceive(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    goto :goto_0
.end method
