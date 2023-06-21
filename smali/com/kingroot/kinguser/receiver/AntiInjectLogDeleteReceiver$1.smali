.class Lcom/kingroot/kinguser/receiver/AntiInjectLogDeleteReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/receiver/AntiInjectLogDeleteReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic aQe:Landroid/content/Intent;

.field final synthetic bes:Lcom/kingroot/kinguser/receiver/AntiInjectLogDeleteReceiver;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/receiver/AntiInjectLogDeleteReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/kingroot/kinguser/receiver/AntiInjectLogDeleteReceiver$1;->bes:Lcom/kingroot/kinguser/receiver/AntiInjectLogDeleteReceiver;

    iput-object p2, p0, Lcom/kingroot/kinguser/receiver/AntiInjectLogDeleteReceiver$1;->aQe:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
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
    .line 21
    iget-object v0, p0, Lcom/kingroot/kinguser/receiver/AntiInjectLogDeleteReceiver$1;->aQe:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/kingroot/kinguser/receiver/AntiInjectLogDeleteReceiver$1;->aQe:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 23
    const-string v1, "com.kingroot.kinguser.ANTILOG_DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/aks;->bM(Z)V

    .line 29
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
