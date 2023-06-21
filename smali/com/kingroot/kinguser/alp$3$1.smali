.class Lcom/kingroot/kinguser/alp$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kingroot/kinguser/bum;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayn:Lcom/kingroot/kinguser/alp$3;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp$3;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$3$1;->ayn:Lcom/kingroot/kinguser/alp$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$3$1;->ayn:Lcom/kingroot/kinguser/alp$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$3;->aym:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;

    if-eqz v0, :cond_1

    .line 438
    if-eqz p1, :cond_0

    .line 439
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kingroot/kinguser/alp$3$1;->ayn:Lcom/kingroot/kinguser/alp$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$3;->ayl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x18935

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 449
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/alp$3$1;->ayn:Lcom/kingroot/kinguser/alp$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/alp$3;->aym:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;

    iget-object v1, p0, Lcom/kingroot/kinguser/alp$3$1;->ayn:Lcom/kingroot/kinguser/alp$3;

    iget-object v2, v1, Lcom/kingroot/kinguser/alp$3;->ayj:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/alp$3$1;->ayn:Lcom/kingroot/kinguser/alp$3;

    iget-object v3, v1, Lcom/kingroot/kinguser/alp$3;->anx:Ljava/lang/String;

    iget-object v1, p0, Lcom/kingroot/kinguser/alp$3$1;->ayn:Lcom/kingroot/kinguser/alp$3;

    iget-object v5, v1, Lcom/kingroot/kinguser/alp$3;->ayl:Ljava/lang/String;

    move v1, p1

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;->onResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_1
    :goto_1
    return-void

    .line 446
    :cond_2
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1895b

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    goto :goto_1
.end method
