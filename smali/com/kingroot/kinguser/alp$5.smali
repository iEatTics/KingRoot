.class Lcom/kingroot/kinguser/alp$5;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/alp;->a(Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ayh:Lcom/kingroot/kinguser/alp;

.field final synthetic ayr:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/alp;Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/kingroot/kinguser/alp$5;->ayh:Lcom/kingroot/kinguser/alp;

    iput-object p2, p0, Lcom/kingroot/kinguser/alp$5;->ayr:Lcom/kingroot/kinguser/distribution/appsmarket/interfaces/IQuerySummonListResult;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 494
    invoke-static {}, Lcom/kingroot/kinguser/btx;->aid()Lcom/kingroot/kinguser/btx;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/alp$5$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/alp$5$1;-><init>(Lcom/kingroot/kinguser/alp$5;)V

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/btx;->a(Lcom/kingroot/kinguser/bun;)V

    .line 513
    return-void
.end method
