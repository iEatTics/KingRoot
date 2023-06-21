.class Lcom/kingcore/uilib/ClipView$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingcore/uilib/ClipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private AE:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingcore/uilib/ClipView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kingcore/uilib/ClipView;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 172
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingcore/uilib/ClipView$a;->AE:Ljava/lang/ref/WeakReference;

    .line 173
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView$a;->AE:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kingcore/uilib/ClipView$a;->AE:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/kingcore/uilib/ClipView$a;->AE:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingcore/uilib/ClipView;

    .line 179
    invoke-static {v0}, Lcom/kingcore/uilib/ClipView;->b(Lcom/kingcore/uilib/ClipView;)V

    .line 181
    :cond_0
    return-void
.end method
