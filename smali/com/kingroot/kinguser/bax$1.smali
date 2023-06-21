.class Lcom/kingroot/kinguser/bax$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bax;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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
.field final synthetic Hs:Landroid/content/Intent;

.field final synthetic bet:Lcom/kingroot/kinguser/bax;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bax;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/kingroot/kinguser/bax$1;->bet:Lcom/kingroot/kinguser/bax;

    iput-object p2, p0, Lcom/kingroot/kinguser/bax$1;->Hs:Landroid/content/Intent;

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
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 27
    invoke-static {}, Lcom/kingroot/kinguser/ajn;->zp()Lcom/kingroot/kinguser/ajn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajn;->zq()V

    .line 29
    invoke-static {}, Lcom/kingroot/kinguser/ajb;->yT()Lcom/kingroot/kinguser/ajb;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/kingroot/kinguser/ajb;->checkAsync(ZZLcom/kingroot/kinguser/common/check/ISuCheckListener;)V

    .line 30
    invoke-static {}, Lcom/kingroot/kinguser/ajb;->yT()Lcom/kingroot/kinguser/ajb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ajb;->delayCheckAgain()V

    .line 31
    invoke-static {}, Lcom/kingroot/kinguser/bdx;->jS()V

    .line 33
    iget-object v0, p0, Lcom/kingroot/kinguser/bax$1;->Hs:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->Cy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {v2}, Lcom/kingroot/kinguser/alb;->fb(I)V

    .line 40
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/bcr;->XT()Lcom/kingroot/kinguser/bcr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bcr;->XU()V

    .line 43
    :cond_1
    return-object v3
.end method
