.class Lcom/kingroot/kinguser/bvc$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bul;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bvc;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bum;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bPc:Lcom/kingroot/kinguser/bvc;

.field private final synthetic bPi:Lcom/kingroot/kinguser/bum;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bvc;Lcom/kingroot/kinguser/bum;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kingroot/kinguser/bvc$8;->bPc:Lcom/kingroot/kinguser/bvc;

    iput-object p2, p0, Lcom/kingroot/kinguser/bvc$8;->bPi:Lcom/kingroot/kinguser/bum;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/qq/taf/jce/JceStruct;)V
    .locals 4

    .prologue
    .line 359
    invoke-static {p1}, Lcom/kingroot/kinguser/bvo;->kG(I)I

    move-result v0

    .line 361
    invoke-static {p1}, Lcom/kingroot/kinguser/bvo;->kH(I)I

    move-result v1

    .line 363
    invoke-static {p1}, Lcom/kingroot/kinguser/bvo;->kI(I)I

    move-result v2

    .line 364
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 365
    if-eqz v2, :cond_2

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$8;->bPi:Lcom/kingroot/kinguser/bum;

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$8;->bPi:Lcom/kingroot/kinguser/bum;

    const/4 v1, 0x0

    const-string v2, ""

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bum;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_1
    :goto_0
    return-void

    .line 376
    :cond_2
    check-cast p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGameReservation;

    .line 399
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$8;->bPi:Lcom/kingroot/kinguser/bum;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p0, Lcom/kingroot/kinguser/bvc$8;->bPi:Lcom/kingroot/kinguser/bum;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGameReservation;->openid:Ljava/lang/String;

    iget-object v3, p2, Lcom/tencent/qqpimsecure/seachsdk/internal/protocol/SCGameReservation;->qq:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/kingroot/kinguser/bum;->b(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
