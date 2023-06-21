.class Lcom/kingroot/kinguser/bet$6;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bet;->b(Lcom/kingroot/kinguser/anx$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blE:Lcom/kingroot/kinguser/bet;

.field final synthetic blF:Lcom/kingroot/kinguser/anx$a;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bet;Lcom/kingroot/kinguser/anx$a;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/kingroot/kinguser/bet$6;->blE:Lcom/kingroot/kinguser/bet;

    iput-object p2, p0, Lcom/kingroot/kinguser/bet$6;->blF:Lcom/kingroot/kinguser/anx$a;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 236
    invoke-static {}, Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;->vs()Z

    move-result v0

    .line 237
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/alx;->HD()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 238
    new-instance v1, Lcom/kingroot/kinguser/bet$6$1;

    invoke-direct {v1, p0, v0}, Lcom/kingroot/kinguser/bet$6$1;-><init>(Lcom/kingroot/kinguser/bet$6;Z)V

    invoke-static {v1}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 276
    return-void
.end method
