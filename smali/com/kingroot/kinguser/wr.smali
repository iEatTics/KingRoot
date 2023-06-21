.class public abstract Lcom/kingroot/kinguser/wr;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private Nw:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/kingroot/kinguser/acr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/kingroot/kinguser/acr;)V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kingroot/kinguser/wr;->Nw:Ljava/lang/ref/WeakReference;

    .line 20
    return-void
.end method

.method public getImageFetcher()Lcom/kingroot/kinguser/acr;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kingroot/kinguser/wr;->Nw:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/kingroot/kinguser/wr;->Nw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kingroot/kinguser/acr;

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
