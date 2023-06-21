.class Lcom/kingroot/kinguser/afj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/zk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/afj;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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

.field final synthetic ahK:Lcom/kingroot/kinguser/afj;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/afj;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/kingroot/kinguser/afj$1;->ahK:Lcom/kingroot/kinguser/afj;

    iput-object p2, p0, Lcom/kingroot/kinguser/afj$1;->Hs:Landroid/content/Intent;

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

    .line 42
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    iget-object v1, p0, Lcom/kingroot/kinguser/afj$1;->Hs:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-object v3

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/afj$1;->Hs:Landroid/content/Intent;

    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 48
    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/kingroot/kinguser/afj$1;->Hs:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-static {}, Lcom/kingroot/kinguser/afj;->vj()Lcom/kingroot/kinguser/afj$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/afj$a;->ff(Ljava/lang/String;)Z

    .line 65
    invoke-static {}, Lcom/kingroot/kinguser/afj;->vj()Lcom/kingroot/kinguser/afj$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/afj$a;->ny()Z

    goto :goto_0
.end method
