.class Lcom/kingroot/kinguser/bet$6$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bet$6$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blH:Lcom/kingroot/kinguser/bet$6$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bet$6$1;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/kingroot/kinguser/bet$6$1$2;->blH:Lcom/kingroot/kinguser/bet$6$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 267
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x1890d    # 1.41E-40f

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 268
    iget-object v0, p0, Lcom/kingroot/kinguser/bet$6$1$2;->blH:Lcom/kingroot/kinguser/bet$6$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/bet$6$1;->blG:Lcom/kingroot/kinguser/bet$6;

    iget-object v0, v0, Lcom/kingroot/kinguser/bet$6;->blE:Lcom/kingroot/kinguser/bet;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;->aL(Landroid/content/Context;)V

    .line 269
    return-void
.end method
