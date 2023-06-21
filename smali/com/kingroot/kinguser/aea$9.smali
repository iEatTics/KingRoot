.class final Lcom/kingroot/kinguser/aea$9;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/aea;->b(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic aes:I

.field final synthetic aet:I

.field final synthetic aeu:I

.field final synthetic aev:I


# direct methods
.method constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 224
    iput p1, p0, Lcom/kingroot/kinguser/aea$9;->aes:I

    iput p2, p0, Lcom/kingroot/kinguser/aea$9;->aet:I

    iput p3, p0, Lcom/kingroot/kinguser/aea$9;->aeu:I

    iput p4, p0, Lcom/kingroot/kinguser/aea$9;->aev:I

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 227
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iget v1, p0, Lcom/kingroot/kinguser/aea$9;->aes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget v1, p0, Lcom/kingroot/kinguser/aea$9;->aet:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget v1, p0, Lcom/kingroot/kinguser/aea$9;->aeu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    iget v1, p0, Lcom/kingroot/kinguser/aea$9;->aev:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v1

    const v2, 0x1890c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/kingroot/kinguser/ady;->a(IILjava/util/List;Z)V

    .line 235
    return-void
.end method
