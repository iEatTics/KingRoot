.class Lcom/kingroot/kinguser/anq$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/alh$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/anq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anq;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/kingroot/kinguser/anq$5;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$5;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v0}, Lcom/kingroot/kinguser/anq;->m(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aoi;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/aoi;->C(Ljava/lang/String;Z)V

    .line 527
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$5;->this$0:Lcom/kingroot/kinguser/anq;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/kingroot/kinguser/anq;->B(Ljava/lang/String;Z)V

    .line 528
    return-void
.end method

.method public z(Ljava/lang/String;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 514
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/akl;->gL(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/kingroot/kinguser/anq$5;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-static {v1}, Lcom/kingroot/kinguser/anq;->c(Lcom/kingroot/kinguser/anq;)Lcom/kingroot/kinguser/aoc;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/kingroot/kinguser/aoc;->ff(I)V

    .line 517
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$5;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/anq;->cB(Z)V

    .line 519
    iget-object v0, p0, Lcom/kingroot/kinguser/anq$5;->this$0:Lcom/kingroot/kinguser/anq;

    invoke-virtual {v0, v2}, Lcom/kingroot/kinguser/anq;->cC(Z)V

    .line 522
    :cond_0
    return-void
.end method
