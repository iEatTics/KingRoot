.class Lcom/kingroot/kinguser/cff$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cff$2;->b(ZLcom/kingroot/kinguser/cff$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic caA:Z

.field final synthetic caB:Lcom/kingroot/kinguser/cff$2;

.field final synthetic caz:Lcom/kingroot/kinguser/cff$d;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cff$2;Lcom/kingroot/kinguser/cff$d;Z)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/kingroot/kinguser/cff$2$1;->caB:Lcom/kingroot/kinguser/cff$2;

    iput-object p2, p0, Lcom/kingroot/kinguser/cff$2$1;->caz:Lcom/kingroot/kinguser/cff$d;

    iput-boolean p3, p0, Lcom/kingroot/kinguser/cff$2$1;->caA:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$1;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->h(Lcom/kingroot/kinguser/cff;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$1;->caz:Lcom/kingroot/kinguser/cff$d;

    iget-boolean v0, v0, Lcom/kingroot/kinguser/cff$d;->caJ:Z

    if-nez v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$1;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->h(Lcom/kingroot/kinguser/cff;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 243
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$1;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v0}, Lcom/kingroot/kinguser/cff;->h(Lcom/kingroot/kinguser/cff;)Landroid/util/SparseArray;

    move-result-object v0

    const/16 v4, 0x3e5

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cgf;

    .line 244
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cgf;->amW()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$1;->caz:Lcom/kingroot/kinguser/cff$d;

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/kingroot/kinguser/cff$d;->caL:Z

    .line 248
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$1;->caz:Lcom/kingroot/kinguser/cff$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    .line 253
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 256
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 257
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/az;

    .line 258
    if-eqz v0, :cond_2

    .line 259
    iget-object v3, p0, Lcom/kingroot/kinguser/cff$2$1;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v3, v3, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v3}, Lcom/kingroot/kinguser/cff;->h(Lcom/kingroot/kinguser/cff;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4

    .line 263
    :try_start_1
    iget-object v3, p0, Lcom/kingroot/kinguser/cff$2$1;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v3, v3, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    invoke-static {v3}, Lcom/kingroot/kinguser/cff;->h(Lcom/kingroot/kinguser/cff;)Landroid/util/SparseArray;

    move-result-object v3

    iget v5, v0, Lcom/kingroot/kinguser/az;->cmd:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kingroot/kinguser/cgf;

    .line 264
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    if-eqz v3, :cond_2

    .line 266
    invoke-virtual {v3}, Lcom/kingroot/kinguser/cgf;->amW()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 267
    invoke-virtual {v3}, Lcom/kingroot/kinguser/cgf;->amX()V

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 264
    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    .line 269
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 270
    const-string v3, "SharkNetwork"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "network ctrl donot connect, cmdid : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/kingroot/kinguser/az;->cmd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v8, v8}, Lcom/kingroot/kinguser/cfe;->b(Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/az;Lcom/kingroot/kinguser/bg;)V

    .line 272
    new-instance v6, Lcom/kingroot/kinguser/bg;

    invoke-direct {v6}, Lcom/kingroot/kinguser/bg;-><init>()V

    .line 273
    iget v0, v0, Lcom/kingroot/kinguser/az;->cmd:I

    iput v0, v6, Lcom/kingroot/kinguser/bg;->cmd:I

    .line 274
    const/4 v0, -0x7

    iput v0, v6, Lcom/kingroot/kinguser/bg;->retCode:I

    .line 275
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$1;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    iget-object v3, p0, Lcom/kingroot/kinguser/cff$2$1;->caz:Lcom/kingroot/kinguser/cff$d;

    const v4, -0x1312d07

    move v5, v2

    invoke-static/range {v0 .. v6}, Lcom/kingroot/kinguser/cff;->a(Lcom/kingroot/kinguser/cff;ZZLcom/kingroot/kinguser/cff$d;IILcom/kingroot/kinguser/bg;)V

    goto :goto_0

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$1;->caz:Lcom/kingroot/kinguser/cff$d;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$d;->caQ:Ljava/util/ArrayList;

    .line 284
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 287
    :try_start_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cff$2$1;->caB:Lcom/kingroot/kinguser/cff$2;

    iget-object v0, v0, Lcom/kingroot/kinguser/cff$2;->cay:Lcom/kingroot/kinguser/cff;

    iget-boolean v1, p0, Lcom/kingroot/kinguser/cff$2$1;->caA:Z

    iget-object v2, p0, Lcom/kingroot/kinguser/cff$2$1;->caz:Lcom/kingroot/kinguser/cff$d;

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/cff;->a(ZLcom/kingroot/kinguser/cff$d;)Lcom/kingroot/kinguser/cez$b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 294
    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method
