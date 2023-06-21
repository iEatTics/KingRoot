.class final Lcom/kingroot/kinguser/bjq$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bjq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic bxW:Lcom/kingroot/kinguser/bjq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bjq;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/kingroot/kinguser/bjq$b;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$b;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjq;->a(Lcom/kingroot/kinguser/bjq;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$b;->bxW:Lcom/kingroot/kinguser/bjq;

    iget-object v0, v0, Lcom/kingroot/kinguser/bjq;->ahz:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$b;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-static {v0}, Lcom/kingroot/kinguser/bjq;->a(Lcom/kingroot/kinguser/bjq;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bjq$d;

    .line 476
    iget-boolean v1, v0, Lcom/kingroot/kinguser/bjq$d;->afR:Z

    if-nez v1, :cond_1

    .line 477
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kingroot/kinguser/bjq$d;->afR:Z

    .line 478
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq$b;->bxW:Lcom/kingroot/kinguser/bjq;

    iget-object v1, v1, Lcom/kingroot/kinguser/bjq;->ahz:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 483
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bjq$b;->bxW:Lcom/kingroot/kinguser/bjq;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bjq;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 486
    :cond_0
    return-void

    .line 480
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/kingroot/kinguser/bjq$d;->afR:Z

    .line 481
    iget-object v1, p0, Lcom/kingroot/kinguser/bjq$b;->bxW:Lcom/kingroot/kinguser/bjq;

    iget-object v1, v1, Lcom/kingroot/kinguser/bjq;->ahz:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
