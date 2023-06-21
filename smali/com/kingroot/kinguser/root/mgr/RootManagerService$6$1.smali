.class Lcom/kingroot/kinguser/root/mgr/RootManagerService$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/root/mgr/RootManagerService$6;->run()V
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
.field final synthetic bfJ:Lcom/kingroot/kinguser/root/mgr/RootManagerService$6;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/root/mgr/RootManagerService$6;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/kingroot/kinguser/root/mgr/RootManagerService$6$1;->bfJ:Lcom/kingroot/kinguser/root/mgr/RootManagerService$6;

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
    .line 826
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 827
    invoke-static {}, Lcom/kingroot/kinguser/bbt;->WG()Lcom/kingroot/kinguser/bbt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bbt;->getAllAppsInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;

    .line 829
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    if-eqz v3, :cond_0

    .line 834
    iget-object v3, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v3}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 835
    iget-object v0, v0, Lcom/kingroot/kinguser/model/RootMgrAppModel;->aQQ:Lcom/kingroot/kinguser/model/AppInfo;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 840
    :cond_1
    invoke-static {v1}, Lcom/kingroot/kinguser/awd;->o(Ljava/util/Collection;)V

    .line 841
    const/4 v0, 0x0

    return-object v0
.end method
