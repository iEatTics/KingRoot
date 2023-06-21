.class Lcom/kingroot/kinguser/brq$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/brn$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/brq;->b(Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bKA:Z

.field final synthetic bKu:Lcom/kingroot/kinguser/brq;

.field private final synthetic bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

.field private final synthetic bKz:Lcom/kingroot/kinguser/brq$b;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/brq$5;->bKu:Lcom/kingroot/kinguser/brq;

    iput-object p2, p0, Lcom/kingroot/kinguser/brq$5;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iput-object p3, p0, Lcom/kingroot/kinguser/brq$5;->bKz:Lcom/kingroot/kinguser/brq$b;

    iput-boolean p4, p0, Lcom/kingroot/kinguser/brq$5;->bKA:Z

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kingroot/kinguser/brq$5;)Lcom/kingroot/kinguser/brq;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$5;->bKu:Lcom/kingroot/kinguser/brq;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/util/SparseArray;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bso;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRequestFinished() errorcode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    .line 307
    if-eqz p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$5;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget v0, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 310
    :cond_0
    if-nez p2, :cond_1

    invoke-static {v0}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$5;->bKz:Lcom/kingroot/kinguser/brq$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/brq$b;->bKI:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$5;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget v1, v1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 315
    :goto_0
    iget-boolean v0, p0, Lcom/kingroot/kinguser/brq$5;->bKA:Z

    if-nez v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$5;->bKu:Lcom/kingroot/kinguser/brq;

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$5;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget-object v2, p0, Lcom/kingroot/kinguser/brq$5;->bKz:Lcom/kingroot/kinguser/brq$b;

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/brq;->a(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;)V

    .line 320
    :goto_1
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$5;->bKz:Lcom/kingroot/kinguser/brq$b;

    iget-object v0, v0, Lcom/kingroot/kinguser/brq$b;->bKI:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$5;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget v1, v1, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$5;->bKu:Lcom/kingroot/kinguser/brq;

    iget-object v1, p0, Lcom/kingroot/kinguser/brq$5;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget-object v2, p0, Lcom/kingroot/kinguser/brq$5;->bKz:Lcom/kingroot/kinguser/brq$b;

    invoke-static {v0, v1, v2, p1}, Lcom/kingroot/kinguser/brq;->a(Lcom/kingroot/kinguser/brq;Lcom/tencent/qqpim/discovery/AdRequestData;Lcom/kingroot/kinguser/brq$b;Landroid/util/SparseArray;)V

    goto :goto_1
.end method

.method public c(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/kingroot/kinguser/bso;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 246
    const-string v0, "\u7f51\u7edc\u62c9\u53d6  onDataCallbackt() begin"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->d(Ljava/lang/String;)V

    .line 247
    const-string v0, "\u672c\u5730\u5e7f\u544a\u8fc7\u671f\u8bbe\u7f6e  begin"

    invoke-static {v0}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x0

    .line 249
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$5;->bKu:Lcom/kingroot/kinguser/brq;

    invoke-static {v0}, Lcom/kingroot/kinguser/brq;->c(Lcom/kingroot/kinguser/brq;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$5;->bKu:Lcom/kingroot/kinguser/brq;

    invoke-static {v0}, Lcom/kingroot/kinguser/brq;->c(Lcom/kingroot/kinguser/brq;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/brq$5;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget v2, v2, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 251
    invoke-static {v0}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v2, v1

    .line 249
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$5;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget v0, v0, Lcom/tencent/qqpim/discovery/AdRequestData;->bJp:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 267
    invoke-static {v0}, Lcom/kingroot/kinguser/btf;->cn(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    iget-object v0, p0, Lcom/kingroot/kinguser/brq$5;->bKu:Lcom/kingroot/kinguser/brq;

    invoke-static {v0}, Lcom/kingroot/kinguser/brq;->e(Lcom/kingroot/kinguser/brq;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/brq$5$1;

    invoke-direct {v1, p0, v2}, Lcom/kingroot/kinguser/brq$5$1;-><init>(Lcom/kingroot/kinguser/brq$5;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 300
    :goto_2
    return-void

    .line 253
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bsp;

    .line 254
    iget-object v4, p0, Lcom/kingroot/kinguser/brq$5;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget-object v4, v4, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/kingroot/kinguser/brq$5;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget-object v4, v4, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 255
    iget-object v4, p0, Lcom/kingroot/kinguser/brq$5;->bKy:Lcom/tencent/qqpim/discovery/AdRequestData;

    iget-object v4, v4, Lcom/tencent/qqpim/discovery/AdRequestData;->bJM:Ljava/util/ArrayList;

    iget v5, v0, Lcom/kingroot/kinguser/bsp;->bJq:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/kingroot/kinguser/brq$5;->bKu:Lcom/kingroot/kinguser/brq;

    invoke-static {v4}, Lcom/kingroot/kinguser/brq;->d(Lcom/kingroot/kinguser/brq;)Lcom/kingroot/kinguser/brm;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/brm;->a(Lcom/kingroot/kinguser/bsp;)V

    .line 257
    if-nez v1, :cond_2

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 281
    :cond_3
    const-string v1, "\u66f4\u65b0\u672c\u5730\u7f13\u5b58  begin"

    invoke-static {v1}, Lcom/kingroot/kinguser/bth;->i(Ljava/lang/String;)V

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 288
    iget-object v1, p0, Lcom/kingroot/kinguser/brq$5;->bKu:Lcom/kingroot/kinguser/brq;

    invoke-static {v1}, Lcom/kingroot/kinguser/brq;->e(Lcom/kingroot/kinguser/brq;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/kingroot/kinguser/brq$5$2;

    invoke-direct {v3, p0, v2, v0}, Lcom/kingroot/kinguser/brq$5$2;-><init>(Lcom/kingroot/kinguser/brq$5;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 282
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kingroot/kinguser/bso;

    .line 283
    iget-object v4, p0, Lcom/kingroot/kinguser/brq$5;->bKu:Lcom/kingroot/kinguser/brq;

    iget-object v5, v1, Lcom/kingroot/kinguser/bso;->bLV:Lcom/kingroot/kinguser/bsp;

    invoke-static {v4, v5}, Lcom/kingroot/kinguser/brq;->a(Lcom/kingroot/kinguser/brq;Lcom/kingroot/kinguser/bsp;)Z

    .line 284
    iget-object v4, p0, Lcom/kingroot/kinguser/brq$5;->bKu:Lcom/kingroot/kinguser/brq;

    invoke-static {v4}, Lcom/kingroot/kinguser/brq;->d(Lcom/kingroot/kinguser/brq;)Lcom/kingroot/kinguser/brm;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/kingroot/kinguser/brm;->b(Lcom/kingroot/kinguser/bso;)V

    goto :goto_3

    :cond_5
    move-object v2, v1

    goto/16 :goto_1
.end method
