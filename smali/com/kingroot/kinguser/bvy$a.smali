.class Lcom/kingroot/kinguser/bvy$a;
.super Lcom/tencent/securemodule/impl/BaseReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bvy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kingroot/kinguser/bvy$c;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic bQO:Lcom/kingroot/kinguser/bvy;

.field private final c:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/kingroot/kinguser/bvy;)V
    .locals 1

    iput-object p1, p0, Lcom/kingroot/kinguser/bvy$a;->bQO:Lcom/kingroot/kinguser/bvy;

    invoke-direct {p0}, Lcom/tencent/securemodule/impl/BaseReceiver;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvy$a;->b:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/bvy$a;->c:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kingroot/kinguser/bvy;Lcom/kingroot/kinguser/bvy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kingroot/kinguser/bvy$a;-><init>(Lcom/kingroot/kinguser/bvy;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/kingroot/kinguser/bvy$c;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bvy$a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public f(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v0, "SecureModuleService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doOnRecv(), action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/cdo;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "key_scan_session"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/kingroot/kinguser/bvy$a;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/kingroot/kinguser/bvy$a;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/bvy$c;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "2000030"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "key_risk_info"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "key_unnkow_info"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/bvy$c;->a(Lcom/kingroot/kinguser/bvy$c;Ljava/util/List;Ljava/util/List;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/kingroot/kinguser/bvy$a;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$a;->bQO:Lcom/kingroot/kinguser/bvy;

    invoke-static {v0}, Lcom/kingroot/kinguser/bvy;->a(Lcom/kingroot/kinguser/bvy;)Lcom/kingroot/kinguser/bvy$a;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$a;->bQO:Lcom/kingroot/kinguser/bvy;

    invoke-static {v0}, Lcom/kingroot/kinguser/bvy;->b(Lcom/kingroot/kinguser/bvy;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/kingroot/kinguser/bvy$a;->bQO:Lcom/kingroot/kinguser/bvy;

    invoke-static {v2}, Lcom/kingroot/kinguser/bvy;->a(Lcom/kingroot/kinguser/bvy;)Lcom/kingroot/kinguser/bvy$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/kingroot/kinguser/bvy$a;->bQO:Lcom/kingroot/kinguser/bvy;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/kingroot/kinguser/bvy;->a(Lcom/kingroot/kinguser/bvy;Lcom/kingroot/kinguser/bvy$a;)Lcom/kingroot/kinguser/bvy$a;

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    const-string v2, "2000031"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "key_errcode"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_2

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/bvy$c;->a(Lcom/kingroot/kinguser/bvy$c;I)V

    goto :goto_1
.end method
