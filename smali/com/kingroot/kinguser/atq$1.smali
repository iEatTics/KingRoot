.class Lcom/kingroot/kinguser/atq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/atq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aPV:Lcom/kingroot/kinguser/atq;


# direct methods
.method constructor <init>(Lcom/kingroot/kinguser/atq;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/kingroot/kinguser/atq$1;->aPV:Lcom/kingroot/kinguser/atq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/kingroot/kinguser/atq$1;->aPV:Lcom/kingroot/kinguser/atq;

    invoke-static {v0}, Lcom/kingroot/kinguser/atq;->a(Lcom/kingroot/kinguser/atq;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/kingroot/kinguser/atq$1;->aPV:Lcom/kingroot/kinguser/atq;

    invoke-static {v1}, Lcom/kingroot/kinguser/atq;->a(Lcom/kingroot/kinguser/atq;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 146
    return-void
.end method
