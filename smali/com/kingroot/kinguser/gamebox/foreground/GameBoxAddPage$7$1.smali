.class Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7;->onState(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aOc:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7;

.field final synthetic awy:I

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->aOc:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7;

    iput p2, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->awy:I

    iput-object p3, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 427
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->awy:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 428
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/kingroot/kinguser/aks;->d(JLjava/lang/String;)V

    .line 438
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->aOc:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7;

    iget-object v0, v0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-static {v0}, Lcom/kingroot/kinguser/atj;->d(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->aOc:Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7;

    iget-object v1, v1, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7;->this$0:Lcom/kingroot/kinguser/atj;

    invoke-static {v1}, Lcom/kingroot/kinguser/atj;->d(Lcom/kingroot/kinguser/atj;)Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;->Ih()Lcom/kingcore/uilib/TextRoundCornerProgressBar;

    move-result-object v1

    invoke-static {}, Lcom/kingroot/kinguser/zi;->pr()Lcom/kingroot/kinguser/zi;

    move-result-object v2

    const v3, 0x7f0703f6

    invoke-virtual {v2, v3}, Lcom/kingroot/kinguser/zi;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kingroot/kinguser/and;->a(Lcom/kingroot/kinguser/distribution/appsmarket/entity/AppDownLoadModel;Lcom/kingcore/uilib/TextRoundCornerProgressBar;Ljava/lang/String;)V

    .line 439
    return-void

    .line 429
    :cond_1
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->awy:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->awy:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_2

    .line 431
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/kingroot/kinguser/aks;->d(JLjava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_2
    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->awy:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->awy:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 434
    :cond_3
    invoke-static {}, Lcom/kingroot/kinguser/aks;->BP()Lcom/kingroot/kinguser/aks;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/gamebox/foreground/GameBoxAddPage$7$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/kingroot/kinguser/aks;->d(JLjava/lang/String;)V

    goto :goto_0
.end method
