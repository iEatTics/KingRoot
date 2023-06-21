.class Lcom/kingroot/kinguser/bgz$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/apv$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bgz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bpl:Lcom/kingroot/kinguser/bgz;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bgz;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/kingroot/kinguser/bgz$3;->bpl:Lcom/kingroot/kinguser/bgz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 214
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18848

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 217
    iget-object v0, p0, Lcom/kingroot/kinguser/bgz$3;->bpl:Lcom/kingroot/kinguser/bgz;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgz;->a(Lcom/kingroot/kinguser/bgz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;

    .line 218
    iget-object v2, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->picDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    const/4 v1, 0x1

    iget-wide v2, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    iget v0, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    invoke-static {v1, v2, v3, v0}, Lcom/kingroot/kinguser/aea;->b(ZJI)V

    .line 224
    :cond_1
    return-void
.end method

.method public eE(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/kingroot/kinguser/bgz$3;->bpl:Lcom/kingroot/kinguser/bgz;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgz;->a(Lcom/kingroot/kinguser/bgz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;

    .line 229
    iget-object v2, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->picDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    const/4 v1, 0x0

    iget-wide v2, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->taskID:J

    iget v0, v0, Lkingcom/module/network/shark/conch/entity/SplashScreenEntity;->conchSeqno:I

    invoke-static {v1, v2, v3, v0}, Lcom/kingroot/kinguser/aea;->b(ZJI)V

    .line 235
    :cond_1
    return-void
.end method
