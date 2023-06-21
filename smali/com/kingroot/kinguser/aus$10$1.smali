.class Lcom/kingroot/kinguser/aus$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aus$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aSG:Lcom/kingroot/kinguser/aus$10;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aus$10;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/kingroot/kinguser/aus$10$1;->aSG:Lcom/kingroot/kinguser/aus$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 536
    .line 537
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$10$1;->aSG:Lcom/kingroot/kinguser/aus$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/aus$10;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->c(Lcom/kingroot/kinguser/aus;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 538
    const/4 v3, 0x2

    .line 540
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$10$1;->aSG:Lcom/kingroot/kinguser/aus$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/aus$10;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->b(Lcom/kingroot/kinguser/aus;)I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 542
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bbv;->hU(I)V

    .line 543
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$10$1;->aSG:Lcom/kingroot/kinguser/aus$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/aus$10;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->d(Lcom/kingroot/kinguser/aus;)Lcom/kingroot/kinguser/auj$b;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/kingroot/kinguser/auj$b;->cR(Z)V

    .line 558
    :goto_0
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    move v2, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/ady;->c(IIIII)V

    .line 559
    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$10$1;->aSG:Lcom/kingroot/kinguser/aus$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/aus$10;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aus;->QK()V

    goto :goto_0

    .line 548
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$10$1;->aSG:Lcom/kingroot/kinguser/aus$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/aus$10;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->d(Lcom/kingroot/kinguser/aus;)Lcom/kingroot/kinguser/auj$b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/kingroot/kinguser/auj$b;->cR(Z)V

    .line 550
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$10$1;->aSG:Lcom/kingroot/kinguser/aus$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/aus$10;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0}, Lcom/kingroot/kinguser/aus;->b(Lcom/kingroot/kinguser/aus;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 552
    iget-object v0, p0, Lcom/kingroot/kinguser/aus$10$1;->aSG:Lcom/kingroot/kinguser/aus$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/aus$10;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/aus;->a(Lcom/kingroot/kinguser/aus;I)I

    .line 555
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/aus$10$1;->aSG:Lcom/kingroot/kinguser/aus$10;

    iget-object v2, v2, Lcom/kingroot/kinguser/aus$10;->this$0:Lcom/kingroot/kinguser/aus;

    invoke-static {v2}, Lcom/kingroot/kinguser/aus;->b(Lcom/kingroot/kinguser/aus;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bbv;->hT(I)V

    .line 556
    invoke-static {}, Lcom/kingroot/kinguser/bbv;->WK()Lcom/kingroot/kinguser/bbv;

    move-result-object v0

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/bbv;->hU(I)V

    move v3, v4

    goto :goto_0
.end method
