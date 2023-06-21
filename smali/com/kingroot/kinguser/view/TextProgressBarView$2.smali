.class Lcom/kingroot/kinguser/view/TextProgressBarView$2;
.super Ljava/util/TimerTask;
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
    .line 100
    iput-object p1, p0, Lcom/kingroot/kinguser/view/TextProgressBarView$2;->brZ:Lcom/kingroot/kinguser/view/TextProgressBarView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 103
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 104
    iget-object v1, p0, Lcom/kingroot/kinguser/view/TextProgressBarView$2;->brZ:Lcom/kingroot/kinguser/view/TextProgressBarView;

    iget-object v1, v1, Lcom/kingroot/kinguser/view/TextProgressBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method
