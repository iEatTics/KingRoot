.class Lcom/kingroot/kinguser/bbc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bbc;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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

.field final synthetic beA:Lcom/kingroot/kinguser/bbc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbc;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kingroot/kinguser/bbc$1;->beA:Lcom/kingroot/kinguser/bbc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bbc$1;->Hs:Landroid/content/Intent;

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
    .line 57
    const-string v0, "com.kingroot.kinguser.ACTION_MAIN_START_CHECK"

    iget-object v1, p0, Lcom/kingroot/kinguser/bbc$1;->Hs:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/bbc$1;->beA:Lcom/kingroot/kinguser/bbc;

    invoke-static {v0}, Lcom/kingroot/kinguser/bbc;->a(Lcom/kingroot/kinguser/bbc;)V

    .line 61
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
