.class Lcom/kingroot/kinguser/alp$4;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayh:Lcom/kingroot/kinguser/alp;

.field final synthetic ayo:Ljava/util/ArrayList;

.field final synthetic ayp:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;Ljava/util/ArrayList;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$4;->ayh:Lcom/kingroot/kinguser/alp;

    iput-object p2, p0, Lcom/kingroot/kinguser/alp$4;->ayo:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/kingroot/kinguser/alp$4;->ayp:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQueryReservationStateResult;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 466
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alp$4;->ayo:Ljava/util/ArrayList;

    new-instance v2, Lcom/kingroot/kinguser/alp$4$1;

    invoke-direct {v2, p0}, Lcom/kingroot/kinguser/alp$4$1;-><init>(Lcom/kingroot/kinguser/alp$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/kingroot/kinguser/btx;->a(Ljava/util/ArrayList;Lcom/kingroot/kinguser/bun;)V

    .line 484
    return-void
.end method
