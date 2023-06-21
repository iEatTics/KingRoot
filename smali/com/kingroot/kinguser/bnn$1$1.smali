.class Lcom/kingroot/kinguser/bnn$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bnn$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic bEq:Lcom/kingroot/kinguser/bnn$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bnn$1;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/kingroot/kinguser/bnn$1$1;->bEq:Lcom/kingroot/kinguser/bnn$1;

    iput-object p2, p0, Lcom/kingroot/kinguser/bnn$1$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 295
    new-instance v0, Lcom/kingroot/kinguser/bnp;

    iget-object v1, p0, Lcom/kingroot/kinguser/bnn$1$1;->a:Landroid/app/Activity;

    const-string v2, "action_login"

    iget-object v3, p0, Lcom/kingroot/kinguser/bnn$1$1;->bEq:Lcom/kingroot/kinguser/bnn$1;

    iget-object v3, v3, Lcom/kingroot/kinguser/bnn$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/bnn$1$1;->bEq:Lcom/kingroot/kinguser/bnn$1;

    iget-object v4, v4, Lcom/kingroot/kinguser/bnn$1;->bEo:Lcom/kingroot/kinguser/bwd;

    iget-object v5, p0, Lcom/kingroot/kinguser/bnn$1$1;->bEq:Lcom/kingroot/kinguser/bnn$1;

    iget-object v5, v5, Lcom/kingroot/kinguser/bnn$1;->bEp:Lcom/kingroot/kinguser/bnn;

    invoke-static {v5}, Lcom/kingroot/kinguser/bnn;->f(Lcom/kingroot/kinguser/bnn;)Lcom/kingroot/kinguser/bno;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/kingroot/kinguser/bnp;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bwd;Lcom/kingroot/kinguser/bno;)V

    .line 296
    iget-object v1, p0, Lcom/kingroot/kinguser/bnn$1$1;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kingroot/kinguser/bnn$1$1;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnp;->show()V

    .line 299
    :cond_0
    return-void
.end method
