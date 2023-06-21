.class Lcom/kingroot/kinguser/biv$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/biv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic buY:Lcom/kingroot/kinguser/biv;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/biv;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/kingroot/kinguser/biv$1;->buY:Lcom/kingroot/kinguser/biv;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 73
    iget-object v1, p0, Lcom/kingroot/kinguser/biv$1;->buY:Lcom/kingroot/kinguser/biv;

    invoke-static {v1}, Lcom/kingroot/kinguser/biv;->a(Lcom/kingroot/kinguser/biv;)Lcom/kingroot/kinguser/bit;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/kingroot/kinguser/bit;->aZ(Ljava/util/List;)V

    .line 74
    iget-object v0, p0, Lcom/kingroot/kinguser/biv$1;->buY:Lcom/kingroot/kinguser/biv;

    invoke-static {v0}, Lcom/kingroot/kinguser/biv;->b(Lcom/kingroot/kinguser/biv;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/kingroot/kinguser/biv$1;->buY:Lcom/kingroot/kinguser/biv;

    invoke-static {v0}, Lcom/kingroot/kinguser/biv;->c(Lcom/kingroot/kinguser/biv;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
