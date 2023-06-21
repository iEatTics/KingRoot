.class Lcom/kingroot/kinguser/bfd$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfd;->iv(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aww:I

.field final synthetic this$0:Lcom/kingroot/kinguser/bfd;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/bfd;I)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$20;->this$0:Lcom/kingroot/kinguser/bfd;

    iput p2, p0, Lcom/kingroot/kinguser/bfd$20;->aww:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$20;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd;->bmd:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$20;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd;->bmd:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$20;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd;->bmd:Landroid/widget/ProgressBar;

    const/high16 v1, 0x42a00000    # 80.0f

    iget v2, p0, Lcom/kingroot/kinguser/bfd$20;->aww:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 395
    return-void
.end method
