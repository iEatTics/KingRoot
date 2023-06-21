.class Lcom/kingroot/kinguser/bga$7;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bga;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/bga;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bga;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$7;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/bed$a;)V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 684
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 685
    invoke-static {}, Lcom/kingroot/kinguser/bfw;->aaS()Lcom/kingroot/kinguser/bfw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfw;->aaU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    invoke-static {}, Lcom/kingroot/kinguser/bfp;->aay()Lcom/kingroot/kinguser/bfp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfp;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 689
    :goto_0
    if-nez v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$7;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/bga;->iE(I)V

    .line 691
    iget-object v0, p0, Lcom/kingroot/kinguser/bga$7;->this$0:Lcom/kingroot/kinguser/bga;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/kingroot/kinguser/bga;->a(Lcom/kingroot/kinguser/bga;ILjava/util/List;Ljava/util/List;)V

    .line 712
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 686
    goto :goto_0

    .line 695
    :cond_1
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    const-wide v4, 0x1cf7c5800L

    invoke-virtual {v0, v2, v4, v5}, Lcom/kingroot/kinguser/bfs;->a(ZJ)Ljava/util/List;

    move-result-object v3

    .line 696
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    const-wide v4, 0x1cf7c5800L

    invoke-virtual {v0, v1, v4, v5}, Lcom/kingroot/kinguser/bfs;->a(ZJ)Ljava/util/List;

    move-result-object v0

    .line 699
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v7, :cond_2

    .line 700
    invoke-interface {v0, v2, v7}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 703
    :cond_2
    invoke-static {v3}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 704
    iget-object v1, p0, Lcom/kingroot/kinguser/bga$7;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-virtual {v1, v6}, Lcom/kingroot/kinguser/bga;->iE(I)V

    .line 705
    iget-object v1, p0, Lcom/kingroot/kinguser/bga$7;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v1, v6, v0, v3}, Lcom/kingroot/kinguser/bga;->a(Lcom/kingroot/kinguser/bga;ILjava/util/List;Ljava/util/List;)V

    goto :goto_1

    .line 707
    :cond_3
    iget-object v2, p0, Lcom/kingroot/kinguser/bga$7;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/bga;->iE(I)V

    .line 708
    iget-object v2, p0, Lcom/kingroot/kinguser/bga$7;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-static {v2, v1, v0, v3}, Lcom/kingroot/kinguser/bga;->a(Lcom/kingroot/kinguser/bga;ILjava/util/List;Ljava/util/List;)V

    goto :goto_1
.end method
