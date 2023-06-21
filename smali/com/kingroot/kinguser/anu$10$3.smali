.class Lcom/kingroot/kinguser/anu$10$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aEg:Lcom/kingroot/kinguser/anu$10;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu$10;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$10$3;->aEg:Lcom/kingroot/kinguser/anu$10;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 713
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 714
    invoke-static {}, Lcom/kingroot/kinguser/activitys/AppsMarketWellChosenAppsActivity;->vs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 715
    invoke-static {}, Lcom/kingroot/kinguser/alx;->HB()Lcom/kingroot/kinguser/alx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/alx;->HD()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 716
    iget-object v1, p0, Lcom/kingroot/kinguser/anu$10$3;->aEg:Lcom/kingroot/kinguser/anu$10;

    iget-object v1, v1, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    new-instance v2, Lcom/kingroot/kinguser/anu$10$3$1;

    invoke-direct {v2, p0, v0}, Lcom/kingroot/kinguser/anu$10$3$1;-><init>(Lcom/kingroot/kinguser/anu$10$3;I)V

    invoke-static {v1, v2}, Lcom/kingroot/kinguser/anu;->a(Lcom/kingroot/kinguser/anu;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 738
    new-instance v0, Lcom/kingroot/kinguser/anu$10$3$2;

    invoke-direct {v0, p0}, Lcom/kingroot/kinguser/anu$10$3$2;-><init>(Lcom/kingroot/kinguser/anu$10$3;)V

    invoke-static {v0}, Lcom/kingroot/kinguser/wl;->c(Ljava/lang/Runnable;)V

    .line 754
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$10$3;->aEg:Lcom/kingroot/kinguser/anu$10;

    iget-object v0, v0, Lcom/kingroot/kinguser/anu$10;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->c(Lcom/kingroot/kinguser/anu;)Lcom/kingroot/kinguser/auf$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/auf$a;->PT()V

    goto :goto_0
.end method
