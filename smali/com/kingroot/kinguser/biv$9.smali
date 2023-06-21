.class Lcom/kingroot/kinguser/biv$9;
.super Lcom/kingroot/kinguser/bek;
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
    .line 261
    iput-object p1, p0, Lcom/kingroot/kinguser/biv$9;->buY:Lcom/kingroot/kinguser/biv;

    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 265
    invoke-static {}, Lcom/kingroot/kinguser/biq;->ada()Lcom/kingroot/kinguser/biq;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/kingroot/kinguser/biq;->jf(I)Ljava/util/List;

    move-result-object v0

    .line 266
    invoke-static {v0}, Lcom/kingroot/kinguser/yy;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 270
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 271
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    iget-object v0, p0, Lcom/kingroot/kinguser/biv$9;->buY:Lcom/kingroot/kinguser/biv;

    invoke-static {v0}, Lcom/kingroot/kinguser/biv;->e(Lcom/kingroot/kinguser/biv;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
