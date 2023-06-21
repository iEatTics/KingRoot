.class Lcom/kingroot/kinguser/cfk$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/cfk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ccF:Lcom/kingroot/kinguser/cfk;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/cfk;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/kingroot/kinguser/cfk$1;->ccF:Lcom/kingroot/kinguser/cfk;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    :pswitch_0
    return-void

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk$1;->ccF:Lcom/kingroot/kinguser/cfk;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfk;->a(Lcom/kingroot/kinguser/cfk;)V

    .line 73
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk$1;->ccF:Lcom/kingroot/kinguser/cfk;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfk;->b(Lcom/kingroot/kinguser/cfk;)Lcom/kingroot/kinguser/cfk$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/kingroot/kinguser/cfk$a;->amp()V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk$1;->ccF:Lcom/kingroot/kinguser/cfk;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/cfk;->ami()V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-object v0, p0, Lcom/kingroot/kinguser/cfk$1;->ccF:Lcom/kingroot/kinguser/cfk;

    invoke-static {v0}, Lcom/kingroot/kinguser/cfk;->c(Lcom/kingroot/kinguser/cfk;)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
