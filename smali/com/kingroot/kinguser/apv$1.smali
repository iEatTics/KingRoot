.class Lcom/kingroot/kinguser/apv$1;
.super Lcom/kingroot/kinguser/apa$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/apv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aJC:Lcom/kingroot/kinguser/apv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/apv;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/kingroot/kinguser/apv$1;->aJC:Lcom/kingroot/kinguser/apv;

    invoke-direct {p0}, Lcom/kingroot/kinguser/apa$a;-><init>()V

    return-void
.end method


# virtual methods
.method public k(Lcom/kingroot/kinguser/bom;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/apa$a;->k(Lcom/kingroot/kinguser/bom;)V

    .line 78
    invoke-static {}, Lcom/kingroot/kinguser/apv;->kO()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 79
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/apv;->kO()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apv$b;

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/apv$b;->eE(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/kingroot/kinguser/apv;->kO()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/apv;->kP()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apv$a;

    .line 86
    if-eqz v0, :cond_1

    .line 87
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/kingroot/kinguser/apv$a;->fk(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/kingroot/kinguser/apv;->kP()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1
    monitor-exit v1

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public m(Lcom/kingroot/kinguser/bom;)V
    .locals 5

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/kingroot/kinguser/apa$a;->m(Lcom/kingroot/kinguser/bom;)V

    .line 59
    invoke-static {}, Lcom/kingroot/kinguser/apv;->kO()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 60
    :try_start_0
    invoke-static {}, Lcom/kingroot/kinguser/apv;->kO()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apv$b;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kingroot/kinguser/apv$1;->aJC:Lcom/kingroot/kinguser/apv;

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/kingroot/kinguser/apv;->ic(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/apv$b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 63
    invoke-static {}, Lcom/kingroot/kinguser/apv;->kO()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/apv;->kP()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/apv$a;

    .line 68
    if-eqz v0, :cond_1

    .line 69
    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->KI()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Lcom/kingroot/kinguser/apv$a;->i(Ljava/lang/String;Ljava/io/File;)V

    .line 70
    invoke-static {}, Lcom/kingroot/kinguser/apv;->kP()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/kingroot/kinguser/bom;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
