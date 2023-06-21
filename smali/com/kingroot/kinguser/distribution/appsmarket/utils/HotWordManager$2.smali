.class public Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;
.super Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadDataListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anh;->a(ILcom/kingroot/kinguser/anh$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anh;

.field final synthetic val$listener:Lcom/kingroot/kinguser/anh$a;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/anh;Lcom/kingroot/kinguser/anh$a;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;->this$0:Lcom/kingroot/kinguser/anh;

    iput-object p2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;->val$listener:Lcom/kingroot/kinguser/anh$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/ILoadDataListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    if-nez p1, :cond_3

    .line 64
    if-nez p2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;->this$0:Lcom/kingroot/kinguser/anh;

    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;->this$0:Lcom/kingroot/kinguser/anh;

    invoke-static {v2}, Lcom/kingroot/kinguser/anh;->a(Lcom/kingroot/kinguser/anh;)I

    move-result v2

    add-int/lit16 v2, v2, 0xc8

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/anh;->a(Lcom/kingroot/kinguser/anh;I)I

    .line 69
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;->this$0:Lcom/kingroot/kinguser/anh;

    invoke-static {v1, p2}, Lcom/kingroot/kinguser/anh;->a(Lcom/kingroot/kinguser/anh;Ljava/util/List;)V

    .line 74
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;->this$0:Lcom/kingroot/kinguser/anh;

    invoke-static {v1, p2}, Lcom/kingroot/kinguser/anh;->b(Lcom/kingroot/kinguser/anh;Ljava/util/List;)V

    .line 75
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;->this$0:Lcom/kingroot/kinguser/anh;

    invoke-static {v1, p2}, Lcom/kingroot/kinguser/anh;->c(Lcom/kingroot/kinguser/anh;Ljava/util/List;)V

    .line 76
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;->this$0:Lcom/kingroot/kinguser/anh;

    invoke-static {v1}, Lcom/kingroot/kinguser/anh;->b(Lcom/kingroot/kinguser/anh;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;->this$0:Lcom/kingroot/kinguser/anh;

    invoke-static {v2}, Lcom/kingroot/kinguser/anh;->b(Lcom/kingroot/kinguser/anh;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 89
    iget-object v2, p0, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;->this$0:Lcom/kingroot/kinguser/anh;

    invoke-static {v2}, Lcom/kingroot/kinguser/anh;->b(Lcom/kingroot/kinguser/anh;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;->val$listener:Lcom/kingroot/kinguser/anh$a;

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/kingroot/kinguser/distribution/appsmarket/utils/HotWordManager$2;->val$listener:Lcom/kingroot/kinguser/anh$a;

    invoke-interface {v1, v0}, Lcom/kingroot/kinguser/anh$a;->onFinish(Ljava/util/List;)V

    .line 96
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/akl;->at(Ljava/util/List;)V

    goto :goto_0

    .line 79
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/akl;->AS()Lcom/kingroot/kinguser/akl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/akl;->AT()Ljava/util/ArrayList;

    move-result-object v1

    .line 81
    invoke-static {v1}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
