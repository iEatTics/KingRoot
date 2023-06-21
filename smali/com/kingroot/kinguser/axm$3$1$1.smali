.class Lcom/kingroot/kinguser/axm$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axm$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic baf:Lcom/kingroot/kinguser/axm$3$1;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axm$3$1;)V
    .locals 0

    .prologue
    .line 635
    iput-object p1, p0, Lcom/kingroot/kinguser/axm$3$1$1;->baf:Lcom/kingroot/kinguser/axm$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 639
    invoke-static {}, Lcom/kingroot/kinguser/ady;->tK()Lcom/kingroot/kinguser/ady;

    move-result-object v0

    const v1, 0x188f7

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/ady;->bi(I)V

    .line 640
    iget-object v0, p0, Lcom/kingroot/kinguser/axm$3$1$1;->baf:Lcom/kingroot/kinguser/axm$3$1;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$3$1;->bae:Lcom/kingroot/kinguser/axm$3;

    iget-object v0, v0, Lcom/kingroot/kinguser/axm$3;->this$0:Lcom/kingroot/kinguser/axm;

    invoke-static {v0}, Lcom/kingroot/kinguser/axm;->o(Lcom/kingroot/kinguser/axm;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kingroot/kinguser/activitys/AppsMarketMainActivity;->aN(Landroid/content/Context;)V

    .line 641
    return-void
.end method
