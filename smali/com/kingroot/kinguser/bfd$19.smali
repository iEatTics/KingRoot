.class Lcom/kingroot/kinguser/bfd$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/bfd;->iu(I)V
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
    .line 375
    iput-object p1, p0, Lcom/kingroot/kinguser/bfd$19;->this$0:Lcom/kingroot/kinguser/bfd;

    iput p2, p0, Lcom/kingroot/kinguser/bfd$19;->aww:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$19;->this$0:Lcom/kingroot/kinguser/bfd;

    iget-object v0, v0, Lcom/kingroot/kinguser/bfd;->bmd:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/kingroot/kinguser/bfd$19;->aww:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42a00000    # 80.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 379
    iget v0, p0, Lcom/kingroot/kinguser/bfd$19;->aww:I

    if-lez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/kingroot/kinguser/bfd$19;->this$0:Lcom/kingroot/kinguser/bfd;

    invoke-static {v0}, Lcom/kingroot/kinguser/bfd;->j(Lcom/kingroot/kinguser/bfd;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 382
    :cond_0
    return-void
.end method
