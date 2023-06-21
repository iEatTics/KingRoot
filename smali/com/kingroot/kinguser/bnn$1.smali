.class Lcom/kingroot/kinguser/bnn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bnn;->a(ZLcom/kingroot/kinguser/bwd;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic bEo:Lcom/kingroot/kinguser/bwd;

.field final synthetic bEp:Lcom/kingroot/kinguser/bnn;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bnn;Ljava/lang/String;Lcom/kingroot/kinguser/bwd;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/kingroot/kinguser/bnn$1;->bEp:Lcom/kingroot/kinguser/bnn;

    iput-object p2, p0, Lcom/kingroot/kinguser/bnn$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/bnn$1;->bEo:Lcom/kingroot/kinguser/bwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 283
    sget-object v0, Lcom/kingroot/kinguser/bnn;->bEk:Ljava/lang/String;

    sget-object v1, Lcom/kingroot/kinguser/bnn;->bEl:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bqr;->i(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 286
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$1;->bEp:Lcom/kingroot/kinguser/bnn;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnn;->e(Lcom/kingroot/kinguser/bnn;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bnn$1;->bEp:Lcom/kingroot/kinguser/bnn;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnn;->e(Lcom/kingroot/kinguser/bnn;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 290
    if-eqz v0, :cond_0

    .line 291
    new-instance v1, Lcom/kingroot/kinguser/bnn$1$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/bnn$1$1;-><init>(Lcom/kingroot/kinguser/bnn$1;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
