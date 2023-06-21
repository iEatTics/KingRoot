.class Lcom/kingroot/kinguser/bbe$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bbe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic beM:Lcom/kingroot/kinguser/bbe;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bbe;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/kingroot/kinguser/bbe$8;->beM:Lcom/kingroot/kinguser/bbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 589
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 590
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kingroot/kinguser/aks;->De()J

    move-result-wide v0

    .line 591
    const-wide/32 v4, 0xdbba00

    .line 592
    invoke-static/range {v0 .. v5}, Lcom/kingroot/kinguser/adk;->b(JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/kingroot/kinguser/aks;->ba(J)V

    .line 596
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/aiv;->dC(I)V

    .line 600
    :goto_0
    return-void

    .line 598
    :cond_0
    invoke-static {}, Lcom/kingroot/kinguser/aiv;->yw()Lcom/kingroot/kinguser/aiv;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/kingroot/kinguser/aiv;->dD(I)V

    goto :goto_0
.end method
