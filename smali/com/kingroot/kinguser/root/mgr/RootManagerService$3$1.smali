.class Lcom/kingroot/kinguser/root/mgr/RootManagerService$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/mgr/RootManagerService$3;->a(Lcom/kingroot/kinguser/bed$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kingroot/kinguser/zk$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic bfH:Lcom/kingroot/kinguser/root/mgr/RootManagerService$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService$3;)V
    .locals 0

    .prologue
    .line 505
    iput-object p1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$3$1;->bfH:Lcom/kingroot/kinguser/root/mgr/RootManagerService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 508
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 509
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 510
    invoke-static {v0}, Lcom/kingroot/kinguser/bgh;->jf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 517
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$3$1;->bfH:Lcom/kingroot/kinguser/root/mgr/RootManagerService$3;

    iget-object v2, v2, Lcom/kingroot/kinguser/root/mgr/RootManagerService$3;->bfG:Lcom/kingroot/kinguser/root/mgr/RootManagerService;

    const/4 v3, -0x1

    invoke-static {v2, v0, v1, v3}, Lcom/kingroot/kinguser/root/mgr/RootManagerService;->access$300(Lcom/kingroot/kinguser/root/mgr/RootManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 518
    :catch_0
    move-exception v0

    goto :goto_0
.end method
