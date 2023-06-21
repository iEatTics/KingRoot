.class Lcom/kingroot/kinguser/aqa$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/aqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aKR:Lcom/kingroot/kinguser/aqa;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/aqa;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/kingroot/kinguser/aqa$2;->aKR:Lcom/kingroot/kinguser/aqa;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 153
    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/kingroot/kinguser/aqa$2;->aKR:Lcom/kingroot/kinguser/aqa;

    invoke-static {v0}, Lcom/kingroot/kinguser/aqa;->e(Lcom/kingroot/kinguser/aqa;)V

    .line 156
    :cond_0
    return-void
.end method
