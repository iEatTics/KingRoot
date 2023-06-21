.class Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic buq:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$3;->buq:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 229
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 231
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$3;->buq:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->Rw()Lcom/kingroot/kinguser/br;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 235
    invoke-static {}, Lcom/kingroot/kinguser/bix;->ado()Lcom/kingroot/kinguser/bix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/bix;->adp()Lcom/kingroot/kinguser/bix$a;

    move-result-object v1

    .line 236
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 237
    iget-object v0, v0, Lcom/kingroot/kinguser/br;->kU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bq;

    .line 239
    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/kingroot/kinguser/bq;->kQ:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/kingroot/kinguser/bix$a;->lT(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    :cond_1
    new-instance v4, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;

    invoke-direct {v4}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;-><init>()V

    .line 244
    invoke-virtual {v4, v0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->c(Lcom/kingroot/kinguser/bq;)V

    .line 247
    iget-object v0, v4, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->lang:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 249
    if-nez v0, :cond_2

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v5, v4, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$CveInfo;->lang:Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v4, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$3;->buq:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    invoke-static {v4}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->b(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)Ljava/util/Comparator;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$3;->buq:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    invoke-static {v0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->c(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$3;->buq:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    invoke-static {v0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->d(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 262
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$3;->buq:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    invoke-static {v0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->d(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 263
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-object v0, p0, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager$3;->buq:Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;

    invoke-static {v0}, Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;->e(Lcom/kingroot/kinguser/xmod/cloud/CveCloudListManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 267
    :cond_4
    return-void

    .line 263
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
