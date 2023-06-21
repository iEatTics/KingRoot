.class Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$1;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView$1;->bmE:Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/toolbox/view/ToolBoxView;->ZF()V

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
