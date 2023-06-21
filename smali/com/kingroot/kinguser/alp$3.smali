.class Lcom/kingroot/kinguser/alp$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic anx:Ljava/lang/String;

.field final synthetic ayh:Lcom/kingroot/kinguser/alp;

.field final synthetic ayj:Ljava/lang/String;

.field final synthetic ayk:Ljava/lang/String;

.field final synthetic ayl:Ljava/lang/String;

.field final synthetic aym:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$3;->ayh:Lcom/kingroot/kinguser/alp;

    iput-object p2, p0, Lcom/kingroot/kinguser/alp$3;->ayj:Ljava/lang/String;

    iput-object p3, p0, Lcom/kingroot/kinguser/alp$3;->anx:Ljava/lang/String;

    iput-object p4, p0, Lcom/kingroot/kinguser/alp$3;->ayk:Ljava/lang/String;

    iput-object p5, p0, Lcom/kingroot/kinguser/alp$3;->ayl:Ljava/lang/String;

    iput-object p6, p0, Lcom/kingroot/kinguser/alp$3;->aym:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IReservateGameResult;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 432
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/alp$3;->ayj:Ljava/lang/String;

    iget-object v2, p0, Lcom/kingroot/kinguser/alp$3;->anx:Ljava/lang/String;

    iget-object v3, p0, Lcom/kingroot/kinguser/alp$3;->ayk:Ljava/lang/String;

    iget-object v4, p0, Lcom/kingroot/kinguser/alp$3;->ayl:Ljava/lang/String;

    new-instance v5, Lcom/kingroot/kinguser/alp$3$1;

    invoke-direct {v5, p0}, Lcom/kingroot/kinguser/alp$3$1;-><init>(Lcom/kingroot/kinguser/alp$3;)V

    invoke-virtual/range {v0 .. v5}, Lcom/kingroot/kinguser/btx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kingroot/kinguser/bum;)V

    .line 456
    return-void
.end method
