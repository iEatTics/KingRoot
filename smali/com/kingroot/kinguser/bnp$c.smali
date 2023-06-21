.class Lcom/kingroot/kinguser/bnp$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/bnp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic bEK:Lcom/kingroot/kinguser/bnp;

.field private bEy:Lcom/kingroot/kinguser/bnp$b;


# direct methods
.method public constructor <init>(Lcom/kingroot/kinguser/bnp;Lcom/kingroot/kinguser/bnp$b;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/kingroot/kinguser/bnp$c;->bEK:Lcom/kingroot/kinguser/bnp;

    .line 171
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 172
    iput-object p2, p0, Lcom/kingroot/kinguser/bnp$c;->bEy:Lcom/kingroot/kinguser/bnp$b;

    .line 173
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget-object v1, p0, Lcom/kingroot/kinguser/bnp$c;->bEy:Lcom/kingroot/kinguser/bnp$b;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bnp$b;->a(Lcom/kingroot/kinguser/bnp$b;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_1
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$c;->bEy:Lcom/kingroot/kinguser/bnp$b;

    invoke-virtual {v0}, Lcom/kingroot/kinguser/bnp$b;->onCancel()V

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/kingroot/kinguser/bnp$c;->bEK:Lcom/kingroot/kinguser/bnp;

    invoke-static {v0}, Lcom/kingroot/kinguser/bnp;->a(Lcom/kingroot/kinguser/bnp;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kingroot/kinguser/bnp;->J(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
