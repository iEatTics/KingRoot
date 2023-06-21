.class Lcom/kingroot/kinguser/anu$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/anu;->JG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kingroot/kinguser/anu;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/anu;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/kingroot/kinguser/anu$9;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 543
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$9;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->s(Lcom/kingroot/kinguser/anu;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$9;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->t(Lcom/kingroot/kinguser/anu;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$9;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->u(Lcom/kingroot/kinguser/anu;)V

    .line 546
    iget-object v0, p0, Lcom/kingroot/kinguser/anu$9;->this$0:Lcom/kingroot/kinguser/anu;

    invoke-static {v0}, Lcom/kingroot/kinguser/anu;->v(Lcom/kingroot/kinguser/anu;)V

    .line 547
    return-void
.end method
