.class Lcom/kingroot/kinguser/bvc$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bul;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->b(Ljava/util/ArrayList;Lcom/kingroot/kinguser/bun;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPd:Lcom/kingroot/kinguser/bun;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bun;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$7;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$7;->bPd:Lcom/kingroot/kinguser/bun;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 304
    invoke-static {p1}, Lcom/kingroot/kinguser/bvo;->kG(I)I

    move-result v0

    .line 306
    invoke-static {p1}, Lcom/kingroot/kinguser/bvo;->kH(I)I

    move-result v1

    .line 308
    invoke-static {p1}, Lcom/kingroot/kinguser/bvo;->kI(I)I

    move-result v2

    .line 309
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 310
    if-eqz v2, :cond_2

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$7;->bPd:Lcom/kingroot/kinguser/bun;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$7;->bPd:Lcom/kingroot/kinguser/bun;

    invoke-interface {v0, v3, v4}, Lcom/kingroot/kinguser/bun;->onReceive(ILjava/util/List;)V

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 319
    :cond_2
    check-cast p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetGameReservation;

    iget-object v0, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGetGameReservation;->vecResp:Ljava/util/ArrayList;

    .line 320
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v3, :cond_3

    .line 321
    iget-object v1, p0, Lcom/kingroot/kinguser/bvc$7;->bPd:Lcom/kingroot/kinguser/bun;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/kingroot/kinguser/bvc$7;->bPd:Lcom/kingroot/kinguser/bun;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/kingroot/kinguser/bun;->onReceive(ILjava/util/List;)V

    goto :goto_0

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$7;->bPd:Lcom/kingroot/kinguser/bun;

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$7;->bPd:Lcom/kingroot/kinguser/bun;

    invoke-interface {v0, v3, v4}, Lcom/kingroot/kinguser/bun;->onReceive(ILjava/util/List;)V

    goto :goto_0
.end method
