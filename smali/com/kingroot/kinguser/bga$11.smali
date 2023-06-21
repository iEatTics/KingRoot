.class Lcom/kingroot/kinguser/bga$11;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bga;->abm()V
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
    .line 256
    iput-object p1, p0, Lcom/kingroot/kinguser/bga$11;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide v4, 0x1cf7c5800L

    const/4 v0, 0x1

    .line 259
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 260
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v5}, Lcom/kingroot/kinguser/bfs;->a(ZJ)Ljava/util/List;

    move-result-object v1

    .line 261
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/kingroot/kinguser/bfs;->a(ZJ)Ljava/util/List;

    move-result-object v2

    .line 262
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 264
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/kingroot/kinguser/bfs;->dP(Z)V

    .line 265
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 266
    iget-object v3, p0, Lcom/kingroot/kinguser/bga$11;->this$0:Lcom/kingroot/kinguser/bga;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    :goto_0
    invoke-static {v3, v0, v1, v2}, Lcom/kingroot/kinguser/bga;->a(Lcom/kingroot/kinguser/bga;ILjava/util/List;Ljava/util/List;)V

    .line 267
    const v0, 0x7f0704f5

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->show(I)V

    .line 271
    :goto_1
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 269
    :cond_1
    const v0, 0x7f0704f6

    invoke-static {v0}, Lcom/kingroot/kinguser/zj;->show(I)V

    goto :goto_1
.end method
