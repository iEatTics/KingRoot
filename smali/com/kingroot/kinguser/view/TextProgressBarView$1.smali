.class Lcom/kingroot/kinguser/view/TextProgressBarView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/view/TextProgressBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic brZ:Lcom/kingroot/kinguser/view/TextProgressBarView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/view/TextProgressBarView;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/kingroot/kinguser/view/TextProgressBarView$1;->brZ:Lcom/kingroot/kinguser/view/TextProgressBarView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kingroot/kinguser/view/TextProgressBarView$1;->brZ:Lcom/kingroot/kinguser/view/TextProgressBarView;

    iget v1, v0, Lcom/kingroot/kinguser/view/TextProgressBarView;->brV:I

    add-int/lit16 v1, v1, 0xc8

    iput v1, v0, Lcom/kingroot/kinguser/view/TextProgressBarView;->brV:I

    .line 57
    iget-object v0, p0, Lcom/kingroot/kinguser/view/TextProgressBarView$1;->brZ:Lcom/kingroot/kinguser/view/TextProgressBarView;

    iget v0, v0, Lcom/kingroot/kinguser/view/TextProgressBarView;->brV:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/kingroot/kinguser/view/TextProgressBarView$1;->brZ:Lcom/kingroot/kinguser/view/TextProgressBarView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/kingroot/kinguser/view/TextProgressBarView;->brV:I

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/kingroot/kinguser/view/TextProgressBarView$1;->brZ:Lcom/kingroot/kinguser/view/TextProgressBarView;

    invoke-static {v0}, Lcom/kingroot/kinguser/view/TextProgressBarView;->a(Lcom/kingroot/kinguser/view/TextProgressBarView;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/kingroot/kinguser/view/TextProgressBarView$1;->brZ:Lcom/kingroot/kinguser/view/TextProgressBarView;

    iget v1, v1, Lcom/kingroot/kinguser/view/TextProgressBarView;->brV:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 61
    return-void
.end method
