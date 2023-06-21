.class Lcom/kingroot/kinguser/brt$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/brt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic bKZ:Lcom/kingroot/kinguser/brt;

.field final bLc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/brt;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/kingroot/kinguser/brt$b;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p2, p0, Lcom/kingroot/kinguser/brt$b;->bLc:Ljava/lang/String;

    .line 171
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$b;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v0}, Lcom/kingroot/kinguser/brt;->a(Lcom/kingroot/kinguser/brt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brt$b;->bLc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$b;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v0}, Lcom/kingroot/kinguser/brt;->b(Lcom/kingroot/kinguser/brt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brt$b;->bLc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "DisplayControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DetectRunnable mRuningTask.remove(Idle) Idle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/brt$b;->bLc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$b;->bKZ:Lcom/kingroot/kinguser/brt;

    iget-object v1, p0, Lcom/kingroot/kinguser/brt$b;->bLc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/brt;->a(Lcom/kingroot/kinguser/brt;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/kingroot/kinguser/brt$b;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v0}, Lcom/kingroot/kinguser/brt;->b(Lcom/kingroot/kinguser/brt;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/brt$b;->bLc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 183
    if-eqz v0, :cond_1

    .line 185
    iget-object v1, p0, Lcom/kingroot/kinguser/brt$b;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v1}, Lcom/kingroot/kinguser/brt;->c(Lcom/kingroot/kinguser/brt;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    iget-object v1, p0, Lcom/kingroot/kinguser/brt$b;->bKZ:Lcom/kingroot/kinguser/brt;

    invoke-static {v1}, Lcom/kingroot/kinguser/brt;->c(Lcom/kingroot/kinguser/brt;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 189
    :cond_1
    const-string v0, "DisplayControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DetectRunnablem RuningTask.get(Idle)==NULL Idle="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kingroot/kinguser/brt$b;->bLc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
