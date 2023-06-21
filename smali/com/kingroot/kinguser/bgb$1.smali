.class Lcom/kingroot/kinguser/bgb$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic boE:Lcom/kingroot/kinguser/bgb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bgb;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/kingroot/kinguser/bgb$1;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 102
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 103
    invoke-static {}, Lcom/kingroot/kinguser/bfs;->aaI()Lcom/kingroot/kinguser/bfs;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x1cf7c5800L

    invoke-virtual {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bfs;->a(ZJ)Ljava/util/List;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/kingroot/kinguser/bgb$1;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v1}, Lcom/kingroot/kinguser/bgb;->a(Lcom/kingroot/kinguser/bgb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 105
    iget-object v1, p0, Lcom/kingroot/kinguser/bgb$1;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v1}, Lcom/kingroot/kinguser/bgb;->a(Lcom/kingroot/kinguser/bgb;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$1;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->b(Lcom/kingroot/kinguser/bgb;)V

    .line 107
    return-void
.end method
