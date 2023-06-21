.class public Lcom/kingroot/kinguser/ud;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Ig:Lcom/kingroot/kinguser/ue;

.field private Ih:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation
.end field

.field private Ii:Lcom/kingroot/kinguser/ua;

.field private Ij:[B

.field private mServiceContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/kingroot/kinguser/ud;->Ij:[B

    .line 34
    new-instance v0, Lcom/kingroot/kinguser/ue;

    invoke-direct {v0}, Lcom/kingroot/kinguser/ue;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/ud;->Ig:Lcom/kingroot/kinguser/ue;

    .line 35
    iput-object p1, p0, Lcom/kingroot/kinguser/ud;->mServiceContext:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/kingroot/kinguser/ua;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/ua;-><init>(Lcom/kingroot/kinguser/ud;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/ud;->Ii:Lcom/kingroot/kinguser/ua;

    .line 37
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 191
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/kingroot/kinguser/ud;->Ij:[B

    monitor-enter v1

    .line 196
    const/4 v0, 0x0

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/kingroot/kinguser/ud;->Ih:Ljava/util/Map;

    if-nez v2, :cond_3

    .line 198
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/kingroot/kinguser/ud;->Ih:Ljava/util/Map;

    .line 203
    :goto_1
    if-nez v0, :cond_2

    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 205
    iget-object v2, p0, Lcom/kingroot/kinguser/ud;->Ih:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 210
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 200
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ud;->Ih:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private cU(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Lcom/kingroot/kinguser/ud;->Ij:[B

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ud;->Ih:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 216
    monitor-exit v1

    .line 232
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ud;->Ih:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 220
    if-nez v0, :cond_1

    .line 221
    monitor-exit v1

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 224
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 225
    if-nez v0, :cond_2

    .line 226
    monitor-exit v1

    goto :goto_0

    .line 230
    :cond_2
    iget-object v2, p0, Lcom/kingroot/kinguser/ud;->mServiceContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0}, Lcom/kingroot/kinguser/ud;->d(Landroid/content/Context;Landroid/content/Intent;)V

    .line 231
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private d(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 108
    :try_start_0
    const-string v0, "task_key_class_name"

    .line 109
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 116
    :cond_1
    const-string v1, "task_key_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/kingroot/kinguser/ud;->Ig:Lcom/kingroot/kinguser/ue;

    invoke-virtual {v2, v1}, Lcom/kingroot/kinguser/ue;->cV(Ljava/lang/String;)Lcom/kingroot/kinguser/ty;

    move-result-object v2

    .line 122
    if-eqz v2, :cond_2

    .line 123
    const-string v2, "key_action_on_same_id"

    const/4 v3, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 126
    packed-switch v2, :pswitch_data_0

    .line 137
    :pswitch_1
    invoke-direct {p0, v1, p2}, Lcom/kingroot/kinguser/ud;->a(Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0

    .line 132
    :pswitch_2
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/kingroot/kinguser/ud;->p(Ljava/lang/String;Z)V

    .line 144
    :cond_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/ty;

    .line 146
    iget-object v2, p0, Lcom/kingroot/kinguser/ud;->Ii:Lcom/kingroot/kinguser/ua;

    invoke-virtual {v0, p1, v1, v2}, Lcom/kingroot/kinguser/ty;->a(Landroid/content/Context;Ljava/lang/String;Lcom/kingroot/kinguser/ua;)V

    .line 147
    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/ty;->e(Landroid/content/Intent;)V

    .line 150
    iget-object v2, p0, Lcom/kingroot/kinguser/ud;->Ig:Lcom/kingroot/kinguser/ue;

    invoke-virtual {v2, v1, v0}, Lcom/kingroot/kinguser/ue;->a(Ljava/lang/String;Lcom/kingroot/kinguser/ty;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 187
    invoke-static {p1, p2, p3}, Lcom/kingroot/kinguser/tw;->c(Ljava/lang/String;J)V

    .line 188
    return-void
.end method

.method private g(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 163
    const-string v0, "task_key_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v1, "key_is_force_cancel"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 166
    invoke-direct {p0, v0, v1}, Lcom/kingroot/kinguser/ud;->p(Ljava/lang/String;Z)V

    .line 167
    return-void
.end method

.method private p(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/kingroot/kinguser/ud;->Ig:Lcom/kingroot/kinguser/ue;

    invoke-virtual {v0, p1}, Lcom/kingroot/kinguser/ue;->cV(Ljava/lang/String;)Lcom/kingroot/kinguser/ty;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0, v0}, Lcom/kingroot/kinguser/ud;->d(Lcom/kingroot/kinguser/ty;)V

    .line 182
    invoke-virtual {v0, p2}, Lcom/kingroot/kinguser/ty;->cancel(Z)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized d(Lcom/kingroot/kinguser/ty;)V
    .locals 4

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ud;->Ig:Lcom/kingroot/kinguser/ue;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ue;->kw()Lcom/kingroot/kinguser/ty;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/kingroot/kinguser/ty;->kr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ty;->kp()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/kingroot/kinguser/ud;->d(Ljava/lang/String;J)V

    .line 90
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ty;->kr()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ty;->getStartTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 90
    invoke-static {v0, v2, v3, v1}, Lcom/kingroot/kinguser/tw;->b(Ljava/lang/String;JI)V

    .line 94
    :cond_0
    invoke-virtual {p1}, Lcom/kingroot/kinguser/ty;->kq()Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/kingroot/kinguser/ud;->Ig:Lcom/kingroot/kinguser/ue;

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/ue;->remove(Ljava/lang/String;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/kingroot/kinguser/ud;->cU(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ud;->mServiceContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 79
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_1
    :try_start_1
    const-string v0, "task_key_action"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 69
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ud;->mServiceContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/kingroot/kinguser/ud;->d(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :pswitch_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/ud;->g(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/kingroot/kinguser/ud;->mServiceContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized ku()I
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/ud;->Ig:Lcom/kingroot/kinguser/ue;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/ue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
