.class Lcom/kingroot/kinguser/auo$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/auo$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aRJ:Z

.field final synthetic aRK:Lcom/kingroot/kinguser/auo$6;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/auo$6;Z)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/kingroot/kinguser/auo$6$1;->aRK:Lcom/kingroot/kinguser/auo$6;

    iput-boolean p2, p0, Lcom/kingroot/kinguser/auo$6$1;->aRJ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/kingroot/kinguser/auo$6$1;->aRJ:Z

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/kingroot/kinguser/auo$6$1;->aRK:Lcom/kingroot/kinguser/auo$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/auo$6;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;)Lcom/kingroot/kinguser/auf$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$b;->JG()V

    .line 333
    :goto_0
    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/auo$6$1;->aRK:Lcom/kingroot/kinguser/auo$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/auo$6;->this$0:Lcom/kingroot/kinguser/auo;

    invoke-static {v0}, Lcom/kingroot/kinguser/auo;->a(Lcom/kingroot/kinguser/auo;)Lcom/kingroot/kinguser/auf$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$b;->JK()V

    goto :goto_0
.end method
