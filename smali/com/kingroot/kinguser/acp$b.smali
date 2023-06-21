.class abstract Lcom/kingroot/kinguser/acp$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/acp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation


# instance fields
.field private final aaO:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/acp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/kingroot/kinguser/acp;)V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 242
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/acp$b;->aaO:Ljava/lang/ref/WeakReference;

    .line 243
    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Message;Lcom/kingroot/kinguser/acp;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/kingroot/kinguser/acp$b;->rY()Lcom/kingroot/kinguser/acp;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0, p1, v0}, Lcom/kingroot/kinguser/acp$b;->a(Landroid/os/Message;Lcom/kingroot/kinguser/acp;)V

    .line 255
    :cond_0
    return-void
.end method

.method public rY()Lcom/kingroot/kinguser/acp;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/kingroot/kinguser/acp$b;->aaO:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/acp;

    return-object v0
.end method
