.class Lcom/kingroot/kinguser/bgb$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bgb;->abs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic boE:Lcom/kingroot/kinguser/bgb;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bgb;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/kingroot/kinguser/bgb$2;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 116
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$2;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->c(Lcom/kingroot/kinguser/bgb;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$2;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->d(Lcom/kingroot/kinguser/bgb;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$2;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->e(Lcom/kingroot/kinguser/bgb;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$2;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-static {v0}, Lcom/kingroot/kinguser/bgb;->f(Lcom/kingroot/kinguser/bgb;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/kingroot/kinguser/bgb$2;->boE:Lcom/kingroot/kinguser/bgb;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bgb;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kingroot/kinguser/bgb$2$1;

    invoke-direct {v1, p0}, Lcom/kingroot/kinguser/bgb$2$1;-><init>(Lcom/kingroot/kinguser/bgb$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void
.end method
