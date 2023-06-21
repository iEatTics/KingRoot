.class Lcom/kingroot/kinguser/cff$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cay:Lcom/kingroot/kinguser/cff;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cff;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/kingroot/kinguser/cff$3;->cay:Lcom/kingroot/kinguser/cff;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 720
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 721
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 724
    :goto_0
    return-void

    .line 723
    :pswitch_0
    iget-object v1, p0, Lcom/kingroot/kinguser/cff$3;->cay:Lcom/kingroot/kinguser/cff;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kingroot/kinguser/cff$d;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/cff;->b(Lcom/kingroot/kinguser/cff;Lcom/kingroot/kinguser/cff$d;)V

    goto :goto_0

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
