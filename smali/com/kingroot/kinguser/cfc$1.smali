.class Lcom/kingroot/kinguser/cfc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/common/module/sdknetpool/sharknetwork/SharkNetworkReceiver$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/cfc;->b(Lcom/kingroot/kinguser/ceu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZG:Lcom/kingroot/kinguser/cfc;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfc;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/kingroot/kinguser/cfc$1;->bZG:Lcom/kingroot/kinguser/cfc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public alD()V
    .locals 4

    .prologue
    .line 92
    iget-object v1, p0, Lcom/kingroot/kinguser/cfc$1;->bZG:Lcom/kingroot/kinguser/cfc;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/kingroot/kinguser/cfc$1;->bZG:Lcom/kingroot/kinguser/cfc;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfc;->a(Lcom/kingroot/kinguser/cfc;)Lcom/kingroot/kinguser/cge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cge;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/kingroot/kinguser/cfc$1;->bZG:Lcom/kingroot/kinguser/cfc;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfc;->a(Lcom/kingroot/kinguser/cfc;)Lcom/kingroot/kinguser/cge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cge;->amV()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/cfc$a;

    .line 99
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/kingroot/kinguser/cfc$a;->bZL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
