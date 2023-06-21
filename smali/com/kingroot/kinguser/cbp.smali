.class Lcom/kingroot/kinguser/cbp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/cat;


# instance fields
.field final synthetic bWM:Lcom/kingroot/kinguser/cbn;

.field final synthetic bWN:Lcom/kingroot/kinguser/cbo;

.field private ef:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kingroot/kinguser/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cbo;Lcom/kingroot/kinguser/cbn;)V
    .locals 1

    .prologue
    .line 50
    iput-object p1, p0, Lcom/kingroot/kinguser/cbp;->bWN:Lcom/kingroot/kinguser/cbo;

    iput-object p2, p0, Lcom/kingroot/kinguser/cbp;->bWM:Lcom/kingroot/kinguser/cbn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kingroot/kinguser/cbp;->ef:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(IIIILcom/qq/taf/jce/JceStruct;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    const/4 v3, 0x0

    .line 58
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    :try_start_0
    instance-of v2, p5, Lcom/kingroot/kinguser/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/kingroot/kinguser/cbp;->bWM:Lcom/kingroot/kinguser/cbn;

    if-nez p3, :cond_1

    :goto_0
    invoke-interface {v2, v0, v3}, Lcom/kingroot/kinguser/cbn;->a(ZLcom/kingroot/kinguser/g;)V

    .line 67
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 65
    goto :goto_0

    .line 62
    :cond_2
    :try_start_1
    check-cast p5, Lcom/kingroot/kinguser/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    :try_start_2
    iget-object v2, p5, Lcom/kingroot/kinguser/g;->ef:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/kingroot/kinguser/cbp;->ef:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 65
    iget-object v2, p0, Lcom/kingroot/kinguser/cbp;->bWM:Lcom/kingroot/kinguser/cbn;

    if-nez p3, :cond_3

    :goto_2
    invoke-interface {v2, v0, p5}, Lcom/kingroot/kinguser/cbn;->a(ZLcom/kingroot/kinguser/g;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object p5, v3

    :goto_3
    iget-object v3, p0, Lcom/kingroot/kinguser/cbp;->bWM:Lcom/kingroot/kinguser/cbn;

    if-nez p3, :cond_4

    :goto_4
    invoke-interface {v3, v0, p5}, Lcom/kingroot/kinguser/cbn;->a(ZLcom/kingroot/kinguser/g;)V

    throw v2

    :cond_4
    move v0, v1

    goto :goto_4

    :catchall_1
    move-exception v2

    goto :goto_3
.end method
