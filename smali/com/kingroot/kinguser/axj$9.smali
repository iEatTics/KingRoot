.class Lcom/kingroot/kinguser/axj$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/axj;->E(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aZj:Lcom/kingroot/kinguser/axj;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/axj;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcom/kingroot/kinguser/axj$9;->aZj:Lcom/kingroot/kinguser/axj;

    iput-object p2, p0, Lcom/kingroot/kinguser/axj$9;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 435
    iget-object v0, p0, Lcom/kingroot/kinguser/axj$9;->val$view:Landroid/view/View;

    const v1, 0x7f0f02b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 436
    iget-object v1, p0, Lcom/kingroot/kinguser/axj$9;->val$view:Landroid/view/View;

    const v2, 0x7f0f02b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 438
    iget-object v2, p0, Lcom/kingroot/kinguser/axj$9;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-static {v2, v0}, Lcom/kingroot/kinguser/axj;->a(Lcom/kingroot/kinguser/axj;Landroid/view/View;)V

    .line 439
    iget-object v0, p0, Lcom/kingroot/kinguser/axj$9;->aZj:Lcom/kingroot/kinguser/axj;

    invoke-static {v0, v1}, Lcom/kingroot/kinguser/axj;->b(Lcom/kingroot/kinguser/axj;Landroid/view/View;)V

    .line 440
    return-void
.end method
