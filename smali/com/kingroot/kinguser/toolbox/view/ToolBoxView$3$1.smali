.class Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmF:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

.field final synthetic bmG:Ljava/lang/String;

.field final synthetic bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iput-object p2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmF:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    iput-object p3, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 303
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->g(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->g(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 306
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZN()V

    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmF:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->g(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmF:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$a;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->d(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 313
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    iget-object v3, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v3, v3, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v3}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->d(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->a(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;I)I

    .line 314
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->h(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    iget-object v3, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->lb(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->g(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v3, v3, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v3}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->d(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 320
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 323
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->i(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)V

    .line 324
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3$1;->bmH:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$3;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-static {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->b(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;)Lcom/kingroot/kinguser/bfc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bfc;->notifyDataSetChanged()V

    .line 325
    return-void

    .line 320
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 321
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
